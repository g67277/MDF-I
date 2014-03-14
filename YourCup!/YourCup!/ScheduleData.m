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
@synthesize appName, appDisc;

- (id) init{
    
    if (self  = [super init]) {
        appName = @"App Name: YourCup!";
        appDisc = @"NEVER MISS A MOMENT, NEVER LOSE A BET /nCan you feel the excitement? The World Cup is right around the corner and YourCup™ is here to enhance the world’s most popular tournament for you.\nGet ready to experience the excitement of winning with your national team/n* Monitor and track your team throughout the tournament\n* Win with your team by betting on them with friends\n* View game scores in real-time\n* Get alerts when your team scores and when you win\n* Share your Win with the world through automatic Facebook posting\nWhether you’re on the road, at work or up in the middle of the night to check on the score.  YourCup™ will give you one convenient place to keep up with the World Cup.\n* With YourCup™ you can view detailed match schedule\n* Real-time scores for every match\n     * Teams lineups and stats\n     * Breaking stories\n      * Galleries from Getty Images\n     * Videos and match highlights\n      * Destination guide for the beautiful cities and stadiums of the 2014 World Cup/nThis is YourCup™! Plot your path to Glory!";
    }
    
    return self;
}



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
    cell1.cStadiumImg = [UIImage imageNamed:@"salvador.jpg"];
    cell1.cCityImg = [UIImage imageNamed:@"salvador-city.jpg"];
    
    DataLayerSchedule * cell2 = [[DataLayerSchedule alloc] init];
    cell2.cTeam1 = @"Ghana";
    cell2.cTeam2 = @"USA";
    cell2.cTime = @"18:00";
    cell2.cDate = @"16/06";
    cell2.cTeam1Points = @"4    |    2    |    4    |    7";
    cell2.cTeam2Points = @"1    |    4    |    5    |    15";
    cell2.cCity = @"Natal";
    cell2.cWeather = @"77F";
    cell2.cTeam1Image = [UIImage imageNamed:@"ghana"];
    cell2.cTeam2Image = [UIImage imageNamed:@"usa"];
    cell2.cStadiumImg = [UIImage imageNamed:@"natal.jpg"];
    cell2.cCityImg = [UIImage imageNamed:@"natal-city.jpg"];
    
    DataLayerSchedule * cell3 = [[DataLayerSchedule alloc] init];
    cell3.cTeam1 = @"Germany";
    cell3.cTeam2 = @"Ghana";
    cell3.cTime = @"15:00";
    cell3.cDate = @"21/06";
    cell3.cTeam1Points = @"7    |    2    |    4    |    12";
    cell3.cTeam2Points = @"2    |    3    |    3    |    23";
    cell3.cCity = @"Fortaleza";
    cell3.cWeather = @"51F";
    cell3.cTeam1Image = [UIImage imageNamed:@"germany"];
    cell3.cTeam2Image = [UIImage imageNamed:@"ghana"];
    cell3.cStadiumImg = [UIImage imageNamed:@"fortaleza.jpg"];
    cell3.cCityImg = [UIImage imageNamed:@"fortaleza-city.jpg"];
    
    DataLayerSchedule * cell4 = [[DataLayerSchedule alloc] init];
    cell4.cTeam1 = @"USA";
    cell4.cTeam2 = @"Portugal";
    cell4.cTime = @"18:00";
    cell4.cDate = @"22/06";
    cell4.cTeam1Points = @"8    |    4    |    3    |    11";
    cell4.cTeam2Points = @"9    |    3    |    4    |    6";
    cell4.cCity = @"Manaus";
    cell4.cWeather = @"65F";
    cell4.cTeam1Image = [UIImage imageNamed:@"usa"];
    cell4.cTeam2Image = [UIImage imageNamed:@"portugal"];
    cell4.cStadiumImg = [UIImage imageNamed:@"manaus.jpg"];
    cell4.cCityImg = [UIImage imageNamed:@"manaus-city.jpg"];
    
    DataLayerSchedule * cell5 = [[DataLayerSchedule alloc] init];
    cell5.cTeam1 = @"USA";
    cell5.cTeam2 = @"Germany";
    cell5.cTime = @"13:00";
    cell5.cDate = @"26/06";
    cell5.cTeam1Points = @"8    |    6    |    5    |    15";
    cell5.cTeam2Points = @"5    |    3    |    7    |    23";
    cell5.cCity = @"Recife";
    cell5.cWeather = @"90F";
    cell5.cTeam1Image = [UIImage imageNamed:@"usa"];
    cell5.cTeam2Image = [UIImage imageNamed:@"germany"];
    cell5.cStadiumImg = [UIImage imageNamed:@"recife.jpg"];
    cell5.cCityImg = [UIImage imageNamed:@"recife-city.jpg"];
    
    DataLayerSchedule * cell6 = [[DataLayerSchedule alloc] init];
    cell6.cTeam1 = @"Portugal";
    cell6.cTeam2 = @"Ghana";
    cell6.cTime = @"13:00";
    cell6.cDate = @"26/06";
    cell6.cTeam1Points = @"6    |    6    |    5    |    17";
    cell6.cTeam2Points = @"8    |    3    |    6    |    23";
    cell6.cCity = @"Brasilia";
    cell6.cWeather = @"90F";
    cell6.cTeam1Image = [UIImage imageNamed:@"portugal"];
    cell6.cTeam2Image = [UIImage imageNamed:@"ghana"];
    cell6.cStadiumImg = [UIImage imageNamed:@"brasilia.jpg"];
    cell6.cCityImg = [UIImage imageNamed:@"brasilia-city.jpg"];
    
    // Group A
    
    DataLayerSchedule * cell7 = [[DataLayerSchedule alloc] init];
    cell7.cTeam1 = @"Brazil";
    cell7.cTeam2 = @"Croatia";
    cell7.cTime = @"17:00";
    cell7.cDate = @"12/06";
    cell7.cTeam1Points = @"8    |    6    |    5    |    15";
    cell7.cTeam2Points = @"8    |    5    |    6    |    34";
    cell7.cCity = @"Sao Paulo";
    cell7.cWeather = @"80F";
    cell7.cTeam1Image = [UIImage imageNamed:@"brazil"];
    cell7.cTeam2Image = [UIImage imageNamed:@"croatia"];
    cell7.cStadiumImg = [UIImage imageNamed:@"Sao-Paulo.jpg"];
    cell7.cCityImg = [UIImage imageNamed:@"sao-paulo-city.jpg"];
    
    DataLayerSchedule * cell8 = [[DataLayerSchedule alloc] init];
    cell8.cTeam1 = @"Mexico";
    cell8.cTeam2 = @"Cameroon";
    cell8.cTime = @"13:00";
    cell8.cDate = @"17/06";
    cell8.cTeam1Points = @"8    |    3    |    6    |    23";
    cell8.cTeam2Points = @"5    |    3    |    7    |    23";
    cell8.cCity = @"Natal";
    cell8.cWeather = @"78F";
    cell8.cTeam1Image = [UIImage imageNamed:@"mexico"];
    cell8.cTeam2Image = [UIImage imageNamed:@"cameroon"];
    cell8.cStadiumImg = [UIImage imageNamed:@"natal.jpg"];
    cell8.cCityImg = [UIImage imageNamed:@"natal-city.jpg"];
    
    DataLayerSchedule * cell9 = [[DataLayerSchedule alloc] init];
    cell9.cTeam1 = @"Brazil";
    cell9.cTeam2 = @"Mexico";
    cell9.cTime = @"16:00";
    cell9.cDate = @"18/06";
    cell9.cTeam1Points = @"6    |    6    |    5    |    33";
    cell9.cTeam2Points = @"7    |    2    |    3    |    3";
    cell9.cCity = @"Fortaleza";
    cell9.cWeather = @"69F";
    cell9.cTeam1Image = [UIImage imageNamed:@"brazil"];
    cell9.cTeam2Image = [UIImage imageNamed:@"mexico"];
    cell9.cStadiumImg = [UIImage imageNamed:@"fortaleza.jpg"];
    cell9.cCityImg = [UIImage imageNamed:@"fortaleza-city.jpg"];
    
    DataLayerSchedule * cell10 = [[DataLayerSchedule alloc] init];
    cell10.cTeam1 = @"Cameroon";
    cell10.cTeam2 = @"Croatia";
    cell10.cTime = @"18:00";
    cell10.cDate = @"18/06";
    cell10.cTeam1Points = @"5    |    1    |    3    |    45";
    cell10.cTeam2Points = @"7    |    2    |    5    |    23";
    cell10.cCity = @"Manaus";
    cell10.cWeather = @"88F";
    cell10.cTeam1Image = [UIImage imageNamed:@"cameroon"];
    cell10.cTeam2Image = [UIImage imageNamed:@"croatia"];
    cell10.cStadiumImg = [UIImage imageNamed:@"manaus.jpg"];
    cell10.cCityImg = [UIImage imageNamed:@"manaus-city.jpg"];
    
    DataLayerSchedule * cell11 = [[DataLayerSchedule alloc] init];
    cell11.cTeam1 = @"Cameroon";
    cell11.cTeam2 = @"Brazil";
    cell11.cTime = @"17:00";
    cell11.cDate = @"23/06";
    cell11.cTeam1Points = @"6    |    5    |    7    |    3";
    cell11.cTeam2Points = @"9    |    8    |    3    |    34";
    cell11.cCity = @"Brasilia";
    cell11.cWeather = @"90F";
    cell11.cTeam1Image = [UIImage imageNamed:@"cameroon"];
    cell11.cTeam2Image = [UIImage imageNamed:@"brazil"];
    cell11.cStadiumImg = [UIImage imageNamed:@"brasilia.jpg"];
    cell11.cCityImg = [UIImage imageNamed:@"brasilia-city.jpg"];
    
    DataLayerSchedule * cell12 = [[DataLayerSchedule alloc] init];
    cell12.cTeam1 = @"Croatia";
    cell12.cTeam2 = @"Mexico";
    cell12.cTime = @"17:00";
    cell12.cDate = @"23/06";
    cell12.cTeam1Points = @"5    |    5    |    9    |    24";
    cell12.cTeam2Points = @"6    |    4    |    2    |    11";
    cell12.cCity = @"Recife";
    cell12.cWeather = @"90F";
    cell12.cTeam1Image = [UIImage imageNamed:@"croatia"];
    cell12.cTeam2Image = [UIImage imageNamed:@"mexico"];
    cell12.cStadiumImg = [UIImage imageNamed:@"recife.jpg"];
    cell12.cCityImg = [UIImage imageNamed:@"recife-city.jpg"];
    
    // Group B
    
    DataLayerSchedule * cell13 = [[DataLayerSchedule alloc] init];
    cell13.cTeam1 = @"Spain";
    cell13.cTeam2 = @"Netherlands";
    cell13.cTime = @"18:00";
    cell13.cDate = @"13/06";
    cell13.cTeam1Points = @"5    |    3    |    7    |    23";
    cell13.cTeam2Points = @"6    |    4    |    2    |    11";
    cell13.cCity = @"Salvador";
    cell13.cWeather = @"77F";
    cell13.cTeam1Image = [UIImage imageNamed:@"spain"];
    cell13.cTeam2Image = [UIImage imageNamed:@"netherlands"];
    cell13.cStadiumImg = [UIImage imageNamed:@"salvador.jpg"];
    cell13.cCityImg = [UIImage imageNamed:@"salvador-city.jpg"];
    
    DataLayerSchedule * cell14 = [[DataLayerSchedule alloc] init];
    cell14.cTeam1 = @"Chile";
    cell14.cTeam2 = @"Australia";
    cell14.cTime = @"18:00";
    cell14.cDate = @"13/06";
    cell14.cTeam1Points = @"6    |    4    |    2    |    11";
    cell14.cTeam2Points = @"5    |    3    |    7    |    15";
    cell14.cCity = @"Cuiaba";
    cell14.cWeather = @"77F";
    cell14.cTeam1Image = [UIImage imageNamed:@"chile"];
    cell14.cTeam2Image = [UIImage imageNamed:@"australia"];
    cell14.cStadiumImg = [UIImage imageNamed:@"Cuiaba.jpg"];
    cell14.cCityImg = [UIImage imageNamed:@"cuiaba-city.jpg"];
    
    DataLayerSchedule * cell15 = [[DataLayerSchedule alloc] init];
    cell15.cTeam1 = @"Spain";
    cell15.cTeam2 = @"Chile";
    cell15.cTime = @"16:00";
    cell15.cDate = @"18/06";
    cell15.cTeam1Points = @"6    |    4    |    2    |    11";
    cell15.cTeam2Points = @"1    |    5    |    3    |    18";
    cell15.cCity = @"Rio De Janeiro";
    cell15.cWeather = @"70F";
    cell15.cTeam1Image = [UIImage imageNamed:@"spain"];
    cell15.cTeam2Image = [UIImage imageNamed:@"chile"];
    cell15.cStadiumImg = [UIImage imageNamed:@"rio-de-janeiro.jpg"];
    cell15.cCityImg = [UIImage imageNamed:@"rio-de-janeiro-city.jpg"];
    
    DataLayerSchedule * cell16 = [[DataLayerSchedule alloc] init];
    cell16.cTeam1 = @"Australia";
    cell16.cTeam2 = @"Netherlands";
    cell16.cTime = @"13:00";
    cell16.cDate = @"18/06";
    cell16.cTeam1Points = @"5    |    1    |    3    |    45";
    cell16.cTeam2Points = @"4    |    7    |    1    |    23";
    cell16.cCity = @"Porto Alegre";
    cell16.cWeather = @"89F";
    cell16.cTeam1Image = [UIImage imageNamed:@"australia"];
    cell16.cTeam2Image = [UIImage imageNamed:@"netherlands"];
    cell16.cStadiumImg = [UIImage imageNamed:@"porto-alegre.jpg"];
    cell16.cCityImg = [UIImage imageNamed:@"porto-alegre-city.jpg"];
    
    DataLayerSchedule * cell17 = [[DataLayerSchedule alloc] init];
    cell17.cTeam1 = @"Australia";
    cell17.cTeam2 = @"Spain";
    cell17.cTime = @"13:00";
    cell17.cDate = @"23/06";
    cell17.cTeam1Points = @"2    |    6    |    4    |    12";
    cell17.cTeam2Points = @"5    |    1    |    3    |    45";
    cell17.cCity = @"Curitiba";
    cell17.cWeather = @"65F";
    cell17.cTeam1Image = [UIImage imageNamed:@"australia"];
    cell17.cTeam2Image = [UIImage imageNamed:@"spain"];
    cell17.cStadiumImg = [UIImage imageNamed:@"curitiba.jpg"];
    cell17.cCityImg = [UIImage imageNamed:@"curitiba-city.jpg"];
    
    DataLayerSchedule * cell18 = [[DataLayerSchedule alloc] init];
    cell18.cTeam1 = @"Netherlands";
    cell18.cTeam2 = @"Chile";
    cell18.cTime = @"13:00";
    cell18.cDate = @"23/06";
    cell18.cTeam1Points = @"1    |    1    |    10    |    5";
    cell18.cTeam2Points = @"2    |    9    |    6    |    44";
    cell18.cCity = @"Sao Paulo";
    cell18.cWeather = @"74F";
    cell18.cTeam1Image = [UIImage imageNamed:@"netherlands"];
    cell18.cTeam2Image = [UIImage imageNamed:@"chile"];
    cell18.cStadiumImg = [UIImage imageNamed:@"Sao-Paulo.jpg"];
    cell18.cCityImg = [UIImage imageNamed:@"sao-paulo-city.jpg"];
    
    
    
    
    cellMatchArray = [[NSMutableArray alloc] initWithObjects:cell1, cell2, cell3, cell4, cell5, cell6, cell7, cell8, cell9, cell10, cell11, cell12, cell13, cell14, cell15, cell16, cell17, cell18, nil];
    

    
    return cellMatchArray;
}

- (NSMutableArray*) researchArray{
    
    DataLayerSchedule * cell1 = [[DataLayerSchedule alloc]init];
    cell1.cResearchLabel = @"FIFA 2010 World Cup: A symbol of carnival or menace?";
    cell1.cResearchText = @"Researchers have observed that during a major sporting event, participating nations are transformed into sites of carnival and patriotic celebration. National flags are important symbols, increasingly used to denote support for the national team and to express group identity. Using findings from a qualitative study of sojourner perceptions of a transformed England during the FIFA World Cup 2010, this paper explores how the display of the England national flag (St George Cross) is decoded by national outsiders to the culture. Two conflicting themes emerged from an inductive thematic analysis of data. The England flag is perceived as both a positive symbol of national pride and a signifier of potential violence.";
    cell1.cLinkLabel = @"http://alturl.com/f7e3j";
    cell1.cResearchImg = [UIImage imageNamed:@"fullsail1"];
    
    DataLayerSchedule * cell2 = [[DataLayerSchedule alloc]init];
    cell2.cResearchLabel = @"The successes and challenges of hosting the 2010 FIFA World Cup";
    cell2.cResearchText = @"In 2010 the FIFA World Cup finals were held on the African Continent for the first time with South Africa chosen to host the month-long event. Crucially, the hosting of such a prestigious tournament was seen as a chance for South Africa to prove to the world that as a developing nation it could successfully host an event of this magnitude. Using contemporary reports and incorporating findings from in-depth interviews conducted with national and regional event and destination stakeholders, this paper explores the challenges and successes of hosting the 2010 World Cup in South Africa. Primarily, focusing on the experiences of the host City of Cape Town, this study investigates the branding opportunities and challenges associated with the 2010 tournament as well as actual impact and legacy of the event on social factors, such as nation building, social cohesion and racial integration.";
    cell2.cLinkLabel = @"http://alturl.com/gouon";
    cell2.cResearchImg = [UIImage imageNamed:@"fullsail2"];
    
    DataLayerSchedule * cell3 = [[DataLayerSchedule alloc]init];
    cell3.cResearchLabel = @"Soccer and media in Brazil";
    cell3.cResearchText = @"This essay analyzes the complex relations between soccer and media in Brazil. Both massmedia and sports arrived in Brazil at the same time, in the late nineteenth century, both associated with the values of modernity in urban centres. It discusses the media coverage of the World Cup and data regarding audiences in particular. The World Cup is considered to be a very important social fact in contemporary Brazilian culture, and since its beginning, the World Cup has been available in Brazil exclusively through the mass media. Since the first international radio transmissions in the late 1930s, Brazil’s matches reached outstanding audience numbers. In the last three World Cups, the share of the total audience for the matches was around 95%, something like 110 million viewers per match, on average. The essay discusses the media’s role in projecting Brazilian football.";
    cell3.cLinkLabel = @"http://alturl.com/3h36w";
    cell3.cResearchImg = [UIImage imageNamed:@"fullsail3"];
    
    DataLayerSchedule * cell4 = [[DataLayerSchedule alloc]init];
    cell4.cResearchLabel = @"South Africa under FIFA's reign: The World Cup's contribution to urban development";
    cell4.cResearchText = @"When South Africa hosted the 2010 FIFA World Cup, the move to stage this mega-event at the southern tip of the African continent was lauded as a timely acknowledgement of the growing importance of the ‘global south’. Most of the fears that had been raised before the kick-off proved immaterial once the event was under way. Nine host cities enjoyed the international spotlight; the new and revamped stadiums were the focus of the media. Behind the scenes, however, more infrastructure had to be created, locational decisions taken and structures of governance honed. That this process was thoroughly influenced by FIFA's wishes can be demonstrated by focusing on a few strategic elements, such as the site selection for stadiums and fan parks. The findings in this article sustain the dominant argument in mega-event research: urban development and governance in the host cities are severely affected by these events.";
    cell4.cLinkLabel = @"http://alturl.com/bj72b";
    cell4.cResearchImg = [UIImage imageNamed:@"fullsail4"];
    
    DataLayerSchedule * cell5 = [[DataLayerSchedule alloc]init];
    cell5.cResearchLabel = @"German Soccer, the 2010 World Cup, and Multicultural Belonging.";
    cell5.cResearchText = @"The celebrations of the \"multicultural\" German national soccer team for the 2010 World Cup and the subsequent declaration of the failure of German multiculturalism reveal complex constructions of national belonging and of postnational identity constructions, and affective ties to the idea of Europe in twenty-first century Germany. Within what appears to be an enthusiastic celebration of a multicultural German team, we uncover a set of converging emotions about what Germany and Europe stand for and what they could or should embody. Such contradictory discourses provide a fundamental tension that defines \"feeling Germany\" and \"feeling Europe\" in the first part of the twenty-first century. ";
    cell5.cLinkLabel = @"http://alturl.com/xabnk";
    cell5.cResearchImg = [UIImage imageNamed:@"fullsail5"];
    
    cellResearchArray = [[NSMutableArray alloc] initWithObjects:cell1, cell2, cell3, cell4, cell5, nil];
    
    return cellResearchArray;
}



@end
