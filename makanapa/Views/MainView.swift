//
//  ContentView.swift
//  makanapa
//
//  Created by Galih Laras Prakoso on 27/07/22.
//

import SwiftUI
import BottomSheet

struct MainView: View {
    @State var isFoodResultPresented = false
    var body: some View {
        ZStack {
            Image(Images.background)
            
            VStack {
                Spacer()
                
                Image(Images.logo)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: ScreenDimensions.screenWidth * 0.8, height: ScreenDimensions.screenWidth * 0.8)
                
                Spacer()
                
                HStack {
                    Spacer()
                    Button(action: {
                        isFoodResultPresented = true
                    }, label: {
                        HStack {
                            Text("PILIHKAN MAKANANKU")
                                .foregroundColor(Color(Colors.textColor))
                                .fontWeight(.bold)
                            Image(Images.icArrowRight)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: Dimensions.medium, height: Dimensions.medium)
                        }
                    }).buttonStyle(PrimaryButtonStyle())
                }.padding(.bottom, Dimensions.large)
                    .padding(.trailing, Dimensions.large)
            }
        }.bottomSheet(isPresented: $isFoodResultPresented, height: 300, contentBackgroundColor: Color.white, topBarBackgroundColor: Color.white) {
            FoodResultView()
        }.background(Color.white)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
