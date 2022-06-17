import SwiftUI

struct TermsAndConditionsView: View {
    @StateObject var termsAndConditionsViewModel = TermsAndConditionsViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                Image("img_back_2")
                    .resizable()
                    .frame(width: getRelativeWidth(60.0), height: getRelativeWidth(60.0),
                           alignment: .center)
                    .scaledToFit()
                    .clipped()
                    .padding(.top, getRelativeHeight(59.0))
                    .padding(.horizontal, getRelativeWidth(32.0))
                Text(StringConstants.kMsgTermsAndCondi)
                    .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(28.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.Gray900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(267.0), height: getRelativeHeight(76.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(28.0))
                    .padding(.horizontal, getRelativeWidth(32.0))
                    .opacity(0.8)
                Text(StringConstants.kMsgLoremIpsumDol2)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Gray900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(288.0), height: getRelativeHeight(480.0),
                           alignment: .topLeading)
                    .padding(.vertical, getRelativeHeight(60.0))
                    .padding(.horizontal, getRelativeWidth(32.0))
                    .opacity(0.8)
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
            .background(ColorConstants.WhiteA700)
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA700)
        .ignoresSafeArea()
        .actionSheet(isPresented: $termsAndConditionsViewModel.isActionSheetShow, content: {
            ActionSheet(title: Text("Choose"), buttons: [
                .default(Text("Camera"), action: {
                    if UIImagePickerController.isSourceTypeAvailable(.camera) {
                        termsAndConditionsViewModel.imagePickerSource = .camera
                        termsAndConditionsViewModel.isImagePickerShow = true
                    } else {
                        termsAndConditionsViewModel.showAlert("Error", "Camera is not available!")
                    }
                }),
                .default(Text("Photo Library"), action: {
                    termsAndConditionsViewModel.imagePickerSource = .photoLibrary
                    termsAndConditionsViewModel.isImagePickerShow = true
                }),
                .destructive(Text("Cancel"))
            ])
        })
        .sheet(isPresented: $termsAndConditionsViewModel.isImagePickerShow, content: {
            MediaPicker(sourceType: termsAndConditionsViewModel.imagePickerSource,
                        mediaTypes: ["public.image"]) { image, url in
                if let image = image {
                    termsAndConditionsViewModel.selectedImage = image
                }
            }
        })
        .hideNavigationBar()
    }
}

struct TermsAndConditionsView_Previews: PreviewProvider {
    static var previews: some View {
        TermsAndConditionsView()
    }
}
