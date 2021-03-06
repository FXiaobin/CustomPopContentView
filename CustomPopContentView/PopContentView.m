//
//  PopContentView.m
//  CustomPopContentView
//
//  Created by fanxiaobin on 2017/4/6.
//  Copyright © 2017年 fanxiaobin. All rights reserved.
//

#import "PopContentView.h"
#import "KLCPopup.h"

@implementation PopContentView

+ (KLCPopup *)showPopContentView:(UIView *)contentView{
    
    KLCPopupLayout layout = KLCPopupLayoutMake(KLCPopupHorizontalLayoutCenter, KLCPopupVerticalLayoutCenter);
    
    KLCPopup *popup = [KLCPopup popupWithContentView:contentView showType:KLCPopupShowTypeBounceIn dismissType:KLCPopupDismissTypeBounceOut maskType:KLCPopupMaskTypeDimmed dismissOnBackgroundTouch:YES dismissOnContentTouch:NO];
    
    [popup showWithLayout:layout];
    
    return popup;
}

@end
