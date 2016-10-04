func sleep(list: [Int]){
    for i in list {
        let time = DispatchTime.now() + Double(Int64(i * Int(NSEC_PER_SEC))) / Double(NSEC_PER_SEC)
        
        DispatchQueue.main.asyncAfter(deadline: time) {
            print(i)
        }
    }
    
    CFRunLoopRun()
}
sleep(list:[2, 11, 5, 4, 6, 7, 20, 14, 1])