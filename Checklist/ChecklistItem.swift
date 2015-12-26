//
//  ChecklistItem.swift
//  Checklists
//
//  Created by M.I. Hollemans on 27/07/15.
//  Copyright © 2015 Razeware. All rights reserved.
//

import Foundation

class ChecklistItem: NSObject, NSCoding {
    var text = ""
    var checked = false
    
    func toggleChecked() {
        checked = !checked
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init()
    }
    
    override init() {
        super.init()
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(text, forKey: "Text")
        aCoder.encodeBool(checked, forKey: "Checked")
    }
}
