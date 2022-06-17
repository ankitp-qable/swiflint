import SwiftUI

struct AppnavigationView: View {
    @StateObject var appnavigationViewModel = AppnavigationViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
                        Text(StringConstants.kLblAppNavigation)
                            .font(Font.system(size: getRelativeHeight(20.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(23.0),
                                   alignment: .leading)
                            .padding(.vertical, getRelativeHeight(10.0))
                            .padding(.horizontal, getRelativeWidth(20.0))
                        Text(StringConstants.kMsgCheckYourApp)
                            .font(Font.system(size: getRelativeHeight(16.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(19.0),
                                   alignment: .leading)
                            .padding(.leading, getRelativeWidth(20.0))
                        Divider()
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(1.0), alignment: .center)
                            .background(ColorConstants.Black900)
                            .padding(.top, getRelativeHeight(5.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(67.0))
                    .background(ColorConstants.WhiteA700)
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            Group {
                                VStack {
                                    Text(StringConstants.kLblAdacana)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width,
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "AdacanaView"
                                }
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblLoginorsignup)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width,
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "LoginorSignUpView"
                                }
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblLogin)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width,
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "Login1View"
                                }
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblForgotpassword2)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width,
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "ForgotPasswordView"
                                }
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblWorktoday)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width,
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "WorkTodayView"
                                }
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblWishlist)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width,
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "WishListView"
                                }
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblSettings)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width,
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "SettingsView"
                                }
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblLanguage)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width,
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "LanguageView"
                                }
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                            }
                            Group {
                                VStack {
                                    Text(StringConstants.kLblHome)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width,
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "HomeView"
                                }
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblPersonality)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width,
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "PersonalityView"
                                }
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblSignup2)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width,
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "SignUpView"
                                }
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kMsgTermsandconditi)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width,
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "TermsAndConditionsView"
                                }
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                            }
                        }
                        .frame(width: UIScreen.main.bounds.width)
                        .background(ColorConstants.WhiteA700)
                    }
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: AdacanaView(),
                                   tag: "AdacanaView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: LoginorSignUpView(),
                                   tag: "LoginorSignUpView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: Login1View(),
                                   tag: "Login1View",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ForgotPasswordView(),
                                   tag: "ForgotPasswordView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: WorkTodayView(),
                                   tag: "WorkTodayView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: WishListView(),
                                   tag: "WishListView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: SettingsView(),
                                   tag: "SettingsView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: LanguageView(),
                                   tag: "LanguageView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: HomeView(),
                                   tag: "HomeView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: PersonalityView(),
                                   tag: "PersonalityView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
                Group {
                    NavigationLink(destination: SignUpView(),
                                   tag: "SignUpView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: TermsAndConditionsView(),
                                   tag: "TermsAndConditionsView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            .actionSheet(isPresented: $appnavigationViewModel.isActionSheetShow, content: {
                ActionSheet(title: Text("Choose"), buttons: [
                    .default(Text("Camera"), action: {
                        if UIImagePickerController.isSourceTypeAvailable(.camera) {
                            appnavigationViewModel.imagePickerSource = .camera
                            appnavigationViewModel.isImagePickerShow = true
                        } else {
                            appnavigationViewModel.showAlert("Error", "Camera is not available!")
                        }
                    }),
                    .default(Text("Photo Library"), action: {
                        appnavigationViewModel.imagePickerSource = .photoLibrary
                        appnavigationViewModel.isImagePickerShow = true
                    }),
                    .destructive(Text("Cancel"))
                ])
            })
            .sheet(isPresented: $appnavigationViewModel.isImagePickerShow, content: {
                MediaPicker(sourceType: appnavigationViewModel.imagePickerSource,
                            mediaTypes: ["public.image"]) { image, url in
                    if let image = image {
                        appnavigationViewModel.selectedImage = image
                    }
                }
            })
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct AppnavigationView_Previews: PreviewProvider {
    static var previews: some View {
        AppnavigationView()
    }
}
