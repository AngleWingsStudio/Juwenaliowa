//
//  CzwartekTable.h
//  Juwenalia app
//
//  Created by Monika Kastner on 05.04.2015.
//  Copyright (c) 2015 AngelWingsStudio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CzwartekTable : UITableViewController

@property (weak,nonatomic) IBOutlet UIBarButtonItem *barButton;

//czwartek
@property(nonatomic,strong) NSArray *CzwartekImages;
@property(nonatomic,strong) NSArray *CzwartekTitle;
@property(nonatomic,strong) NSArray *CzwartekDescription;
@property(nonatomic,strong) NSArray *CzwartekGodzina;


@end
