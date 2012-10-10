//
//  CellTableView.m
//  LightStart
//
//  Created by Melissa Pringle on 10/10/12.
//  Copyright (c) 2012 Melissa Pringle. All rights reserved.
//

#import "CellTableView.h"

@implementation CellTableView

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
