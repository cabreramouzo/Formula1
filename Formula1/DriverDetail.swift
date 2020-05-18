//
//  DriverDetail.swift
//  Formula1
//
//  Created by MAC on 18/05/2020.
//  Copyright © 2020 MAC. All rights reserved.
//

import SwiftUI

struct DriverDetail: View {
    var driver: Driver
    var body: some View {
        VStack {
            Image(driver.team.imageName)
                .resizable()
                .frame(height: 210.0)
            
            Image(driver.imageName)
                .resizable()
                .clipShape(Circle())
                .background(Circle().foregroundColor(.white))
                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                .shadow(radius: 18)
                .offset(x: 0, y: -65)
                .padding(.bottom, -55)
            
            Text(driver.name)
                .font(.system(size: 40))
                .fontWeight(.light)
                .padding(.bottom, 20)
            
            StatsRow(statKey: "Edad", statValue: String(driver.age))
            StatsRow(statKey: "Número", statValue: String(driver.number))
            StatsRow(statKey: "Origen", statValue: driver.birthPlace)
            
            Spacer()
        }.edgesIgnoringSafeArea(.top)
        
        
        
        
    }
}

struct DriverDetail_Previews: PreviewProvider {
    static var previews: some View {
        DriverDetail(driver: drivers[0])
    }
}
