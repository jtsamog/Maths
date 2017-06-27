//
//  ScoreKeeper.h
//  Maths
//
//  Created by Endeavour2 on 6/27/17.
//  Copyright © 2017 SamOg. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject
@property (nonatomic) float rightCount;
@property (nonatomic) float wrongCount;

-(NSString *)generateScore;
@end
