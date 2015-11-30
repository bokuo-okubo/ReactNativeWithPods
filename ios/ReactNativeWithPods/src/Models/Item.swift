//
//  Item.swift
//  ReactNativeWithPods
//
//  Created by Yohei Okubo on 11/30/15.
//  Copyright © 2015 bko. All rights reserved.
//

import Foundation

enum ItemColor {
    case Red
    case Yellow
    case Blue
    case White
}

class Item {
    /* class definition */
    class var items: Array<Item>

    class func find(id: Int) -> Optional<Item> {
        if !items { return nil }
        return self.items[id]
    }

    class func add(item: item) {
        let (name, color) = (item.name, item.color)
        self.items ||= Array(item)
        self.items.push(item)
    }


    /* instance definition */
    let name: String
    let color: ItemColor

    init(name:String, color: ItemColor) {
        self.name = name
        self.color = ItemColor
    }
}

