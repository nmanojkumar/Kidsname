//
//  Getkidnametestcase.h
//  Kidsname
//
//  Created by BSA Univ21 on 23/06/14.
//  Copyright (c) 2014 BSA Univ21. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GetkidnameViewController.h"
#import "AppDelegate.h"

@interface Getkidnametestcase : XCTestCase
@property (nonatomic,strong)NSString *delobjl;
@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@end
