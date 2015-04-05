//
//  SobotaTable.h
//  Juwenalia app
//
//  Created by Monika Kastner on 05.04.2015.
//  Copyright (c) 2015 AngelWingsStudio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SobotaTable : UITableViewController

@property (weak,nonatomic) IBOutlet UIBarButtonItem *barButton;

//sobota
@property(nonatomic,strong) NSArray *SobotaImages;
@property(nonatomic,strong) NSArray *SobotaTitle;
@property(nonatomic,strong) NSArray *SobotaDescription;
@property(nonatomic,strong) NSArray *SobotaGodzina;


@end
