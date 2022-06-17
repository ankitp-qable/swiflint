import SwiftUI

struct WorkTodayView: View {
    @StateObject var workTodayViewModel = WorkTodayViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        VStack(alignment: .leading, spacing: 0) {
                            Image("img_back")
                                .resizable()
                                .frame(width: getRelativeWidth(67.12),
                                       height: getRelativeHeight(60.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.horizontal, getRelativeWidth(32.0))
                            Text(StringConstants.kLblWorkTodayS)
                                .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(28.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(267.0),
                                       height: getRelativeHeight(37.19), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(41.98))
                                .padding(.horizontal, getRelativeWidth(32.0))
                                .opacity(0.8)
                            Text(StringConstants.kMsgMakeYourJobE)
                                .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(247.0),
                                       height: getRelativeHeight(19.57), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(11.74))
                                .padding(.horizontal, getRelativeWidth(32.0))
                                .opacity(0.4)
                            HStack {
                                VStack(alignment: .leading, spacing: 0) {
                                    Text(StringConstants.kLblToday)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(14.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(44.0),
                                               height: getRelativeHeight(20.55),
                                               alignment: .topLeading)
                                        .opacity(0.4)
                                        .padding(.trailing)
                                    Text(StringConstants.kLbl02April2021)
                                        .font(FontScheme
                                            .kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(100.0),
                                               height: getRelativeHeight(23.49),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(4.9))
                                        .opacity(0.6)
                                }
                                .frame(width: getRelativeWidth(100.0),
                                       height: getRelativeHeight(48.93), alignment: .center)
                                .padding(.top, getRelativeHeight(4.89))
                                .padding(.bottom, getRelativeHeight(4.9))
                                .padding(.leading, getRelativeWidth(32.0))
                                Spacer()
                                Image("img_calendaricon")
                                    .resizable()
                                    .frame(width: getRelativeWidth(60.0),
                                           height: getRelativeHeight(58.72), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.trailing, getRelativeWidth(32.0))
                            }
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(58.72), alignment: .leading)
                            .padding(.top, getRelativeHeight(79.28))
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(308.48),
                               alignment: .leading)
                        VStack {
                            VStack(spacing: 0) {
                                ScrollView(.vertical, showsIndicators: false) {
                                    LazyVStack {
                                        ForEach(0 ... 1, id: \.self) { index in
                                            GroupCell()
                                        }
                                    }
                                }
                            }
                            .frame(width: getRelativeWidth(311.0), alignment: .center)
                            .padding(.horizontal, getRelativeWidth(10.0))
                            Button(action: {
                                workTodayViewModel.nextScreen = "WishListView"
                            }, label: {
                                Text(StringConstants.kMsgMakeAWishLis)
                                    .font(FontScheme
                                        .kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .frame(width: getRelativeWidth(311.0),
                                           height: getRelativeHeight(60.0), alignment: .center)
                            })
                            .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 14.0, topRight: 14.0,
                                                       bottomLeft: 14.0, bottomRight: 14.0)
                                    .fill(ColorConstants.LightBlue400))
                            .padding(.top, getRelativeHeight(63.99))
                            .padding(.horizontal, getRelativeWidth(10.0))
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(244.47),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(59.33))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(612.28),
                           alignment: .leading)
                    .padding(.vertical, getRelativeHeight(43.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: WishListView(),
                                   tag: "WishListView",
                                   selection: $workTodayViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct WorkTodayView_Previews: PreviewProvider {
    static var previews: some View {
        WorkTodayView()
    }
}
