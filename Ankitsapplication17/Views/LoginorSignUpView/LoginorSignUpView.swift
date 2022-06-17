import SwiftUI

struct LoginorSignUpView: View {
    @StateObject var loginorSignUpViewModel = LoginorSignUpViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
                        VStack(alignment: .leading, spacing: 0) {
                            Image("img_back")
                                .resizable()
                                .frame(width: getRelativeWidth(67.12),
                                       height: getRelativeHeight(60.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.horizontal, getRelativeWidth(26.0))
                            Text(StringConstants.kMsgWelcomeToOur)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(34.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(208.0),
                                       height: getRelativeHeight(120.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(27.0))
                                .padding(.horizontal, getRelativeWidth(32.0))
                                .opacity(0.8)
                            Text(StringConstants.kMsgOurCommunityI)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(306.0),
                                       height: getRelativeHeight(40.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(12.0))
                                .padding(.horizontal, getRelativeWidth(32.0))
                                .opacity(0.4)
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(259.0),
                               alignment: .leading)
                        VStack {
                            Image("img_logo_1")
                                .resizable()
                                .frame(width: getRelativeWidth(117.64),
                                       height: getRelativeHeight(105.29), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.horizontal, getRelativeWidth(10.0))
                            Text(StringConstants.kLblGetInThrough)
                                .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(18.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(250.0),
                                       height: getRelativeHeight(27.0), alignment: .center)
                                .padding(.top, getRelativeHeight(31.94))
                                .padding(.horizontal, getRelativeWidth(10.0))
                                .opacity(0.8)
                            Button(action: {
                                loginorSignUpViewModel.nextScreen = "SignUpView"
                            }, label: {
                                Text(StringConstants.kLblSignUp)
                                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .frame(width: getRelativeWidth(311.0),
                                           height: getRelativeHeight(60.0), alignment: .center)
                            })
                            .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 14.0, topRight: 14.0,
                                                       bottomLeft: 14.0, bottomRight: 14.0)
                                    .fill(ColorConstants.LightBlue400))
                            .padding(.top, getRelativeHeight(35.0))
                            .padding(.horizontal, getRelativeWidth(10.0))
                            Button(action: {
                                loginorSignUpViewModel.nextScreen = "Login1View"
                            }, label: {
                                Text(StringConstants.kLblLogin)
                                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                                    .foregroundColor(ColorConstants.DeepOrange500)
                                    .frame(width: getRelativeWidth(311.0),
                                           height: getRelativeHeight(60.0), alignment: .center)
                            })
                            .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 14.0, topRight: 14.0,
                                                       bottomLeft: 14.0, bottomRight: 14.0)
                                    .fill(ColorConstants.DeepOrange500))
                            .padding(.top, getRelativeHeight(14.0))
                            .padding(.horizontal, getRelativeWidth(10.0))
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(333.23),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(31.77))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(624.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(21.0))
                    .padding(.bottom, getRelativeHeight(20.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.Gray50)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: Login1View(),
                                   tag: "Login1View",
                                   selection: $loginorSignUpViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: SignUpView(),
                                   tag: "SignUpView",
                                   selection: $loginorSignUpViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.Gray50)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct LoginorSignUpView_Previews: PreviewProvider {
    static var previews: some View {
        LoginorSignUpView()
    }
}
