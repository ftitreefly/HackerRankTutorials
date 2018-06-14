//
//  main.swift
//  Day 26:Nested Logic
//
//  Created by tree_fly on 2017/7/26.
//  Copyright © 2017年 tree_fly. All rights reserved.
//

import Foundation

func calculateDates(act:(Int, Int, Int), exp:(Int, Int, Int)) {
    //(Day, Month, Year)
    switch act {
    case (_, _, let year) where year > exp.2:
        print(10000)
    case (_, exp.1, exp.2):
        print(15    * max(act.0 - exp.0, 0))
    case (_, _, exp.2):
        print(500   * max(act.1 - exp.1, 0))
    default:
        print(0)
    }
}

var t = readLine()!.characters.split(separator: " ").map { Int(String($0))! }
let act = (t[0], t[1], t[2])

t = readLine()!.characters.split(separator: " ").map { Int(String($0))! }
let exp = (t[0], t[1], t[2])

calculateDates(act: act, exp: exp)
