//
//  ItemModel.swift
//  JollyCooks
//
//  Created by Phillip Shen on 26/6/2022.
//
// ItemModel is the model for ToDo List

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String //Title of Todo item
    let isCompleted: Bool //Is the Todo Item completed?
}
