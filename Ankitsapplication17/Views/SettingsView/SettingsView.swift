import SwiftUI

struct SettingsView: View {
    @StateObject var settingsViewModel = SettingsViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    VStack(alignment: .leading, spacing: 0) {
                        Image("img_back")
                            .resizable()
                            .frame(width: getRelativeWidth(67.12), height: getRelativeHeight(60.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.horizontal, getRelativeWidth(32.0))
                            .onTapGesture {
                                self.presentationMode.wrappedValue.dismiss()
                            }
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblSettings)
                                .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(28.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(267.0),
                                       height: getRelativeHeight(38.0), alignment: .topLeading)
                                .opacity(0.8)
                            Text(StringConstants.kMsgYourSettingsS)
                                .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(251.0),
                                       height: getRelativeHeight(20.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(12.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                                .opacity(0.4)
                        }
                        .frame(width: getRelativeWidth(267.0), height: getRelativeHeight(70.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(60.0))
                        .padding(.horizontal, getRelativeWidth(32.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(190.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(37.0))
                    VStack {
                        HStack {
                            Text(StringConstants.kLblPersonality)
                                .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(67.0),
                                       height: getRelativeHeight(18.0), alignment: .center)
                                .padding(.vertical, getRelativeHeight(21.0))
                                .padding(.leading, getRelativeWidth(122.0))
                                .opacity(0.6)
                            Image("img_arrow")
                                .resizable()
                                .frame(width: getRelativeWidth(3.0), height: getRelativeHeight(6.0),
                                       alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(27.0))
                                .padding(.leading, getRelativeWidth(91.0))
                                .padding(.trailing, getRelativeWidth(28.0))
                                .opacity(0.6)
                        }
                        .onTapGesture {
                            settingsViewModel.isShowTimePicker = true
                        }
                        .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                   bottomRight: 14.0)
                                .fill(ColorConstants.Gray51))
                        .shadow(color: ColorConstants.Black9000c, radius: 4, x: 0, y: 4)
                        .padding(.horizontal, getRelativeWidth(10.0))
                        VStack {
                            HStack {
                                Text(StringConstants.kLblLanguage)
                                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Gray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(61.0),
                                           height: getRelativeHeight(18.0), alignment: .center)
                                    .padding(.vertical, getRelativeHeight(21.0))
                                    .padding(.leading, getRelativeWidth(126.0))
                                    .opacity(0.6)
                                Image("img_arrow")
                                    .resizable()
                                    .frame(width: getRelativeWidth(3.0),
                                           height: getRelativeHeight(6.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.vertical, getRelativeHeight(27.0))
                                    .padding(.leading, getRelativeWidth(93.0))
                                    .padding(.trailing, getRelativeWidth(28.0))
                                    .opacity(0.6)
                            }
                            .onTapGesture {
                                settingsViewModel.nextScreen = "LanguageView"
                            }
                            .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                                   alignment: .leading)
                            .background(RoundedCorners(topLeft: 14.0, topRight: 14.0,
                                                       bottomLeft: 14.0, bottomRight: 14.0)
                                    .fill(ColorConstants.Gray51))
                            .shadow(color: ColorConstants.Black9000c, radius: 4, x: 0, y: 4)
                        }
                        .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                               alignment: .center)
                        .shadow(color: ColorConstants.Black9000c, radius: 4, x: 0, y: 4)
                        .padding(.top, getRelativeHeight(14.0))
                        .padding(.horizontal, getRelativeWidth(10.0))
                        HStack {
                            Text(StringConstants.kMsgTermsAndCondi)
                                .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(134.0),
                                       height: getRelativeHeight(18.0), alignment: .center)
                                .padding(.vertical, getRelativeHeight(21.0))
                                .padding(.leading, getRelativeWidth(88.0))
                                .opacity(0.6)
                            Image("img_arrow")
                                .resizable()
                                .frame(width: getRelativeWidth(3.0), height: getRelativeHeight(6.0),
                                       alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(27.0))
                                .padding(.leading, getRelativeWidth(58.0))
                                .padding(.trailing, getRelativeWidth(28.0))
                                .opacity(0.6)
                        }
                        .onTapGesture {
                            settingsViewModel.nextScreen = "TermsAndConditionsView"
                        }
                        .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                   bottomRight: 14.0)
                                .fill(ColorConstants.Gray51))
                        .shadow(color: ColorConstants.Black9000c, radius: 4, x: 0, y: 4)
                        .padding(.top, getRelativeHeight(14.0))
                        .padding(.horizontal, getRelativeWidth(10.0))
                        Button(action: {}, label: {
                            Text(StringConstants.kLblLogOut)
                                .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                .foregroundColor(ColorConstants.RedA400)
                                .frame(width: getRelativeWidth(311.0),
                                       height: getRelativeHeight(60.0), alignment: .center)
                        })
                        .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                               alignment: .center)
                        .overlay(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                bottomRight: 14.0)
                                .stroke(style: StrokeStyle(lineWidth: 1, dash: [0, 0])))
                        .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                   bottomRight: 14.0)
                                .fill(ColorConstants.RedA400Cf))
                        .padding(.top, getRelativeHeight(177.0))
                        .padding(.horizontal, getRelativeWidth(10.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(445.0),
                           alignment: .center)
                    .padding(.vertical, getRelativeHeight(34.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: TermsAndConditionsView(),
                                   tag: "TermsAndConditionsView",
                                   selection: $settingsViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: LanguageView(),
                                   tag: "LanguageView",
                                   selection: $settingsViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            .dateTimePickerDialog(isShowing: $settingsViewModel.isShowTimePicker,
                                  cancelOnTapOutside: true,
                                  selection: $settingsViewModel.dhiwiseVardate,
                                  displayComponents: [.hourAndMinute], style: .graphical,
                                  backgroundColor: Color.clear)

            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
