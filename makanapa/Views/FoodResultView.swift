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
            AsyncImage(url: URL(string: "https://www.hackingwithswift.com/img/paul-2.png")) { image in
                image.resizable()
            } placeholder: {
                Color.red
            }
            .frame(width: 128, height: 128)
            .clipShape(RoundedRectangle(cornerRadius: 25))
        }.background(Color.white)
    }
}

struct FoodResultView_Previews: PreviewProvider {
    static var previews: some View {
        FoodResultView()
    }
}
