//
//  ViewController.m
//  Test5_NSTimer
//
//  Created by Mick Sexton on 3/25/18.
//  Copyright © 2018 Mick Sexton. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    timerRunning = false;
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)startTimer:(id)sender {
    if (timerRunning) {
        // do nothing to avoid multiple timer instances
    } else {
        counter = 0;
        timerRunning = true;
        self.secondsLabel.text = [NSString stringWithFormat:@"%i", counter];
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(countTimer) userInfo:nil repeats:YES];
    }
}

-(void)countTimer {
    counter++;
    self.secondsLabel.text = [NSString stringWithFormat:@"%i", counter];
}

- (IBAction)stopTimer:(id)sender {
    [timer invalidate];
    timerRunning = false;
}
@end
