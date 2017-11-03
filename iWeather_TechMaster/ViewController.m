//
//  ViewController.m
//  iWeather_TechMaster
//
//  Created by admin on 10/23/17.
//  Copyright © 2017 admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *Locations;
@property (weak, nonatomic) IBOutlet UILabel *Temperature;
@property (weak, nonatomic) IBOutlet UIImageView *statusWeather;
@property (weak, nonatomic) IBOutlet UILabel *Quotes;

@end

@implementation ViewController
// Khai báo các phân tử
{
    NSArray* quotes;
    NSArray* locations;
    NSArray* photoFiles;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    quotes =@[@"Trên con đường thành công không có dấu chân của kẻ lười biếng",@"Một con ngựa đau cả tàu bỏ cỏ",@"Đừng so sanh mình với bất cứ ai trong thế giới này. Nếu làm như vậy có nghĩa là bạn đang sỉ nhục bản thân",@"Cuộc sống không công bằng. Hãy tập quen dần với điều đó",@"Ta không chonj được nơi sinh ra mình. Nhưng ta chọn cách mình sẽ sống" ];
    locations =@[@" Hà Nội, Việt Nam",@"Jakarta, Indonesia",@"Naypyidaw, Myanmar",@"Bangkok, Thái Lan"];
    photoFiles =@[@"Rains",@"Thunders",@"Windies",@"Sunnies"];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)UpdateIweather:(id)sender {
   unsigned int quoteIndex=arc4random_uniform(quotes.count);
    self.Quotes.text=quotes[quoteIndex];
    
    unsigned int loctionsIndex=arc4random_uniform(locations.count);
    self.Locations.text=locations[loctionsIndex];
    
    unsigned int photoIndex=arc4random_uniform(photoFiles.count);
    self.statusWeather.image =[UIImage imageNamed:photoFiles[photoIndex]];
    
    NSString* string =[NSString stringWithFormat:@"%2.1f",[self getTemperature]];
  
//[self.Temperature setTitle:string forState:UIControlStateNormal];
}
-(float)getTemperature{
    return 14.0+arc4random_uniform(18)+(float)arc4random()/(float)INT32_MAX;
    
}

@end
