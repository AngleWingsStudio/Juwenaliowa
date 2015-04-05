//
//  PoniedzialekTable.m
//  Juwenalia app
//
//  Created by Monika Kastner on 05.04.2015.
//  Copyright (c) 2015 AngelWingsStudio. All rights reserved.
//

#import "PoniedzialekTable.h"
#import "SWRevealViewController.h"
#import "TableCell.h"
#import "DetailViewController.h"

@interface PoniedzialekTable ()

@end

@implementation PoniedzialekTable

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _barButton.target = self.revealViewController;
    _barButton.action = @selector(revealToggle:);

    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];

    //poniedzialek
    _PoniedzialekDescription=@[@"alalalalalalala",@"blblblblblbblblbl",@"clclclclclclclc",];
    _PoniedzialekGodzina=@[@"8:00",@"9:00",@"10:00",];
    _PoniedzialekImages=@[@"not_available_icon.gif",@"not_available_icon.gif",@"not_available_icon.gif",];
    _poniedzialekTitle=@[@"Parada",@"Wystep",@"Ognisko",];

    
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return _poniedzialekTitle.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier= @"TableCell";
    TableCell *cell= [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    int row=[indexPath row];
    
    
    //poniedzialek
    cell.PonImage.image=[UIImage imageNamed:_PoniedzialekImages[row]];
    cell.PonDescriptionLabel.text=_PoniedzialekDescription[row];
    cell.PoniedzialekGodzina.text=_PoniedzialekGodzina[row];
    cell.PoniedzialekTitle.text=_poniedzialekTitle[row];
    
    
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([[segue identifier] isEqualToString:@"ShowDetails"]){
        DetailViewController *detailviewvontroller = [segue destinationViewController];
        
        NSIndexPath *myIndexPath = [self.tableView indexPathForSelectedRow];
        
        int row = [myIndexPath row];
        detailviewvontroller.DetailModal = @[_poniedzialekTitle[row], _PoniedzialekDescription[row], _PoniedzialekImages[row]];
    }

}




/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/







@end
