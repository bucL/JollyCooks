//
//  TodoCreateView.swift
//  JollyCooks
//
//  Created by Phillip Shen on 25/6/2022.
//  This is the Add Page, where the user goes to create new Todo list items. 

import SwiftUI

struct TodoCreateView: View {
    @Environment(\.presentationMode) var presentationMode
    
    //keeps track of where we are in the view hierachy
    @EnvironmentObject var listViewModel: ListViewModel //Get information from ListViewModel
    @State var textFieldText: String = ""
    
    //These two variables are for alert, alert text is String and its false(not showing) until word count fails and triggers it.
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    var body: some View {
      
            ScrollView{
                VStack {
                    TextField("Type something here...", text: $textFieldText)
                        .frame(height: 55)
                        .padding(.horizontal)
                        .background(Color(UIColor.secondarySystemBackground))
                    .cornerRadius(10)
                    
                    Button(action: saveButtonPressed, label: {Text("Create".uppercased()).foregroundColor(.white)
                        .frame(height:55)
                        .frame(maxWidth: .infinity)
                            .background(Color.accentColor)
                            .cornerRadius(10)
                    })
                }.padding(16)
            }
            .navigationTitle("Add Item")
            .alert(isPresented: $showAlert, content: getAlert)
    }
    
    func saveButtonPressed() {
        if textisAppropriate(){
            listViewModel.addItem(title: textFieldText)
            presentationMode.wrappedValue.dismiss()
        }
        //tells presentation mode to go back one in the view hierachy
    } //Append item to data array
    
    func textisAppropriate() -> Bool {
        if textFieldText.count < 1 {
            alertTitle = "ToDo Item must be atleast 1 character long"
            showAlert.toggle()
            return false //Return false means user cannot create that item until word count is appropriate. 
        }
        if textFieldText.count > 30 {
            alertTitle = "ToDo Item must be under 30 words, else you've come to the wrong app "
            showAlert.toggle()
            return false
        }
        return true
    } //Checks the word count of textFieldText
    
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    } //Func for alert
}





struct TodoCreateView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            
            NavigationView{
                TodoCreateView()
            }.environmentObject(ListViewModel())
                .navigationViewStyle(StackNavigationViewStyle())
                .preferredColorScheme(.dark)
              
            //dark mode preview
            
            NavigationView{
                TodoCreateView()
            }.environmentObject(ListViewModel())
                .navigationViewStyle(StackNavigationViewStyle())
              //Light mode preview
        }
    }
}
