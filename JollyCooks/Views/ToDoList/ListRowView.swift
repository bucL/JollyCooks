//
//  ListRowView.swift
//  JollyCooks
//
//  Created by Phillip Shen on 25/6/2022.
// ListRowView is what the basic blueprint of the todo list items will look like will be kept. 

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ? "checkmark" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            //Color and Icon will change depending on item completion status
            Text(item.title)
            //Text will display title of item from ItemModel
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

struct ListRowView_Previews: PreviewProvider {
    
    
    static var item1 = ItemModel(title: "First Item!", isCompleted: false)
    static var item2 = ItemModel(title: "Hi", isCompleted: true)
    //Create two versions of item
    
    static var previews: some View {
        Group {
            ListRowView(item: item1)
            ListRowView(item: item2)
        } //Group to see listrowview with a completed and uncompleted item
        .previewLayout(.sizeThatFits)
    }
}
