//
//  ListView.swift
//  JollyCooks
//
//  Created by Phillip Shen on 25/6/2022.
//  This is the ListView, gathers and displays the todo list and items created.

import SwiftUI

struct ListView: View {
    
    @State var items: [ItemModel] = [ItemModel(title: "First Task", isCompleted: false),ItemModel(title: "Second Task", isCompleted: true)]

    //items is an array of "ItemModel".
    
    var body: some View {
        NavigationView{
            List{
                ForEach(items) {item in
                    ListRowView(item: item)
                } //Loops item array
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

