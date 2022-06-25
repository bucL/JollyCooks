//
//  ListView.swift
//  JollyCooks
//
//  Created by Phillip Shen on 25/6/2022.
//  This is the ListView, gathers and displays the todo list and items created.

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = ["first title","Second title!","Third TITLE!"]

    //items is an array of type String
    
    var body: some View {
        NavigationView{
            List{
                ForEach(items, id: \.self) {item in ListRowView(title: item)} //Loops item array
            }
            .navigationTitle("ToDo List")//Title of navigationview the List is inside of
                .navigationBarItems(leading: EditButton(), trailing: NavigationLink("Add", destination:
                               TodoCreateView()       ))//Navigation at the top
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

