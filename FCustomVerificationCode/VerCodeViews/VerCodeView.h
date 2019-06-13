//
//  VerCodeView.h
//  FAKnowledge
//
//  Created by aochen on 09/10/2018.
//  Copyright © 2018 aoChen. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^MQCodeImageBlock)(NSString *codeStr);
@interface VerCodeView : UIView
@property (nonatomic, strong) NSString *imageCodeStr;
@property (nonatomic, assign) BOOL isRotation;
@property (nonatomic, copy) MQCodeImageBlock bolck;

-(void)freshVerCode;
@end
