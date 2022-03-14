//
//  Norf.h
//  Foo
//
//  Created by Daniel Eggert on 09/01/15.
//  Copyright (c) 2015 objc.io. All rights reserved.
//

#import <Foundation/Foundation.h>


/// By making  adding this to the `Foo.private` module map the type itself becomes public but the interface remains private
@interface Norf : NSObject

/// This should not be visible outside the framework `Foo` althouh the type `Norf` will be
-(void) shouldNotBePublic;

@end
