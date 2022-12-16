//
//  TwoViewController.swift
//  GCD2
//
//  Created by Марк Фокша on 16.12.2022.
//

import UIKit

class TwoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

//        let queue = DispatchQueue.global(qos: .utility)
//        queue.async {
//            DispatchQueue.concurrentPerform(iterations: 20000) {
//                print("\($0) times")
//                print(Thread.current)
//            }
//        }
        
        myInactiveQueue()
        
    }
    
    func myInactiveQueue() {
        let inactiveQueue = DispatchQueue(label: "New", attributes: [.concurrent, .initiallyInactive])
        inactiveQueue.async {
            print("Done!")
        }
        print("Did not start yet")
        inactiveQueue.activate()
        print("Activate")
        inactiveQueue.suspend()
        print("Suspended")
        inactiveQueue.resume()
        
    }
    
    

}
