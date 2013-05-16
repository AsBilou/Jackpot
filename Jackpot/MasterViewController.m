//
//  MasterViewController.m
//  Jackpot
//
//  Created by Bilou on 16/05/13.
//  Copyright (c) 2013 WM_BN. All rights reserved.
//

#import "MasterViewController.h"
#import "JSONModelLib.h"
#import "KivaFeed.h"
#import "HUD.h"

@interface MasterViewController () {
    KivaFeed* _feed;
}
@end

@implementation MasterViewController

-(void)viewDidAppear:(BOOL)animated
{
    //show loader view
    [HUD showUIBlockingIndicatorWithText:@"Fetching JSON"];
    
    //fetch the feed
    _feed = [[KivaFeed alloc] initFromURLWithString:@"http://romainbellina.fr/jackpot/prizes.json"
                                         completion:^(JSONModel *model, JSONModelError *err) {
                                             
                                             //hide the loader view
                                             [HUD hideUIBlockingIndicator];
                                             
                                             //json fetched
                                             NSLog(@"loans: %@", _feed.loans);
                                             
                                             //reload the table view
                                             [self.tableView reloadData];
                                             
                                         }];
}

//fetch JSON data
#pragma mark - table methods
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _feed.loans.count;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    LoanModel* loan = _feed.loans[indexPath.row];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.textLabel.text = [NSString stringWithFormat:@"%@ from %@",
                           loan.title, loan.picture.value
                           ];
    return cell;
}

@end