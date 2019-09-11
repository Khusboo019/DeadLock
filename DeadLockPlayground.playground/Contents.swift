import UIKit

var str = "Hello, playground"

//Create a dispatchqueue
let disPatchQueue = DispatchQueue(label: "Khusboo")
//Asyncrounus request
disPatchQueue.async {
    print("Async request has been started")
    //syncrounus request
    disPatchQueue.sync {
        print("sync request has been started")
        // * outer block is waiting for  inner block to complete,
        // * inner block won't start before outer block finishes
        // *** deadlock
    }
    //This will never print
    print("Completed")
    
}

