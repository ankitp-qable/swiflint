import SwiftUI

struct ForgotPasswordView: View {
    @StateObject var forgotPasswordViewModel = ForgotPasswordViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
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
                            Text(StringConstants.kLblForgotPassword)
                                .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(18.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(155.0),
                                       height: getRelativeHeight(27.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(15.0))
                                .padding(.bottom, getRelativeHeight(18.0))
                                .opacity(0.8)
                        }
                        .frame(width: getRelativeWidth(324.0), height: getRelativeHeight(60.0),
                               alignment: .leading)
                        .padding(.leading, getRelativeWidth(19.0))
                        .padding(.trailing, getRelativeWidth(32.0))
                    }
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(60.0),
                           alignment: .leading)
                    Text(StringConstants.kMsgHelpingOthers)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(34.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Gray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(267.0), height: getRelativeHeight(132.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(25.0))
                        .padding(.horizontal, getRelativeWidth(32.0))
                        .opacity(0.8)
                    Text(StringConstants.kMsgIfYouAreAlwa)
                        .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Gray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(251.0), height: getRelativeHeight(40.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(7.0))
                        .padding(.horizontal, getRelativeWidth(32.0))
                        .opacity(0.4)
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(264.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(27.0))
                VStack {
                    Image("img_logo_3")
                        .resizable()
                        .frame(width: getRelativeWidth(135.89), height: getRelativeHeight(121.5),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.horizontal, getRelativeWidth(10.0))
                    Text(StringConstants.kLblForgotPassword)
                        .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(18.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Gray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(248.0), height: getRelativeHeight(27.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(25.63))
                        .padding(.horizontal, getRelativeWidth(10.0))
                        .opacity(0.8)
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(174.13),
                       alignment: .center)
                .padding(.top, getRelativeHeight(37.87))
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        TextField(StringConstants.kLblYourEmail,
                                  text: $forgotPasswordViewModel.youremailText)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                            .foregroundColor(ColorConstants.Gray900)
                            .padding()
                    }
                    .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                           alignment: .leading)
                    .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                            bottomRight: 10.0)
                            .stroke(style: StrokeStyle(lineWidth: 1, dash: [0, 0])))
                    .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                               bottomRight: 10.0)
                            .fill(Color.clear.opacity(0.7)))
                    .padding(.horizontal, getRelativeWidth(32.0))
                    Text(StringConstants.kMsgLoremIpsumDol)
                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Gray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(306.0), height: getRelativeHeight(41.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(18.0))
                        .padding(.horizontal, getRelativeWidth(32.0))
                        .opacity(0.4)
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(119.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(48.0))
                VStack {
                    Button(action: {
                        forgotPasswordViewModel.isShowDatePicker = true
                    }, label: {
                        Text(StringConstants.kLblStart)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                            .foregroundColor(ColorConstants.WhiteA700)
                            .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                                   alignment: .center)
                    })
                    .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                               bottomRight: 14.0)
                            .fill(ColorConstants.LightBlue400))
                    .padding(.horizontal, getRelativeWidth(10.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(60.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(18.0))
                .padding(.bottom, getRelativeHeight(20.0))
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
            .background(ColorConstants.WhiteA700)
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA700)
        .ignoresSafeArea()
        .dateTimePickerDialog(isShowing: $forgotPasswordViewModel.isShowDatePicker,
                              cancelOnTapOutside: true,
                              selection: $forgotPasswordViewModel.dhiwiseVardate,
                              displayComponents: [.date], style: .graphical,
                              backgroundColor: Color.clear)

        .hideNavigationBar()
    }
}

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}
