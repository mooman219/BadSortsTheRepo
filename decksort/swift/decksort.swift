//
//  decksort.swift
//  
//
//  Created by Dan Sweetman on 10/26/17.
//

import Foundation

var test = [2,3,5,1,9,6,8,7,0]

func shuffle(list:inout [Int]){
    print("Input list -> \(list)")
    print("Running...")
    while list != list.sorted() {
        var firstHalf = Array(list[0 ..< list.count/2])
        var secondHalf = Array(list[list.count/2 ..< list.count])
        let stuff = arc4random_uniform(2)
        var together = [Int]()
        
        if stuff == 0{
            while together.count != list.count{
                if firstHalf.count == 0{
                    together.append(secondHalf.remove(at: 0))
                    break
                }
                together.append(firstHalf.remove(at: 0))
                together.append(secondHalf.remove(at: 0))
            }
        }else{
            while together.count != list.count{
                if firstHalf.count == 0{
                    together.append(secondHalf.remove(at: 0))
                    break
                }
                together.append(secondHalf.remove(at: 0))
                together.append(firstHalf.remove(at: 0))
            }
        }
        
        list = together
    }
    print("Sorted list -> \(list)")
}

shuffle(list: &test)
