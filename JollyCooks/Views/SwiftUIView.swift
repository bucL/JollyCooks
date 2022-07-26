//
//  SwiftUIView.swift
//  JollyCooks
//
//  Created by Phillip Shen on 4/7/2022.
// After signing in the navigation and files will be displayed via the TabBar through this file. This acts like the "main" file.

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        TabBar()
        //Getting the TabBar. Code for tabbar items and stuff are all inside TabBar so all we have to do is just call 
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {

            SwiftUIView()
                .environmentObject(ListViewModel())

    
    }
}
