import Foundation
import SwiftUI

class AppnavigationViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var isAlertShow = false
    @Published var alertTitle = ""
    @Published var alertDescription = ""
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
