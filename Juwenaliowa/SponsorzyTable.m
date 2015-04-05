//
//  SponsorzyTable.m
//  Juwenalia app
//
//  Created by Monika Kastner on 05.04.2015.
//  Copyright (c) 2015 AngelWingsStudio. All rights reserved.
//

#import "SponsorzyTable.h"
#import "SWRevealViewController.h"
#import "TableCell.h"
#import "TableCell1.h"
#import "TableCell2.h"

@interface SponsorzyTable ()

@end

@implementation SponsorzyTable

- (void)viewDidLoad {
    [super viewDidLoad];
    _barButton.target = self.revealViewController;
    _barButton.action = @selector(revealToggle:);
    
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    
    _ZlotySponsorImage=@[@"2.png",];
    _SrebrnySponsorImage=@[@"2.png"];
    _InnySponsorImage=@[@"1.png",];

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _ZlotySponsorImage.count;
    return _SrebrnySponsorImage.count;
    return _InnySponsorImage.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier= @"TableCell";
    TableCell *cell= [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    static NSString *CellIdentifier1= @"TableCell1";
    TableCell1 *cell1= [tableView dequeueReusableCellWithIdentifier:CellIdentifier1 forIndexPath:indexPath];
    
    static NSString *CellIdentifier2= @"TableCell2";
    TableCell2 *cell2= [tableView dequeueReusableCellWithIdentifier:CellIdentifier2 forIndexPath:indexPath];
    
    int row=[indexPath row];
    int row1=[indexPath row];
    int row2=[indexPath row];
    
    
    cell.ZlotySponsorImage.image=[UIImage imageNamed:_ZlotySponsorImage[row]];
    cell1.SrebrnySponsorImage.image=[UIImage imageNamed:_SrebrnySponsorImage[row1]];
    cell2.InnySponsorImage.image=[UIImage imageNamed:_InnySponsorImage[row2]];
 
    
    return cell;
}




@end
