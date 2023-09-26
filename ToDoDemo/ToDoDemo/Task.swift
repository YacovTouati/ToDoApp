//
//  Task.swift
//  ToDoDemo
//
//  Created by yacov touati on 19/09/2023.
//

import Foundation
import RealmSwift

class Task: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var title = ""
    @Persisted var completed = false
}
