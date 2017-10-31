//
//  cocktailshakersort.swift
//  
//
//  Created by Dan Sweetman on 10/26/17.
//

import Foundation

var test = [2,3,5,1,9,6,8,7,0]

func shake(drink:inout [Int]){
    print("Input list -> \(drink)")
    print("Running...")
    var swapped = true
    var start = 0
    var end = drink.count - 1
    
    while swapped {
        var i = 0
        swapped = false
        while i < end{
            if (drink[i] > drink[i + 1]) {
                drink.swapAt(i, i+1)
                swapped = true
            }
            i += 1
        }
        if !swapped {
            break
        }
        swapped = false
        end -= 1
        while start < i{
            if (drink[i-1] > drink[i]) {
                drink.swapAt(i-1,i)
                swapped = true
            }
            i -= 1
        }
        start += 1
    }
    print("Sorted list -> \(drink)")
}

shake(drink: &test)
