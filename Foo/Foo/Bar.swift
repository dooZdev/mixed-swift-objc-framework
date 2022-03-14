//
//  Bar.swift
//  Foo
//
//  Created by Daniel Eggert on 09/01/15.
//  Copyright (c) 2015 objc.io. All rights reserved.
//

import UIKit
import Foo_Private



@objc(Bar)
public class Bar: NSObject {
    
    @objc
    public let objcBaz: Baz = .init()
    
    /// Exposing private objective-c type public is possible, just change private to public
    /// - WARNING: Changing this to public will expose the whole Norf interface to swift!! without warning or compiler error.
    @objc
    public let norf: Norf = .init()
    
    @objc
    public func doSomething() {
        // We can access Baz, which is public:
        let b = Baz()
        print("\(b)")
        
        // We can also access Norf, even though it is not public:
        let n = Norf()
        n.shouldNotBePublic()
        
        let q = Qux()
        print("\(q)")
    }
}
