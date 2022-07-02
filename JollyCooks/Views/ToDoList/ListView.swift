//
//  ListView.swift
//  JollyCooks
//
//  Created by Phillip Shen on 25/6/2022.
//  This is the ListView, gathers and displays the todo list and items created.

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel

    
    var body: some View {
        VStack{
            if listViewModel.items.isEmpty{
                Text("No Items")
            } else{
                List{
                    ForEach(listViewModel.items) {item in
                        ListRowView(item: item)
                            .onTapGesture {
                                withAnimation(.linear) {
                                    listViewModel.updateItem(item: item)
                                }
                            }
                    } //Loops item array
                    .onDelete(perform: listViewModel.deleteItem)
                    .onMove(perform: listViewModel.moveItem)
                }

            }
        }
            .navigationTitle("ToDo List")//Title of navigationview the List is inside of
                .navigationBarItems(leading: EditButton(), trailing: NavigationLink("Add", destination:
                               TodoCreateView()       ))//Navigation at the top
        
    }//End of Body
    
}//End of Struct





struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListView()
        }
        .environmentObject(ListViewModel())
        .navigationViewStyle(StackNavigationViewStyle())
    }
        
}

