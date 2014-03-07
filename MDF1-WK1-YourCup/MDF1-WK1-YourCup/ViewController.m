//
//  ViewController.m
//  MDF1-WK1-YourCup
//
//  Created by Nazir Shuqair on 3/5/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import "ViewController.h"
#import "DataLayer.h"
#import "CustomCell.h"
#import "DetailsView.h"

@interface ViewController ()

@end

@implementation ViewController

//------------------------------------- Number of rows ------------------------------------------------------------

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [cellMatchArray count];
}
//-----------------------------------------------------------------------------------------------------------------

//------------------------------------- Creating cells and adding words -------------------------------------------

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myCell"];
    
    DataLayer *currentCell = [cellMatchArray objectAtIndex:indexPath.row];
    
    [cell refreshCellWithInfo:currentCell.cTeam1 team2:currentCell.cTeam2 team1Img:currentCell.cTeam1Image team2Img:currentCell.cTeam2Image];
    
    
    return cell;
}
//-----------------------------------------------------------------------------------------------------------------

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    DetailsView* detailView = segue.destinationViewController;
    if (detailView != nil) {
        UITableViewCell *cell = (UITableViewCell*)sender;
        NSIndexPath *indexPath = [myTableView indexPathForCell:cell];
        
        // get the string from the array based on the cell in the tabel view we clicked
        
        DataLayer *selectedString = [cellMatchArray objectAtIndex:indexPath.row];
        
        detailView.currentCell = selectedString;
    }
    
    
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // remove data from the word array
        
        [cellMatchArray removeObjectAtIndex:indexPath.row];
        
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObjects:indexPath, nil] withRowAnimation:UITableViewRowAnimationLeft];
    }
}



- (IBAction) done:(UIStoryboardSegue*)segue{
    
}

- (IBAction)onClick:(id)sender{
    
    //  Putting mytable view in editing mode
    
    myTableView.editing = !myTableView.editing;
    
    
}

- (void)viewDidLoad
{
    
    //white status bar
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    
    //------------------------------------- Words for the table view array --------------------------------------------
    
    
    // Group G
    
    DataLayer * cell1 = [[DataLayer alloc] init];
    cell1.cTeam1 = @"Germany";
    cell1.cTeam2 = @"Portugal";
    cell1.cTime = @"12:00";
    cell1.cDate = @"16/06";
    cell1.cTeam1Points = @"15";
    cell1.cTeam2Points = @"16";
    cell1.cCity = @"Salvador";
    cell1.cWeather = @"77F";
    cell1.cTeam1Image = [UIImage imageNamed:@"Germany"];
    cell1.cTeam2Image = [UIImage imageNamed:@"Portugal"];
    
    DataLayer * cell2 = [[DataLayer alloc] init];
    cell2.cTeam1 = @"Ghana";
    cell2.cTeam2 = @"USA";
    cell2.cTime = @"18:00";
    cell2.cDate = @"16/06";
    cell2.cTeam1Points = @"4";
    cell2.cTeam2Points = @"12";
    cell2.cCity = @"Natal";
    cell2.cWeather = @"77F";
    cell2.cTeam1Image = [UIImage imageNamed:@"Ghana"];
    cell2.cTeam2Image = [UIImage imageNamed:@"USA"];
    
    DataLayer * cell3 = [[DataLayer alloc] init];
    cell3.cTeam1 = @"Germany";
    cell3.cTeam2 = @"Ghana";
    cell3.cTime = @"15:00";
    cell3.cDate = @"21/06";
    cell3.cTeam1Points = @"15";
    cell3.cTeam2Points = @"4";
    cell3.cCity = @"Fortaleza";
    cell3.cWeather = @"51F";
    cell3.cTeam1Image = [UIImage imageNamed:@"Germany"];
    cell3.cTeam2Image = [UIImage imageNamed:@"Ghana"];
    
    DataLayer * cell4 = [[DataLayer alloc] init];
    cell4.cTeam1 = @"USA";
    cell4.cTeam2 = @"Portugal";
    cell4.cTime = @"18:00";
    cell4.cDate = @"22/06";
    cell4.cTeam1Points = @"12";
    cell4.cTeam2Points = @"16";
    cell4.cCity = @"Manaus";
    cell4.cWeather = @"65F";
    cell4.cTeam1Image = [UIImage imageNamed:@"USA"];
    cell4.cTeam2Image = [UIImage imageNamed:@"Portugal"];
    
    DataLayer * cell5 = [[DataLayer alloc] init];
    cell5.cTeam1 = @"USA";
    cell5.cTeam2 = @"Germany";
    cell5.cTime = @"13:00";
    cell5.cDate = @"26/06";
    cell5.cTeam1Points = @"12";
    cell5.cTeam2Points = @"15";
    cell5.cCity = @"Recife";
    cell5.cWeather = @"90F";
    cell5.cTeam1Image = [UIImage imageNamed:@"USA"];
    cell5.cTeam2Image = [UIImage imageNamed:@"Germany"];
    
    DataLayer * cell6 = [[DataLayer alloc] init];
    cell6.cTeam1 = @"Portugal";
    cell6.cTeam2 = @"Ghana";
    cell6.cTime = @"13:00";
    cell6.cDate = @"26/06";
    cell6.cTeam1Points = @"16";
    cell6.cTeam2Points = @"4";
    cell6.cCity = @"Brasilia";
    cell6.cWeather = @"90F";
    cell6.cTeam1Image = [UIImage imageNamed:@"Portugal"];
    cell6.cTeam2Image = [UIImage imageNamed:@"Ghana"];
    
    // Group A
    
    DataLayer * cell7 = [[DataLayer alloc] init];
    cell7.cTeam1 = @"Brazil";
    cell7.cTeam2 = @"Croatia";
    cell7.cTime = @"17:00";
    cell7.cDate = @"12/06";
    cell7.cTeam1Points = @"18";
    cell7.cTeam2Points = @"2";
    cell7.cCity = @"Sao Paulo";
    cell7.cWeather = @"80F";
    cell7.cTeam1Image = [UIImage imageNamed:@"Brazil"];
    cell7.cTeam2Image = [UIImage imageNamed:@"Croatia"];
    
    DataLayer * cell8 = [[DataLayer alloc] init];
    cell8.cTeam1 = @"Mexico";
    cell8.cTeam2 = @"Cameroon";
    cell8.cTime = @"13:00";
    cell8.cDate = @"17/06";
    cell8.cTeam1Points = @"12";
    cell8.cTeam2Points = @"6";
    cell8.cCity = @"Natal";
    cell8.cWeather = @"78F";
    cell8.cTeam1Image = [UIImage imageNamed:@"Mexico"];
    cell8.cTeam2Image = [UIImage imageNamed:@"Cameroon"];
    
    DataLayer * cell9 = [[DataLayer alloc] init];
    cell9.cTeam1 = @"Brazil";
    cell9.cTeam2 = @"Mexico";
    cell9.cTime = @"16:00";
    cell9.cDate = @"18/06";
    cell9.cTeam1Points = @"18";
    cell9.cTeam2Points = @"12";
    cell9.cCity = @"Fortaleza";
    cell9.cWeather = @"69F";
    cell9.cTeam1Image = [UIImage imageNamed:@"Brazil"];
    cell9.cTeam2Image = [UIImage imageNamed:@"Mexico"];
    
    DataLayer * cell10 = [[DataLayer alloc] init];
    cell10.cTeam1 = @"Cameroon";
    cell10.cTeam2 = @"Croatia";
    cell10.cTime = @"18:00";
    cell10.cDate = @"18/06";
    cell10.cTeam1Points = @"6";
    cell10.cTeam2Points = @"2";
    cell10.cCity = @"Manaus";
    cell10.cWeather = @"88F";
    cell10.cTeam1Image = [UIImage imageNamed:@"Cameroon"];
    cell10.cTeam2Image = [UIImage imageNamed:@"Croatia"];
    
    DataLayer * cell11 = [[DataLayer alloc] init];
    cell11.cTeam1 = @"Cameroon";
    cell11.cTeam2 = @"Brazil";
    cell11.cTime = @"17:00";
    cell11.cDate = @"23/06";
    cell11.cTeam1Points = @"6";
    cell11.cTeam2Points = @"18";
    cell11.cCity = @"Brasilia";
    cell11.cWeather = @"90F";
    cell11.cTeam1Image = [UIImage imageNamed:@"Cameroon"];
    cell11.cTeam2Image = [UIImage imageNamed:@"Brazil"];
    
    DataLayer * cell12 = [[DataLayer alloc] init];
    cell12.cTeam1 = @"Croatia";
    cell12.cTeam2 = @"Mexico";
    cell12.cTime = @"17:00";
    cell12.cDate = @"23/06";
    cell12.cTeam1Points = @"2";
    cell12.cTeam2Points = @"12";
    cell12.cCity = @"Recife";
    cell12.cWeather = @"90F";
    cell12.cTeam1Image = [UIImage imageNamed:@"Croatia"];
    cell12.cTeam2Image = [UIImage imageNamed:@"Mexico"];
    
    // Group B
    
    DataLayer * cell13 = [[DataLayer alloc] init];
    cell13.cTeam1 = @"Spain";
    cell13.cTeam2 = @"Netherlands";
    cell13.cTime = @"18:00";
    cell13.cDate = @"13/06";
    cell13.cTeam1Points = @"17";
    cell13.cTeam2Points = @"6";
    cell13.cCity = @"Salvador";
    cell13.cWeather = @"77F";
    cell13.cTeam1Image = [UIImage imageNamed:@"Spain"];
    cell13.cTeam2Image = [UIImage imageNamed:@"Netherlands"];
    
    DataLayer * cell14 = [[DataLayer alloc] init];
    cell14.cTeam1 = @"Chile";
    cell14.cTeam2 = @"Australia";
    cell14.cTime = @"18:00";
    cell14.cDate = @"13/06";
    cell14.cTeam1Points = @"8";
    cell14.cTeam2Points = @"8";
    cell14.cCity = @"Cuiaba";
    cell14.cWeather = @"77F";
    cell14.cTeam1Image = [UIImage imageNamed:@"Chile"];
    cell14.cTeam2Image = [UIImage imageNamed:@"Australia"];
    
    DataLayer * cell15 = [[DataLayer alloc] init];
    cell15.cTeam1 = @"Spain";
    cell15.cTeam2 = @"Chile";
    cell15.cTime = @"16:00";
    cell15.cDate = @"18/06";
    cell15.cTeam1Points = @"17";
    cell15.cTeam2Points = @"8";
    cell15.cCity = @"Rio De Janeiro";
    cell15.cWeather = @"70F";
    cell15.cTeam1Image = [UIImage imageNamed:@"Spain"];
    cell15.cTeam2Image = [UIImage imageNamed:@"Chile"];
    
    DataLayer * cell16 = [[DataLayer alloc] init];
    cell16.cTeam1 = @"Australia";
    cell16.cTeam2 = @"Netherlands";
    cell16.cTime = @"13:00";
    cell16.cDate = @"18/06";
    cell16.cTeam1Points = @"8";
    cell16.cTeam2Points = @"6";
    cell16.cCity = @"Porto Alegre";
    cell16.cWeather = @"89F";
    cell16.cTeam1Image = [UIImage imageNamed:@"Australia"];
    cell16.cTeam2Image = [UIImage imageNamed:@"Netherlands"];
    
    DataLayer * cell17 = [[DataLayer alloc] init];
    cell17.cTeam1 = @"Australia";
    cell17.cTeam2 = @"Spain";
    cell17.cTime = @"13:00";
    cell17.cDate = @"23/06";
    cell17.cTeam1Points = @"8";
    cell17.cTeam2Points = @"17";
    cell17.cCity = @"Curitiba";
    cell17.cWeather = @"65F";
    cell17.cTeam1Image = [UIImage imageNamed:@"Australia"];
    cell17.cTeam2Image = [UIImage imageNamed:@"Spain"];
    
    DataLayer * cell18 = [[DataLayer alloc] init];
    cell18.cTeam1 = @"Netherlands";
    cell18.cTeam2 = @"Chile";
    cell18.cTime = @"13:00";
    cell18.cDate = @"23/06";
    cell18.cTeam1Points = @"6";
    cell18.cTeam2Points = @"8";
    cell18.cCity = @"Sao Paulo";
    cell18.cWeather = @"74F";
    cell18.cTeam1Image = [UIImage imageNamed:@"Netherlands"];
    cell18.cTeam2Image = [UIImage imageNamed:@"Chile"];
    
    // Group C
    
    DataLayer * cell19 = [[DataLayer alloc] init];
    cell19.cTeam1 = @"Colombia";
    cell19.cTeam2 = @"Greece";
    cell19.cTime = @"13:00";
    cell19.cDate = @"14/06";
    cell19.cTeam1Points = @"7";
    cell19.cTeam2Points = @"12";
    cell19.cCity = @"Belo Horizonte";
    cell19.cWeather = @"60F";
    cell19.cTeam1Image = [UIImage imageNamed:@"Colombia"];
    cell19.cTeam2Image = [UIImage imageNamed:@"Greece"];
    
    DataLayer * cell20 = [[DataLayer alloc] init];
    cell20.cTeam1 = @"Cote d'Ivoire";
    cell20.cTeam2 = @"Japan";
    cell20.cTime = @"22:00";
    cell20.cDate = @"14/06";
    cell20.cTeam1Points = @"3";
    cell20.cTeam2Points = @"9";
    cell20.cCity = @"Recife";
    cell20.cWeather = @"73F";
    cell20.cTeam1Image = [UIImage imageNamed:@"Cote DIvoire"];
    cell20.cTeam2Image = [UIImage imageNamed:@"Japan"];
    
    
    
    cellMatchArray = [[NSMutableArray alloc] initWithObjects:cell1, cell2, cell3, cell4, cell5, cell6, cell7, cell8, cell9, cell10, cell11, cell12, cell13, cell14, cell15, cell16, cell17, cell18, cell19, cell20, nil];
    
    
    //-----------------------------------------------------------------------------------------------------------------

    
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"Background"]];

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
