import Foundation
import SwiftUI

class PersonalityViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var isAlertShow = false
    @Published var alertTitle = ""
    @Published var alertDescription = ""
    @Published var usernameText: String = ""
    @Published var firstnameText: String = ""
    @Published var lastnameText: String = ""
    @Published var hobbyText: String = ""
    @Published var priceText: String = ""
    @Published var countryText: String = ""
    @Published var isActionSheetShow: Bool = false
    @Published var isImagePickerShow: Bool = false
    @Published var selectedImage: UIImage = .init()
    @Published var imagePickerSource = UIImagePickerController.SourceType.photoLibrary

    func showAlert(_ title: String, _ message: String) {
        self.isAlertShow = true
        self.alertTitle = title
        self.alertDescription = message
    }
}
