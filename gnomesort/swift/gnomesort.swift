//
//  gnomesort.swift
//  
//
//  Created by Dan Sweetman on 10/26/17.
//

import Foundation

var test = [2,3,5,1,9,6,8,7,0]

func gnomes(list:inout [Int]){
    print("Input list -> \(list)")
    print("Running...")
    var i = 0
    while list != list.sorted(){
        if i == 0{
            i += 1
        }
        if list[i] >= list[i-1] {
            i += 1
        } else if list[i] < list[i-1]{
            list.swapAt(i, i-1)
            i -= 1
        }
    }
    print("Sorted list -> \(list)")
}
gnomes(list: &test)

