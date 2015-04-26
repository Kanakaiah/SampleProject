//
//  ViewController.m
//  mRingo
//
//  Created by Chandra on 10/31/14.
//  Copyright (c) 2014 4Faces. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+ImageEffects.h"

#define kNumberOfRows                   3
#define kCellHeight                     42.0f
#define kCellIndexCity                  0
#define kCellIndexDate                  1
#define kCellIndexDuration              2

#define kCellIdentifier                 @"cellID"
#define kCellCityPlaceHolder            @"Search by City or Postal code"
#define kCellDatePlaceHolder            @"Date and Time"
#define kCellDurationPlaceHolder        @"Duration"

@implementation CSTableViewInputCell

@end

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, weak) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UISlider *sliderMiles;
@property (weak, nonatomic) IBOutlet UILabel *labelMiles;
@property (weak, nonatomic) IBOutlet UIView  *tableHolder;
@property (weak, nonatomic) IBOutlet CSButton *btnFindDJ;
@property (weak, nonatomic) IBOutlet CSButton *btnSignup;
@property (weak, nonatomic) IBOutlet CSButton *btnSignin;
@property (weak, nonatomic) IBOutlet UIView  *view1PxFooterLine;
@end

@implementation ViewController

#pragma mark - ViewController lifecycle
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setViewReady];
    [self setTableReady];
    [self searchSliderValueChanged:self.sliderMiles];
}

-(void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBar.hidden = YES;
    [self.sliderMiles addTarget:self action:@selector(searchSliderValueChanged:) forControlEvents:UIControlEventValueChanged];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - TableView
-(void)viewDidLayoutSubviews
{
    if ([self.tableView respondsToSelector:@selector(setSeparatorInset:)]) {
        [self.tableView setSeparatorInset:UIEdgeInsetsZero];
    }
    
    if ([self.tableView respondsToSelector:@selector(setLayoutMargins:)]) {
        [self.tableView setLayoutMargins:UIEdgeInsetsZero];
    }
}

-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([cell respondsToSelector:@selector(setSeparatorInset:)]) {
        [cell setSeparatorInset:UIEdgeInsetsZero];
    }
    
    if ([cell respondsToSelector:@selector(setLayoutMargins:)]) {
        [cell setLayoutMargins:UIEdgeInsetsZero];
    }
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return kNumberOfRows;
}

-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return kCellHeight;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CSTableViewInputCell *cell = (CSTableViewInputCell *)[tableView dequeueReusableCellWithIdentifier:kCellIdentifier];
    
    switch (indexPath.row)
    {
        case kCellIndexCity:
            cell.txtField.placeholder = [kCellCityPlaceHolder uppercaseString];
            break;
        case kCellIndexDate:
            cell.txtField.placeholder = [kCellDatePlaceHolder uppercaseString];
            break;
        case kCellIndexDuration:
            cell.txtField.placeholder = [kCellDurationPlaceHolder uppercaseString];
        default:
            break;
    }
    
    [cell.txtField setValue:ColorWHITE
                    forKeyPath:@"_placeholderLabel.textColor"];
    cell.backgroundColor = [UIColor clearColor];
    return cell;
}

#pragma mark - Search Slider
- (void)searchSliderValueChanged:(UISlider *)sender
{
    [self.sliderMiles setValue:((int)((self.sliderMiles.value + 2.5) / 5) * 5) animated:NO];
    int intValueSlider = (int)ceil(self.sliderMiles.value);
    self.labelMiles.text = [[NSString alloc]initWithFormat:@"%d",intValueSlider];
}

#pragma mark - util methods
- (void)setTableReady
{
    self.tableView.delegate   = self;
    self.tableView.dataSource = self;
    self.tableView.scrollEnabled = NO;
    self.tableView.backgroundView = nil;
    self.tableView.backgroundColor = [UIColor clearColor];
//    self.tableView.backgroundView.backgroundColor = themeVioletLite_1;
    self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
}

- (void)setViewReady
{
    self.view.backgroundColor              = themeViolet;
    self.view1PxFooterLine.backgroundColor = themeVioletDark;
//    self.tableHolder.layer.borderWidth    = 2.0f;
//    self.tableHolder.layer.cornerRadius   = 6.0f;
//    self.tableHolder.layer.borderColor    = themeViolet.CGColor;
    [self.btnFindDJ stylizeWithColor:ColorWHITE];
    [self.btnSignup stylizeWithColor:ColorWHITE];
    [self.btnSignin stylizeWithColor:ColorWHITE];
}
@end
