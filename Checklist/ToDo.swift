//
//  ToDo.swift
//  Checklist
//
//  Created by Pash DeVore on 11/11/17.
//  Copyright © 2017 Pash DeVore. All rights reserved.
//

import Foundation

class ToDo {
    var text: String?
    var isCompleted: Bool
    
    init(text: String) {
        self.text = text
        self.isCompleted = false
    }
}
