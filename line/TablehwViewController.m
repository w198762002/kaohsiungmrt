//
//  TablehwViewController.m
//  line
//
//  Created by 謝至騏 on 13/1/7.
//  Copyright (c) 2013年 謝至騏. All rights reserved.
//

#import "TablehwViewController.h"
#import "ViewhwViewController.h"


@interface TablehwViewController ()

@end

@implementation TablehwViewController

/*- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}*/

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//#pragma mark - Table view data source

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    
    
    
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    int rowCount = 0;
    
    switch (section) {
        case 0:
            rowCount = 21;
            break;
        case 1:
            rowCount = 15;
            break;
        case 2:
            rowCount = 1;
            break;
        default:
            break;
    }
    return rowCount;

    
    // Return the number of rows in the section.
    
}

-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section

{
    NSString *title = @"";
    switch (section) {
        case 0:
            title = @"紅線";
            break;
        case 1:
            title = @"橘線";
            break;
        case 2:
            title = @"";
            break;
            
        
    }
    return title;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSUInteger row = indexPath.row;
    UITableViewCell *cell = [[UITableViewCell alloc]
                             initWithStyle:UITableViewCellStyleSubtitle
                             reuseIdentifier:@"my_cell_id"];
    //cell.selectionStyle = UITableViewCellSelectionStyleNone;
    NSLog(@"row %d cell %p",row ,cell);
    switch (indexPath.section) {
        case 0:
            
            switch (row) {
                case 0:
                    cell.imageView.image = [UIImage imageNamed:@"lv2.png"];
                    cell.textLabel.text = @"南岡山站 ";
                    cell.detailTextLabel.text  = @"Gangshan South";
                    break;
                case 1:
                    cell.imageView.image = [UIImage imageNamed:@"lv2.png"];
                    cell.textLabel.text = @"橋頭火車站";
                    cell.detailTextLabel.text  = @"Ciaotou Station";
                    break;
                case 2:
                    cell.imageView.image = [UIImage imageNamed:@"lv2.png"];
                    cell.textLabel.text = @"橋頭糖廠";
                    cell.detailTextLabel.text  = @"Ciaotou Sugar Refinery";
                    break;
                case 3:
                    cell.imageView.image = [UIImage imageNamed:@"lv2.png"];
                    cell.textLabel.text = @"青埔";
                    cell.detailTextLabel.text  = @"Cingpu";
                    break;
                case 4:
                    cell.imageView.image = [UIImage imageNamed:@"lv2.png"];
                    cell.textLabel.text = @"都會公園";
                    cell.detailTextLabel.text  = @"Metropolitan Park";
                    break;
                case 5:
                    cell.imageView.image = [UIImage imageNamed:@"lv2.png"];
                    cell.textLabel.text = @"後勁";
                    cell.detailTextLabel.text  = @"Houjing";
                    break;
                case 6:
                    cell.imageView.image = [UIImage imageNamed:@"lv2.png"];
                    cell.textLabel.text = @"楠梓加工區";
                    cell.detailTextLabel.text  = @"Nanzih Export Processing Zone";
                    break;
                case 7:
                    cell.imageView.image = [UIImage imageNamed:@"lv2.png"];
                    cell.textLabel.text = @"油廠國小";
                    cell.detailTextLabel.text  = @"Oil Refinery Elementary School";
                    break;
                case 8:
                    cell.imageView.image = [UIImage imageNamed:@"lv2.png"];
                    cell.textLabel.text = @"世運／國家體育園區";
                    cell.detailTextLabel.text  = @"World Games/National Sports Complex";
                    break;
                case 9:
                    cell.imageView.image = [UIImage imageNamed:@"lv2.png"];
                    cell.textLabel.text = @"左營／高鐵";
                    cell.detailTextLabel.text  = @"Zuoying/THSR";
                    break;
                    
                case 10:
                    cell.imageView.image = [UIImage imageNamed:@"lv2.png"];
                    cell.textLabel.text = @"生態園區";
                    cell.detailTextLabel.text  = @"Ecological District";
                    break;
                case 11:
                    cell.imageView.image = [UIImage imageNamed:@"lv2.png"];
                    cell.textLabel.text = @"巨蛋";
                    cell.detailTextLabel.text  = @"Kaohsiung Arena";
                    break;
                case 12:
                    cell.imageView.image = [UIImage imageNamed:@"lv2.png"];
                    cell.textLabel.text = @"凹子底";
                    cell.detailTextLabel.text  = @"Aozihdi";
                    break;
                case 13:
                    cell.imageView.image = [UIImage imageNamed:@"lv2.png"];
                    cell.textLabel.text = @"後驛";
                    cell.detailTextLabel.text  = @"Houyi";
                    break;
                    
                case 14:
                    cell.imageView.image = [UIImage imageNamed:@"lv2.png"];
                    cell.textLabel.text = @"高雄車站";
                    cell.detailTextLabel.text  = @"Kaohsiung Main Station";
                    break;
                case 15:
                    cell.imageView.image = [UIImage imageNamed:@"lv2.png"];
                    cell.textLabel.text = @"美麗島";
                    cell.detailTextLabel.text  = @"Formosa Boulevard";
                    break;
                case 16:
                    cell.imageView.image = [UIImage imageNamed:@"lv2.png"];
                    cell.textLabel.text = @"中央公園";
                    cell.detailTextLabel.text  = @"Central Park";
                    break;
                case 17:
                    cell.imageView.image = [UIImage imageNamed:@"lv2.png"];
                    cell.textLabel.text = @"三多商圈";
                    cell.detailTextLabel.text  = @"Sanduo Shopping District";
                    break;
                    
                case 18:
                    cell.imageView.image = [UIImage imageNamed:@"lv2.png"];
                    cell.textLabel.text = @"獅甲";
                    cell.detailTextLabel.text  = @"Shihjia";
                    break;
                case 19:
                    cell.imageView.image = [UIImage imageNamed:@"lv2.png"];
                    cell.textLabel.text = @"凱旋";
                    cell.detailTextLabel.text  = @"Kaisyuan";
                    break;
                case 20:
                    cell.imageView.image = [UIImage imageNamed:@"lv2.png"];
                    cell.textLabel.text = @"前鎮高中";
                    cell.detailTextLabel.text  = @"Cianjhen Senior High School";
                    break;
                case 21:
                    cell.imageView.image = [UIImage imageNamed:@"lv2.png"];
                    cell.textLabel.text = @"草衙";
                    cell.detailTextLabel.text  = @"Caoya";
                    break;
                case 22:
                    cell.imageView.image = [UIImage imageNamed:@"lv2.png"];
                    cell.textLabel.text = @"高雄國際機場";
                    cell.detailTextLabel.text  = @"Kaohsiung International Airport";
                    break;
                case 23:
                    cell.imageView.image = [UIImage imageNamed:@"lv2.png"];
                    cell.textLabel.text = @"小港";
                    cell.detailTextLabel.text  = @"Siaogang";
                    break;
                    
              

                default:
                    break;
            }
            
            
            break;
            
        case 1:
            switch (row) {
                
                    
                case 0:
                    cell.imageView.image = [UIImage imageNamed:@"lv2.png"];
                    cell.textLabel.text = @"西子灣";
                    cell.detailTextLabel.text  = @"Sizihwan";
                    break;
                case 1:
                    cell.imageView.image = [UIImage imageNamed:@"lv2.png"];
                    cell.textLabel.text = @"鹽埕埔";
                    cell.detailTextLabel.text  = @"Yanchengpu";
                    break;
                case 2:
                    cell.imageView.image = [UIImage imageNamed:@"lv3.png"];
                    cell.textLabel.text = @"市議會";
                    cell.detailTextLabel.text  = @"City Council";
                    break;
                case 3:
                    cell.imageView.image = [UIImage imageNamed:@"lv1.png"];
                    cell.textLabel.text = @"美麗島";
                    cell.detailTextLabel.text  = @"Formosa Boulevard";
                    break;
                case 4:
                    cell.imageView.image = [UIImage imageNamed:@"lv3.png"];
                    cell.textLabel.text = @"信義國小";
                    cell.detailTextLabel.text  = @"Sinyi Elementary School";
                    break;
                case 5:
                    cell.imageView.image = [UIImage imageNamed:@"lv3.png"];
                    cell.textLabel.text = @"文化中心";
                    cell.detailTextLabel.text  = @"Cultural Center";
                    break;
                    break;
                case 6:
                    cell.imageView.image = [UIImage imageNamed:@"lv2.png"];
                    cell.textLabel.text = @"五塊厝";
                    cell.detailTextLabel.text  = @"Wukuaicuo";
                    break;
                case 7:
                    cell.imageView.image = [UIImage imageNamed:@"lv3.png"];
                    cell.textLabel.text = @"技擊館";
                    cell.detailTextLabel.text  = @"Martial Arts Stadium";
                    break;
                case 8:
                    cell.imageView.image = [UIImage imageNamed:@"lv1.png"];
                    cell.textLabel.text = @"衛武營";
                    cell.detailTextLabel.text  = @"Weiwuying";
                    break;
                case 9:
                    cell.imageView.image = [UIImage imageNamed:@"lv3.png"];
                    cell.textLabel.text = @"鳳山西站";
                    cell.detailTextLabel.text  = @"Fongshan West";
                    break;
                case 10:
                    cell.imageView.image = [UIImage imageNamed:@"lv3.png"];
                    cell.textLabel.text = @"鳳山";
                    cell.detailTextLabel.text  = @"Fongshan";
                    break;
                case 11:
                    cell.imageView.image = [UIImage imageNamed:@"lv1.png"];
                    cell.textLabel.text = @"大東";
                    cell.detailTextLabel.text  = @"Dadong";
                    break;
                case 12:
                    cell.imageView.image = [UIImage imageNamed:@"lv3.png"];
                    cell.textLabel.text = @"鳳山國中";
                    cell.detailTextLabel.text  = @"Fongshan Junior High School";
                    break;
                case 13:
                    cell.imageView.image = [UIImage imageNamed:@"lv3.png"];
                    cell.textLabel.text = @"大寮";
                    cell.detailTextLabel.text  = @"Daliao";
                    break;

                default:
                    break;
            }
            
            break;
            
                default:
            break;
            
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
    
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}
-(NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSString *title = @"";
    
    switch (section) {
        case 0:
            title = @"紅線";
            break;
        case 1:
            title = @"橘線";
            break;
        case 2:
            title = @"";
            break;
        default:
            break;
    }
    return title;
  
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/



- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    ViewhwViewController *viewController =  [self.storyboard instantiateViewControllerWithIdentifier:@"Pome"];
    viewController.poet = indexPath.row;
    viewController.poet0 = indexPath.section;
    
    [self.navigationController pushViewController:viewController animated:YES];
}

@end
