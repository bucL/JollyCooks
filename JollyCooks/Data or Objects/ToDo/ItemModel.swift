//
//  ItemModel.swift
//  JollyCooks
//
//  Created by Phillip Shen on 26/6/2022.
//
// ItemModel is the model for ToDo List

import Foundation

struct ItemModel: Identifiable {
    let id: String
    let title: String //Title of Todo item
    let isCompleted: Bool //Is the Todo Item completed?
    
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
}


