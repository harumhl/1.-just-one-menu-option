//
//  ViewController_Report
//  AggieFix
//
//  Created by Myunghoon Lee (Haru) on 9/15/15.
//  Copyright (c) 2015 Engineers Serving the Community. All rights reserved.
//

#import "ViewController_Report.h"

@interface ViewController_Report ()

@end

@implementation ViewController_Report

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [scroller setScrollEnabled:YES];
    [scroller setContentSize:CGSizeMake(320, 768)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
// Exiting back to the main menu
- (IBAction)exit:(id)sender {
    
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (IBAction)saveText:(id)sender {
    NSString *saveTitleText = titleText.text;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:saveTitleText forKey:@"titleText"];
    [defaults synchronize];
}
- (IBAction)loadText:(id)sender {
    // load the saved info to the label
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *loadTitleText = [defaults objectForKey:@"titleText"];
    [loaded setText:loadTitleText];

}
- (IBAction)dismissKeyboard:(id)sender {
    [sender resignFirstResponder];
}

@end
