//  ViewController.m
//  oc-playground
//
//  Created by gaimanjing on 2020/4/3.
//  Copyright © 2020 gaimanjing. All rights reserved.
//

#import "ViewController.h"


@interface Sark : NSObject
@property (nonatomic, copy) NSString *name;
- (void)speak;
@end

@implementation Sark
- (void)speak {
    NSLog(@"my name's %@", self.name);
}
@end



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
//    https://halfrost.com/objc_runtime_isa_class/
    [super viewDidLoad];
    id cls = [Sark class];
    void *obj = &cls;
    [(__bridge id)obj speak];
}


@end

