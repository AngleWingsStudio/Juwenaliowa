//
//  WtorekTable.h
//  Juwenalia app
//
//  Created by Monika Kastner on 05.04.2015.
//  Copyright (c) 2015 AngelWingsStudio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WtorekTable : UITableViewController

@property (weak,nonatomic) IBOutlet UIBarButtonItem *barButton;

//wtorek
@property(nonatomic,strong) NSArray *WtorekImages;
@property(nonatomic,strong) NSArray *WtorekTitle;
@property(nonatomic,strong) NSArray *WtorekDescription;
@property(nonatomic,strong) NSArray *WtorekGodzina;


@end
