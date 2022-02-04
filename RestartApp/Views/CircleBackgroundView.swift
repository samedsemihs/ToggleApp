//
//  CircleBackground.swift
//  RestartApp
//
//  Created by Samed Semih Sürmeli on 4.02.2022.
//

import SwiftUI

struct CircleBackgroundView: View {
    @State var ShapeColor: Color
    @State var ShapeOpacity: Double
    
    var body: some View {
        ZStack{
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
        }//: ZSTACK
    }
}

struct CircleBackground_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea(.all, edges: .all)
            
            CircleBackgroundView(ShapeColor: .white, ShapeOpacity: 0.2)
        }
        
    }
}
