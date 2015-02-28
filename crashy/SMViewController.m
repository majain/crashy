//
//  SMViewController.m
//  crashy
//
//  Created by Cesare Rocchi on 2/17/13.
//  Copyright (c) 2013 Cesare Rocchi. All rights reserved.
//

#import "SMViewController.h"

@interface SMViewController () {

    NSMutableArray *pizzaOrder;
    
}

@end

@implementation SMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    pizzaOrder = [NSMutableArray arrayWithArray: @[@"Grandma Pizza",
                  @"Siciliana",
                  @"Bufala",
                  @"Pepperoni",
                  @"Broccoli",
                  @"Capressa",
                  @"Vegetarian",
                  @"Margherita",
                  @"Mushrooms",
                  @"4 seasons",
                  @"Pomodoro",
                  @"Hum and Mushrooms",
                  @"Capricciosa",
                  @"Marinara",
                  @"Diavola"
                  ]];
    
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return pizzaOrder.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    
    NSString *s = pizzaOrder[indexPath.row];
    cell.textLabel.text = s;
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row == pizzaOrder.count-1) {
    
        [[NSNotificationCenter defaultCenter] postNotificationName:LOAD_MORE_NOTIFICATION
                                                            object:nil];
        
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
