//
//  ShowkidnameViewController.m
//  Kidsname
//
//  Created by BSA Univ21 on 20/06/14.
//  Copyright (c) 2014 BSA Univ21. All rights reserved.
//

#import "ShowkidnameViewController.h"
@import AudioToolbox;
#import <Slt/Slt.h>
#import <OpenEars/FliteController.h>
#import "Kids.h"
#import "AppDelegate.h"
#import "GetkidnameViewController.h"

@interface ShowkidnameViewController ()
{
    GetkidnameViewController *getnme;
    AppDelegate *delobj;
    Kids *det;
}
@property(strong,nonatomic) FliteController *flite;
@property(strong,nonatomic) Slt *slt;
@property(nonatomic,strong) NSString *kids;
@end

@implementation ShowkidnameViewController

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
    
    delobj=[[UIApplication sharedApplication]delegate];
    self.managedObjContext=delobj.managedObjectContext;
    self.kidname=[delobj getkidname];
    self.Showkidname.text=[self.kidname description];
    det=[self.kidname objectAtIndex:0];
    self.Showkidname.text=det.kidname;
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.flite say:det.kidname withVoice:self.slt];
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
//lazy accessor method

- (FliteController *)flite{
    
    if(_flite == nil){
        _flite=[[FliteController alloc]init];
    }
    return _flite;
}

-(Slt *)slt{
    
    if(_slt==nil){
        _slt=[[Slt alloc]init];
    }
    return _slt;
}
@end
