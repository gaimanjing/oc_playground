//  test_method_forward.m
//  oc-playgroundTests
//
//  Created by gaimanjing on 2020/4/3.
//  Copyright © 2020 gaimanjing. All rights reserved.
//

#import <XCTest/XCTest.h>


@interface NSObject (Sark)
+ (void)foo;
- (void)foo;
@end

@implementation NSObject (Sark)
- (void)foo
{
   NSLog(@"IMP: -[NSObject(Sark) foo]");
}

@end




@interface test_method_forward : XCTestCase

@end

@implementation test_method_forward

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    
    
    //https://halfrost.com/objc_runtime_objc_msgsend/
    
    @autoreleasepool {
        [NSObject foo];
        [[NSObject new] foo];
    }
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
