//
//  FeedTableViewController.m
//  TableViewByCode
//
//  Created by Daniel Goncalves on 2015-04-20.
//  Copyright (c) 2015 Daniel J Goncalves. All rights reserved.
//

#import "FeedTableViewController.h"
#import "PhotoViewController.h"

@interface FeedTableViewController ()

@end

@implementation FeedTableViewController

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Feed";
        self.tabBarItem.image = [UIImage imageNamed:@"tab_icon_feed.png"];
        self.imageTitleArray = @[@"Image 1", @"Image 2", @"Image 3", @"Image 4", @"Image 5"];
        self.imageFileNameArray = @[@"image1.png", @"image2.png", @"image3.png", @"image4.png", @"image5.png"];
        self.imageDetailArray = @[@"Nice starfield.",@"Some bright stars here.",@"This is pretty dark.",@"I can almost see a cloud.",@"There's that cloudy galaxy!"];
        self.imageThumbnailArray = @[@"1thumb.png",@"2thumb.png",@"3thumb.png",@"4thumb.png",@"5thumb.png"];
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView *bitView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"bitmaker.jpg"]];
    bitView.contentMode = UIViewContentModeScaleAspectFit;
    bitView.frame = self.view.frame;
    [self.view addSubview:bitView];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return self.imageTitleArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // Configure the cell...
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    
    cell.textLabel.text = self.imageTitleArray[indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    PhotoViewController *photoVC = [[PhotoViewController alloc]init];
    photoVC.imageFileName = self.imageFileNameArray[indexPath.row];
    photoVC.imageTitle = self.imageTitleArray[indexPath.row];
    
    [self.navigationController pushViewController:photoVC animated:YES];
    
}



/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
