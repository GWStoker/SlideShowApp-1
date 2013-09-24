//  ViewController.m
//  SlideShowApp01
//  Created by kentaro_miura on 13/02/26.
//  Copyright (c) 2013年 kentaro_miura. All rights reserved.


#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    //リソース画像のファイル名を格納する配列imageArrayを宣言
    NSArray *imageArray;
    //選択されている画像の位置を格納する変数selectedIndexを宣言
    NSInteger selectedIndex;
    //配列の要素数の格納
    NSInteger arrCount;
}

//@synthesize mainImage;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self getArray];
    [self setImage];
    [self nextButton];
    
}   

- (void)getArray
{
    //NSString *imageArray[4];
    //imageArray[0]=@"dummy00.png";
    //imageArray[1]=@"dummy01.png";
    //imageArray[2]=@"dummy02.png";
    //imageArray[3]=@"dummy03.png";
    //imageArray = [NSArray arrayWithObjects:
                  //@"dummy00.png",
                  //@"dummy01.png",
                  //@"dummy02.png",
                  //@"dummy03.png",
                  //@"dummy04.png",
                  //@"dummy05.png",
                  //@"dummy06.png",
                  //@"dummy07.png",
                  /*@"dummy08.png",
                  @"dummy09.png",
                  nil];*/
    //変数selectedIndexの初期値を0（先頭画像）にセット
    selectedIndex = 0;
    //配列imageArryの要素数を取得
    //arrCount = [imageArray count];
}

- (IBAction)MyButton:(id)sender {
    NSString *imageList[4];
    imageList[0]=@"dummy00.png";
    imageList[1]=@"dummy01.png";
    imageList[2]=@"dummy02.png";
    imageList[3]=@"dummy03.png";
    arrCount = 4;
    selectedIndex++;
    if (selectedIndex == arrCount) {
        selectedIndex = 0;
    }
   

    UIImage *toBeDisplayed = [UIImage imageNamed:imageList[selectedIndex]];
    [mainImage setImage:toBeDisplayed];
    NSString *abc = imageList[selectedIndex];
    NSString *def = abc;
}

- (void)setImage
{
    //メインイメージを貼付ける
    mainImage = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 320, 350)];
    mainImage.image = [UIImage imageNamed:[imageArray objectAtIndex:selectedIndex]];
    mainImage.backgroundColor = [UIColor whiteColor];   //背景色をつける
    mainImage.contentMode = UIViewContentModeScaleAspectFit; //画像のaspect比を維持ちょうどはいるようにする
    [self.view addSubview:mainImage];
    
}

- (void)nextButton
{
    UIButton *nextBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    nextBtn.frame = CGRectMake(10, 400, 50, 50);
    [nextBtn setTitle:@"Next" forState:UIControlStateNormal];
    [nextBtn addTarget:self
                action:@selector(nextImage)
      forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:nextBtn];
}

-(void)nextImage
{
    selectedIndex++;
    if (selectedIndex == arrCount) {
        selectedIndex = 0;
    }
    mainImage.image = [UIImage imageNamed:[imageArray objectAtIndex:selectedIndex]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    [super dealloc];
}

@end


