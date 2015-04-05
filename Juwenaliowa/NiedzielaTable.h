//
//  NiedzielaTable.h
//  Juwenalia app
//
//  Created by Monika Kastner on 05.04.2015.
//  Copyright (c) 2015 AngelWingsStudio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NiedzielaTable : UITableViewController

@property (weak,nonatomic) IBOutlet UIBarButtonItem *barButton;

//niedziela
@property(nonatomic,strong) NSArray *NiedzielaImages;
@property(nonatomic,strong) NSArray *NiedzielaTitle;
@property(nonatomic,strong) NSArray *NiedzielaDescription;
@property(nonatomic,strong) NSArray *NiedzielaGodzina;

@end
