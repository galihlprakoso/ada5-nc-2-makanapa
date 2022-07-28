//
//  FoodView.swift
//  makanapa
//
//  Created by Galih Laras Prakoso on 27/07/22.
//

import SwiftUI

struct FoodResultView: View {
    var body: some View {
        VStack {
            VStack(alignment: .center) {
                AsyncImage(url: URL(string: "https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/f189282b-806c-4227-b55c-8826438a49a3_brand-image_1658480622555.jpg?h=266&w=452&fit=crop&auto=compress")) { image in
                    image.resizable()
                } placeholder: {
                    Color.red
                }
                .frame(width: ScreenDimensions.screenWidth / 2.0, height: ScreenDimensions.screenWidth / 2.0)
                .clipShape(RoundedRectangle(cornerRadius: 25))
                
                Text("Paket Panas 1")
                    .foregroundColor(Color(Colors.textColor))
                    .font(.title)
                
                HStack {
                    Image(
                        Images.icMoney
                    ).frame(width: Dimensions.small, height: Dimensions.small)
                    
                    Text("Rp. 50.000,-")
                        .foregroundColor(Color(Colors.textColor))
                        .font(.subheadline)
                }
            }.padding(
                EdgeInsets(top: Dimensions.medium, leading: 0, bottom: 0, trailing: 0)
            )
            
            Spacer()
                        
            VStack {
                Divider()
                HStack(alignment: .top, spacing: Dimensions.small) {
                    AsyncImage(url: URL(string: "https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/f189282b-806c-4227-b55c-8826438a49a3_brand-image_1658480622555.jpg?h=266&w=452&fit=crop&auto=compress")) { image in
                        image.resizable()
                    } placeholder: {
                        Color.red
                    }
                    .frame(width: ScreenDimensions.screenWidth / 3.0, height: ScreenDimensions.screenWidth / 3.0)
                    .clipShape(RoundedRectangle(cornerRadius: 12.5))
                    
                    VStack(alignment: .leading) {
                        VStack(alignment: .leading) {
                            Text("KFC, FoodPrint Malioboro")
                                .foregroundColor(Color(Colors.textColor))
                                .font(.title3)
                            Text("Fast food, Beverages")
                                .foregroundColor(Color(Colors.textColor))
                                .font(.body)
                            
                            HStack(alignment: .center, spacing: Dimensions.medium) {
                                HStack(alignment: .center) {
                                    Image(Images.icLocation)
                                        .frame(width: Dimensions.small, height: Dimensions.small)
                                    Text("2.0 Km")
                                        .foregroundColor(Color(Colors.textColor))
                                        .font(.caption)
                                }
                                
                                HStack(alignment: .center) {
                                    Image(Images.icStar)
                                        .frame(width: Dimensions.small, height: Dimensions.small)
                                    Text("4.8")
                                        .foregroundColor(Color(Colors.textColor))
                                        .font(.caption)
                                }
                            }
                            
                            Button(action: {
                   
                            }, label: {
                                HStack {
                                    Text("BUKA DI GOJEK")
                                        .foregroundColor(Color(Colors.textColor))
                                        .font(.footnote)
                                    Image(Images.icArrowRight)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: Dimensions.medium, height: Dimensions.medium)
                                }
                            }).buttonStyle(PrimaryButtonStyle())
                        }
                    }
                }.padding(
                    EdgeInsets(top: Dimensions.medium, leading: 0, bottom: Dimensions.large, trailing: 0)
                )
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct FoodResultView_Previews: PreviewProvider {
    static var previews: some View {
        FoodResultView()
    }
}
