//
//  ContentView.swift
//  SegmentedControlPickerNoSegmentSelected
//
//  Created by ramil on 01/10/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection = 0
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Segmented Control (Picker)")
                .font(.largeTitle)
                .layoutPriority(1)
            Text("No Segment Selection").font(.title).foregroundColor(.gray)
            Text("This segment control will have nothing selected because the default state variable does not match any ot the segmented tag values.")
                .layoutPriority(1)
            Text("How many meals do you eat?")
                .foregroundColor(.gray)
                .font(.title)
            Picker("", selection: $selection) {
                Text("One").tag(1)
                Text("Two").tag(2)
                Text("Three").tag(3)
                Text("More").tag(4)
            }.pickerStyle(SegmentedPickerStyle())
            .background(RoundedRectangle(cornerRadius: 8)
                .stroke(Color.red, lineWidth: selection == 0 ? 1 : 0))
            .padding()
            Text("The red ouline will go away once a selection is made.")
            Picker("", selection: $selection) {
                Text("One").tag(1)
                Text("Two").tag(2)
                Text("Three").tag(3)
                Text("More").tag(4)
            }.pickerStyle(SegmentedPickerStyle())
                .background(Color.yellow)
            .cornerRadius(8)
                .padding(.horizontal)
            
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
