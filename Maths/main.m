//
//  main.m
//  Maths
//
//  Created by Endeavour2 on 6/27/17.
//  Copyright © 2017 SamOg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        NSInteger userAnswer;
        while (gameOn) {
            
        AdditionQuestion *q1 = [[AdditionQuestion alloc]init];
            NSLog(@" %@", q1.question);
            
            NSString *userInput = [InputHandler getUserInput];
            
            if ([userInput isEqualToString:@"quit"]) {
                gameOn = NO;
                break;
            }
            else {
            userAnswer = [userInput intValue];
            }
            
            if (q1.answer == userAnswer) {
                NSLog(@"RIGHT!!");
            }
            else {
                NSLog(@"WRONG!!!");
            }
        }
        
    }
    return 0;
}
