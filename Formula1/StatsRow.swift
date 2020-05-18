//
//  StatsRow.swift
//  Formula1
//
//  Created by MAC on 18/05/2020.
//  Copyright © 2020 MAC. All rights reserved.
//

import SwiftUI

struct StatsRow: View {
    
    var statKey: String
    var statValue: String
    
    var body: some View {
        
        HStack(alignment: .center) {
            
            Text(statKey + ":")
                .font(.system(size:40))
                .fontWeight(.bold)
                .padding(.leading, 40)
            
            Text(statValue)
                .font(.system(size:40))
                .fontWeight(.ultraLight)
                .padding(.trailing, 40)
        
            
            Spacer()
        }
    }
}

struct StatsRow_Previews: PreviewProvider {
    static var previews: some View {
        StatsRow(statKey: "key", statValue: "value")
    }
}
