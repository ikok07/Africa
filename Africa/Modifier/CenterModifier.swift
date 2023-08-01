//
//  CenterModifier.swift
//  Africa
//
//  Created by Kaloyan Petkov on 30.07.23.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
