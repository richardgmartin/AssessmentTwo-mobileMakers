//
//  ViewController.m
//  AssessmentTwo
//
//  Created by Richard Martin on 2016-01-22.
//  Copyright © 2016 Richard Martin. All rights reserved.
//

#import "ViewController.h"
#import "City.h"
#import "CityDetailViewController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate, CityDetailViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *addTableView;

@property NSMutableArray *cityArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // initialize city array
    
    City *city1 = [[City alloc] initWithname:@"Toronto" andProvince:@"Ontario" andImage:[UIImage imageNamed:@"toronto"]];
    City *city2 = [[City alloc] initWithname:@"Vancouver" andProvince:@"BC" andImage:[UIImage imageNamed:@"vancouver"]];
    City *city3 = [[City alloc] initWithname:@"Montreal" andProvince:@"Quebec" andImage:[UIImage imageNamed:@"montreal"]];
    City *city4 = [[City alloc] initWithname:@"Ottawa" andProvince:@"Ontario" andImage:[UIImage imageNamed:@"ottawa"]];
    
    self.cityArray = [NSMutableArray arrayWithObjects:city1, city2, city3, city4, nil];
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.cityArray.count;
    
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellID" forIndexPath:indexPath];
    
    City *city = [self.cityArray objectAtIndex:indexPath.row];
    
    cell.textLabel.text = city.cityName;
    cell.detailTextLabel.text = city.province;
    cell.imageView.image = city.cityImage;
    
    return cell;
    
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
        City *rowItem = [self.cityArray objectAtIndex:indexPath.row];
        
        [self.cityArray removeObject:rowItem];
        
    }
    
    [self.addTableView reloadData];
    
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    CityDetailViewController *dvc = segue.destinationViewController;
    NSIndexPath *indexPath = [self.addTableView indexPathForSelectedRow];
    dvc.cityObject = [self.cityArray objectAtIndex:indexPath.row];
    
    // set the delegate
    
    dvc.delegate = self;
    
}

-(void)viewWillAppear:(BOOL)animated {
    
    
    
    [self.addTableView reloadData];
}

-(void)cityNameText:(id)name didTapButton:(UIButton *)button {
    
    self.title = name;
    
}


@end
