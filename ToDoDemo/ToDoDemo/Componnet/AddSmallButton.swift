//
//  AddSmallButton.swift
//  ToDoDemo
//
//  Created by yacov touati on 18/09/2023.
//

import SwiftUI

struct AddSmallButton: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 50)
                .foregroundColor(Color(hue: 0.328, saturation: 0.796, brightness: 0.408))
            
            Text("+")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(.white)
        }
        .frame(height: 50)
    }
}

struct AddSmallButton_Previews: PreviewProvider {
    static var previews: some View {
        AddSmallButton()
    }
}
