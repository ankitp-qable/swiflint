import Foundation
import SwiftUI

class ForgotPasswordViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var isAlertShow = false
    @Published var alertTitle = ""
    @Published var alertDescription = ""
    @Published var youremailText: String = ""
    @Published var isShowDatePicker: Bool = false
    @Published var dhiwiseVardate: Date = .init()

    func showAlert(_ title: String, _ message: String) {
        self.isAlertShow = true
        self.alertTitle = title
        self.alertDescription = message
    }
}
