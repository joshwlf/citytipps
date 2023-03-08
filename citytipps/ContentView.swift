//
//  ContentView.swift
//  citytipps
//
//  Created by Joshi Wolfram on 06.03.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Placeholder1()
                .tabItem() {
                    Image(systemName: "calendar")
                    Text("Neues Ereignis")
                }
            Placeholder1()
                .tabItem() {
                    Image(systemName: "checklist")
                    Text("Abstimmungen")
                }
           
            Placeholder1()
                .tabItem() {
                    Image(systemName: "slider.horizontal.3")
                    Text("Einstellungen")
                }
        
        }
        
    }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
