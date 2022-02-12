//
//  OffsetModifier.swift
//  ColapsableHeader
//
//  Created by shehan karunarathna on 2022-02-12.
//

import SwiftUI

struct offsetModifier: ViewModifier {
    @Binding var offset:CGFloat
    func body(content: Content) -> some View {
        content
            .overlay(
                GeometryReader(content: { proxy -> Color in
                    let minY = proxy.frame(in: .named("SCROLL")).minY
                    DispatchQueue.main.async {
                        offset = minY
                    }
                    print(minY)
                    return Color.clear
                })
                ,alignment: .top
            )
           
    }
}

//struct MyModifier_Previews: PreviewProvider {
//    static var previews: some View {
//        Text("Hello, world!")
//            .modifier(offsetModifier())
//    }
//}
