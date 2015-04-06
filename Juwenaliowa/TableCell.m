//
//  TableCell.m
//  menu
//
//  Created by Monika Kastner on 03.04.2015.
//  Copyright (c) 2015 Monika Kastner. All rights reserved.
//

#import "TableCell.h"

@implementation TableCell


- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


-(void)viewWillAppear{
   /* CGRect frame = _PoniedzialekGodzina.frame;
    frame.origin.y=10;//pass the cordinate which you want
    frame.origin.x= 177;//pass the cordinate which you want
    _PoniedzialekGodzina.frame= frame;*/
    
   // _PoniedzialekGodzina.center=CGPointMake(177, 100);
   // _PonImage.center=CGPointMake(177, 10);
}

@end
