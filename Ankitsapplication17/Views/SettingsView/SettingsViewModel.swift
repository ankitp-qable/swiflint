import Foundation
import SwiftUI

class SettingsViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var isShowTimePicker: Bool = false
    @Published var dhiwiseVardate: Date = .init()
}
