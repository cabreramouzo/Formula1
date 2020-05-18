//
//  DriverRow.swift
//  Formula1
//
//  Created by MAC on 18/05/2020.
//  Copyright © 2020 MAC. All rights reserved.
//

import SwiftUI

struct DriverRow: View {
    
    var driver: Driver
    
    var body: some View {
        HStack {
            Image(driver.imageName)
            .clipShape(Circle())
                .background(Circle().foregroundColor(driver.team.color))
            .overlay(Circle().stroke(Color.white, lineWidth: 2))
            .shadow(radius: 12)
                .padding(.leading,10)
            
            Text(driver.name)
                .font(.system(size: 30))
                .fontWeight(.light)
                .padding(.leading, 5)
            Spacer()
        }
    }
}

struct DriverRow_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            DriverRow(driver: drivers[0]).previewLayout(.fixed(width: 450, height: 80))
            DriverRow(driver: drivers[1]).previewLayout(.fixed(width: 450, height: 80))
            DriverRow(driver: drivers[2]).previewLayout(.fixed(width: 450, height: 80))

        }
        
    }
}
