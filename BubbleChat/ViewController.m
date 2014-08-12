//
//  ViewController.m
//  BubbleChat
//
//  Created by Yasin Aktimur on 12.08.2014.
//  Copyright (c) 2014 Yasin Aktimur. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSString *MyString = @"ogün boğulacak gençliğim şeftali kırmızında gerisi gözükmüyor çok yazık!";
    //NSString *MyString = @"Twitter!";
    
    
    self.view.backgroundColor = [UIColor orangeColor];
    
   
   
    UILabel *label = [[UILabel alloc] init];
    label.numberOfLines = 0;
    label.lineBreakMode = NSLineBreakByWordWrapping;
    label.font =[UIFont systemFontOfSize:14.0];
    label.text = MyString;
    label.textColor = [UIColor whiteColor];
    label.backgroundColor = [UIColor clearColor];
    label.frame = CGRectMake(60, 40, 210, 80);
    [label sizeToFit];
    
    UIImageView *imgim = [[UIImageView alloc] initWithFrame:CGRectMake(50, 50, label.frame.size.width+20, label.frame.size.height+20)];
    imgim.image = [UIImage imageNamed:@"bg.png"];
    
    CGRect myRectANGLE =  CGRectMake(imgim.frame.origin.x+10,imgim.frame.origin.y+10, label.frame.size.width, label.frame.size.height);
    
    
    [label setFrame:myRectANGLE];
    [self.view addSubview:imgim];
    [self.view addSubview:label];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




+(CGSize) GetSizeOfLabelForGivenText:(UILabel*)label Font:(UIFont*)fontForLabel Size:  (CGSize) constraintSize{
    label.numberOfLines = 0;
    CGRect labelRect = [label.text boundingRectWithSize:constraintSize options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:@{NSFontAttributeName:fontForLabel} context:nil];
    return (labelRect.size);
}
















@end
