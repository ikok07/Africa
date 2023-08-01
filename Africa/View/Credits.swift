//
//  Credits.swift
//  Africa
//
//  Created by Kaloyan Petkov on 30.07.23.
//

import SwiftUI

struct Credits: View {
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128, alignment: .center)
            Text("""
            Copyright Robert Petras
            All right reserved
            Better Apps ♡ Less Code
            """)
            .font(.footnote)
        .multilineTextAlignment(.center)
        } //: VStack
        .padding()
        .opacity(0.4)
    }
}

struct Credits_Previews: PreviewProvider {
    static var previews: some View {
        Credits()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
