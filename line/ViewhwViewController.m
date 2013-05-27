//
//  ViewhwViewController.m
//  line
//
//  Created by 謝至騏 on 13/1/7.
//  Copyright (c) 2013年 謝至騏. All rights reserved.
//

#import "ViewhwViewController.h"
#import "ViewMap.h"
#import "TablehwViewController.h"
@interface ViewhwViewController ()

@end

@implementation ViewhwViewController
@synthesize text1;
@synthesize image;
@synthesize poet;
@synthesize poet0;



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{UIBarButtonItem *rightButton = [[UIBarButtonItem alloc]
                                 initWithBarButtonSystemItem:UIBarButtonSystemItemSearch
                                 target:self action:@selector(insertNewObject:)];
    
    //按鈕
    self.navigationItem.rightBarButtonItem = rightButton;
    
    
    [super viewDidLoad];
     self.navigationItem.title=@"高雄捷運";
	switch (poet0) {
        case 0:
            switch (poet) {
                    
                case 0:
                    self.image.image = [UIImage imageNamed:@"南岡山R24.jpg"];
                    self.text1.text = 
                    @"南岡山\n"
                    "車站編號 Ｒ24\n"
                    "營運路線 紅線\n"
                    "高雄市岡山區大寮里中山南路2號\n";
                    self.x = 22.780554;
                    self.y = 120.301409;
                    self.s1= @"南岡山";
                    self.s2 = @"岡山區";
                break;
                case 1:
                    self.image.image = [UIImage imageNamed:@"橋頭火車站R23.jpg"];
                    self.text1.text =
                    @"橋頭火車站\n"
                    "車站編號 Ｒ23\n"
                    "營運路線 紅線\n"
                    "高雄市橋頭區站前街12之1號\n";
                    self.x = 22.76044;
                    self.y = 120.310912;
                    self.s1= @"橋頭火車站";
                    self.s2 = @"橋頭區";
                    break;
                case 2:
                    self.image.image = [UIImage imageNamed:@"橋頭糖廠R22A.jpg"];
                    self.text1.text =
                    @"橋頭糖廠\n"
                    "車站編號 Ｒ22A\n"
                    "營運路線 紅線\n"
                    "高雄市橋頭區興糖路19號\n";
                    self.x = 22.754313;
                    self.y = 120.314578;
                    self.s1= @"橋頭糖廠";
                    self.s2 = @"橋頭區";
                    break;
                case 3:
                    self.image.image = [UIImage imageNamed:@"青埔R22.jpg"];
                    self.text1.text =
                    @"青埔\n"
                    "車站編號 Ｒ22\n"
                    "營運路線 紅線\n"
                    "高雄市橋頭區經武路20號\n";
                    self.x = 22.744547;
                    self.y = 120.317743;
                    self.s1= @"青埔";
                    self.s2 = @"橋頭區";
                    break;
                case 4:
                    self.image.image = [UIImage imageNamed:@"都會公園R21.jpg"];
                    self.text1.text =
                    @"都會公園\n"
                    "車站編號 Ｒ21\n"
                    "營運路線 紅線\n"
                    "高雄市楠梓區高楠公路1835號\n";
                    self.x = 22.729205;
                    self.y = 120.320978;
                    self.s1= @"都會公園";
                    self.s2 = @"楠梓區";
                    break;
                case 5:
                    self.image.image = [UIImage imageNamed:@"後勁R20.jpg"];
                    self.text1.text =
                    @"後勁\n"
                    "車站編號 Ｒ20\n"
                    "營運路線 紅線\n"
                    "高雄市楠梓區加昌路178號\n";
                    self.x = 22.722169;
                    self.y = 120.316633;
                    self.s1= @"後勁";
                    self.s2 = @"楠梓區";
                    break;
                case 6:
                    self.image.image = [UIImage imageNamed:@"楠梓加工區R19.jpg"];
                    self.text1.text =
                    @"楠梓加工區\n"
                    "車站編號 Ｒ19\n"
                    "營運路線 紅線\n"
                    "高雄市楠梓區加昌路598號\n";
                    self.x = 22.718692;
                    self.y = 120.307222;
                    self.s1= @"楠梓加工區";
                    self.s2 = @"楠梓區";
                    break;
                case 7:
                    self.image.image = [UIImage imageNamed:@"油廠國小R18.jpg"];
                    self.text1.text =
                    @"油廠國小\n"
                    "車站編號 Ｒ18\n"
                    "營運路線 紅線\n"
                    "高雄市楠梓區左楠路6號\n";
                    self.x = 22.708475;
                    self.y = 120.303237;
                    self.s1= @"油廠國小";
                    self.s2 = @"楠梓區";
                    break;
                case 8:
                    self.image.image = [UIImage imageNamed:@"世運R17.jpg"];
                    self.text1.text =
                    @"世運\n"
                    "車站編號 Ｒ17\n"
                    "營運路線 紅線\n"
                    "高雄市楠梓區左楠路1號\n";
                    self.x = 22.701618;
                    self.y = 120.302522;
                    self.s1= @"世運";
                    self.s2 = @" 楠梓區";
                    break;
                case 9:
                    self.image.image = [UIImage imageNamed:@"左營高鐵R16.jpg"];
                    self.text1.text =
                    @"左營 (高鐵)\n"
                    "車站編號 Ｒ16\n"
                    "營運路線 紅線\n"
                    "高雄市左營區高鐵路107號地下一層\n";
                    self.x = 22.688013;
                    self.y = 120.30916;
                    self.s1= @"左營 (高鐵)";
                    self.s2 = @"左營區";
                    break;
                case 10:
                    self.image.image = [UIImage imageNamed:@"生態園區R15.jpg"];
                    self.text1.text =
                    @"生態園區\n"
                    "車站編號 Ｒ15\n"
                    "營運路線 紅線\n"
                    "高雄市左營區博愛三路435號地下一層\n";
                    self.x = 22.677111;
                    self.y = 120.306493;
                    self.s1= @"生態園區";
                    self.s2 = @" 左營區";
                    break;
                case 11:
                    self.image.image = [UIImage imageNamed:@"巨蛋R14.jpg"];
                    self.text1.text =
                    @"巨蛋\n"
                    "車站編號 Ｒ14\n"
                    "營運路線 紅線\n"
                    "高雄市左營區博愛二路485號地下一層\n";
                    self.x = 22.666381;
                    self.y = 120.303168;
                    self.s1= @"巨蛋";
                    self.s2 = @"左營區";
                    break;
                case 12:
                    self.image.image = [UIImage imageNamed:@"凹子底R13.jpg"];
                    self.text1.text =
                    @"凹子底\n"
                    "車站編號 Ｒ13\n"
                    "營運路線 紅線\n"
                    "高雄市鼓山區博愛二路21號地下一層\n";
                    self.x = 22.7657519;
                    self.y = 120.303074;
                    self.s1= @"凹子底";
                    self.s2 = @"鼓山區";
                    break;
                case 13:
                    self.image.image = [UIImage imageNamed:@"後驛R12.jpg"];
                    self.text1.text =
                    @"後驛\n"
                    "車站編號 Ｒ12\n"
                    "營運路線 紅線\n"
                    "高雄市三民區博愛一路220號地下一層\n";
                    self.x = 22.648306;
                    self.y = 120.303353;
                    self.s1= @"後驛";
                    self.s2 = @"三民區";
                    break;
                case 14:
                    self.image.image = [UIImage imageNamed:@"高雄車站R11.jpg"];
                    self.text1.text =
                    @"高雄車站\n"
                    "車站編號 Ｒ11\n"
                    "營運路線 紅線\n"
                    "高雄市三民區建國二路320號地下一層\n";
                    self.x = 22.639447;
                    self.y = 120.30268;
                    self.s1= @"高雄車站";
                    self.s2 = @"三民區";
                    break;
                case 15:
                    self.image.image = [UIImage imageNamed:@"美麗島R10.jpg"];
                    self.text1.text =
                    @"美麗島\n"
                    "車站編號 Ｒ10\n"
                    "營運路線 紅線\n"
                    "高雄市新興區中山一路115號地下一樓\n";
                    self.x = 22.631385;
                    self.y = 120.301959;
                    self.s1= @"美麗島";
                    self.s2 = @"新興區";
                    break;
                case 16:
                    self.image.image = [UIImage imageNamed:@"中央公園R9.jpg"];
                    self.text1.text =
                    @"中央公園\n"
                    "車站編號 Ｒ9\n"
                    "營運路線 紅線\n"
                    "高雄市前金區中山一路11號地下一層\n";
                    self.x = 22.62427;
                    self.y = 120.301189;
                    self.s1= @"中央公園";
                    self.s2 = @"前金區";
                    break;
                case 17:
                    self.image.image = [UIImage imageNamed:@"三多商圈R8.jpg"];
                    self.text1.text =
                    @"三多商圈\n"
                    "車站編號 Ｒ8\n"
                    "營運路線 紅線\n"
                    "高雄市芩雅區中山二路268號地下一層\n";
                    self.x = 22.613833;
                    self.y = 120.304644;
                    self.s1= @"三多商圈";
                    self.s2 = @"苓雅區";
                    break;
                case 18:
                    self.image.image = [UIImage imageNamed:@"獅甲R7.jpg"];
                    self.text1.text =
                    @"獅甲\n"
                    "車站編號 Ｒ7\n"
                    "營運路線 紅線\n"
                    "高雄市前鎮區中山三路150號地下一層\n";
                    self.x = 22.605511;
                    self.y = 120.308173;
                    self.s1= @"獅甲";
                    self.s2 = @"前鎮區";
                    break;
                case 19:
                    self.image.image = [UIImage imageNamed:@"凱旋R6.jpg"];
                    self.text1.text =
                    @"凱旋\n"
                    "車站編號 Ｒ6\n"
                    "營運路線 紅線\n"
                    "高雄市前鎮區中山三路1號地下一樓\n";
                    self.x = 22.596658;
                    self.y = 120.314991;
                    self.s1= @"凱旋";
                    self.s2 = @"前鎮區";
                    break;
                case 20:
                    self.image.image = [UIImage imageNamed:@"前鎮高中R5.jpg"];
                    self.text1.text =
                    @"前鎮高中\n"
                    "車站編號 Ｒ5\n"
                    "營運路線 紅線\n"
                    "高雄市前鎮區翠亨北路225號地下一樓\n";
                    self.x = 22.58834;
                    self.y = 120.321791;
                    self.s1= @"前鎮高中";
                    self.s2 = @"前鎮區";
                    break;
                case 21:
                    self.image.image = [UIImage imageNamed:@"草衙R4A.jpg"];
                    self.text1.text =
                    @"草衙\n"
                    "車站編號 Ｒ4A\n"
                    "營運路線 紅線\n"
                    "高雄市前鎮區翠亨南路555號地下一樓\n";
                    self.x = 22.580145;
                    self.y = 120.328451;
                    self.s1= @"草衙";
                    self.s2 = @"前鎮區";
                    break;
                case 22:
                    self.image.image = [UIImage imageNamed:@"高雄國際機場R4.jpg"];
                    self.text1.text =
                    @"高雄國際機場\n"
                    "車站編號 Ｒ4\n"
                    "營運路線 紅線\n"
                    "高雄市小港區中山四路2之2號地下一樓\n";
                    self.x = 22.580145;
                    self.y = 120.328451;
                    self.s1= @"高雄國際機場";
                    self.s2 = @"小港區";
                    break;
                case 23:
                    self.image.image = [UIImage imageNamed:@"小港R3.jpg"];
                    self.text1.text =
                    @"小港\n"
                    "車站編號 Ｒ3\n"
                    "營運路線 紅線\n"
                    "高雄市小港區沿海一路280號地下一樓\n";
                    self.x = 22.564871;
                    self.y = 120.353904;
                    self.s1= @"小港";
                    self.s2 = @"前鎮區";
                    break;

                    
                    
                    
                                    
                default:
                    break;
            }
            break;
            
        case 1:
            switch (poet) {
                
                case 0:
                    self.image.image = [UIImage imageNamed:@"西子灣o1.jpg"];
                    self.text1.text =
                    @"西子灣\n"
                    "車站編號 O1\n"
                    "營運路線 紅線\n"
                    "高雄市鼓山區臨海二路17-1號地下一層\n";
                    self.x = 22.621523;
                    self.y = 120.274522;
                    self.s1= @"西子灣";
                    self.s2 = @"鼓山區";
                    break;
                case 1:
                    self.image.image = [UIImage imageNamed:@"鹽埕埔o2.jpg"];
                    self.text1.text =
                    @"鹽埕埔\n"
                    "車站編號 O2\n"
                    "營運路線 紅線\n"
                    "高雄市鹽埕區大勇路96號地下一層\n";
                    self.x = 22.623518;
                    self.y = 120.283489;
                    self.s1= @"鹽埕埔";
                    self.s2 = @"鹽埕區";
                    break;

                case 2:
                    self.image.image = [UIImage imageNamed:@"市議會o4.jpg"];
                    self.text1.text =
                    @"市議會\n"
                    "車站編號 O4\n"
                    "營運路線 紅線\n"
                    "高雄市前金區中正四路192-1號地下一層\n";
                    self.x = 22.628992;
                    self.y = 120.294878;
                    self.s1= @"市議會";
                    self.s2 = @"前金區";
                    break;
                case 3:
                    self.image.image = [UIImage imageNamed:@"美麗島R10.jpg"];
                    self.text1.text =
                    @"美麗島\n"
                    "車站編號 O4\n"
                    "營運路線 紅線\n"
                    "高雄市新興區中山一路115號地下一樓\n";
                    self.x = 22.631386;
                    self.y = 120.301945;
                    self.s1= @"美麗島";
                    self.s2 = @"新興區";
                    break;
                case 4:
                    self.image.image = [UIImage imageNamed:@"信義國小o6.jpg"];
                    self.text1.text =
                    @"信義國小\n"
                    "車站編號 O6\n"
                    "營運路線 紅線\n"
                    "高雄市新興區中正三路32-1號地下一樓\n";
                    self.x = 22.630958;
                    self.y = 20.310641;
                    self.s1= @"信義國小";
                    self.s2 = @"新興區";
                    break;
                case 5:
                    self.image.image = [UIImage imageNamed:@"文化中心o7.jpg"];
                    self.text1.text =
                    @"文化中心\n"
                    "車站編號 O7\n"
                    "營運路線 紅線\n"
                    "高雄市苓雅區中正二路45號地下一層\n";
                    self.x = 22.630285;
                    self.y = 120.317593;
                    self.s1= @"文化中心";
                    self.s2 = @"苓雅區";
                    break;
                case 6:
                    self.image.image = [UIImage imageNamed:@"五塊厝o8.jpg"];
                    self.text1.text =
                    @"五塊厝\n"
                    "車站編號 O8\n"
                    "營運路線 紅線\n"
                    "高雄市苓雅區中正一路286號地下一層\n";
                    self.x = 22.629557;
                    self.y = 120.327698;
                    self.s1= @"五塊厝";
                    self.s2 = @"苓雅區";
                    break;
                case 7:
                    self.image.image = [UIImage imageNamed:@"技擊館o9.jpg"];
                    self.text1.text =
                    @"技擊館\n"
                    "車站編號 O9\n"
                    "營運路線 紅線\n"
                    "高雄市苓雅區中正一路99號地下一層\n";
                    self.x = 22.627314;
                    self.y = 120.33459;
                    self.s1= @"技擊館";
                    self.s2 = @"苓雅區";
                    break;
                case 8:
                    self.image.image = [UIImage imageNamed:@"衛武營o10.jpg"];
                    self.text1.text =
                    @"衛武營\n"
                    "車站編號 O10\n"
                    "營運路線 紅線\n"
                    "高雄市苓雅區中正一路2號地下一層\n";
                    self.x = 22.62513;
                    self.y = 120.341052;
                    self.s1= @"衛武營";
                    self.s2 = @"苓雅區";
                    break;
                case 9:
                    self.image.image = [UIImage imageNamed:@"鳳山西站o11.jpg"];
                    self.text1.text =
                    @"鳳山西站\n"
                    "車站編號 O11\n"
                    "營運路線 紅線\n"
                    "高雄市鳳山區自由路281號地下層\n";
                    self.x = 22.78;
                    self.y = 120.30;
                    self.s1= @"鳳山西站";
                    self.s2 = @"鳳山區";
                    break;
                case 10:
                    self.image.image = [UIImage imageNamed:@"鳳山o12.jpg"];
                    self.text1.text =
                    @"鳳山\n"
                    "車站編號 012\n"
                    "營運路線 紅線\n"
                    "高雄市鳳山區光遠路446號地下層\n";
                    self.x = 22.625202;
                    self.y = 120.34817;
                    self.s1= @"鳳山";
                    self.s2 = @"鳳山區";
                    break;
                case 11:
                    self.image.image = [UIImage imageNamed:@"大東o13.jpg"];
                    self.text1.text =
                    @"大東\n"
                    "車站編號 O13\n"
                    "營運路線 紅線\n"
                    "高雄市鳳山區光遠路226號地下一層\n";
                    self.x = 22.625984;
                    self.y = 120.355343;
                    self.s1= @"大東";
                    self.s2 = @"鳳山區";
                    break;
                case 12:
                    self.image.image = [UIImage imageNamed:@"鳳山國中o14.jpg"];
                    self.text1.text =
                    @"鳳山國中\n"
                    "車站編號 O14\n"
                    "營運路線 紅線\n"
                    "高雄市鳳山區中山東路225號地下一層\n";
                    self.x = 22.625479;
                    self.y = 120.36362;
                    self.s1= @"鳳山國中";
                    self.s2 = @"鳳山區";
                    break;
                case 13:
                    self.image.image = [UIImage imageNamed:@"大寮OT1.jpg"];
                    self.text1.text =
                    @"大寮\n"
                    "車站編號 OT1\n"
                    "營運路線 紅線\n"
                    "高雄市大寮區捷西路300號\n";
                    self.x = 22.624786;
                    self.y = 120.372412;
                    self.s1= @"大寮";
                    self.s2 = @"大寮區";
                    break;

                default:
                    break;
            }

            
            break;
            
        default:
            break;
    }
    }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    
}
- (void)insertNewObject:(id)sender
{
    
    ViewMap  *ViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"map"];
    
    ViewController.x = self.x;
    ViewController.y = self.y;
    ViewController.aa1 = self.s1;
    ViewController.aa2 = self.s2;
    
    
    
    
    [self.navigationController pushViewController:ViewController animated:YES];
}


- (void)viewDidUnload
{
    [self setText1:nil];
    
    [self setImage:nil];
    [super viewDidUnload];
   
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
