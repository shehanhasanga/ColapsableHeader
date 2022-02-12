//
//  ContentView.swift
//  ColapsableHeader
//
//  Created by shehan karunarathna on 2022-02-12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { proxy in
            let topedge = proxy.safeAreaInsets.top
            Home(topEdge: topedge)
                .ignoresSafeArea(.all, edges:.top)
        }
     
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
