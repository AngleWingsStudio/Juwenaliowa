//
//  NiedzielaTable.m
//  Juwenalia app
//
//  Created by Monika Kastner on 05.04.2015.
//  Copyright (c) 2015 AngelWingsStudio. All rights reserved.
//

#import "NiedzielaTable.h"
#import "SWRevealViewController.h"
#import "TableCell.h"
#import "DetailViewController.h"

@interface NiedzielaTable ()

@end

@implementation NiedzielaTable

- (void)viewDidLoad {
    [super viewDidLoad];

    _barButton.target = self.revealViewController;
    _barButton.action = @selector(revealToggle:);
    
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];

    //niedziela
    _NiedzielaDescription=@[@"alalalalalalala",@"blblblblblbblblbl",@"clclclclclclclc",];
    _NiedzielaGodzina=@[@"8:00",@"9:00",@"10:00",];
    _NiedzielaImages=@[@"not_available_icon.gif",@"not_available_icon.gif",@"not_available_icon.gif",];
    _NiedzielaTitle=@[@"Parada",@"Wystep",@"Ognisko",];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return _NiedzielaTitle.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier= @"TableCell";
    TableCell *cell= [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    int row=[indexPath row];
    
    //niedziela
    cell.NiedzielaTitle.text=_NiedzielaTitle[row];
    cell.NiedzImage.image=[UIImage imageNamed:_NiedzielaImages[row]];
    //cell.NiedzDescriptionLabel.text=_NiedzielaDescription[row];
    cell.NiedzielaGodzina.text=_NiedzielaGodzina[row];

    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([[segue identifier] isEqualToString:@"ShowDetails"]){
        DetailViewController *detailviewvontroller = [segue destinationViewController];
        
        NSIndexPath *myIndexPath = [self.tableView indexPathForSelectedRow];
        
        int row = [myIndexPath row];
        detailviewvontroller.DetailModal = @[_NiedzielaTitle[row], _NiedzielaDescription[row], _NiedzielaImages[row]];
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

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/



@end
