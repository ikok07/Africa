//
//  CoverView.swift
//  Africa
//
//  Created by Kaloyan Petkov on 29.07.23.
//

import SwiftUI

struct CoverImageView: View {
    
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    var body: some View {
        
        TabView {
            ForEach(coverImages) { image in
                Image(image.name)
                    .resizable()
                    .scaledToFill()
            } //: Loop
        } //: TabView
        .tabViewStyle(.page)
        
    }
}

struct CoverView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
