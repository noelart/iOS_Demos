//
//  ViewController.h
//  TableViewDemo
//
//  Created by Noel Zahra on 05/01/2014.
//  Copyright (c) 2014 Noel Zahra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end
