import Contacts
import Foundation
import UIKit

class ContactPermission {
    public static let shared = ContactPermission()

    func request(result: @escaping (_ accessGranted: Bool) -> Void) {
        switch CNContactStore.authorizationStatus(for: .contacts) {
        case .authorized:
            result(true)
        case .denied:
            result(false)
        case .restricted, .notDetermined:
            CNContactStore().requestAccess(for: .contacts) { granted, error in
                if granted {
                    result(true)
                } else {
                    DispatchQueue.main.async {
                        result(false)
                    }
                }
            }
        }
    }

    func onDeniedOrRestricted() {
        let alert =
            UIAlertController(title: "We were unable to load your Contacts settings. Sorry!",
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
