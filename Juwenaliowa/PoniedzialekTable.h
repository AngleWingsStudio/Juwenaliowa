//
//  PoniedzialekTable.h
//  Juwenalia app
//
//  Created by Monika Kastner on 05.04.2015.
//  Copyright (c) 2015 AngelWingsStudio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PoniedzialekTable : UITableViewController

@property (weak,nonatomic) IBOutlet UIBarButtonItem *barButton;

//poniedziałek
@property(nonatomic,strong) NSArray *PoniedzialekImages;
@property(nonatomic,strong) NSArray *poniedzialekTitle;
@property(nonatomic,strong) NSArray *PoniedzialekDescription;
@property(nonatomic,strong) NSArray *PoniedzialekGodzina;

@end
