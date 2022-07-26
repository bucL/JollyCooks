//
//  ListView.swift
//  JollyCooks
//
//  Created by Phillip Shen on 25/6/2022.
//  This is the ListView, all the other views ListRowView, TodoCreateView and NoItemsView are displayed through this view.

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    //EnvironmentObject because the data is shared between multiple views.
    
    var body: some View {
        NavigationView{
            VStack{
                if listViewModel.items.isEmpty{
                    NoItemsView()
                        .transition(AnyTransition.opacity.animation(.easeIn))
                        //If the user has not items created then display the NoItemView. Transition just adds some animation
                } else{
                    List{
                        ForEach(listViewModel.items) {item in
                            ListRowView(item: item)
                                .onTapGesture {
                                    withAnimation(.linear) {
                                        listViewModel.updateItem(item: item)
                                    }
                                }
                        } //For each item in item array it will be displayed and have to option to be updated when tapped.
                        .onDelete(perform: listViewModel.deleteItem)
                        .onMove(perform: listViewModel.moveItem)
                        //Delete and move func which are created in ListViewModel file in viewmodel folder
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
            //View device in dark mode. Using this to test compatability with dark mode users.
            
           
                ListView()
            .environmentObject(ListViewModel())
            
        }
        
        
        
    }
        
}

