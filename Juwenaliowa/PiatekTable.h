//
//  PiatekTable.h
//  Juwenalia app
//
//  Created by Monika Kastner on 05.04.2015.
//  Copyright (c) 2015 AngelWingsStudio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PiatekTable : UITableViewController

@property (weak,nonatomic) IBOutlet UIBarButtonItem *barButton;

//piątek
@property(nonatomic,strong) NSArray *PiatekImages;
@property(nonatomic,strong) NSArray *PiatekTitle;
@property(nonatomic,strong) NSArray *PiatekDescription;
@property(nonatomic,strong) NSArray *PiatekGodzina;


@end
