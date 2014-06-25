//
//  ShowkidnameViewController.h
//  Kidsname
//
//  Created by BSA Univ21 on 20/06/14.
//  Copyright (c) 2014 BSA Univ21. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GetkidnameViewController.h"
#import "AppDelegate.h"

@interface ShowkidnameViewController : UIViewController
@property (strong, nonatomic) NSManagedObjectContext *managedObjContext;
@property(strong,nonatomic) NSString *newobj;
@property (strong, nonatomic) IBOutlet UILabel *Showkidname;
@property(strong,nonatomic)NSArray *kidname;
@property (nonatomic, retain) NSString * detail;
@property (strong, nonatomic) NSString *nameStr;
@end

