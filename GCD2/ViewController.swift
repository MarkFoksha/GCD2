//
//  ViewController.swift
//  GCD2
//
//  Created by Марк Фокша on 16.12.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        afterBlock(seconds: 4, queue: DispatchQueue.main ) {
            print("Hello")
            print(Thread.current)
        }
    }
    
    func afterBlock(seconds: Int, queue: DispatchQueue = DispatchQueue.global(), completion: @escaping() -> ()) {
        queue.asyncAfter(deadline: .now() + .seconds(seconds)) {
            completion()
        }
    }


}

