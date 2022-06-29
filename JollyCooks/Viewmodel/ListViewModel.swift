//
//  ListViewModel.swift
//  JollyCooks
//
//  Created by Phillip Shen on 29/6/2022.
//
// ListViewModel is the viewmodel linking todo list view and model

import Foundation

class ListViewModel: ObservableObject{
    
    
    @Published var items: [ItemModel] = []
    
    init() {
        getItems()
    }
    
    func getItems() {
        let newItems = [ItemModel(title: "First Task", isCompleted: false),ItemModel(title: "Second Task", isCompleted: true)]
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(indexSet: IndexSet){
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int){
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    
    func updateItem(item: ItemModel) {
                
        if let index = items.firstIndex(where: { $0.id == item.id}) {
            items[index] = item.updateCompletion()
        }
    }
    
}
