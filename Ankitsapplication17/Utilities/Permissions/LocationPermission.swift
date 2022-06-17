import CoreLocation
import Foundation
import UIKit

class LocationPermission: NSObject, CLLocationManagerDelegate {
    private let shared = CLLocationManager()
    var result: ((_ isGranted: Bool) -> Void)?

    override init() {
        super.init()
    }

    func request() {
        self.shared.delegate = self
    }

    func locationManager(_ manager: CLLocationManager,
                         didChangeAuthorization status: CLAuthorizationStatus)
    {
        if status == .denied || status == .restricted {
            result?(false)
        } else if status == .authorizedAlways || status == .authorizedWhenInUse {
            result?(true)
        } else if status == .notDetermined {
            self.shared.requestWhenInUseAuthorization()
        }
    }

    func onDeniedOrRestricted() {
        let alert =
            UIAlertController(title: "We were unable to load your Location settings. Sorry!",
                              message: "You can enable access in Privacy Settings",
                              preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "Settings", style: .default, handler: { _ in
            if let settingsURL = URL(string: UIApplication.openSettingsURLString) {
                UIApplication.shared.open(settingsURL)
            }
        }))
        DispatchQueue.main.async {
            guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
            else { return }
            guard let rootViewController = windowScene.windows.first?.rootViewController
            else { return }
            rootViewController.present(alert, animated: true, completion: nil)
        }
    }
}
