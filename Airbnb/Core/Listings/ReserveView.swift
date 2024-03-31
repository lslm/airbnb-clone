//
//  ReserveView.swift
//  Airbnb
//
//  Created by Lucas Santos on 30/03/24.
//

import SwiftUI

struct ReserveView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("$500")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                Text("Total before taxes")
                    .font(.footnote)
                
                Text("Oct 15 - 20")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .underline()
            }
            
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Reserve")
                    .fontWeight(.semibold)
                    .frame(width: 140, height: 40)
                    .foregroundStyle(.white)
                    .background(.pink)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    
            })
        }
        .padding(16)
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, minHeight: 0, maxHeight: 90)
        .background(.thickMaterial)
    }
}

#Preview {
    ReserveView()
}
