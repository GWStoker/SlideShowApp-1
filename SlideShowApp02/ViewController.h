//
//  ViewController.h
//  SlideShowApp01
//
//  Created by kentaro_miura on 13/02/26.
//  Copyright (c) 2013年 kentaro_miura. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    UIImageView *mainImage;
}
- (IBAction)MyButton:(id)sender;
-(void)setImage;
-(void)nextButton;
-(void)nextImage;
@end
