//
//  ScheduleData.m
//  YourCup!
//
//  Created by Nazir Shuqair on 3/9/14.
//  Copyright (c) 2014 Me Time Studios. All rights reserved.
//

#import "ScheduleData.h"
#import "DataLayerSchedule.h"



@implementation ScheduleData


- (NSMutableArray*) matchArray{
    
    //------------------------------------- Words for the table view array --------------------------------------------
    
    
    // Group G
    
    DataLayerSchedule * cell1 = [[DataLayerSchedule alloc] init];
    cell1.cTeam1 = @"Germany";
    cell1.cTeam2 = @"Portugal";
    cell1.cTime = @"12:00";
    cell1.cDate = @"16/06";
    cell1.cTeam1Points = @"8    |    6    |    5    |    15";
    cell1.cTeam2Points = @"5    |    3    |    2    |    13";
    cell1.cCity = @"Salvador";
    cell1.cWeather = @"77F";
    cell1.cTeam1Image = [UIImage imageNamed:@"germany"];
    cell1.cTeam2Image = [UIImage imageNamed:@"portugal"];
    cell1.cStadiumImg = [UIImage imageNamed:@"salvador"];
    cell1.cCityImg = [UIImage imageNamed:@"salvador city"];
    
    DataLayerSchedule * cell2 = [[DataLayerSchedule alloc] init];
    cell2.cTeam1 = @"Ghana";
    cell2.cTeam2 = @"USA";
    cell2.cTime = @"18:00";
    cell2.cDate = @"16/06";
    cell2.cTeam1Points = @"4";
    cell2.cTeam2Points = @"12";
    cell2.cCity = @"Natal";
    cell2.cWeather = @"77F";
    cell2.cTeam1Image = [UIImage imageNamed:@"ghana"];
    cell2.cTeam2Image = [UIImage imageNamed:@"usa"];
    cell2.cStadiumImg = [UIImage imageNamed:@"natal"];
    cell2.cCityImg = [UIImage imageNamed:@"natal city"];
    
    DataLayerSchedule * cell3 = [[DataLayerSchedule alloc] init];
    cell3.cTeam1 = @"Germany";
    cell3.cTeam2 = @"Ghana";
    cell3.cTime = @"15:00";
    cell3.cDate = @"21/06";
    cell3.cTeam1Points = @"15";
    cell3.cTeam2Points = @"4";
    cell3.cCity = @"Fortaleza";
    cell3.cWeather = @"51F";
    cell3.cTeam1Image = [UIImage imageNamed:@"germany"];
    cell3.cTeam2Image = [UIImage imageNamed:@"ghana"];
    cell3.cStadiumImg = [UIImage imageNamed:@"fortaleza"];
    cell3.cCityImg = [UIImage imageNamed:@"fortaleza city"];
    
    DataLayerSchedule * cell4 = [[DataLayerSchedule alloc] init];
    cell4.cTeam1 = @"USA";
    cell4.cTeam2 = @"Portugal";
    cell4.cTime = @"18:00";
    cell4.cDate = @"22/06";
    cell4.cTeam1Points = @"12";
    cell4.cTeam2Points = @"16";
    cell4.cCity = @"Manaus";
    cell4.cWeather = @"65F";
    cell4.cTeam1Image = [UIImage imageNamed:@"usa"];
    cell4.cTeam2Image = [UIImage imageNamed:@"portugal"];
    cell4.cStadiumImg = [UIImage imageNamed:@"manaus"];
    cell4.cCityImg = [UIImage imageNamed:@"manaus city"];
    
    DataLayerSchedule * cell5 = [[DataLayerSchedule alloc] init];
    cell5.cTeam1 = @"USA";
    cell5.cTeam2 = @"Germany";
    cell5.cTime = @"13:00";
    cell5.cDate = @"26/06";
    cell5.cTeam1Points = @"12";
    cell5.cTeam2Points = @"15";
    cell5.cCity = @"Recife";
    cell5.cWeather = @"90F";
    cell5.cTeam1Image = [UIImage imageNamed:@"usa"];
    cell5.cTeam2Image = [UIImage imageNamed:@"germany"];
    cell5.cStadiumImg = [UIImage imageNamed:@"recife"];
    cell5.cCityImg = [UIImage imageNamed:@"recife city"];
    
    DataLayerSchedule * cell6 = [[DataLayerSchedule alloc] init];
    cell6.cTeam1 = @"Portugal";
    cell6.cTeam2 = @"Ghana";
    cell6.cTime = @"13:00";
    cell6.cDate = @"26/06";
    cell6.cTeam1Points = @"16";
    cell6.cTeam2Points = @"4";
    cell6.cCity = @"Brasilia";
    cell6.cWeather = @"90F";
    cell6.cTeam1Image = [UIImage imageNamed:@"portugal"];
    cell6.cTeam2Image = [UIImage imageNamed:@"ghana"];
    cell6.cStadiumImg = [UIImage imageNamed:@"brasilia"];
    cell6.cCityImg = [UIImage imageNamed:@"brasilia city"];
    
    // Group A
    
    DataLayerSchedule * cell7 = [[DataLayerSchedule alloc] init];
    cell7.cTeam1 = @"Brazil";
    cell7.cTeam2 = @"Croatia";
    cell7.cTime = @"17:00";
    cell7.cDate = @"12/06";
    cell7.cTeam1Points = @"18";
    cell7.cTeam2Points = @"2";
    cell7.cCity = @"Sao Paulo";
    cell7.cWeather = @"80F";
    cell7.cTeam1Image = [UIImage imageNamed:@"brazil"];
    cell7.cTeam2Image = [UIImage imageNamed:@"croatia"];
    cell7.cStadiumImg = [UIImage imageNamed:@"Sao Paulo"];
    cell7.cCityImg = [UIImage imageNamed:@"sao paulo city"];
    
    DataLayerSchedule * cell8 = [[DataLayerSchedule alloc] init];
    cell8.cTeam1 = @"Mexico";
    cell8.cTeam2 = @"Cameroon";
    cell8.cTime = @"13:00";
    cell8.cDate = @"17/06";
    cell8.cTeam1Points = @"12";
    cell8.cTeam2Points = @"6";
    cell8.cCity = @"Natal";
    cell8.cWeather = @"78F";
    cell8.cTeam1Image = [UIImage imageNamed:@"mexico"];
    cell8.cTeam2Image = [UIImage imageNamed:@"cameroon"];
    cell8.cStadiumImg = [UIImage imageNamed:@"natal"];
    cell8.cCityImg = [UIImage imageNamed:@"natal city"];
    
    DataLayerSchedule * cell9 = [[DataLayerSchedule alloc] init];
    cell9.cTeam1 = @"Brazil";
    cell9.cTeam2 = @"Mexico";
    cell9.cTime = @"16:00";
    cell9.cDate = @"18/06";
    cell9.cTeam1Points = @"18";
    cell9.cTeam2Points = @"12";
    cell9.cCity = @"Fortaleza";
    cell9.cWeather = @"69F";
    cell9.cTeam1Image = [UIImage imageNamed:@"brazil"];
    cell9.cTeam2Image = [UIImage imageNamed:@"mexico"];
    cell9.cStadiumImg = [UIImage imageNamed:@"fortaleza"];
    cell9.cCityImg = [UIImage imageNamed:@"fortaleza city"];
    
    DataLayerSchedule * cell10 = [[DataLayerSchedule alloc] init];
    cell10.cTeam1 = @"Cameroon";
    cell10.cTeam2 = @"Croatia";
    cell10.cTime = @"18:00";
    cell10.cDate = @"18/06";
    cell10.cTeam1Points = @"6";
    cell10.cTeam2Points = @"2";
    cell10.cCity = @"Manaus";
    cell10.cWeather = @"88F";
    cell10.cTeam1Image = [UIImage imageNamed:@"cameroon"];
    cell10.cTeam2Image = [UIImage imageNamed:@"croatia"];
    cell10.cStadiumImg = [UIImage imageNamed:@"manaus"];
    cell10.cCityImg = [UIImage imageNamed:@"manaus city"];
    
    DataLayerSchedule * cell11 = [[DataLayerSchedule alloc] init];
    cell11.cTeam1 = @"Cameroon";
    cell11.cTeam2 = @"Brazil";
    cell11.cTime = @"17:00";
    cell11.cDate = @"23/06";
    cell11.cTeam1Points = @"6";
    cell11.cTeam2Points = @"18";
    cell11.cCity = @"Brasilia";
    cell11.cWeather = @"90F";
    cell11.cTeam1Image = [UIImage imageNamed:@"cameroon"];
    cell11.cTeam2Image = [UIImage imageNamed:@"brazil"];
    cell11.cStadiumImg = [UIImage imageNamed:@"brasilia"];
    cell11.cCityImg = [UIImage imageNamed:@"brasilia city"];
    
    DataLayerSchedule * cell12 = [[DataLayerSchedule alloc] init];
    cell12.cTeam1 = @"Croatia";
    cell12.cTeam2 = @"Mexico";
    cell12.cTime = @"17:00";
    cell12.cDate = @"23/06";
    cell12.cTeam1Points = @"2";
    cell12.cTeam2Points = @"12";
    cell12.cCity = @"Recife";
    cell12.cWeather = @"90F";
    cell12.cTeam1Image = [UIImage imageNamed:@"croatia"];
    cell12.cTeam2Image = [UIImage imageNamed:@"mexico"];
    cell12.cStadiumImg = [UIImage imageNamed:@"recife"];
    cell12.cCityImg = [UIImage imageNamed:@"recife city"];
    
    // Group B
    
    DataLayerSchedule * cell13 = [[DataLayerSchedule alloc] init];
    cell13.cTeam1 = @"Spain";
    cell13.cTeam2 = @"Netherlands";
    cell13.cTime = @"18:00";
    cell13.cDate = @"13/06";
    cell13.cTeam1Points = @"17";
    cell13.cTeam2Points = @"6";
    cell13.cCity = @"Salvador";
    cell13.cWeather = @"77F";
    cell13.cTeam1Image = [UIImage imageNamed:@"spain"];
    cell13.cTeam2Image = [UIImage imageNamed:@"netherlands"];
    cell13.cStadiumImg = [UIImage imageNamed:@"salvador"];
    cell13.cCityImg = [UIImage imageNamed:@"salvador city"];
    
    DataLayerSchedule * cell14 = [[DataLayerSchedule alloc] init];
    cell14.cTeam1 = @"Chile";
    cell14.cTeam2 = @"Australia";
    cell14.cTime = @"18:00";
    cell14.cDate = @"13/06";
    cell14.cTeam1Points = @"8";
    cell14.cTeam2Points = @"8";
    cell14.cCity = @"Cuiaba";
    cell14.cWeather = @"77F";
    cell14.cTeam1Image = [UIImage imageNamed:@"chile"];
    cell14.cTeam2Image = [UIImage imageNamed:@"australia"];
    cell14.cStadiumImg = [UIImage imageNamed:@"cuiaba"];
    cell14.cCityImg = [UIImage imageNamed:@"cuiaba city"];
    
    DataLayerSchedule * cell15 = [[DataLayerSchedule alloc] init];
    cell15.cTeam1 = @"Spain";
    cell15.cTeam2 = @"Chile";
    cell15.cTime = @"16:00";
    cell15.cDate = @"18/06";
    cell15.cTeam1Points = @"17";
    cell15.cTeam2Points = @"8";
    cell15.cCity = @"Rio De Janeiro";
    cell15.cWeather = @"70F";
    cell15.cTeam1Image = [UIImage imageNamed:@"spain"];
    cell15.cTeam2Image = [UIImage imageNamed:@"chile"];
    cell15.cStadiumImg = [UIImage imageNamed:@"rio de janeiro"];
    cell15.cCityImg = [UIImage imageNamed:@"rio de janeiro city"];
    
    DataLayerSchedule * cell16 = [[DataLayerSchedule alloc] init];
    cell16.cTeam1 = @"Australia";
    cell16.cTeam2 = @"Netherlands";
    cell16.cTime = @"13:00";
    cell16.cDate = @"18/06";
    cell16.cTeam1Points = @"8";
    cell16.cTeam2Points = @"6";
    cell16.cCity = @"Porto Alegre";
    cell16.cWeather = @"89F";
    cell16.cTeam1Image = [UIImage imageNamed:@"australia"];
    cell16.cTeam2Image = [UIImage imageNamed:@"netherlands"];
    cell16.cStadiumImg = [UIImage imageNamed:@"porto alegre"];
    cell16.cCityImg = [UIImage imageNamed:@"porto alegre city"];
    
    DataLayerSchedule * cell17 = [[DataLayerSchedule alloc] init];
    cell17.cTeam1 = @"Australia";
    cell17.cTeam2 = @"Spain";
    cell17.cTime = @"13:00";
    cell17.cDate = @"23/06";
    cell17.cTeam1Points = @"8";
    cell17.cTeam2Points = @"17";
    cell17.cCity = @"Curitiba";
    cell17.cWeather = @"65F";
    cell17.cTeam1Image = [UIImage imageNamed:@"australia"];
    cell17.cTeam2Image = [UIImage imageNamed:@"spain"];
    cell17.cStadiumImg = [UIImage imageNamed:@"curitiba"];
    cell17.cCityImg = [UIImage imageNamed:@"curitiba city"];
    
    DataLayerSchedule * cell18 = [[DataLayerSchedule alloc] init];
    cell18.cTeam1 = @"Netherlands";
    cell18.cTeam2 = @"Chile";
    cell18.cTime = @"13:00";
    cell18.cDate = @"23/06";
    cell18.cTeam1Points = @"6";
    cell18.cTeam2Points = @"8";
    cell18.cCity = @"Sao Paulo";
    cell18.cWeather = @"74F";
    cell18.cTeam1Image = [UIImage imageNamed:@"netherlands"];
    cell18.cTeam2Image = [UIImage imageNamed:@"chile"];
    cell18.cStadiumImg = [UIImage imageNamed:@"Sao Paulo"];
    cell18.cCityImg = [UIImage imageNamed:@"sao paulo city"];
    
    
    
    
    cellMatchArray = [[NSMutableArray alloc] initWithObjects:cell1, cell2, cell3, cell4, cell5, cell6, cell7, cell8, cell9, cell10, cell11, cell12, cell13, cell14, cell15, cell16, cell17, cell18, nil];
    

    
    return cellMatchArray;
}

@end
