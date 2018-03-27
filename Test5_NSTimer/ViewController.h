//
//  ViewController.h
//  Test5_NSTimer
//
//  Created by Mick Sexton on 3/25/18.
//  Copyright © 2018 Mick Sexton. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSTimer *timer;
    int counter;
    bool timerRunning;
}

@property (weak, nonatomic) IBOutlet UILabel *secondsLabel;
- (IBAction)startTimer:(id)sender;
- (IBAction)stopTimer:(id)sender;

@end

