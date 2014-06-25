//
//  GetkidnameViewController.h
//  Kidsname
//
//  Created by BSA Univ21 on 20/06/14.
//  Copyright (c) 2014 BSA Univ21. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface GetkidnameViewController : UIViewController
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property(strong,nonatomic)NSArray *kidname;
@property(strong,nonatomic) NSString *newobj;
@property (strong, nonatomic) IBOutlet UITextField *Getkidname;
- (IBAction)Save:(id)sender;
@end
