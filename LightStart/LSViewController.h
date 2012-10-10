//
//  LSViewController.h
//  LightStart
//
//  Created by Melissa Pringle on 10/10/12.
//  Copyright (c) 2012 Melissa Pringle. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SwitchModel.h"

@interface LSViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    SwitchModel* _model;
    UITableView* tableView;
}

@property (nonatomic, retain) SwitchModel* model;
@property (nonatomic, retain) IBOutlet UITableView* tableView;

@end
