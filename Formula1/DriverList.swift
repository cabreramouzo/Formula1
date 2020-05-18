//
//  DriverList.swift
//  Formula1
//
//  Created by MAC on 18/05/2020.
//  Copyright © 2020 MAC. All rights reserved.
//

import SwiftUI

struct DriverList: View {
    var body: some View {
        NavigationView {
            
            List(drivers) {
                driver in
                NavigationLink(destination: DriverDetail(driver: driver) ) {
                    DriverRow(driver: driver)
                }
                    
               
            }.navigationBarTitle(Text("Fórmula 1"), displayMode: .large)
        }
        
    }
}

struct DriverList_Previews: PreviewProvider {
    static var previews: some View {
        DriverList()
    }
}
