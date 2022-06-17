import SwiftUI

struct Group1Cell: View {
    var body: some View {
        HStack {
            Image("img_2friends")
                .resizable()
                .frame(width: getRelativeWidth(18.0), height: getRelativeHeight(18.0),
                       alignment: .leading)
                .scaledToFit()
                .padding(.leading, getRelativeWidth(28.0))
            Text(StringConstants.kLblPersonality)
                .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(16.0)))
                .fontWeight(.medium)
                .foregroundColor(ColorConstants.DeepOrange500)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .frame(width: getRelativeWidth(88.0), height: getRelativeHeight(24.0),
                       alignment: .center)
                .padding(.leading, getRelativeWidth(61.0))
            Image("img_stroke1")
                .resizable()
                .frame(width: getRelativeWidth(3.0), height: getRelativeHeight(6.0),
                       alignment: .leading)
                .scaledToFit()
                .padding(.leading, getRelativeWidth(74.0))
                .padding(.trailing, getRelativeWidth(33.0))
        }
        .frame(width: getRelativeWidth(309.0), alignment: .leading)
        .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                   bottomRight: 14.0)
                .fill(ColorConstants.DeepOrange500Cf))
        .hideNavigationBar()
    }
}

/* struct Group1Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Group1Cell()
 }
 } */
