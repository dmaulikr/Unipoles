//
//  LHViewControllerEasy.h
//  Unipoles
//
//  Created by rhdelaro on 11/10/13.
//  Copyright (c) 2013 LordHare. All rights reserved.
//

#import <UIKit/UIKit.h>

int row = 4;
int col = 4;
int pushedRow;
int pushedColumn;
int numberOfMoves;

int expectedMagnetCountInColumn1;
int expectedMagnetCountInColumn2;
int expectedMagnetCountInColumn3;
int expectedMagnetCountInColumn4;

int expectedMagnetCountInRow1;
int expectedMagnetCountInRow2;
int expectedMagnetCountInRow3;
int expectedMagnetCountInRow4;

BOOL gameResult;
BOOL Button11Pressed = NO; // YES if Magnet is placed
BOOL Button12Pressed = NO;
BOOL Button13Pressed = NO;
BOOL Button14Pressed = NO;
BOOL Button21Pressed = NO;
BOOL Button22Pressed = NO;
BOOL Button23Pressed = NO;
BOOL Button24Pressed = NO;
BOOL Button31Pressed = NO;
BOOL Button32Pressed = NO;
BOOL Button33Pressed = NO;
BOOL Button34Pressed = NO;
BOOL Button41Pressed = NO;
BOOL Button42Pressed = NO;
BOOL Button43Pressed = NO;
BOOL Button44Pressed = NO;

int row1MagnetMap[4] = {1, 0, 0, 0};
int row2MagnetMap[4] = {0, 0, 0, 1};
int row3MagnetMap[4] = {0, 1, 0, 0};
int row4MagnetMap[4] = {0, 0, 0, 0};

int row1MetalMap[4] = {0, 1, 0, 0};
int row2MetalMap[4] = {0, 0, 0, 0};
int row3MetalMap[4] = {1, 0, 0, 1};
int row4MetalMap[4] = {0, 0, 0, 0};

@interface LHViewControllerEasy : UIViewController
{
    IBOutlet UIImageView *result;
    
    IBOutlet UIButton *Button11;
    IBOutlet UIButton *Button12;
    IBOutlet UIButton *Button13;
    IBOutlet UIButton *Button14;
    IBOutlet UIButton *Button21;
    IBOutlet UIButton *Button22;
    IBOutlet UIButton *Button23;
    IBOutlet UIButton *Button24;
    IBOutlet UIButton *Button31;
    IBOutlet UIButton *Button32;
    IBOutlet UIButton *Button33;
    IBOutlet UIButton *Button34;
    IBOutlet UIButton *Button41;
    IBOutlet UIButton *Button42;
    IBOutlet UIButton *Button43;
    IBOutlet UIButton *Button44;
        
    IBOutlet UILabel *SumOfMagnetInColumn1;
    IBOutlet UILabel *SumOfMagnetInColumn2;
    IBOutlet UILabel *SumOfMagnetInColumn3;
    IBOutlet UILabel *SumOfMagnetInColumn4;

    IBOutlet UILabel *SumOfMagnetInRow1;
    IBOutlet UILabel *SumOfMagnetInRow2;
    IBOutlet UILabel *SumOfMagnetInRow3;
    IBOutlet UILabel *SumOfMagnetInRow4;
}

-(IBAction)Button11:(id)sender;
-(IBAction)Button12:(id)sender;
-(IBAction)Button13:(id)sender;
-(IBAction)Button14:(id)sender;
-(IBAction)Button21:(id)sender;
-(IBAction)Button22:(id)sender;
-(IBAction)Button23:(id)sender;
-(IBAction)Button24:(id)sender;
-(IBAction)Button31:(id)sender;
-(IBAction)Button32:(id)sender;
-(IBAction)Button33:(id)sender;
-(IBAction)Button34:(id)sender;
-(IBAction)Button41:(id)sender;
-(IBAction)Button42:(id)sender;
-(IBAction)Button43:(id)sender;
-(IBAction)Button44:(id)sender;

-(IBAction)ResetLevel:(id)sender;

-(void)initializeBoardToStartPlaying;
//-(void)resetLevel;
-(void)loadLocationOfMetals;



@end
