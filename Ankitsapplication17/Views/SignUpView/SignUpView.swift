import SwiftUI

struct SignUpView: View {
    @StateObject var signUpViewModel = SignUpViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        HStack {
                            Image("img_back")
                                .resizable()
                                .frame(width: getRelativeWidth(67.12),
                                       height: getRelativeHeight(60.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            Spacer()
                            Text(StringConstants.kLblSignUp)
                                .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(18.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(78.31),
                                       height: getRelativeHeight(27.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(17.0))
                                .padding(.bottom, getRelativeHeight(16.0))
                                .opacity(0.8)
                        }
                        .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                               alignment: .leading)
                        .padding(.leading, getRelativeWidth(28.0))
                        .padding(.trailing, getRelativeWidth(36.0))
                    }
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(60.0),
                           alignment: .leading)
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(alignment: .leading, spacing: 0) {
                            VStack(alignment: .leading, spacing: 0) {
                                VStack(alignment: .leading, spacing: 0) {
                                    Text(StringConstants.kMsgWhenCommunity)
                                        .font(FontScheme
                                            .kPoppinsBold(size: getRelativeHeight(34.0)))
                                        .fontWeight(.bold)
                                        .foregroundColor(ColorConstants.Gray900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(267.0),
                                               height: getRelativeHeight(120.0),
                                               alignment: .topLeading)
                                        .opacity(0.8)
                                        .padding(.trailing)
                                    Text(StringConstants.kMsgOurCommunityI3)
                                        .font(FontScheme
                                            .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(248.0),
                                               height: getRelativeHeight(40.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(10.0))
                                        .padding(.trailing, getRelativeWidth(10.0))
                                        .opacity(0.4)
                                }
                                .frame(width: getRelativeWidth(311.0),
                                       height: getRelativeHeight(180.0), alignment: .leading)
                            }
                            .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(180.0),
                                   alignment: .leading)
                            VStack {
                                Image("img_logo_4")
                                    .resizable()
                                    .frame(width: getRelativeWidth(114.59),
                                           height: getRelativeHeight(120.44), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.horizontal, getRelativeWidth(10.0))
                            }
                            .frame(width: getRelativeWidth(311.0),
                                   height: getRelativeHeight(120.44), alignment: .center)
                            .padding(.top, getRelativeHeight(13.64))
                            VStack(alignment: .leading, spacing: 0) {
                                HStack {
                                    TextField(StringConstants.kLblFirstName2,
                                              text: $signUpViewModel.firstnameText)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(14.0)))
                                        .foregroundColor(ColorConstants.Gray900)
                                        .padding()
                                }
                                .frame(width: getRelativeWidth(311.0),
                                       height: getRelativeHeight(60.0), alignment: .leading)
                                .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                        bottomLeft: 10.0, bottomRight: 10.0)
                                        .stroke(style: StrokeStyle(lineWidth: 1, dash: [0, 0])))
                                .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                           bottomLeft: 10.0, bottomRight: 10.0)
                                        .fill(Color.clear.opacity(0.7)))
                                HStack {
                                    TextField(StringConstants.kLblLastName2,
                                              text: $signUpViewModel.lastnameText)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(14.0)))
                                        .foregroundColor(ColorConstants.Gray900)
                                        .padding()
                                }
                                .frame(width: getRelativeWidth(311.0),
                                       height: getRelativeHeight(60.0), alignment: .leading)
                                .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                        bottomLeft: 10.0, bottomRight: 10.0)
                                        .stroke(style: StrokeStyle(lineWidth: 1, dash: [0, 0])))
                                .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                           bottomLeft: 10.0, bottomRight: 10.0)
                                        .fill(Color.clear.opacity(0.7)))
                                .padding(.top, getRelativeHeight(24.0))
                                HStack {
                                    TextField(StringConstants.kLblEMail2,
                                              text: $signUpViewModel.emailText)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(14.0)))
                                        .foregroundColor(ColorConstants.Gray900)
                                        .padding()
                                }
                                .frame(width: getRelativeWidth(311.0),
                                       height: getRelativeHeight(60.0), alignment: .leading)
                                .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                        bottomLeft: 10.0, bottomRight: 10.0)
                                        .stroke(style: StrokeStyle(lineWidth: 1, dash: [0, 0])))
                                .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                           bottomLeft: 10.0, bottomRight: 10.0)
                                        .fill(Color.clear.opacity(0.7)))
                                .padding(.top, getRelativeHeight(24.0))
                                HStack {
                                    SecureField(StringConstants.kLblPassword,
                                                text: $signUpViewModel.passwordText)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(14.0)))
                                        .foregroundColor(ColorConstants.Gray900)
                                        .padding()
                                }
                                .frame(width: getRelativeWidth(311.0),
                                       height: getRelativeHeight(60.0), alignment: .leading)
                                .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                        bottomLeft: 10.0, bottomRight: 10.0)
                                        .stroke(style: StrokeStyle(lineWidth: 1, dash: [0, 0])))
                                .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                           bottomLeft: 10.0, bottomRight: 10.0)
                                        .fill(Color.clear.opacity(0.7)))
                                .padding(.top, getRelativeHeight(24.0))
                                Text(StringConstants.kMsgLoremIpsumDol)
                                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                                    .fontWeight(.medium)
                                    .padding(.vertical, getRelativeHeight(2.0))
                                    .foregroundColor(ColorConstants.Gray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(311.0),
                                           height: getRelativeHeight(67.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(19.0))
                                Button(action: {
                                    signUpViewModel.nextScreen = "HomeView"
                                }, label: {
                                    Text(StringConstants.kLblNext)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(14.0)))
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .frame(width: getRelativeWidth(311.0),
                                               height: getRelativeHeight(60.0), alignment: .center)
                                })
                                .frame(width: getRelativeWidth(311.0),
                                       height: getRelativeHeight(60.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 14.0, topRight: 14.0,
                                                           bottomLeft: 14.0, bottomRight: 14.0)
                                        .fill(ColorConstants.LightBlue400))
                                .padding(.top, getRelativeHeight(6.0))
                            }
                            .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(464.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(96.92))
                            VStack {
                                HStack {
                                    Text(StringConstants.kMsgAlreadyHaveAn)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(12.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Gray900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(162.0),
                                               height: getRelativeHeight(20.0),
                                               alignment: .topLeading)
                                        .opacity(0.4)
                                    Spacer()
                                    Text(StringConstants.kLblLogin)
                                        .font(FontScheme
                                            .kPoppinsSemiBold(size: getRelativeHeight(12.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.DeepOrange500)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(34.0),
                                               height: getRelativeHeight(20.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(8.0))
                                }
                                .onTapGesture {
                                    signUpViewModel.nextScreen = "Login1View"
                                }
                                .frame(width: getRelativeWidth(204.0),
                                       height: getRelativeHeight(20.0), alignment: .center)
                                .padding(.horizontal, getRelativeWidth(10.0))
                            }
                            .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(20.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(28.0))
                        }
                        .frame(width: getRelativeWidth(311.0), alignment: .topLeading)
                        .padding(.leading, getRelativeWidth(28.0))
                        .padding(.trailing, getRelativeWidth(36.0))
                    }
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.Gray50)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: Login1View(),
                                   tag: "Login1View",
                                   selection: $signUpViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: HomeView(),
                                   tag: "HomeView",
                                   selection: $signUpViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.Gray50)
            .ignoresSafeArea()
            .actionSheet(isPresented: $signUpViewModel.isActionSheetShow, content: {
                ActionSheet(title: Text("Choose"), buttons: [
                    .default(Text("Camera"), action: {
                        if UIImagePickerController.isSourceTypeAvailable(.camera) {
                            signUpViewModel.imagePickerSource = .camera
                            signUpViewModel.isImagePickerShow = true
                        } else {
                            signUpViewModel.showAlert("Error", "Camera is not available!")
                        }
                    }),
                    .default(Text("Photo Library"), action: {
                        signUpViewModel.imagePickerSource = .photoLibrary
                        signUpViewModel.isImagePickerShow = true
                    }),
                    .destructive(Text("Cancel"))
                ])
            })
            .sheet(isPresented: $signUpViewModel.isImagePickerShow, content: {
                MediaPicker(sourceType: signUpViewModel.imagePickerSource,
                            mediaTypes: ["public.image"]) { image, url in
                    if let image = image {
                        signUpViewModel.selectedImage = image
                    }
                }
            })
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
