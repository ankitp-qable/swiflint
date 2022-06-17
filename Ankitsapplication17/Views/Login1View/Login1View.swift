import SwiftUI

struct Login1View: View {
    @StateObject var login1ViewModel = Login1ViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    VStack {
                        VStack(alignment: .leading, spacing: 0) {
                            HStack {
                                HStack {
                                    Image("img_back_1")
                                        .resizable()
                                        .frame(width: getRelativeWidth(72.37),
                                               height: getRelativeHeight(60.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                    Spacer()
                                    Text(StringConstants.kLblLogin)
                                        .font(FontScheme
                                            .kPoppinsSemiBold(size: getRelativeHeight(18.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Gray900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(59.11),
                                               height: getRelativeHeight(27.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(17.0))
                                        .padding(.bottom, getRelativeHeight(16.0))
                                        .opacity(0.8)
                                }
                                .frame(width: getRelativeWidth(310.0),
                                       height: getRelativeHeight(60.0), alignment: .leading)
                                .padding(.leading, getRelativeWidth(29.0))
                                .padding(.trailing, getRelativeWidth(36.0))
                            }
                            .frame(width: UIScreen.main.bounds.width - 20,
                                   height: getRelativeHeight(60.0), alignment: .leading)
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(60.0),
                               alignment: .leading)
                        VStack {
                            VStack(alignment: .leading, spacing: 0) {
                                VStack(alignment: .leading, spacing: 0) {
                                    Text(StringConstants.kMsgThisIsYourCo)
                                        .font(FontScheme
                                            .kPoppinsBold(size: getRelativeHeight(34.0)))
                                        .fontWeight(.bold)
                                        .foregroundColor(ColorConstants.Gray900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(267.0),
                                               height: getRelativeHeight(160.0),
                                               alignment: .topLeading)
                                        .opacity(0.8)
                                        .padding(.trailing)
                                    Text(StringConstants.kMsgOurCommunityI2)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(12.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Gray900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(306.0),
                                               height: getRelativeHeight(40.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(12.0))
                                        .padding(.trailing, getRelativeWidth(5.0))
                                        .opacity(0.4)
                                }
                                .frame(width: getRelativeWidth(311.0),
                                       height: getRelativeHeight(212.0), alignment: .leading)
                                VStack {
                                    Image("img_logo_2")
                                        .resizable()
                                        .frame(width: getRelativeWidth(116.98),
                                               height: getRelativeHeight(113.47),
                                               alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.horizontal, getRelativeWidth(10.0))
                                }
                                .frame(width: getRelativeWidth(311.0),
                                       height: getRelativeHeight(113.47), alignment: .center)
                                .padding(.top, getRelativeHeight(21.9))
                                VStack(alignment: .leading, spacing: 0) {
                                    HStack {
                                        TextField(StringConstants.kLblEmail,
                                                  text: $login1ViewModel.emailText)
                                            .font(FontScheme
                                                .kPoppinsMedium(size: getRelativeHeight(14.0)))
                                            .foregroundColor(ColorConstants.Gray900)
                                            .padding()
                                    }
                                    .frame(width: getRelativeWidth(311.0),
                                           height: getRelativeHeight(60.0), alignment: .leading)
                                    .overlay(RoundedCorners(topLeft: 14.0, topRight: 14.0,
                                                            bottomLeft: 14.0, bottomRight: 14.0)
                                            .stroke(style: StrokeStyle(lineWidth: 1, dash: [0, 0])))
                                    .background(RoundedCorners(topLeft: 14.0, topRight: 14.0,
                                                               bottomLeft: 14.0, bottomRight: 14.0)
                                            .fill(Color.clear.opacity(0.7)))
                                    HStack {
                                        SecureField(StringConstants.kLblPassword,
                                                    text: $login1ViewModel.passwordText)
                                            .font(FontScheme
                                                .kPoppinsMedium(size: getRelativeHeight(14.0)))
                                            .foregroundColor(ColorConstants.Gray900)
                                            .padding()
                                    }
                                    .frame(width: getRelativeWidth(311.0),
                                           height: getRelativeHeight(60.0), alignment: .leading)
                                    .overlay(RoundedCorners(topLeft: 14.0, topRight: 14.0,
                                                            bottomLeft: 14.0, bottomRight: 14.0)
                                            .stroke(style: StrokeStyle(lineWidth: 1, dash: [0, 0])))
                                    .background(RoundedCorners(topLeft: 14.0, topRight: 14.0,
                                                               bottomLeft: 14.0, bottomRight: 14.0)
                                            .fill(Color.clear.opacity(0.7)))
                                    .padding(.top, getRelativeHeight(24.0))
                                    Text(StringConstants.kMsgForgotPassword)
                                        .font(FontScheme
                                            .kPoppinsSemiBold(size: getRelativeHeight(12.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.DeepOrange500)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(110.0),
                                               height: getRelativeHeight(20.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(24.0))
                                        .padding(.trailing, getRelativeWidth(10.0))
                                        .onTapGesture {
                                            login1ViewModel.nextScreen = "ForgotPasswordView"
                                        }
                                    Button(action: {
                                        login1ViewModel.createLogin()
                                    }, label: {
                                        Text(StringConstants.kLblNext)
                                            .font(FontScheme
                                                .kPoppinsMedium(size: getRelativeHeight(14.0)))
                                            .foregroundColor(ColorConstants.WhiteA700)
                                            .frame(width: getRelativeWidth(311.0),
                                                   height: getRelativeHeight(60.0),
                                                   alignment: .center)
                                    })
                                    .frame(width: getRelativeWidth(311.0),
                                           height: getRelativeHeight(60.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 14.0, topRight: 14.0,
                                                               bottomLeft: 14.0, bottomRight: 14.0)
                                            .fill(ColorConstants.LightBlue400))
                                    .padding(.top, getRelativeHeight(33.0))
                                }
                                .frame(width: getRelativeWidth(311.0),
                                       height: getRelativeHeight(281.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(115.63))
                                VStack {
                                    HStack {
                                        Text(StringConstants.kMsgDonTHaveAnA)
                                            .font(FontScheme
                                                .kPoppinsMedium(size: getRelativeHeight(12.0)))
                                            .fontWeight(.medium)
                                            .foregroundColor(ColorConstants.Gray900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(147.0),
                                                   height: getRelativeHeight(20.0),
                                                   alignment: .topLeading)
                                            .opacity(0.4)
                                        Spacer()
                                        Text(StringConstants.kLblSignup2)
                                            .font(FontScheme
                                                .kPoppinsSemiBold(size: getRelativeHeight(12.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.DeepOrange500)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(44.0),
                                                   height: getRelativeHeight(20.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(8.0))
                                    }
                                    .onTapGesture {
                                        login1ViewModel.nextScreen = "SignUpView"
                                    }
                                    .frame(width: getRelativeWidth(199.0),
                                           height: getRelativeHeight(20.0), alignment: .center)
                                    .padding(.horizontal, getRelativeWidth(10.0))
                                }
                                .frame(width: getRelativeWidth(311.0),
                                       height: getRelativeHeight(20.0), alignment: .center)
                                .padding(.top, getRelativeHeight(24.0))
                            }
                            .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(788.0),
                                   alignment: .center)
                            .background(ColorConstants.WhiteA700)
                            .padding(.horizontal, getRelativeWidth(10.0))
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(788.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(24.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                    .background(ColorConstants.WhiteA700)
                    .padding(.top, getRelativeHeight(30.0))
                    .padding(.bottom, getRelativeHeight(10.0))
                    Group {
                        NavigationLink(destination: SignUpView(),
                                       tag: "SignUpView",
                                       selection: $login1ViewModel.nextScreen,
                                       label: {
                                           EmptyView()
                                       })
                        NavigationLink(destination: ForgotPasswordView(),
                                       tag: "ForgotPasswordView",
                                       selection: $login1ViewModel.nextScreen,
                                       label: {
                                           EmptyView()
                                       })
                        NavigationLink(destination: AdacanaView(),
                                       tag: "AdacanaView",
                                       selection: $login1ViewModel.nextScreen,
                                       label: {
                                           EmptyView()
                                       })
                    }
                    .alert(isPresented: $login1ViewModel.isAlertShow,
                           content: { Alert(title: Text(login1ViewModel.alertTitle),
                                            message: Text(login1ViewModel.alertDescription),
                                            dismissButton: .default(Text("OK"))) })
                }
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .background(ColorConstants.WhiteA700)
                .ignoresSafeArea()
            }
            .hideNavigationBar()
            if login1ViewModel.isLoaderShow {
                GeometryReader { _ in
                    ActivityLoader(isLoaderShow: $login1ViewModel.isLoaderShow)
                }
            }
        }
        .hideNavigationBar()
    }
}

struct Login1View_Previews: PreviewProvider {
    static var previews: some View {
        Login1View()
    }
}
