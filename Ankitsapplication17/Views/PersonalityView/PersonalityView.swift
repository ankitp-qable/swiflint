import SwiftUI

struct PersonalityView: View {
    @StateObject var personalityViewModel = PersonalityViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        HStack {
                            Image("img_back_3")
                                .resizable()
                                .frame(width: getRelativeWidth(60.0),
                                       height: getRelativeWidth(60.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            Spacer()
                            Text(StringConstants.kLblPersonality)
                                .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(18.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(103.0),
                                       height: getRelativeHeight(27.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(17.0))
                                .padding(.bottom, getRelativeHeight(16.0))
                                .opacity(0.8)
                        }
                        .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(60.0),
                               alignment: .leading)
                        .padding(.horizontal, getRelativeWidth(32.0))
                    }
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(60.0),
                           alignment: .leading)
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            VStack {
                                VStack {
                                    Image("img_profileimage")
                                        .resizable()
                                        .frame(width: getRelativeWidth(139.0),
                                               height: getRelativeWidth(139.0), alignment: .center)
                                        .scaledToFit()
                                        .clipShape(Circle())
                                        .padding(.horizontal, getRelativeWidth(10.0))
                                    ZStack(alignment: .center) {
                                        Text(StringConstants.kLblEditPhoto)
                                            .font(FontScheme
                                                .kPoppinsMedium(size: getRelativeHeight(12.0)))
                                            .fontWeight(.medium)
                                            .foregroundColor(ColorConstants.DeepOrange500)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                            .frame(width: getRelativeWidth(224.0),
                                                   height: getRelativeHeight(20.0),
                                                   alignment: .center)
                                            .opacity(0.8)
                                        ZStack {}
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(102.0),
                                                   height: getRelativeHeight(33.0),
                                                   alignment: .center)
                                            .padding(.horizontal, getRelativeWidth(61.0))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(224.0),
                                           height: getRelativeHeight(33.0), alignment: .leading)
                                    .padding(.top, getRelativeHeight(12.0))
                                }
                                .frame(width: getRelativeWidth(224.0),
                                       height: getRelativeHeight(184.0), alignment: .center)
                                .padding(.horizontal, getRelativeWidth(10.0))
                            }
                            .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(184.0),
                                   alignment: .center)
                            VStack(alignment: .leading, spacing: 0) {
                                VStack(alignment: .leading, spacing: 0) {
                                    Text(StringConstants.kLblUsername)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(12.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Gray900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(65.0),
                                               height: getRelativeHeight(20.0),
                                               alignment: .topLeading)
                                        .opacity(0.4)
                                        .padding(.trailing)
                                    HStack {
                                        TextField(StringConstants.kLblAdalahalcana,
                                                  text: $personalityViewModel.usernameText)
                                            .font(FontScheme
                                                .kPoppinsMedium(size: getRelativeHeight(14.0)))
                                            .foregroundColor(ColorConstants.Gray900)
                                            .padding()
                                    }
                                    .frame(width: getRelativeWidth(311.0),
                                           height: getRelativeHeight(60.0), alignment: .leading)
                                    .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                            bottomLeft: 10.0, bottomRight: 10.0)
                                            .stroke(style: StrokeStyle(lineWidth: 1, dash: [0, 0])))
                                    .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                               bottomLeft: 10.0, bottomRight: 10.0)
                                            .fill(Color.clear.opacity(0.7)))
                                    .padding(.top, getRelativeHeight(12.0))
                                }
                                .frame(width: getRelativeWidth(311.0),
                                       height: getRelativeHeight(92.0), alignment: .leading)
                                VStack(alignment: .leading, spacing: 0) {
                                    Text(StringConstants.kLblFirstName)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(12.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Gray900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(66.0),
                                               height: getRelativeHeight(20.0),
                                               alignment: .topLeading)
                                        .opacity(0.4)
                                        .padding(.trailing)
                                    HStack {
                                        TextField(StringConstants.kLblAlcanasatre,
                                                  text: $personalityViewModel.firstnameText)
                                            .font(FontScheme
                                                .kPoppinsMedium(size: getRelativeHeight(14.0)))
                                            .foregroundColor(ColorConstants.Gray900)
                                            .padding()
                                    }
                                    .frame(width: getRelativeWidth(311.0),
                                           height: getRelativeHeight(60.0), alignment: .leading)
                                    .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                            bottomLeft: 10.0, bottomRight: 10.0)
                                            .stroke(style: StrokeStyle(lineWidth: 1, dash: [0, 0])))
                                    .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                               bottomLeft: 10.0, bottomRight: 10.0)
                                            .fill(Color.clear.opacity(0.7)))
                                    .padding(.top, getRelativeHeight(12.0))
                                }
                                .frame(width: getRelativeWidth(311.0),
                                       height: getRelativeHeight(92.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(18.0))
                                VStack(alignment: .leading, spacing: 0) {
                                    Text(StringConstants.kLblLastName)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(12.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Gray900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(66.0),
                                               height: getRelativeHeight(20.0),
                                               alignment: .topLeading)
                                        .opacity(0.4)
                                        .padding(.trailing)
                                    HStack {
                                        TextField(StringConstants.kLblFourta,
                                                  text: $personalityViewModel.lastnameText)
                                            .font(FontScheme
                                                .kPoppinsMedium(size: getRelativeHeight(14.0)))
                                            .foregroundColor(ColorConstants.Gray900)
                                            .padding()
                                    }
                                    .frame(width: getRelativeWidth(311.0),
                                           height: getRelativeHeight(60.0), alignment: .leading)
                                    .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                            bottomLeft: 10.0, bottomRight: 10.0)
                                            .stroke(style: StrokeStyle(lineWidth: 1, dash: [0, 0])))
                                    .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                               bottomLeft: 10.0, bottomRight: 10.0)
                                            .fill(Color.clear.opacity(0.7)))
                                    .padding(.top, getRelativeHeight(12.0))
                                }
                                .frame(width: getRelativeWidth(311.0),
                                       height: getRelativeHeight(92.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(18.0))
                                VStack(alignment: .leading, spacing: 0) {
                                    Text(StringConstants.kLblHobby)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(12.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Gray900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(40.0),
                                               height: getRelativeHeight(20.0),
                                               alignment: .topLeading)
                                        .opacity(0.4)
                                        .padding(.trailing)
                                    HStack {
                                        TextField(StringConstants.kLblSleep,
                                                  text: $personalityViewModel.hobbyText)
                                            .font(FontScheme
                                                .kPoppinsMedium(size: getRelativeHeight(14.0)))
                                            .foregroundColor(ColorConstants.Gray900)
                                            .padding()
                                    }
                                    .frame(width: getRelativeWidth(311.0),
                                           height: getRelativeHeight(60.0), alignment: .leading)
                                    .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                            bottomLeft: 10.0, bottomRight: 10.0)
                                            .stroke(style: StrokeStyle(lineWidth: 1, dash: [0, 0])))
                                    .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                               bottomLeft: 10.0, bottomRight: 10.0)
                                            .fill(Color.clear.opacity(0.7)))
                                    .padding(.top, getRelativeHeight(12.0))
                                }
                                .frame(width: getRelativeWidth(311.0),
                                       height: getRelativeHeight(92.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(18.0))
                                VStack(alignment: .leading, spacing: 0) {
                                    Text(StringConstants.kLblDateOfBirth)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(12.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Gray900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(76.0),
                                               height: getRelativeHeight(20.0),
                                               alignment: .topLeading)
                                        .opacity(0.4)
                                        .padding(.trailing)
                                    HStack {
                                        TextField(StringConstants.kLbl28May2002,
                                                  text: $personalityViewModel.priceText)
                                            .font(FontScheme
                                                .kPoppinsMedium(size: getRelativeHeight(14.0)))
                                            .foregroundColor(ColorConstants.Gray900)
                                            .padding()
                                    }
                                    .frame(width: getRelativeWidth(311.0),
                                           height: getRelativeHeight(60.0), alignment: .leading)
                                    .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                            bottomLeft: 10.0, bottomRight: 10.0)
                                            .stroke(style: StrokeStyle(lineWidth: 1, dash: [0, 0])))
                                    .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                               bottomLeft: 10.0, bottomRight: 10.0)
                                            .fill(Color.clear.opacity(0.7)))
                                    .padding(.top, getRelativeHeight(12.0))
                                }
                                .frame(width: getRelativeWidth(311.0),
                                       height: getRelativeHeight(92.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(18.0))
                                VStack(alignment: .leading, spacing: 0) {
                                    Text(StringConstants.kLblCountry)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(12.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Gray900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(50.0),
                                               height: getRelativeHeight(20.0),
                                               alignment: .topLeading)
                                        .opacity(0.4)
                                        .padding(.trailing)
                                    HStack {
                                        TextField(StringConstants.kLblIndonesian2,
                                                  text: $personalityViewModel.countryText)
                                            .font(FontScheme
                                                .kPoppinsMedium(size: getRelativeHeight(14.0)))
                                            .foregroundColor(ColorConstants.Gray900)
                                            .padding()
                                    }
                                    .frame(width: getRelativeWidth(311.0),
                                           height: getRelativeHeight(60.0), alignment: .leading)
                                    .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                            bottomLeft: 10.0, bottomRight: 10.0)
                                            .stroke(style: StrokeStyle(lineWidth: 1, dash: [0, 0])))
                                    .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                               bottomLeft: 10.0, bottomRight: 10.0)
                                            .fill(Color.clear.opacity(0.7)))
                                    .padding(.top, getRelativeHeight(12.0))
                                }
                                .frame(width: getRelativeWidth(311.0),
                                       height: getRelativeHeight(92.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(18.0))
                                Button(action: {
                                    personalityViewModel.nextScreen = "WorkTodayView"
                                }, label: {
                                    Text(StringConstants.kLblChangeSave)
                                        .font(FontScheme
                                            .kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .frame(width: getRelativeWidth(311.0),
                                               height: getRelativeHeight(60.0), alignment: .center)
                                })
                                .frame(width: getRelativeWidth(311.0),
                                       height: getRelativeHeight(60.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 14.0, topRight: 14.0,
                                                           bottomLeft: 14.0, bottomRight: 14.0)
                                        .fill(ColorConstants.LightBlue400))
                                .padding(.top, getRelativeHeight(34.0))
                            }
                            .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(736.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(41.0))
                        }
                        .frame(width: getRelativeWidth(311.0), alignment: .topLeading)
                        .padding(.horizontal, getRelativeWidth(32.0))
                    }
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: WorkTodayView(),
                                   tag: "WorkTodayView",
                                   selection: $personalityViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            .actionSheet(isPresented: $personalityViewModel.isActionSheetShow, content: {
                ActionSheet(title: Text("Choose"), buttons: [
                    .default(Text("Camera"), action: {
                        if UIImagePickerController.isSourceTypeAvailable(.camera) {
                            personalityViewModel.imagePickerSource = .camera
                            personalityViewModel.isImagePickerShow = true
                        } else {
                            personalityViewModel.showAlert("Error", "Camera is not available!")
                        }
                    }),
                    .default(Text("Photo Library"), action: {
                        personalityViewModel.imagePickerSource = .photoLibrary
                        personalityViewModel.isImagePickerShow = true
                    }),
                    .destructive(Text("Cancel"))
                ])
            })
            .sheet(isPresented: $personalityViewModel.isImagePickerShow, content: {
                MediaPicker(sourceType: personalityViewModel.imagePickerSource,
                            mediaTypes: ["public.image"]) { image, url in
                    if let image = image {
                        personalityViewModel.selectedImage = image
                    }
                }
            })
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct PersonalityView_Previews: PreviewProvider {
    static var previews: some View {
        PersonalityView()
    }
}
