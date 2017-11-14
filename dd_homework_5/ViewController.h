//
//  ViewController.h
//  dd_homework_2
//
//  Created by Влад Купряков on 12.10.17.
//  Copyright © 2017 Влад Купряков. All rights reserved.
//

@import UIKit;
@interface ViewController : UIViewController{
    
}
@property (assign, nonatomic) IBOutlet UITextView *textField;
-(NSMutableArray *)returnArr;
-(void)takeIdx:(NSInteger *)idx;
@end

