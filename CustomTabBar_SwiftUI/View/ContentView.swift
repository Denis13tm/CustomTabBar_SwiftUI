//
//  ContentView.swift
//  CustomTabBar_SwiftUI
//
//  Created by Otabek Tuychiev on 29/04/2022.
//

import SwiftUI


struct ContentView: View {
    
    @State var currentTab: Tab = .bookmark
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        
        VStack(spacing: 0) {
            TabView(selection: $currentTab) {
                
                // Need to apply BG for each Tab View...
                Text("Bookmark")
                    .applyBG()
                    .tag(Tab.bookmark)
                Text("Time")
                    .applyBG()
                    .tag(Tab.time)
                Text("Camera")
                    .applyBG()
                    .tag(Tab.camera)
                Text("Chat")
                    .applyBG()
                    .tag(Tab.chat)
                Text("Settings")
                    .applyBG()
                    .tag(Tab.settings)
                
            }
            //Mark: - Custom Tab Bar
            CustomTabBar(currentTab: $currentTab)
            
        }
        
    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


extension View {
    func applyBG() -> some View {
        self
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background {
                Color("BG")
                    .ignoresSafeArea()
            }
    }
}
