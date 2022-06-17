import Foundation
import SwiftUI

class WishListViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var isAlertShow = false
    @Published var alertTitle = ""
    @Published var alertDescription = ""
    @Published var taskfieldText: String = ""
    @Published var datefieldText: String = ""
    @Published var filesizeText: String = ""
    @Published var googleSignInResponse: GoogleSignInResponse?

    func showAlert(_ title: String, _ message: String) {
        self.isAlertShow = true
        self.alertTitle = title
        self.alertDescription = message
    }

    func googleSignIn() {
        GoogleSignInHelper.shared.signIn(completion: { response in
            if let response = response {
                self.onSuccessGoogleSignIn(response: response)
            } else {
                self.onErrorGoogleSignIn()
            }
        })
    }

    func onSuccessGoogleSignIn(response: googleSignIn) {
        self.googleSignIn = response

        self.nextScreen = "SettingsView"
    }

    func onErrorGoogleSignIn() {
        self.showAlert("fail", "TEST")
    }
}
