//
//  Home.m
//  Lab04 Tables
//
//  Created by Haydee on 6/21/16.
//  Copyright © 2016 Haydee. All rights reserved.
//

#import "Home.h"

@interface Home ()
@property NSMutableArray *greyNames;
@property NSMutableArray *greyImgs;
@end

@implementation Home
/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initController {
    self.greyNames   = [[NSMutableArray alloc] initWithObjects: @"Meredith Grey", @"Alex Karev", @"Miranda Bailey", @"Richard Webber", @"Derek Shepherd", @"Callie Torres", @"Cristina Yang", @"Owen Hunt", @"Arizona Robbins", @"Jackson Avery", @"April Kepner", @"Mark Sloan", @"Izzie Stevens", @"Lexie Grey", @"George O'Malley", @"Jo Wilson",nil];
    
    self.greyImgs   = [[NSMutableArray alloc] initWithObjects: @"Meredith.jpg", @"Alex.jpg", @"Miranda.jpg", @"Richard.jpg", @"Derek.jpg", @"Callie.jpg", @"Cristina.jpg", @"Owen.jpg", @"Arizona.png", @"Jackson.jpg", @"April.jpg", @"Mark.jpg", @"Izzie.jpg", @"Lexie.jpg", @"George.png", @"Jo.jpg",nil];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
/**********************************************************************************************/
#pragma mark - Table methods and delegates
/**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.greyNames.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Initialize cells
    cellGrey *cell = (cellGrey *)[tableView dequeueReusableCellWithIdentifier:@"cellGrey"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"cellGrey" bundle:nil] forCellReuseIdentifier:@"cellGrey"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellGrey"];
    }
    //Fill cell with info from arrays
    cell.lblName.text       = self.greyNames[indexPath.row];
    cell.imgGrey.image   = [UIImage imageNamed:self.greyImgs[indexPath.row]];
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    self.lblCaption.text = self.greyNames[indexPath.row];
}
@end
