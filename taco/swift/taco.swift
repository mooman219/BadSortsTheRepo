func taco(list: [Int]){
    var taco = list
        while taco != taco.sorted(){
        let rand1:UInt32 = arc4random_uniform(UInt32(list.count))
        let rand2:UInt32 = arc4random_uniform(UInt32(list.count))
        let meat = taco.remove(at: Int(rand1))
        taco.insert(meat, at: Int(rand2))
        print(taco)
    }
    
}
taco(list: [5,7,2,9,1,4])