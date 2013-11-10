//
//  LHViewControllerEasy.m
//  Unipoles
//
//  Created by rhdelaro on 11/10/13.
//  Copyright (c) 2013 LordHare. All rights reserved.
//

#import "LHViewControllerEasy.h"

NSNumber *magnetOnTile;

@interface LHViewControllerEasy ()

@end

@implementation LHViewControllerEasy


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
    [self initializeBoardToStartPlaying];
    /////////////////////////////////////////    Button11.imageView.hidden = YES;
    /*
    Button11.imageView.hidden = YES;
    Button12.imageView.hidden = YES;
    Button13.imageView.hidden = YES;
    Button14.imageView.hidden = YES;
    Button21.imageView.hidden = YES;
    Button22.imageView.hidden = YES;
    Button23.imageView.hidden = YES;
    Button24.imageView.hidden = YES;
    Button31.imageView.hidden = YES;
    Button32.imageView.hidden = YES;
    Button33.imageView.hidden = YES;
    Button34.imageView.hidden = YES;
    Button41.imageView.hidden = YES;
    Button42.imageView.hidden = YES;
    Button43.imageView.hidden = YES;
    Button44.imageView.hidden = YES;
    
    expectedMagnetCountInRow1 = 0;
    expectedMagnetCountInRow2 = 0;
    expectedMagnetCountInRow3 = 0;
    expectedMagnetCountInRow4 = 0;
    
    expectedMagnetCountInColumn1 = 0;
    expectedMagnetCountInColumn2 = 0;
    expectedMagnetCountInColumn3 = 0;
    expectedMagnetCountInColumn4 = 0;
    /////////////////////////////////////////
    
    for(int j=0;j<col;j++){
        expectedMagnetCountInRow1+=row1MagnetMap[j];
        expectedMagnetCountInRow2+=row2MagnetMap[j];
        expectedMagnetCountInRow3+=row3MagnetMap[j];
        expectedMagnetCountInRow4+=row4MagnetMap[j];

        if(j==0) {
            expectedMagnetCountInColumn1+=row1MagnetMap[j];
            expectedMagnetCountInColumn1+=row2MagnetMap[j];
            expectedMagnetCountInColumn1+=row3MagnetMap[j];
            expectedMagnetCountInColumn1+=row4MagnetMap[j];
            
            if(row1MetalMap[j] == 1){
                UIImage *buttonImage = [UIImage imageNamed:@"star.png"];
                [Button11 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button11];
            }
            if(row2MetalMap[j] == 1){
                UIImage *buttonImage = [UIImage imageNamed:@"star.png"];
                [Button21 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button21];
            }
            if(row3MetalMap[j] == 1){
                UIImage *buttonImage = [UIImage imageNamed:@"star.png"];
                [Button31 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button31];
            }
            if(row4MetalMap[j] == 1){
                UIImage *buttonImage = [UIImage imageNamed:@"star.png"];
                [Button41 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button41];
            }
        }
        if(j==1) {
            expectedMagnetCountInColumn2+=row1MagnetMap[j];
            expectedMagnetCountInColumn2+=row2MagnetMap[j];
            expectedMagnetCountInColumn2+=row3MagnetMap[j];
            expectedMagnetCountInColumn2+=row4MagnetMap[j];
            
            if(row1MetalMap[j] == 1){
                UIImage *buttonImage = [UIImage imageNamed:@"star.png"];
                [Button12 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button12];
            }
            if(row2MetalMap[j] == 1){
                UIImage *buttonImage = [UIImage imageNamed:@"star.png"];
                [Button22 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button22];
            }
            if(row3MetalMap[j] == 1){
                UIImage *buttonImage = [UIImage imageNamed:@"star.png"];
                [Button32 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button32];
            }
            if(row4MetalMap[j] == 1){
                UIImage *buttonImage = [UIImage imageNamed:@"star.png"];
                [Button42 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button42];
            }

        }
        if(j==2) {
            expectedMagnetCountInColumn3+=row1MagnetMap[j];
            expectedMagnetCountInColumn3+=row2MagnetMap[j];
            expectedMagnetCountInColumn3+=row3MagnetMap[j];
            expectedMagnetCountInColumn3+=row4MagnetMap[j];
            
            if(row1MetalMap[j] == 1){
                UIImage *buttonImage = [UIImage imageNamed:@"star.png"];
                [Button13 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button13];
            }
            if(row2MetalMap[j] == 1){
                UIImage *buttonImage = [UIImage imageNamed:@"star.png"];
                [Button23 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button23];
            }
            if(row3MetalMap[j] == 1){
                UIImage *buttonImage = [UIImage imageNamed:@"star.png"];
                [Button33 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button33];
            }
            if(row4MetalMap[j] == 1){
                UIImage *buttonImage = [UIImage imageNamed:@"star.png"];
                [Button43 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button43];
            }

        }
        if(j==3) {
            expectedMagnetCountInColumn4+=row1MagnetMap[j];
            expectedMagnetCountInColumn4+=row2MagnetMap[j];
            expectedMagnetCountInColumn4+=row3MagnetMap[j];
            expectedMagnetCountInColumn4+=row4MagnetMap[j];
            
            if(row1MetalMap[j] == 1){
                UIImage *buttonImage = [UIImage imageNamed:@"star.png"];
                [Button14 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button14];
            }
            if(row2MetalMap[j] == 1){
                UIImage *buttonImage = [UIImage imageNamed:@"star.png"];
                [Button24 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button24];
            }
            if(row3MetalMap[j] == 1){
                UIImage *buttonImage = [UIImage imageNamed:@"star.png"];
                [Button34 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button34];
            }
            if(row4MetalMap[j] == 1){
                UIImage *buttonImage = [UIImage imageNamed:@"star.png"];
                [Button44 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button44];
            }

        }

    }
    
    SumOfMagnetInColumn1.text = [NSString stringWithFormat:@"%i", expectedMagnetCountInColumn1];
    SumOfMagnetInColumn2.text = [NSString stringWithFormat:@"%i", expectedMagnetCountInColumn2];
    SumOfMagnetInColumn3.text = [NSString stringWithFormat:@"%i", expectedMagnetCountInColumn3];
    SumOfMagnetInColumn4.text = [NSString stringWithFormat:@"%i", expectedMagnetCountInColumn4];

    SumOfMagnetInRow1.text = [NSString stringWithFormat:@"%i", expectedMagnetCountInRow1];
    SumOfMagnetInRow2.text = [NSString stringWithFormat:@"%i", expectedMagnetCountInRow2];
    SumOfMagnetInRow3.text = [NSString stringWithFormat:@"%i", expectedMagnetCountInRow3];
    SumOfMagnetInRow4.text = [NSString stringWithFormat:@"%i", expectedMagnetCountInRow4];
    */
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Button11:(id)sender {
    pushedRow = 1;
    pushedColumn = 1;
    // Check if this is a "Metal" cell. If so, then do nothing
    // Check if button has been pressed, if so "un-press" it by removing the Magnet

    if(Button11Pressed == YES) {
        Button11Pressed = NO;
        Button11.imageView.hidden = YES;
    } else if (Button11Pressed == NO && !(row1MetalMap[0] == 1)) {
        Button11Pressed = YES;
        UIImage *buttonImage = [UIImage imageNamed:@"first.png"];
        [Button11 setImage:buttonImage forState:UIControlStateNormal];
        [self.view addSubview:Button11];
    }
  
}

- (IBAction)Button12:(id)sender {
    pushedRow = 1;
    pushedColumn = 2;
    
    if(Button12Pressed == YES) {
        Button12Pressed = NO;
        Button12.imageView.hidden = YES;
    } else if (Button12Pressed == NO && !(row1MetalMap[1] == 1)) {
        Button12Pressed = YES;
        UIImage *buttonImage = [UIImage imageNamed:@"first.png"];
        [Button12 setImage:buttonImage forState:UIControlStateNormal];
        [self.view addSubview:Button12];
    }
}

- (IBAction)Button13:(id)sender {
    pushedRow = 1;
    pushedColumn = 3;
    
    if(Button13Pressed == YES) {
        Button13Pressed = NO;
        Button13.imageView.hidden = YES;
    } else if (Button13Pressed == NO && !(row1MetalMap[2] == 1)) {
        Button13Pressed = YES;
        UIImage *buttonImage = [UIImage imageNamed:@"first.png"];
        [Button13 setImage:buttonImage forState:UIControlStateNormal];
        [self.view addSubview:Button13];
    }
}

- (IBAction)Button14:(id)sender {
    pushedRow = 1;
    pushedColumn = 4;
    
    if(Button14Pressed == YES) {
        Button14Pressed = NO;
        Button14.imageView.hidden = YES;
    } else if (Button14Pressed == NO && !(row1MetalMap[3] == 1)) {
        Button14Pressed = YES;
        UIImage *buttonImage = [UIImage imageNamed:@"first.png"];
        [Button14 setImage:buttonImage forState:UIControlStateNormal];
        [self.view addSubview:Button14];
    }
}

- (IBAction)Button21:(id)sender {
    pushedRow = 2;
    pushedColumn = 1;
    
    if(Button21Pressed == YES) {
        Button21Pressed = NO;
        Button21.imageView.hidden = YES;
    } else if (Button21Pressed == NO && !(row2MetalMap[0] == 1)) {
        Button21Pressed = YES;
        UIImage *buttonImage = [UIImage imageNamed:@"first.png"];
        [Button21 setImage:buttonImage forState:UIControlStateNormal];
        [self.view addSubview:Button21];
    }
}

- (IBAction)Button22:(id)sender {
    pushedRow = 2;
    pushedColumn = 2;
    
    if(Button22Pressed == YES) {
        Button22Pressed = NO;
        Button22.imageView.hidden = YES;
    } else if (Button22Pressed == NO && !(row2MetalMap[1] == 1)) {
        Button22Pressed = YES;
        UIImage *buttonImage = [UIImage imageNamed:@"first.png"];
        [Button22 setImage:buttonImage forState:UIControlStateNormal];
        [self.view addSubview:Button22];
    }
}

- (IBAction)Button23:(id)sender {
    pushedRow = 2;
    pushedColumn = 3;
    
    if(Button23Pressed == YES) {
        Button23Pressed = NO;
        Button23.imageView.hidden = YES;
    } else if (Button23Pressed == NO && !(row2MetalMap[2] == 1)) {
        Button23Pressed = YES;
        UIImage *buttonImage = [UIImage imageNamed:@"first.png"];
        [Button23 setImage:buttonImage forState:UIControlStateNormal];
        [self.view addSubview:Button23];
    }
}

- (IBAction)Button24:(id)sender {
    pushedRow = 2;
    pushedColumn = 4;
    
    if(Button24Pressed == YES) {
        Button24Pressed = NO;
        Button24.imageView.hidden = YES;
    } else if (Button24Pressed == NO && !(row2MetalMap[3] == 1)) {
        Button24Pressed = YES;
        UIImage *buttonImage = [UIImage imageNamed:@"first.png"];
        [Button24 setImage:buttonImage forState:UIControlStateNormal];
        [self.view addSubview:Button24];
    }
}

- (IBAction)Button31:(id)sender {
    pushedRow = 3;
    pushedColumn = 1;
    
    if(Button31Pressed == YES) {
        Button31Pressed = NO;
        Button31.imageView.hidden = YES;
    } else if (Button31Pressed == NO && !(row3MetalMap[0] == 1)) {
        Button31Pressed = YES;
        UIImage *buttonImage = [UIImage imageNamed:@"first.png"];
        [Button31 setImage:buttonImage forState:UIControlStateNormal];
        [self.view addSubview:Button31];
    }
}

- (IBAction)Button32:(id)sender {
    pushedRow = 3;
    pushedColumn = 2;
    
    if(Button32Pressed == YES) {
        Button32Pressed = NO;
        Button32.imageView.hidden = YES;
    } else if (Button32Pressed == NO && !(row3MetalMap[1] == 1)) {
        Button32Pressed = YES;
        UIImage *buttonImage = [UIImage imageNamed:@"first.png"];
        [Button32 setImage:buttonImage forState:UIControlStateNormal];
        [self.view addSubview:Button32];
    }
}

- (IBAction)Button33:(id)sender {
    pushedRow = 3;
    pushedColumn = 3;
    
    if(Button33Pressed == YES) {
        Button33Pressed = NO;
        Button33.imageView.hidden = YES;
    } else if (Button33Pressed == NO && !(row3MetalMap[2] == 1)) {
        Button33Pressed = YES;
        UIImage *buttonImage = [UIImage imageNamed:@"first.png"];
        [Button33 setImage:buttonImage forState:UIControlStateNormal];
        [self.view addSubview:Button33];
    }
}

- (IBAction)Button34:(id)sender {
    pushedRow = 3;
    pushedColumn = 4;
    
    if(Button34Pressed == YES) {
        Button34Pressed = NO;
        Button34.imageView.hidden = YES;
    } else if (Button34Pressed == NO && !(row3MetalMap[3] == 1)) {
        Button34Pressed = YES;
        UIImage *buttonImage = [UIImage imageNamed:@"first.png"];
        [Button34 setImage:buttonImage forState:UIControlStateNormal];
        [self.view addSubview:Button34];
    }
}

- (IBAction)Button41:(id)sender {
    pushedRow = 4;
    pushedColumn = 1;
    
    if(Button41Pressed == YES) {
        Button41Pressed = NO;
        Button41.imageView.hidden = YES;
    } else if (Button41Pressed == NO && !(row4MetalMap[0] == 1)) {
        Button41Pressed = YES;
        UIImage *buttonImage = [UIImage imageNamed:@"first.png"];
        [Button41 setImage:buttonImage forState:UIControlStateNormal];
        [self.view addSubview:Button41];
    }
}

- (IBAction)Button42:(id)sender {
    pushedRow = 4;
    pushedColumn = 2;
    
    if(Button42Pressed == YES) {
        Button42Pressed = NO;
        Button42.imageView.hidden = YES;
    } else if (Button42Pressed == NO && !(row4MetalMap[1] == 1)) {
        Button42Pressed = YES;
        UIImage *buttonImage = [UIImage imageNamed:@"first.png"];
        [Button42 setImage:buttonImage forState:UIControlStateNormal];
        [self.view addSubview:Button42];
    }
}

- (IBAction)Button43:(id)sender {
    pushedRow = 4;
    pushedColumn = 3;
    
    if(Button43Pressed == YES) {
        Button43Pressed = NO;
        Button43.imageView.hidden = YES;
    } else if (Button43Pressed == NO && !(row4MetalMap[2] == 1)) {
        Button43Pressed = YES;
        UIImage *buttonImage = [UIImage imageNamed:@"first.png"];
        [Button43 setImage:buttonImage forState:UIControlStateNormal];
        [self.view addSubview:Button43];
    }
}

- (IBAction)Button44:(id)sender {
    pushedRow = 4;
    pushedColumn = 4;
    
    if(Button44Pressed == YES) {
        Button44Pressed = NO;
        Button44.imageView.hidden = YES;
    } else if (Button44Pressed == NO && !(row4MetalMap[3] == 1)) {
        Button44Pressed = YES;
        UIImage *buttonImage = [UIImage imageNamed:@"first.png"];
        [Button44 setImage:buttonImage forState:UIControlStateNormal];
        [self.view addSubview:Button44];
    }
}

-(void)loadLocationOfMetals {
    // this will load the maps for each level
}

-(IBAction)ResetLevel:(id)sender{
     [self initializeBoardToStartPlaying];
    // loadLocationOfMetals();
}

-(void)initializeBoardToStartPlaying {
/*
    Button11.imageView.hidden = YES;
    Button12.imageView.hidden = YES;
    Button13.imageView.hidden = YES;
    Button14.imageView.hidden = YES;
    Button21.imageView.hidden = YES;
    Button22.imageView.hidden = YES;
    Button23.imageView.hidden = YES;
    Button24.imageView.hidden = YES;
    Button31.imageView.hidden = YES;
    Button32.imageView.hidden = YES;
    Button33.imageView.hidden = YES;
    Button34.imageView.hidden = YES;
    Button41.imageView.hidden = YES;
    Button42.imageView.hidden = YES;
    Button43.imageView.hidden = YES;
    Button44.imageView.hidden = YES;
    
    expectedMagnetCountInRow1 = 0;
    expectedMagnetCountInRow2 = 0;
    expectedMagnetCountInRow3 = 0;
    expectedMagnetCountInRow4 = 0;
    
    expectedMagnetCountInColumn1 = 0;
    expectedMagnetCountInColumn2 = 0;
    expectedMagnetCountInColumn3 = 0;
    expectedMagnetCountInColumn4 = 0;
 */
    
    Button11.imageView.hidden = YES;
    Button12.imageView.hidden = YES;
    Button13.imageView.hidden = YES;
    Button14.imageView.hidden = YES;
    Button21.imageView.hidden = YES;
    Button22.imageView.hidden = YES;
    Button23.imageView.hidden = YES;
    Button24.imageView.hidden = YES;
    Button31.imageView.hidden = YES;
    Button32.imageView.hidden = YES;
    Button33.imageView.hidden = YES;
    Button34.imageView.hidden = YES;
    Button41.imageView.hidden = YES;
    Button42.imageView.hidden = YES;
    Button43.imageView.hidden = YES;
    Button44.imageView.hidden = YES;
    
    expectedMagnetCountInRow1 = 0;
    expectedMagnetCountInRow2 = 0;
    expectedMagnetCountInRow3 = 0;
    expectedMagnetCountInRow4 = 0;
    
    expectedMagnetCountInColumn1 = 0;
    expectedMagnetCountInColumn2 = 0;
    expectedMagnetCountInColumn3 = 0;
    expectedMagnetCountInColumn4 = 0;
    /////////////////////////////////////////
    
    for(int j=0;j<col;j++){
        expectedMagnetCountInRow1+=row1MagnetMap[j];
        expectedMagnetCountInRow2+=row2MagnetMap[j];
        expectedMagnetCountInRow3+=row3MagnetMap[j];
        expectedMagnetCountInRow4+=row4MagnetMap[j];
        
        if(j==0) {
            expectedMagnetCountInColumn1+=row1MagnetMap[j];
            expectedMagnetCountInColumn1+=row2MagnetMap[j];
            expectedMagnetCountInColumn1+=row3MagnetMap[j];
            expectedMagnetCountInColumn1+=row4MagnetMap[j];
            
            if(row1MetalMap[j] == 1){
                UIImage *buttonImage = [UIImage imageNamed:@"star.png"];
                [Button11 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button11];
            }
            if(row2MetalMap[j] == 1){
                UIImage *buttonImage = [UIImage imageNamed:@"star.png"];
                [Button21 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button21];
            }
            if(row3MetalMap[j] == 1){
                UIImage *buttonImage = [UIImage imageNamed:@"star.png"];
                [Button31 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button31];
            }
            if(row4MetalMap[j] == 1){
                UIImage *buttonImage = [UIImage imageNamed:@"star.png"];
                [Button41 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button41];
            }
        }
        if(j==1) {
            expectedMagnetCountInColumn2+=row1MagnetMap[j];
            expectedMagnetCountInColumn2+=row2MagnetMap[j];
            expectedMagnetCountInColumn2+=row3MagnetMap[j];
            expectedMagnetCountInColumn2+=row4MagnetMap[j];
            
            if(row1MetalMap[j] == 1){
                UIImage *buttonImage = [UIImage imageNamed:@"star.png"];
                [Button12 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button12];
            }
            if(row2MetalMap[j] == 1){
                UIImage *buttonImage = [UIImage imageNamed:@"star.png"];
                [Button22 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button22];
            }
            if(row3MetalMap[j] == 1){
                UIImage *buttonImage = [UIImage imageNamed:@"star.png"];
                [Button32 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button32];
            }
            if(row4MetalMap[j] == 1){
                UIImage *buttonImage = [UIImage imageNamed:@"star.png"];
                [Button42 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button42];
            }
            
        }
        if(j==2) {
            expectedMagnetCountInColumn3+=row1MagnetMap[j];
            expectedMagnetCountInColumn3+=row2MagnetMap[j];
            expectedMagnetCountInColumn3+=row3MagnetMap[j];
            expectedMagnetCountInColumn3+=row4MagnetMap[j];
            
            if(row1MetalMap[j] == 1){
                UIImage *buttonImage = [UIImage imageNamed:@"star.png"];
                [Button13 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button13];
            }
            if(row2MetalMap[j] == 1){
                UIImage *buttonImage = [UIImage imageNamed:@"star.png"];
                [Button23 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button23];
            }
            if(row3MetalMap[j] == 1){
                UIImage *buttonImage = [UIImage imageNamed:@"star.png"];
                [Button33 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button33];
            }
            if(row4MetalMap[j] == 1){
                UIImage *buttonImage = [UIImage imageNamed:@"star.png"];
                [Button43 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button43];
            }
            
        }
        if(j==3) {
            expectedMagnetCountInColumn4+=row1MagnetMap[j];
            expectedMagnetCountInColumn4+=row2MagnetMap[j];
            expectedMagnetCountInColumn4+=row3MagnetMap[j];
            expectedMagnetCountInColumn4+=row4MagnetMap[j];
            
            if(row1MetalMap[j] == 1){
                UIImage *buttonImage = [UIImage imageNamed:@"star.png"];
                [Button14 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button14];
            }
            if(row2MetalMap[j] == 1){
                UIImage *buttonImage = [UIImage imageNamed:@"star.png"];
                [Button24 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button24];
            }
            if(row3MetalMap[j] == 1){
                UIImage *buttonImage = [UIImage imageNamed:@"star.png"];
                [Button34 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button34];
            }
            if(row4MetalMap[j] == 1){
                UIImage *buttonImage = [UIImage imageNamed:@"star.png"];
                [Button44 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button44];
            }
            
        }
        
    }
    
    SumOfMagnetInColumn1.text = [NSString stringWithFormat:@"%i", expectedMagnetCountInColumn1];
    SumOfMagnetInColumn2.text = [NSString stringWithFormat:@"%i", expectedMagnetCountInColumn2];
    SumOfMagnetInColumn3.text = [NSString stringWithFormat:@"%i", expectedMagnetCountInColumn3];
    SumOfMagnetInColumn4.text = [NSString stringWithFormat:@"%i", expectedMagnetCountInColumn4];
    
    SumOfMagnetInRow1.text = [NSString stringWithFormat:@"%i", expectedMagnetCountInRow1];
    SumOfMagnetInRow2.text = [NSString stringWithFormat:@"%i", expectedMagnetCountInRow2];
    SumOfMagnetInRow3.text = [NSString stringWithFormat:@"%i", expectedMagnetCountInRow3];
    SumOfMagnetInRow4.text = [NSString stringWithFormat:@"%i", expectedMagnetCountInRow4];
 }


@end
