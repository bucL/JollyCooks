//
//  SwiftUIView.swift
//  JollyCooks
//
//  Created by Phillip Shen on 4/7/2022.
// This acts like the "main" file which all other views will be called here?

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        TabBar()
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            SwiftUIView()
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .environmentObject(ListViewModel())
    }
}
