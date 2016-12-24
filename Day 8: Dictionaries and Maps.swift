//
//  main.swift
//  Day 8: Dictionaries and Maps
//
//  Created by ftitree_fly on 2016/12/24.
//  Copyright © 2016年 tree_fly. All rights reserved.
//
//  URL: https://www.hackerrank.com/challenges/30-dictionaries-and-maps

import Foundation

var n = Int(readLine()!)!
var phoneBook = [String: String]()
var pair = [String]()

for _ in 1...n {
    pair = readLine()!.characters.split(" ").map(String.init)
    phoneBook[pair[0]] = pair[1]
}

while (true) {
    if let name = readLine(stripNewline: true) {
        
        if name == "" {
            break
        }
        
        if let number = phoneBook[name] {
            print("\(name)=\(number)")
        }else {
            print("Not found")
        }
    }else {
        break
    }
}
