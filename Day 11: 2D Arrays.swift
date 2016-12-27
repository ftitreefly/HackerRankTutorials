//
//  main.swift
//  HackerRankSwift3
//
//  Created by tree_fly on 2016/12/27.
//  Copyright © 2016年 tree_fly. All rights reserved.
//
//  Swift : 3.0+

import Foundation

//Day 11 Start
public struct Array2D<T> {
    public let columns: Int
    public let rows: Int
    private var array: [T]
    
    public init(columns: Int, rows: Int, initialValue: T) {
        self.columns = columns
        self.rows = rows
        array = .init(repeating: initialValue, count: rows*columns)
    }
    
    public subscript(column: Int, row: Int) -> T {
        get {
            return array[row*columns + column]
        }
        set {
            array[row*columns + column] = newValue
        }
    }
}

func day11() {
    var A = Array2D(columns: 6, rows: 6, initialValue: 0)
    
    for r in 0...5 {
        let line = readLine()!.characters.split(separator: " ").map(String.init)
        for c in 0...5 {
            A[c, r] = Int(line[c])!
        }
    }
    
    var max = -63
    
    for r in 1...4 {
        for c in 1...4 {
            let sum = A[c-1, r-1] + A[c, r-1] + A[c+1, r-1]
                + A[c,r]
                + A[c-1, r+1] + A[c, r+1] + A[c+1, r+1]
            
            if sum > max {
                max = sum
            }
        }
    }
    
    print(max)
}
