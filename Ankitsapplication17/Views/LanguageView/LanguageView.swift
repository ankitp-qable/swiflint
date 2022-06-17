import SwiftUI

struct LanguageView: View {
    @StateObject var languageViewModel = LanguageViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                VStack(alignment: .leading, spacing: 0) {
                    Image("img_back_2")
                        .resizable()
                        .frame(width: getRelativeWidth(60.0), height: getRelativeWidth(60.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.horizontal, getRelativeWidth(32.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblLanguage)
                            .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(28.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Gray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(267.0), height: getRelativeHeight(38.0),
                                   alignment: .topLeading)
                            .opacity(0.8)
                        Text(StringConstants.kMsgYourSettingsS)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Gray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(251.0), height: getRelativeHeight(20.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(12.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                            .opacity(0.4)
                    }
                    .frame(width: getRelativeWidth(267.0), height: getRelativeHeight(70.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(35.0))
                    .padding(.horizontal, getRelativeWidth(32.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(165.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(52.0))
                VStack {
                    Button(action: {}, label: {
                        Text(StringConstants.kLblIndonesian)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                            .foregroundColor(ColorConstants.DeepOrange500)
                            .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                                   alignment: .center)
                    })
                    .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                               bottomRight: 14.0)
                            .fill(ColorConstants.DeepOrange500))
                    .padding(.horizontal, getRelativeWidth(10.0))
                    Button(action: {}, label: {
                        Text(StringConstants.kLblEnglish)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                            .foregroundColor(ColorConstants.DeepPurpleA400)
                            .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                                   alignment: .center)
                    })
                    .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                               bottomRight: 14.0)
                            .fill(ColorConstants.DeepPurpleA400))
                    .padding(.top, getRelativeHeight(14.0))
                    .padding(.horizontal, getRelativeWidth(10.0))
                    Button(action: {}, label: {
                        Text(StringConstants.kLblSave)
                            .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                            .foregroundColor(ColorConstants.WhiteA700)
                            .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                                   alignment: .center)
                    })
                    .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                               bottomRight: 14.0)
                            .fill(ColorConstants.LightBlue400))
                    .padding(.top, getRelativeHeight(243.0))
                    .padding(.horizontal, getRelativeWidth(10.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(437.0),
                       alignment: .center)
                .padding(.vertical, getRelativeHeight(87.0))
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
            .background(ColorConstants.WhiteA700)
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA700)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct LanguageView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageView()
    }
}
