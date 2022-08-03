//  Home.swift
//
//  JollyCooks
//
//  Created by Phillip Shen on 22/7/2022.
// This view is literally an image because Joe was supposed to do this but then at the last minute i made the decision that if
// I had the time I would do it but we don't have timne at this point so yeah -- Aaditya.

import SwiftUI

struct HomeView: View {
    var body: some View {
            Image("homeview") // Dummy model for the hoemview because we didn't have enough time to finish this and Joe didn't do it cause he's lazy af.
            .resizable()
            .frame(width: 820, height: 1136)
            .offset(y:-20)
        }
        
    }

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            HomeView()
                .preferredColorScheme(.dark)
            
            HomeView()
        }
         
    }
}
