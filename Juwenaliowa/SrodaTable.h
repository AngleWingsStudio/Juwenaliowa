//
//  SrodaTable.h
//  Juwenalia app
//
//  Created by Monika Kastner on 05.04.2015.
//  Copyright (c) 2015 AngelWingsStudio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SrodaTable : UITableViewController

@property (weak,nonatomic) IBOutlet UIBarButtonItem *barButton;

//środa
@property(nonatomic,strong) NSArray *SrodaImages;
@property(nonatomic,strong) NSArray *SrodaTitle;
@property(nonatomic,strong) NSArray *SrodaDescription;
@property(nonatomic,strong) NSArray *SrodaGodzina;


@end
