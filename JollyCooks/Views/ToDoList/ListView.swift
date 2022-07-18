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
        NavigationView{
            VStack{
                if listViewModel.items.isEmpty{
                    NoItemsView()
                        .transition(AnyTransition.opacity.animation(.easeIn))
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
            .navigationBarItems(leading: EditButton(), trailing: NavigationLink(destination: TodoCreateView())
                    {Text("New Task \(Image(systemName: "plus.diamond"))") })
            
            
            
            //Navigation at the top
            
        }
        .navigationViewStyle(StackNavigationViewStyle())
        
       

        
    }//End of Body
    
}//End of Struct





struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            

                ListView()
            
            .environmentObject(ListViewModel())
            
            .preferredColorScheme(.dark)
            
            
           
                ListView()
            
            .environmentObject(ListViewModel())
        }
        
        
        
    }
        
}

