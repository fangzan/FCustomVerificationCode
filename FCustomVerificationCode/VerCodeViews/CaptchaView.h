//
//  CaptchaView.h
//  FAKnowledge
//
//  Created by aochen on 09/10/2018.
//  Copyright © 2018 aoChen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CaptchaView : UIView
@property (nonatomic, retain) NSArray *changeArray; //字符素材数组
@property (nonatomic, retain) NSMutableString *changeString;  //验证码的字符串
@end
