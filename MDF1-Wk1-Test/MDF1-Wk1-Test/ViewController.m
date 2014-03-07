//
//  ViewController.m
//  MDF1-Wk1-Test
//
//  Created by Nazir Shuqair on 3/3/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import "ViewController.h"
#import "DataLayer.h"
#import "DetailViewController.h"
#import "CustomCell.h"

@interface ViewController ()

@end

@implementation ViewController


//------------------------------------- Number of rows ------------------------------------------------------------

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [cellWordArray count];
}
//-----------------------------------------------------------------------------------------------------------------

//------------------------------------- Creating cells and adding words -------------------------------------------

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myCell"];
    
    DataLayer *currentCell = [cellWordArray objectAtIndex:indexPath.row];
    
    [cell refreshCellWithInfo:currentCell.cName second:currentCell.cDetails cellImage:nil];

    
    return cell;
}
//-----------------------------------------------------------------------------------------------------------------

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    DetailViewController* detailView = segue.destinationViewController;
    if (detailView != nil) {
        UITableViewCell *cell = (UITableViewCell*)sender;
        NSIndexPath *indexPath = [mytableView indexPathForCell:cell];
        
        // get the string from the array based on the cell in the tabel view we clicked
        
        DataLayer *selectedString = [cellWordArray objectAtIndex:indexPath.row];
        
        detailView.currentCell = selectedString;
    }
    
    
}

- (IBAction) done:(UIStoryboardSegue*)segue{
    
    
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // remove data from the word array
        
        [cellWordArray removeObjectAtIndex:indexPath.row];
        
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObjects:indexPath, nil] withRowAnimation:UITableViewRowAnimationLeft];
    }
}

- (IBAction)onClick:(id)sender{
    
    //  Putting mytable view in editing mode
    
    mytableView.editing = !mytableView.editing;
    
    
}

- (void)viewDidLoad
{
    //------------------------------------- Words for the table view array --------------------------------------------
    
    DataLayer * cell1 = [[DataLayer alloc] init];
    cell1.cName = @"Nazir";
    cell1.cDetails = @"This is Nazir";
    
    DataLayer * cell2 = [[DataLayer alloc] init];
    cell2.cName = @"One";
    cell2.cDetails = @"This is One";
    
    DataLayer * cell3 = [[DataLayer alloc] init];
    cell3.cName = @"Two";
    cell3.cDetails = @"This is two";
    
    DataLayer * cell4 = [[DataLayer alloc] init];
    cell4.cName = @"Three";
    cell4.cDetails = @"This is three";
    
    
    cellWordArray = [[NSMutableArray alloc] initWithObjects:cell1, cell2, cell3, cell4, nil];
    
    
    //-----------------------------------------------------------------------------------------------------------------
    // pull from data source
    
    dataLayer = [[DataLayer alloc] init];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void) viewDidAppear:(BOOL)animated{
    
    //infoLabel.text = [dataLayer getInfo];
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
