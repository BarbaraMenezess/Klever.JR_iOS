//
//  user.swift
//  ToDoList_
//
//  Created by Bárbara Menezes  on 29/11/23.
//

import Foundation
struct User: Codable{
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
