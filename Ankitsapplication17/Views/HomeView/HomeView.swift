import SwiftUI

struct HomeView: View {
    @StateObject var homeViewModel = HomeViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                Image("img_profileimage")
                    .resizable()
                    .frame(width: getRelativeWidth(139.0), height: getRelativeWidth(139.0),
                           alignment: .center)
                    .scaledToFit()
                    .clipShape(Circle())
                    .padding(.horizontal, getRelativeWidth(10.0))
                    .onTapGesture {
                        CameraPermission.shared.request(result: { isGranted in
                            GalleryPermission.shared.request(result: { isGranted in
                                if !isGranted {
                                    GalleryPermission.shared.onDeniedOrRestricted()
                                } else {
                                    homeViewModel.isActionSheetShow = true
                                }

                            })
                        })
                    }
                VStack {
                    Text(StringConstants.kLblAdalah)
                        .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(20.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Gray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(98.19), height: getRelativeHeight(30.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(8.0))
                        .padding(.horizontal, getRelativeWidth(10.0))
                        .opacity(0.8)
                    Text(StringConstants.kLblAlcanasatre)
                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(18.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Gray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(145.96), height: getRelativeHeight(27.0),
                               alignment: .center)
                        .padding(.horizontal, getRelativeWidth(10.0))
                        .opacity(0.4)
                    Text(StringConstants.kMsgJoined6Month)
                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Gray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(132.69), height: getRelativeHeight(15.0),
                               alignment: .center)
                        .padding(.vertical, getRelativeHeight(14.0))
                        .padding(.horizontal, getRelativeWidth(10.0))
                        .opacity(0.6)
                }
                .frame(width: getRelativeWidth(207.0), height: getRelativeHeight(120.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(6.0))
                .padding(.horizontal, getRelativeWidth(10.0))
                VStack(alignment: .leading, spacing: 0) {
                    VStack(spacing: 0) {
                        ScrollView(.vertical, showsIndicators: false) {
                            LazyVStack {
                                ForEach(0 ... 1, id: \.self) { index in
                                    Group1Cell()
                                        .onTapGesture {
                                            let location = LocationPermission()
                                            location.request()
                                            location.result = { isGranted in
                                                if !isGranted {
                                                    location.onDeniedOrRestricted()
                                                }
                                            }
                                        }
                                }
                            }
                        }
                    }
                    .frame(width: getRelativeWidth(311.0), alignment: .leading)
                    HStack {
                        Image("img_setting")
                            .resizable()
                            .frame(width: getRelativeWidth(19.0), height: getRelativeHeight(20.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(20.0))
                            .padding(.leading, getRelativeWidth(29.0))
                        Spacer()
                        Text(StringConstants.kLblSetting)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.LightBlue400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(57.0), height: getRelativeHeight(24.0),
                                   alignment: .center)
                            .padding(.vertical, getRelativeHeight(18.0))
                        Spacer()
                        Image("img_stroke1_2")
                            .resizable()
                            .frame(width: getRelativeWidth(5.0), height: getRelativeHeight(6.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(27.0))
                            .padding(.trailing, getRelativeWidth(26.0))
                    }
                    .onTapGesture {
                        ContactPermission.shared.request(result: { isGranted in
                            if !isGranted {
                                ContactPermission.shared.onDeniedOrRestricted()
                            }
                        })
                    }
                    .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                           alignment: .leading)
                    .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                               bottomRight: 14.0)
                            .fill(ColorConstants.LightBlue400C2))
                    .padding(.top, getRelativeHeight(13.0))
                }
                .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(206.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(23.0))
                .padding(.horizontal, getRelativeWidth(10.0))
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
            .background(ColorConstants.WhiteA700)
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA700)
        .ignoresSafeArea()
        .actionSheet(isPresented: $homeViewModel.isActionSheetShow, content: {
            ActionSheet(title: Text("Choose"), buttons: [
                .default(Text("Camera"), action: {
                    if UIImagePickerController.isSourceTypeAvailable(.camera) {
                        homeViewModel.imagePickerSource = .camera
                        homeViewModel.isImagePickerShow = true
                    } else {
                        homeViewModel.showAlert("Error", "Camera is not available!")
                    }
                }),
                .default(Text("Photo Library"), action: {
                    homeViewModel.imagePickerSource = .photoLibrary
                    homeViewModel.isImagePickerShow = true
                }),
                .destructive(Text("Cancel"))
            ])
        })
        .sheet(isPresented: $homeViewModel.isImagePickerShow, content: {
            MediaPicker(sourceType: homeViewModel.imagePickerSource,
                        mediaTypes: ["public.image"]) { image, url in

                if let image = image {
                    homeViewModel.selectedImage = image
                }
            }
        })
        .hideNavigationBar()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
