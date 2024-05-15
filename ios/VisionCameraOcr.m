#import <Foundation/Foundation.h>
#import <VisionCamera/FrameProcessorPlugin.h>
#import <VisionCamera/FrameProcessorPluginRegistry.h>

// use_framework! import
#if __has_include(<VisionCameraOcr/VisionCameraOcr-Swift.h>)
#import "VisionCameraOcr/VisionCameraOcr-Swift.h"
#endif
#if __has_include("VisionCameraOcr-Swift.h")
#import "VisionCameraOcr-Swift.h"
#endif

@interface OCRFrameProcessorPlugin (FrameProcessorPluginLoader)
@end

@implementation OCRFrameProcessorPlugin (FrameProcessorPluginLoader)

+ (void)load
{
    // vision @4.1.0
    [FrameProcessorPluginRegistry addFrameProcessorPlugin:@"scanOCR" withInitializer:^FrameProcessorPlugin * _Nonnull(VisionCameraProxyHolder * _Nonnull proxy, NSDictionary * _Nullable options) {
        return [[OCRFrameProcessorPlugin alloc] initWithProxy:proxy withOptions:options];
    }];
}

@end
