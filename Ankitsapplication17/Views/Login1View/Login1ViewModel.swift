import Foundation
import SwiftUI

class Login1ViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var isAlertShow = false
    @Published var alertTitle = ""
    @Published var alertDescription = ""
    @Published var emailText: String = ""
    @Published var passwordText: String = ""
    @Published var isLoaderShow: Bool = false
    @Published var createLoginResponse: CreateLoginResponse?

    func showAlert(_ title: String, _ message: String) {
        self.isAlertShow = true
        self.alertTitle = title
        self.alertDescription = message
    }

    func createLogin() {
        isLoaderShow = true

        let createLoginRequest = CreateLoginRequest(password: passwordText, username: emailText)
        APIServices.shared
            .callCreateLogin(parameters: createLoginRequest.dictionary ?? [:]) { response in
                self.isLoaderShow = false
                if let response = response {
                    self.onSuccessCreateLogin(response: response)
                }
            }
            failure: { error in
                self.isLoaderShow = false
                self.onErrorCreateLogin(error: error)
            }
    }

    func onSuccessCreateLogin(response: CreateLoginResponse) {
        self.createLoginResponse = response

        self.nextScreen = "AdacanaView"
    }

    func onErrorCreateLogin(error: String) {
        if test.NAME == test.NAME {
            onErrorCreateLoginResponseCondition()
        } else {
            onErrorCreateLoginResponseCondition1()
        }
    }

    func onErrorCreateLoginResponseCondition() {
        self.showAlert("success", "teat")
    }

    func onErrorCreateLoginResponseCondition1() {
        self.nextScreen = "ForgotPasswordView"
    }
}
