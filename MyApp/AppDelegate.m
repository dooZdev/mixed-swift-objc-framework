//
//  AppDelegate.m
//  MyApp
//
//  Created by Daniel Eggert on 09/01/15.
//  Copyright (c) 2015 objc.io. All rights reserved.
//

#import "AppDelegate.h"

#import <Foo/Foo.h>



@interface AppDelegate ()

@end



@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Here we can access the classes from Foo and check that they work:
    
    NSLog(@"AppDelegate");
    Bar* baz = [[Bar alloc] init];
    NSLog(@"%@", baz);
    // WARNING: so although this should be private the type itself can be exposed public
    NSLog(@"%@", baz.norf);
    // The underlying interface is not public however so uncommenting the line below will not compile
//    NSLog(@"%@", [baz.norf shouldNotBePublic]);
    
    // This works as Baz is public
    NSLog(@"%@", baz.objcBaz);
    
    [baz doSomething];

    id bar = [[Bar alloc] init];
    NSLog(@"%@", bar);

    return YES;
}

@end
