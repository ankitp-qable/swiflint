import Foundation
import SwiftUI

class LanguageViewModel: ObservableObject {
    @Published var isAlertShow = false
    @Published var alertTitle = ""
    @Published var alertDescription = ""

    func showAlert(_ title: String, _ message: String) {
        self.isAlertShow = true
        self.alertTitle = title
        self.alertDescription = message
    }
}
