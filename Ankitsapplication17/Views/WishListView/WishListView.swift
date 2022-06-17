import SwiftUI

struct WishListView: View {
    @StateObject var wishListViewModel = WishListViewModel()
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
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kMsgMakeAWishLis)
                                .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(28.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(267.0),
                                       height: getRelativeHeight(37.19), alignment: .topLeading)
                                .opacity(0.8)
                            Text(StringConstants.kMsgMakeYourJobE)
                                .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(247.0),
                                       height: getRelativeHeight(19.57), alignment: .topLeading)
                                .padding(.vertical, getRelativeHeight(11.74))
                                .padding(.trailing, getRelativeWidth(10.0))
                                .opacity(0.4)
                        }
                        .frame(width: getRelativeWidth(267.0), height: getRelativeHeight(68.51),
                               alignment: .leading)
                        .padding(.vertical, getRelativeHeight(42.98))
                        .padding(.horizontal, getRelativeWidth(32.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(171.49),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(42.0))
                    VStack {
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblTaskTodo)
                                .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(81.0),
                                       height: getRelativeHeight(20.0), alignment: .topLeading)
                                .opacity(0.54)
                                .padding(.trailing)
                            HStack {
                                Spacer()
                                Image("img_calendar_icon")
                                    .resizable()
                                    .frame(width: getRelativeWidth(24.0),
                                           height: getRelativeHeight(23.49), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                TextField(StringConstants.kMsgCreateActionM,
                                          text: $wishListViewModel.taskfieldText)
                                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                                    .foregroundColor(ColorConstants.Gray900)
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(58.72),
                                   alignment: .leading)
                            .overlay(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                    bottomRight: 14.0)
                                    .stroke(style: StrokeStyle(lineWidth: 1, dash: [0, 0])))
                            .background(RoundedCorners(topLeft: 14.0, topRight: 14.0,
                                                       bottomLeft: 14.0, bottomRight: 14.0)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.top, getRelativeHeight(11.32))
                        }
                        .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(90.04),
                               alignment: .center)
                        .padding(.horizontal, getRelativeWidth(10.0))
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblDate)
                                .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(81.0),
                                       height: getRelativeHeight(19.57), alignment: .topLeading)
                                .opacity(0.54)
                                .padding(.trailing)
                            HStack {
                                Spacer()
                                Image("img_calendar_icon_1")
                                    .resizable()
                                    .frame(width: getRelativeWidth(24.0),
                                           height: getRelativeHeight(23.49), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                TextField(StringConstants.kLblTtMmYy,
                                          text: $wishListViewModel.datefieldText)
                                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                                    .foregroundColor(ColorConstants.Gray900)
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(58.72),
                                   alignment: .leading)
                            .overlay(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                    bottomRight: 14.0)
                                    .stroke(style: StrokeStyle(lineWidth: 1, dash: [0, 0])))
                            .background(RoundedCorners(topLeft: 14.0, topRight: 14.0,
                                                       bottomLeft: 14.0, bottomRight: 14.0)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.vertical, getRelativeHeight(11.75))
                        }
                        .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(90.04),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(17.25))
                        .padding(.horizontal, getRelativeWidth(10.0))
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblAttachments)
                                .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(81.0),
                                       height: getRelativeHeight(19.57), alignment: .topLeading)
                                .opacity(0.54)
                                .padding(.trailing)
                            HStack {
                                Spacer()
                                Image("img_paper_plus_icon")
                                    .resizable()
                                    .frame(width: getRelativeWidth(24.0),
                                           height: getRelativeHeight(23.49), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                TextField(StringConstants.kLblMaximum10Mb,
                                          text: $wishListViewModel.filesizeText)
                                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                                    .foregroundColor(ColorConstants.Gray900)
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(58.72),
                                   alignment: .leading)
                            .overlay(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                    bottomRight: 14.0)
                                    .stroke(style: StrokeStyle(lineWidth: 1, dash: [5, 2])))
                            .background(RoundedCorners(topLeft: 14.0, topRight: 14.0,
                                                       bottomLeft: 14.0, bottomRight: 14.0)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.top, getRelativeHeight(11.75))
                        }
                        .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(90.04),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(17.61))
                        .padding(.horizontal, getRelativeWidth(10.0))
                        Button(action: {
                            wishListViewModel.googleSignIn()
                        }, label: {
                            Text(StringConstants.kMsgMakeAWishLis)
                                .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .frame(width: getRelativeWidth(311.0),
                                       height: getRelativeHeight(58.72), alignment: .center)
                        })
                        .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(58.72),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                   bottomRight: 14.0)
                                .fill(ColorConstants.LightBlue400))
                        .padding(.top, getRelativeHeight(35.3))
                        .padding(.horizontal, getRelativeWidth(10.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(399.0),
                           alignment: .center)
                    .padding(.vertical, getRelativeHeight(85.51))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: SettingsView(),
                                   tag: "SettingsView",
                                   selection: $wishListViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
                .alert(isPresented: $wishListViewModel.isAlertShow,
                       content: { Alert(title: Text(wishListViewModel.alertTitle),
                                        message: Text(wishListViewModel.alertDescription),
                                        dismissButton: .default(Text("OK"))) })
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct WishListView_Previews: PreviewProvider {
    static var previews: some View {
        WishListView()
    }
}
