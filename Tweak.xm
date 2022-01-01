#import <UIKit/UIKit.h>

%hook KSSystemInfo
+(bool)isJailbroken {
    return 0;
}
%end

%hook ZMProductHelperAdapter
-(void)setDeviceJailBreak:(bool)arg1 {
    arg1 = 0;
    return %orig;
}
%end

%hook ZMNDevice
-(bool)_checkJailbrokenStatus {
    return 0;
}
%end

%hook ZMNDevice
-(bool)isJailbroken {
    return 0;
}
%end

