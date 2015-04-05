//
//  TableViewController.m
//  menu
//
//  Created by Monika Kastner on 03.04.2015.
//  Copyright (c) 2015 Monika Kastner. All rights reserved.
//

#import "TableViewController.h"
#import "TableCell.h"
#import "SWRevealViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _barButton.target = self.revealViewController;
    _barButton.action = @selector(revealToggle:);
    
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];

    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
 //aktualnosci
    _Title=@[@"Koncert",
             @"Ognisko",
             @"Parada",];
    _Images=@[@"not_available_icon.gif",
              @"not_available_icon.gif",
              @"not_available_icon.gif"];
    _Description=@[@"Głupi koncert jakiegos zespolu został przeniesiony na godzinę 20",
                   @"Ognisko które miało odbyć się dziś o godzinie 18 nie odbędzie ze względu na warunki pogodowe",
                   @"Parada gejów przełożona na dzień 5.05"];
    
    
//plan juwenalii
    _Day=@[@"Poniedziałek",@"Wtorek",@"Środa",@"Czwartek",@"Piątek",@"Sobota",@"Niedziela",];
    _Date=@[@"4.05",@"5.05",@"6.05",@"7.05",@"8.05",@"9.05",@"10.05",];

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
    return _Title.count;
    return _Day.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier= @"TableCell";
    TableCell *cell= [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    int row=[indexPath row];
    
//aktualnosci
    cell.TitleLabel.text= _Title[row];
    cell.DescriptionLabel.text= _Description[row];
    cell.ImageView.image=[UIImage imageNamed:_Images[row]];
    
//plan juwenalii
    cell.DayLabel.text=_Day[row];
    cell.DateLabel.text=_Date[row];


    return cell;
}




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
