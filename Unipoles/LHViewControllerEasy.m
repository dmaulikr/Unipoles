//
//  LHViewControllerEasy.m
//  Unipoles
//
//  Created by rhdelaro on 11/10/13.
//  Copyright (c) 2013 LordHare. All rights reserved.
//

#import "LHViewControllerEasy.h"

//NSNumber *magnetOnTile;

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

    if(Button11Pressed == NO) { //was Button11Pressed == NO
        if(row1MagnetMap[0]) {
            UIImage *buttonImage = [UIImage imageNamed:@"first.png"];
            [Button11 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Button11];
            magnetCountGuessed++;
        } else if (row1MetalMap[0]) {
            // Do nothing, keep Star.png displayed
        } else { // Cell is not Magnet and Cell is not Metal
            UIImage *buttonImage = [UIImage imageNamed:@"WrongGuess.png"];
            [Button11 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Button11];
            wrongGuessCount++;
        }
        Button11Pressed = YES;
    } /*else if (Button11Pressed == YES) {
        if (row1MagnetMap[0]) {
            // Do nothing : Magnet location already guessed correctly
        } else if (row1MetalMap[0]) {
            // Do nothing : this cell needs to have Star.png all the time
        } else { // Cell is not Magnet and Cell is not Metal
            // Do nothing : keep WrongGuess.png in this cell
        }
    }*/
    Button11.imageView.hidden = NO;
    [self checkGameResult:wrongGuessCount :magnetCountGuessed];
}

- (IBAction)Button12:(id)sender {
    pushedRow = 1;
    pushedColumn = 2;
    
    if(Button12Pressed == NO) { //was Button12Pressed == NO
        if(row1MagnetMap[1]) {
            UIImage *buttonImage = [UIImage imageNamed:@"first.png"];
            [Button12 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Button12];
            magnetCountGuessed++;
        } else if (row1MetalMap[1]) {
            // Do nothing, keep Star.png displayed
        } else { // Cell is not Magnet and Cell is not Metal
            UIImage *buttonImage = [UIImage imageNamed:@"WrongGuess.png"];
            [Button12 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Button12];
            wrongGuessCount++;
        }
        Button12Pressed = YES;
    } else if (Button12Pressed == YES) {
        if (row1MagnetMap[1]) {
            // Do nothing : Magnet location already guessed correctly
        } else if (row1MetalMap[1]) {
            // Do nothing : this cell needs to have Star.png all the time
        } else { // Cell is not Magnet and Cell is not Metal
            // Do nothing : keep WrongGuess.png in this cell
        }
    }
    Button12.imageView.hidden = NO;
    [self checkGameResult:wrongGuessCount :magnetCountGuessed];
}

- (IBAction)Button13:(id)sender {
    pushedRow = 1;
    pushedColumn = 3;
    
    if(Button13Pressed == NO) { //was Button13Pressed == NO
        if(row1MagnetMap[2]) {
            UIImage *buttonImage = [UIImage imageNamed:@"first.png"];
            [Button13 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Button13];
            magnetCountGuessed++;
        } else if (row1MetalMap[2]) {
            // Do nothing, keep Star.png displayed
        } else { // Cell is not Magnet and Cell is not Metal
            UIImage *buttonImage = [UIImage imageNamed:@"WrongGuess.png"];
            [Button13 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Button13];
            wrongGuessCount++;
        }
        Button13Pressed = YES;
    } else if (Button11Pressed == YES) {
        if (row1MagnetMap[2]) {
            // Do nothing : Magnet location already guessed correctly
        } else if (row1MetalMap[2]) {
            // Do nothing : this cell needs to have Star.png all the time
        } else { // Cell is not Magnet and Cell is not Metal
            // Do nothing : keep WrongGuess.png in this cell
        }
    }
    Button13.imageView.hidden = NO;
    [self checkGameResult:wrongGuessCount :magnetCountGuessed];
 }

- (IBAction)Button14:(id)sender {
    pushedRow = 1;
    pushedColumn = 4;
    
    if(Button14Pressed == NO) { //was Button14Pressed == NO
        if(row1MagnetMap[3]) {
            UIImage *buttonImage = [UIImage imageNamed:@"first.png"];
            [Button14 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Button14];
            magnetCountGuessed++;
        } else if (row1MetalMap[3]) {
            // Do nothing, keep Star.png displayed
        } else { // Cell is not Magnet and Cell is not Metal
            UIImage *buttonImage = [UIImage imageNamed:@"WrongGuess.png"];
            [Button14 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Button14];
            wrongGuessCount++;
        }
        Button14Pressed = YES;
    } else if (Button14Pressed == YES) {
        if (row1MagnetMap[3]) {
            // Do nothing : Magnet location already guessed correctly
        } else if (row1MetalMap[3]) {
            // Do nothing : this cell needs to have Star.png all the time
        } else { // Cell is not Magnet and Cell is not Metal
            // Do nothing : keep WrongGuess.png in this cell
        }
    }
    Button14.imageView.hidden = NO;
    [self checkGameResult:wrongGuessCount :magnetCountGuessed];
}

- (IBAction)Button21:(id)sender {
    pushedRow = 2;
    pushedColumn = 1;
    
    if(Button21Pressed == NO) { //was Button21Pressed == NO
        if(row2MagnetMap[0]) {
            UIImage *buttonImage = [UIImage imageNamed:@"first.png"];
            [Button21 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Button21];
            magnetCountGuessed++;
        } else if (row2MetalMap[0]) {
            // Do nothing, keep Star.png displayed
        } else { // Cell is not Magnet and Cell is not Metal
            UIImage *buttonImage = [UIImage imageNamed:@"WrongGuess.png"];
            [Button21 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Button21];
            wrongGuessCount++;
        }
        Button21Pressed = YES;
    } else if (Button21Pressed == YES) {
        if (row2MagnetMap[0]) {
            // Do nothing : Magnet location already guessed correctly
        } else if (row2MetalMap[0]) {
            // Do nothing : this cell needs to have Star.png all the time
        } else { // Cell is not Magnet and Cell is not Metal
            // Do nothing : keep WrongGuess.png in this cell
        }
    }
    Button21.imageView.hidden = NO;
    [self checkGameResult:wrongGuessCount :magnetCountGuessed];
}

- (IBAction)Button22:(id)sender {
    pushedRow = 2;
    pushedColumn = 2;
    
    if(Button22Pressed == NO) { //was Button22Pressed == NO
        if(row2MagnetMap[1]) {
            UIImage *buttonImage = [UIImage imageNamed:@"first.png"];
            [Button22 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Button22];
            magnetCountGuessed++;
        } else if (row2MetalMap[1]) {
            // Do nothing, keep Star.png displayed
        } else { // Cell is not Magnet and Cell is not Metal
            UIImage *buttonImage = [UIImage imageNamed:@"WrongGuess.png"];
            [Button22 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Button22];
            wrongGuessCount++;
        }
        Button22Pressed = YES;
    } else if (Button22Pressed == YES) {
        if (row2MagnetMap[1]) {
            // Do nothing : Magnet location already guessed correctly
        } else if (row2MetalMap[1]) {
            // Do nothing : this cell needs to have Star.png all the time
        } else { // Cell is not Magnet and Cell is not Metal
            // Do nothing : keep WrongGuess.png in this cell
        }
    }
    Button22.imageView.hidden = NO;
    [self checkGameResult:wrongGuessCount :magnetCountGuessed];
}

- (IBAction)Button23:(id)sender {
    pushedRow = 2;
    pushedColumn = 3;
    
    if(Button23Pressed == NO) { //was Button23Pressed == NO
        if(row2MagnetMap[2]) {
            UIImage *buttonImage = [UIImage imageNamed:@"first.png"];
            [Button23 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Button23];
            magnetCountGuessed++;
        } else if (row2MetalMap[2]) {
            // Do nothing, keep Star.png displayed
        } else { // Cell is not Magnet and Cell is not Metal
            UIImage *buttonImage = [UIImage imageNamed:@"WrongGuess.png"];
            [Button23 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Button23];
            wrongGuessCount++;
        }
        Button23Pressed = YES;
    } else if (Button23Pressed == YES) {
        if (row2MagnetMap[2]) {
            // Do nothing : Magnet location already guessed correctly
        } else if (row2MetalMap[2]) {
            // Do nothing : this cell needs to have Star.png all the time
        } else { // Cell is not Magnet and Cell is not Metal
            // Do nothing : keep WrongGuess.png in this cell
        }
    }
    Button23.imageView.hidden = NO;
    [self checkGameResult:wrongGuessCount :magnetCountGuessed];
}

- (IBAction)Button24:(id)sender {
    pushedRow = 2;
    pushedColumn = 4;
    
    if(Button24Pressed == NO) { //was Button24Pressed == NO
        if(row2MagnetMap[3]) {
            UIImage *buttonImage = [UIImage imageNamed:@"first.png"];
            [Button24 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Button24];
            magnetCountGuessed++;
        } else if (row2MetalMap[3]) {
            // Do nothing, keep Star.png displayed
        } else { // Cell is not Magnet and Cell is not Metal
            UIImage *buttonImage = [UIImage imageNamed:@"WrongGuess.png"];
            [Button24 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Button24];
            wrongGuessCount++;
        }
        Button24Pressed = YES;
    } else if (Button24Pressed == YES) {
        if (row2MagnetMap[3]) {
            // Do nothing : Magnet location already guessed correctly
        } else if (row2MetalMap[3]) {
            // Do nothing : this cell needs to have Star.png all the time
        } else { // Cell is not Magnet and Cell is not Metal
            // Do nothing : keep WrongGuess.png in this cell
        }
    }
    Button24.imageView.hidden = NO;
    [self checkGameResult:wrongGuessCount :magnetCountGuessed];
}

- (IBAction)Button31:(id)sender {
    pushedRow = 3;
    pushedColumn = 1;
    
    if(Button31Pressed == NO) { //was Button31Pressed == NO
        if(row3MagnetMap[0]) {
            UIImage *buttonImage = [UIImage imageNamed:@"first.png"];
            [Button31 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Button31];
            magnetCountGuessed++;
        } else if (row3MetalMap[0]) {
            // Do nothing, keep Star.png displayed
        } else { // Cell is not Magnet and Cell is not Metal
            UIImage *buttonImage = [UIImage imageNamed:@"WrongGuess.png"];
            [Button31 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Button31];
            wrongGuessCount++;
        }
        Button31Pressed = YES;
    } else if (Button31Pressed == YES) {
        if (row3MagnetMap[0]) {
            // Do nothing : Magnet location already guessed correctly
        } else if (row3MetalMap[0]) {
            // Do nothing : this cell needs to have Star.png all the time
        } else { // Cell is not Magnet and Cell is not Metal
            // Do nothing : keep WrongGuess.png in this cell
        }
    }
    Button31.imageView.hidden = NO;
    [self checkGameResult:wrongGuessCount :magnetCountGuessed];
}

- (IBAction)Button32:(id)sender {
    pushedRow = 3;
    pushedColumn = 2;
    
    if(Button32Pressed == NO) { //was Button32Pressed == NO
        if(row3MagnetMap[1]) {
            UIImage *buttonImage = [UIImage imageNamed:@"first.png"];
            [Button32 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Button32];
            magnetCountGuessed++;
        } else if (row3MetalMap[1]) {
            // Do nothing, keep Star.png displayed
        } else { // Cell is not Magnet and Cell is not Metal
            UIImage *buttonImage = [UIImage imageNamed:@"WrongGuess.png"];
            [Button32 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Button32];
            wrongGuessCount++;
        }
        Button32Pressed = YES;
    } else if (Button32Pressed == YES) {
        if (row3MagnetMap[1]) {
            // Do nothing : Magnet location already guessed correctly
        } else if (row3MetalMap[1]) {
            // Do nothing : this cell needs to have Star.png all the time
        } else { // Cell is not Magnet and Cell is not Metal
            // Do nothing : keep WrongGuess.png in this cell
        }
    }
    Button32.imageView.hidden = NO;
    [self checkGameResult:wrongGuessCount :magnetCountGuessed];
}

- (IBAction)Button33:(id)sender {
    pushedRow = 3;
    pushedColumn = 3;
    
    if(Button33Pressed == NO) { //was Button33Pressed == NO
        if(row3MagnetMap[2]) {
            UIImage *buttonImage = [UIImage imageNamed:@"first.png"];
            [Button33 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Button33];
            magnetCountGuessed++;
        } else if (row3MetalMap[2]) {
            // Do nothing, keep Star.png displayed
        } else { // Cell is not Magnet and Cell is not Metal
            UIImage *buttonImage = [UIImage imageNamed:@"WrongGuess.png"];
            [Button33 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Button33];
            wrongGuessCount++;
        }
        Button33Pressed = YES;
    } else if (Button33Pressed == YES) {
        if (row3MagnetMap[2]) {
            // Do nothing : Magnet location already guessed correctly
        } else if (row3MetalMap[2]) {
            // Do nothing : this cell needs to have Star.png all the time
        } else { // Cell is not Magnet and Cell is not Metal
            // Do nothing : keep WrongGuess.png in this cell
        }
    }
    Button33.imageView.hidden = NO;
    [self checkGameResult:wrongGuessCount :magnetCountGuessed];
}

- (IBAction)Button34:(id)sender {
    pushedRow = 3;
    pushedColumn = 4;
    
    if(Button34Pressed == NO) { //was Button34Pressed == NO
        if(row3MagnetMap[3]) {
            UIImage *buttonImage = [UIImage imageNamed:@"first.png"];
            [Button34 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Button34];
            magnetCountGuessed++;
        } else if (row3MetalMap[3]) {
            // Do nothing, keep Star.png displayed
        } else { // Cell is not Magnet and Cell is not Metal
            UIImage *buttonImage = [UIImage imageNamed:@"WrongGuess.png"];
            [Button34 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Button34];
            wrongGuessCount++;
        }
        Button34Pressed = YES;
    } else if (Button34Pressed == YES) {
        if (row3MagnetMap[3]) {
            // Do nothing : Magnet location already guessed correctly
        } else if (row3MetalMap[3]) {
            // Do nothing : this cell needs to have Star.png all the time
        } else { // Cell is not Magnet and Cell is not Metal
            // Do nothing : keep WrongGuess.png in this cell
        }
    }
    Button34.imageView.hidden = NO;
    [self checkGameResult:wrongGuessCount :magnetCountGuessed];
}

- (IBAction)Button41:(id)sender {
    pushedRow = 4;
    pushedColumn = 1;
    
    if(Button41Pressed == NO) { //was Button41Pressed == NO
        if(row4MagnetMap[0]) {
            UIImage *buttonImage = [UIImage imageNamed:@"first.png"];
            [Button41 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Button41];
            magnetCountGuessed++;
        } else if (row4MetalMap[0]) {
            // Do nothing, keep Star.png displayed
        } else { // Cell is not Magnet and Cell is not Metal
            UIImage *buttonImage = [UIImage imageNamed:@"WrongGuess.png"];
            [Button41 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Button41];
            wrongGuessCount++;
        }
        Button41Pressed = YES;
    } else if (Button41Pressed == YES) {
        if (row4MagnetMap[0]) {
            // Do nothing : Magnet location already guessed correctly
        } else if (row4MetalMap[0]) {
            // Do nothing : this cell needs to have Star.png all the time
        } else { // Cell is not Magnet and Cell is not Metal
            // Do nothing : keep WrongGuess.png in this cell
        }
    }
    Button41.imageView.hidden = NO;
    [self checkGameResult:wrongGuessCount :magnetCountGuessed];
}

- (IBAction)Button42:(id)sender {
    pushedRow = 4;
    pushedColumn = 2;
    
    if(Button42Pressed == NO) { //was Button42Pressed == NO
        if(row4MagnetMap[1]) {
            UIImage *buttonImage = [UIImage imageNamed:@"first.png"];
            [Button42 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Button42];
            magnetCountGuessed++;
        } else if (row4MetalMap[1]) {
            // Do nothing, keep Star.png displayed
        } else { // Cell is not Magnet and Cell is not Metal
            UIImage *buttonImage = [UIImage imageNamed:@"WrongGuess.png"];
            [Button42 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Button42];
            wrongGuessCount++;
        }
        Button42Pressed = YES;
    } else if (Button42Pressed == YES) {
        if (row4MagnetMap[1]) {
            // Do nothing : Magnet location already guessed correctly
        } else if (row4MetalMap[1]) {
            // Do nothing : this cell needs to have Star.png all the time
        } else { // Cell is not Magnet and Cell is not Metal
            // Do nothing : keep WrongGuess.png in this cell
        }
    }
    Button42.imageView.hidden = NO;
    [self checkGameResult:wrongGuessCount :magnetCountGuessed];
}

- (IBAction)Button43:(id)sender {
    pushedRow = 4;
    pushedColumn = 3;
    
    if(Button43Pressed == NO) { //was Button43Pressed == NO
        if(row4MagnetMap[2]) {
            UIImage *buttonImage = [UIImage imageNamed:@"first.png"];
            [Button43 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Button43];
            magnetCountGuessed++;
        } else if (row4MetalMap[2]) {
            // Do nothing, keep Star.png displayed
        } else { // Cell is not Magnet and Cell is not Metal
            UIImage *buttonImage = [UIImage imageNamed:@"WrongGuess.png"];
            [Button43 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Button43];
            wrongGuessCount++;
        }
        Button43Pressed = YES;
    } else if (Button43Pressed == YES) {
        if (row4MagnetMap[2]) {
            // Do nothing : Magnet location already guessed correctly
        } else if (row4MetalMap[2]) {
            // Do nothing : this cell needs to have Star.png all the time
        } else { // Cell is not Magnet and Cell is not Metal
            // Do nothing : keep WrongGuess.png in this cell
        }
    }
    Button43.imageView.hidden = NO;
    [self checkGameResult:wrongGuessCount :magnetCountGuessed];
}

- (IBAction)Button44:(id)sender {
    pushedRow = 4;
    pushedColumn = 4;
    
    if(Button44Pressed == NO) { //was Button44Pressed == NO
        if(row4MagnetMap[3]) {
            UIImage *buttonImage = [UIImage imageNamed:@"first.png"];
            [Button44 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Button44];
            magnetCountGuessed++;
        } else if (row4MetalMap[3]) {
            // Do nothing, keep Star.png displayed
        } else { // Cell is not Magnet and Cell is not Metal
            UIImage *buttonImage = [UIImage imageNamed:@"WrongGuess.png"];
            [Button44 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:Button44];
            wrongGuessCount++;
        }
        Button44Pressed = YES;
    } else if (Button44Pressed == YES) {
        if (row4MagnetMap[3]) {
            // Do nothing : Magnet location already guessed correctly
        } else if (row4MetalMap[3]) {
            // Do nothing : this cell needs to have Star.png all the time
        } else { // Cell is not Magnet and Cell is not Metal
            // Do nothing : keep WrongGuess.png in this cell
        }
    }
    Button44.imageView.hidden = NO;
    [self checkGameResult:wrongGuessCount :magnetCountGuessed];
}

-(void)loadLocationOfMetals {
    // this will load the maps for each level
}

-(IBAction)ResetLevel:(id)sender{
     [self initializeBoardToStartPlaying];
    // loadLocationOfMetals();
}

-(void)initializeBoardToStartPlaying {
    wrongGuessCount = 0;
    magnetCountGuessed = 0;
    result.hidden = YES;
    
    expectedMagnetCountInRow1 = 0;
    expectedMagnetCountInRow2 = 0;
    expectedMagnetCountInRow3 = 0;
    expectedMagnetCountInRow4 = 0;
    
    expectedMagnetCountInColumn1 = 0;
    expectedMagnetCountInColumn2 = 0;
    expectedMagnetCountInColumn3 = 0;
    expectedMagnetCountInColumn4 = 0;
    
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
                UIImage *buttonImage = [UIImage imageNamed:@"Star.png"];
                [Button11 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button11];
                Button11.imageView.hidden = NO;
            }
            if(row2MetalMap[j] == 1){
                UIImage *buttonImage = [UIImage imageNamed:@"Star.png"];
                [Button21 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button21];
                Button21.imageView.hidden = NO;
            }
            if(row3MetalMap[j] == 1){
                UIImage *buttonImage = [UIImage imageNamed:@"Star.png"];
                [Button31 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button31];
                Button31.imageView.hidden = NO;
            }
            if(row4MetalMap[j] == 1){
                UIImage *buttonImage = [UIImage imageNamed:@"Star.png"];
                [Button41 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button41];
                Button41.imageView.hidden = NO;
            }
        }
        if(j==1) {
            expectedMagnetCountInColumn2+=row1MagnetMap[j];
            expectedMagnetCountInColumn2+=row2MagnetMap[j];
            expectedMagnetCountInColumn2+=row3MagnetMap[j];
            expectedMagnetCountInColumn2+=row4MagnetMap[j];
            
            if(row1MetalMap[j] == 1){
                UIImage *buttonImage = [UIImage imageNamed:@"Star.png"];
                [Button12 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button12];
                Button12.imageView.hidden = NO;
            }
            if(row2MetalMap[j] == 1){
                UIImage *buttonImage = [UIImage imageNamed:@"Star.png"];
                [Button22 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button22];
                Button22.imageView.hidden = NO;
            }
            if(row3MetalMap[j] == 1){
                UIImage *buttonImage = [UIImage imageNamed:@"Star.png"];
                [Button32 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button32];
                Button32.imageView.hidden = NO;
            }
            if(row4MetalMap[j] == 1){
                UIImage *buttonImage = [UIImage imageNamed:@"Star.png"];
                [Button42 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button42];
                Button42.imageView.hidden = NO;
            }
            
        }
        if(j==2) {
            expectedMagnetCountInColumn3+=row1MagnetMap[j];
            expectedMagnetCountInColumn3+=row2MagnetMap[j];
            expectedMagnetCountInColumn3+=row3MagnetMap[j];
            expectedMagnetCountInColumn3+=row4MagnetMap[j];
            
            if(row1MetalMap[j] == 1){
                UIImage *buttonImage = [UIImage imageNamed:@"Star.png"];
                [Button13 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button13];
                Button13.imageView.hidden = NO;
            }
            if(row2MetalMap[j] == 1){
                UIImage *buttonImage = [UIImage imageNamed:@"Star.png"];
                [Button23 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button23];
                Button23.imageView.hidden = NO;
            }
            if(row3MetalMap[j] == 1){
                UIImage *buttonImage = [UIImage imageNamed:@"Star.png"];
                [Button33 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button33];
                Button33.imageView.hidden = NO;
            }
            if(row4MetalMap[j] == 1){
                UIImage *buttonImage = [UIImage imageNamed:@"Star.png"];
                [Button43 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button43];
                Button43.imageView.hidden = NO;
            }
            
        }
        if(j==3) {
            expectedMagnetCountInColumn4+=row1MagnetMap[j];
            expectedMagnetCountInColumn4+=row2MagnetMap[j];
            expectedMagnetCountInColumn4+=row3MagnetMap[j];
            expectedMagnetCountInColumn4+=row4MagnetMap[j];
            
            if(row1MetalMap[j] == 1){
                UIImage *buttonImage = [UIImage imageNamed:@"Star.png"];
                [Button14 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button14];
                Button14.imageView.hidden = NO;
            }
            if(row2MetalMap[j] == 1){
                UIImage *buttonImage = [UIImage imageNamed:@"Star.png"];
                [Button24 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button24];
                Button24.imageView.hidden = NO;
            }
            if(row3MetalMap[j] == 1){
                UIImage *buttonImage = [UIImage imageNamed:@"Star.png"];
                [Button34 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button34];
                Button34.imageView.hidden = NO;
            }
            if(row4MetalMap[j] == 1){
                UIImage *buttonImage = [UIImage imageNamed:@"Star.png"];
                [Button44 setImage:buttonImage forState:UIControlStateNormal];
                [self.view addSubview:Button44];
                Button44.imageView.hidden = NO;
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


-(void)checkGameResult: (int) wrongGuessCount :(int) magnetCountGuessed {
    
    int  expectedMagnetCount = expectedMagnetCountInRow1 + expectedMagnetCountInRow2 + expectedMagnetCountInRow3 + expectedMagnetCountInRow4;
    NSLog (@"Total magnet count to guess : %i",expectedMagnetCount);
    if(wrongGuessCount > 2) {
        NSLog (@"Game over : you made %i wrong guess(es).", wrongGuessCount);
        result.text = @"Game Over!!!";
        result.hidden = NO;
    } else if (magnetCountGuessed == expectedMagnetCount) {
        NSLog (@"You win : you guessed all %i magnets.", expectedMagnetCount);
        result.text = @"You win!";
        result.hidden = NO;
    } else {
        // keep on guessing
    }    
 }


@end
