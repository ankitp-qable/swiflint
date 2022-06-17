import SwiftUI

struct GroupCell: View {
    var body: some View {
        HStack {
            ZStack {}
                .hideNavigationBar()
                .frame(width: getRelativeWidth(26.0), height: getRelativeHeight(26.74),
                       alignment: .leading)
                .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                           bottomRight: 6.0)
                        .fill(ColorConstants.DeepOrange500))
                .padding(.leading, getRelativeWidth(28.0))
                .opacity(0.2)
            Text(StringConstants.kMsgResearchProduc)
                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(14.0)))
                .fontWeight(.regular)
                .foregroundColor(ColorConstants.Gray900)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(170.0), height: getRelativeHeight(20.05),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(24.0))
            Image("img_arrowicon")
                .resizable()
                .frame(width: getRelativeWidth(1.0), height: getRelativeHeight(5.73),
                       alignment: .leading)
                .scaledToFit()
                .padding(.horizontal, getRelativeWidth(29.0))
        }
        .frame(width: getRelativeWidth(309.0), alignment: .leading)
        .background(ColorConstants.WhiteA700)
        .hideNavigationBar()
    }
}

/* struct GroupCell_Previews: PreviewProvider {

 static var previews: some View {
 			GroupCell()
 }
 } */
