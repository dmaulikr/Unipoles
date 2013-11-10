//
//  LHDataLevels.h
//  Unipoles
//
//  Created by rhdelaro on 11/10/13.
//  Copyright (c) 2013 LordHare. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

int Level;
/*
int row1MagnetMap[4] = {1, 0, 0, 0};
int row2MagnetMap[4] = {0, 0, 0, 1};
int row3MagnetMap[4] = {0, 1, 0, 0};
int row4MagnetMap[4] = {0, 0, 0, 0};
*/


@interface LHDataLevels : NSObject
{
    IBOutlet UIButton *nextLevel;

}

-(IBAction)nextLevel:(id)sender;

@end
