//
//  Kontakt.m
//  Juwenalia app
//
//  Created by Monika Kastner on 24.02.2015.
//  Copyright (c) 2015 AngelWingsStudio. All rights reserved.
//

#import "Kontakt.h"
#import "SWRevealViewController.h"

@implementation Kontakt

-(void)viewDidLoad{
    [super viewDidLoad];
    _barButton.target = self.revealViewController;
    _barButton.action = @selector(revealToggle:);
    
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];

    _Kontak1.text=@"Kasia Kowalska";
    _Kontakt2.text=@"Bartek Kwiatkowski";
    _Kontakt3.text=@"Ola Nowak";
    
    _mail1.text=@"kowalska@onet.poczta.pl";
    _mail2.text=@"kwiatkowski@gmail.com";
    _mail3.text=@"nowak.ola@wp.pl";
    
    
}

@end
