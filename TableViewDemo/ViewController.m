//
//  ViewController.m
//  TableViewDemo
//
//  Created by Noel Zahra on 05/01/2014.
//  Copyright (c) 2014 Noel Zahra. All rights reserved.
//

#import "ViewController.h"
#import "Customer.h"

@interface ViewController ()

@property (nonatomic, strong) NSMutableArray *customers;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.customers = [[NSMutableArray alloc]init];
    
    for (int i=1; i <=16; i++) {
        Customer *customer = [[Customer alloc]init];
        customer.name = [NSString stringWithFormat:@"Name %d", i];
        
       [self.customers addObject:customer];
    }
    
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.customers count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *uniqueIdentfier = @"UITableViewCell";
    
    UITableViewCell *cell = nil;
    cell = [self.tableView dequeueReusableCellWithIdentifier:uniqueIdentfier];
    
    Customer *customer = [self.customers objectAtIndex:[indexPath row]];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:uniqueIdentfier];
        
        cell.textLabel.text = customer.name;
        cell.textLabel.textColor = [UIColor whiteColor];
        cell.imageView.image = [UIImage imageNamed:@"1Star.png"];
        cell.detailTextLabel.text = @"Awesome tableView";
        cell.accessoryView = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
        cell.accessoryView.tintColor = [UIColor greenColor];
        cell.backgroundColor = [UIColor blackColor];
        
    }
    
    return cell;
    
}

@end
