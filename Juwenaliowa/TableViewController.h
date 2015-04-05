//
//  TableViewController.h
//  menu
//
//  Created by Monika Kastner on 03.04.2015.
//  Copyright (c) 2015 Monika Kastner. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UITableViewController


//aktualności
@property(nonatomic,strong) NSArray *Images;
@property(nonatomic,strong) NSArray *Title;
@property(nonatomic,strong) NSArray *Description;

//plan juwenalii
@property(nonatomic,strong) NSArray *Day;
@property(nonatomic,strong) NSArray *Date;


@property (weak,nonatomic) IBOutlet UIBarButtonItem *barButton;

@end
