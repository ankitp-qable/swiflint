import SwiftUI

struct AdacanaView: View {
    @StateObject var adacanaViewModel = AdacanaViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    Image("img_logo")
                        .resizable()
                        .frame(width: getRelativeWidth(238.0), height: getRelativeHeight(325.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.top, getRelativeHeight(244.0))
                        .padding(.horizontal, getRelativeWidth(68.0))
                        .onTapGesture {
                            adacanaViewModel.nextScreen = "LoginorSignUpView"
                        }
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: LoginorSignUpView(),
                                   tag: "LoginorSignUpView",
                                   selection: $adacanaViewModel.nextScreen,
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

struct AdacanaView_Previews: PreviewProvider {
    static var previews: some View {
        AdacanaView()
    }
}
