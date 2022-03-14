//
//  ViewController.swift
//  MyApp
//
//  Created by Daniel Eggert on 12/01/15.
//  Copyright (c) 2015 objc.io. All rights reserved.
//

import UIKit
import Foo



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        print("ViewController")
        let baz = Baz()
        print("\(baz)")
        baz.doSomething()

        let bar = Bar()
        /// Sadly this compiles so effectively there is no private way of exposing objective-c api and not exposing it publicly in Swift
        let norf = bar.norf
        norf.shouldNotBePublic()
        // But directly instantiating the type is not possible then?
//        let n = Norf()
        print("\(bar)")
    }
}
