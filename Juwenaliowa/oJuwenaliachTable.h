//
//  oJuwenaliachTable.h
//  Juwenalia app
//
//  Created by Monika Kastner on 05.04.2015.
//  Copyright (c) 2015 AngelWingsStudio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface oJuwenaliachTable : UITableViewController

@property (weak,nonatomic) IBOutlet UIBarButtonItem *barButton;
@property(nonatomic,strong) NSArray *OrganizatorzyImage;
@property(nonatomic,strong) NSArray *OrganizatorzyNazwa;
@property(nonatomic,strong) NSArray *OrganizatorzyFunkcja;

@end
