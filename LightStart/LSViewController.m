//
//  LSViewController.m
//  LightStart
//
//  Created by Melissa Pringle on 10/10/12.
//  Copyright (c) 2012 Melissa Pringle. All rights reserved.
//

#import "LSViewController.h"
#import "CellTableView.h"
#import "Data.h"
#import "SwitchModel.h"
#import "Switch.h"



#define kBgQueue dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0) //1
#define kLatestKivaLoansURL [NSURL URLWithString:@"http://admin:Pokker8000@brisbane.selfip.com/lights.html"] //2


@interface LSViewController ()

@end

@implementation LSViewController

@synthesize model = _model;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    dispatch_async(kBgQueue, ^{
        NSData* data = [NSData dataWithContentsOfURL:
                        kLatestKivaLoansURL];
        [self performSelectorOnMainThread:@selector(fetchedData:)
                               withObject:data waitUntilDone:YES];
        
    });
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)fetchedData:(NSData *)responseData {
    //parse out the json data
    NSError* error;
    NSDictionary* json = [NSJSONSerialization
                          JSONObjectWithData:responseData //1
                          
                          options:kNilOptions
                          error:&error];
    
    self.model =  [SwitchModel instanceFromDictionary:json];
    
//    NSArray* latestLoans = [json objectForKey:@"loans"]; //2
    
    NSLog(@"loans: %@", json); //3
    [self.tableView reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    
    if(self.model == nil)
    {
        return 0;
    }
    else
    {
        NSLog(@"rows %d", [self.model.data.switches count]);
        return [self.model.data.switches count];
    }
    return 0;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
//    CellTableView *secondCell = (CellTableView *)[tableView dequeueReusableCellWithIdentifier:@"myidentifier"];
//    if(secondCell == nil){
//        
//        UIViewController *mycontroller = [[UIViewController alloc]initWithNibName:@"CellTableView" bundle:nil];
//        secondCell = (CellTableView *)mycontroller.view;
////        [mycontroller release];
//    }
//    secondCell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
//    return secondCell;
    
    static NSString *CellIdentifier = @"myidentifier";
    
    CellTableView *cell = [self.tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        
        NSArray* views = [[NSBundle mainBundle] loadNibNamed:@"CellTableView" owner:nil options:nil];
        
        for (UIView *view in views) {
            if([view isKindOfClass:[UITableViewCell class]])
            {
                cell = (CellTableView*)view;
            }
        }
    }
    Switch* swit =  [self.model.data.switches objectAtIndex:indexPath.row];
    
    
    if([swit.P isEqualToString:@"6"])
    {
        cell.textLabel.text = @"Fish Tank";
    }
    else if([swit.P isEqualToString:@"7"])
    {
          cell.textLabel.text = @"Front Light";        
    }
    else if([swit.P isEqualToString:@"8"])
    {
         cell.textLabel.text = @"Bedroom Light";
    }
    
    return cell;
    
    
}

@end
