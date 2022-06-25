//
//  TodoCreateView.swift
//  JollyCooks
//
//  Created by Phillip Shen on 25/6/2022.
//  This is the Add Page, where the user goes to create new Todo list items. 

import SwiftUI

struct TodoCreateView: View {
    
    @State var textFieldText: String = ""
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack {
                    TextField("Type something here...", text: $textFieldText)
                        .frame(height: 55)
                        .padding(.horizontal)
                        .background(Color.gray)
                    .cornerRadius(10)
                    
                    Button(action: {}, label: {Text("Create".uppercased()).foregroundColor(.white)
                        .frame(height:55)
                        .frame(maxWidth: .infinity)
                            .background(Color.accentColor)
                            .cornerRadius(10)
                    })
                }.padding(16)
            }
            .navigationTitle("Add Item")
        }//NavigationView END
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct TodoCreateView_Previews: PreviewProvider {
    static var previews: some View {
            TodoCreateView()
    }
}
