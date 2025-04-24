//
// Digital Gait Labs (c), 2023.
// Colour coded custom Icons
//
//

import SwiftUI

struct GKIconView: View {
    let percentage1: CGFloat
    let percentage2: CGFloat
    let colour1: Color 
    let colour2: Color 
    let colour3: Color 
    let scale: CGFloat
    let iconSize: CGFloat = 375 // You can adjust the size as needed
    var iconScale: CGFloat = 0
    var iconName : String = "figure.walk.diamond"
    
    init(percentage1: CGFloat, percentage2: CGFloat, scale: CGFloat, iconName: String, colour1: Color, colour2: Color, colour3: Color) {
        
        self.percentage1 = percentage1
        self.percentage2 = percentage2
        self.scale = scale
        self.iconScale = iconSize*scale
        self.iconName = iconName
        self.colour1 = colour1
        self.colour2 = colour2
        self.colour3 = colour3
    }
    
    var body: some View {
        Image(systemName: self.iconName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: self.iconScale, height: self.iconScale)
        
            .overlay(
                GeometryReader { geo in
                    RoundedRectangle(cornerRadius: 8)
                        .fill(colour1)
                        .frame(width: geo.size.width, height: geo.size.height * percentage1)
                        .offset(x: 0, y: geo.size.height * (1 - percentage1))
                    
                }
                    .mask(Image(systemName: self.iconName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: self.iconScale, height: self.iconScale)
                    )
            )
            .overlay(
                GeometryReader { geo in
                    RoundedRectangle(cornerRadius: 8)
                        .fill(colour2)
                        .frame(width: geo.size.width, height: geo.size.height * percentage2)
                        .offset(x: 0, y: geo.size.height * (1 - percentage1 - percentage2))
                    
                }
                    .mask(Image(systemName: self.iconName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: self.iconScale, height: self.iconScale)
                    )
            )
            .overlay(
                GeometryReader { geo in
                    RoundedRectangle(cornerRadius: 8)
                        .fill(colour3)
                        .frame(width: geo.size.width, height: geo.size.height * (1 - percentage1 - percentage2))
                    
                }
                    .mask(Image(systemName: self.iconName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: self.iconScale, height: self.iconScale)
                    )
            )
        
    }
}
