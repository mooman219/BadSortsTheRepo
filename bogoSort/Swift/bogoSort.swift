func bogo(list: [Int]){
    var bogoList = list
    while bogoList != list.sorted(){
        for i in 1..<bogoList.count {
            let j = Int(arc4random_uniform(UInt32(i)))
            (bogoList[i], bogoList[j]) = (bogoList[j], bogoList[i])
            print(bogoList)
        }
    }
}