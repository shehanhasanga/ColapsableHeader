//
//  Home.swift
//  ColapsableHeader
//
//  Created by shehan karunarathna on 2022-02-12.
//

import SwiftUI

struct Home: View {
    let maxHeight = UIScreen.main.bounds.height / 2.3
    var topEdge: CGFloat
    @State var offset:CGFloat = 0.0
    
    func getOpacity() -> CGFloat{
        let progress = -offset / 70
        let opacity = 1 - progress
        
        return offset < 0 ? opacity : 1
    }
    
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            VStack(spacing:15){
                GeometryReader { proxy in
                    header
                    .frame(maxWidth:.infinity, maxHeight:.infinity, alignment: .bottom)
                    .foregroundColor(.white)
                    // sticky offset effect
                    .frame(height: getHeaderHeight(), alignment: .bottom)
                    .background(
                        Color.blue
                            .clipShape(CustomCorner(corners: [.bottomRight], radius: 50))
                        )
                    .overlay(
                        HStack{
                            Button{
                                
                            }label: {
                                Image(systemName: "xmark")
                            }
                             Spacer()
                            
                            Button{
                                
                            }label: {
                                Image(systemName: "xmark")
                            }
                        }
                            .frame(height: 80 + topEdge)
                            .foregroundColor(.white)
                            .padding(.horizontal)
                        ,alignment: .top
                    )
                   
                }
                .frame(height:maxHeight)
                .offset(y:-offset)
                .zIndex(1)
                
                // smaple messages
                
                VStack(){
                    ForEach(allMessages){message in
                        HStack(spacing:15){
                            Circle()
                                .fill(message.tintColor.opacity(0.8))
                                .frame(width: 50, height: 50, alignment: .leading)
                            VStack(alignment:.leading, spacing:5){
                                Text(message.userName)
                                    .fontWeight(.bold)
                                Text(message.message)
                                    .foregroundColor(.secondary)
                            }
                            .frame(maxWidth:.infinity,alignment: .leading)
                        }
                    }
                }
                .padding()
                .zIndex(0)
            }
            .modifier(offsetModifier(offset: $offset))
            
            
            
          
        }
        .coordinateSpace(name: "SCROLL")
    }
    
    func getHeaderHeight() ->CGFloat{
        let topHeader = maxHeight + offset
        
        return topHeader > (80 + topEdge) ? topHeader : (80 + topEdge)
    }
}

extension Home{
    var header : some View{
        VStack(alignment:.leading, spacing:15){
            Image(systemName: "briefcase")
                .font(.system(size: 60))
                .background(.blue.opacity(0.4))
            Text("Header Title")
                .font(.title)
                .bold()
            Text("description for the sample header desription. This is a demo text for in that case")
        }
        .padding()
        .padding(.bottom)
        .opacity(getOpacity())
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
