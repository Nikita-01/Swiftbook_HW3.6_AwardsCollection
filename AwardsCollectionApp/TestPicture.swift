//
//  TestPicture.swift
//  AwardsCollectionApp
//
//  Created by Никита Рыжкин on 08.02.2022.
//

import SwiftUI

struct TestPicture: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            
            
            Path { path in
                path.addEllipse(in: CoreGraphics.CGRect(x: size * 0.05, y: size * 0.35, width: size * 0.9, height: size * 0.3))
            }
            .foregroundColor(.green)
            .shadow(color: .black, radius: 5)

            Path { path in
                path.move(to: CGPoint(x: size * 0.1, y: size * 0.9))
                path.addLine(to: CGPoint(x: size / 2, y: size * 0.1))
                path.addLine(to: CGPoint(x: size * 0.9, y: size * 0.9))
                path.addLine(to: CGPoint(x: size * 0.1, y: size * 3 / 8))
                path.addLine(to: CGPoint(x: size * 0.9, y: size * 3 / 8))
                path.closeSubpath()
            }
            .foregroundColor(.yellow)
            .shadow(color: .blue, radius: 5)
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Text("Final Award!!!")
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct TestPicture_Previews: PreviewProvider {
    static var previews: some View {
        TestPicture()
            .frame(width: 200, height: 200)
    }
}
