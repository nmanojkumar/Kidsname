//
//  GetkidnameViewController.m
//  Kidsname
//
//  Created by BSA Univ21 on 20/06/14.
//  Copyright (c) 2014 BSA Univ21. All rights reserved.
//

#import "GetkidnameViewController.h"
#import "Appdelegate.h"
#import "Kids.h"
#import "ShowkidnameViewController.h"
@interface GetkidnameViewController ()
{
    AppDelegate *appdel;
    Kids *detail;
}
@property (nonatomic,strong)AppDelegate *delobj;
@end

@implementation GetkidnameViewController
@synthesize managedObjectContext,kidname;;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    AppDelegate *app =[[UIApplication sharedApplication]delegate];
    managedObjectContext =app.managedObjectContext;
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)Save:(id)sender {
    ShowkidnameViewController *next=[[ShowkidnameViewController alloc]init];
    appdel=[[UIApplication sharedApplication]delegate];
    self.managedObjectContext=appdel.managedObjectContext;
    self.kidname=[appdel getkidname];
    detail=[self.kidname objectAtIndex:0];
    
    detail.kidname=[NSString stringWithFormat:@"%@",_Getkidname.text];
    NSError *error=nil;
    if(![self.managedObjectContext save:&error])
    {
        NSLog(@"not saved %@",[error localizedDescription]);
         [self.view endEditing:YES];
    }
    next= [[UIStoryboard storyboardWithName:@"Storyboard" bundle:[NSBundle mainBundle]]instantiateViewControllerWithIdentifier:@"ShowkidnameViewController"];
    [self presentViewController:next animated:YES completion:^void{}];

}

@end
