#line 1 "/Users/xiaoyuan/Destop/work/GitHub/DouYin/DouYinDylib/Logos/DouYinDylib.xm"


#import <UIKit/UIKit.h>
#import <substrate.h>




#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class AWEFilePublisherFactory; @class AWEAppDarkForestSettingManager; @class AWEVideoPublishManager; @class AWEAppSettings; @class TrackerService; @class AWEUserService; @class AWEVideoRecorderController; @class NSURL; @class AWENetworkService; @class HTSServiceCenter; @class HTSVideoConfig; @class AWEPublishResultHandler; @class AWEAwemeShareViewController; @class AWEVideoPublishNormalTask; @class AWEVideoNewPublishViewController; 
static id (*_logos_orig$_ungrouped$AWEVideoRecorderController$videoMaxDuration)(_LOGOS_SELF_TYPE_NORMAL AWEVideoRecorderController* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$AWEVideoRecorderController$videoMaxDuration(_LOGOS_SELF_TYPE_NORMAL AWEVideoRecorderController* _LOGOS_SELF_CONST, SEL); static id (*_logos_meta_orig$_ungrouped$HTSVideoConfig$defaultConfig)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static id _logos_meta_method$_ungrouped$HTSVideoConfig$defaultConfig(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static long long (*_logos_orig$_ungrouped$HTSVideoConfig$videoMaxSeconds)(_LOGOS_SELF_TYPE_NORMAL HTSVideoConfig* _LOGOS_SELF_CONST, SEL); static long long _logos_method$_ungrouped$HTSVideoConfig$videoMaxSeconds(_LOGOS_SELF_TYPE_NORMAL HTSVideoConfig* _LOGOS_SELF_CONST, SEL); static long long (*_logos_orig$_ungrouped$HTSVideoConfig$videoUploadMaxSeconds)(_LOGOS_SELF_TYPE_NORMAL HTSVideoConfig* _LOGOS_SELF_CONST, SEL); static long long _logos_method$_ungrouped$HTSVideoConfig$videoUploadMaxSeconds(_LOGOS_SELF_TYPE_NORMAL HTSVideoConfig* _LOGOS_SELF_CONST, SEL); static _Bool (*_logos_orig$_ungrouped$HTSVideoConfig$isLongVideoEnaled)(_LOGOS_SELF_TYPE_NORMAL HTSVideoConfig* _LOGOS_SELF_CONST, SEL); static _Bool _logos_method$_ungrouped$HTSVideoConfig$isLongVideoEnaled(_LOGOS_SELF_TYPE_NORMAL HTSVideoConfig* _LOGOS_SELF_CONST, SEL); static id (*_logos_meta_orig$_ungrouped$AWEAppSettings$awemeSettings)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static id _logos_meta_method$_ungrouped$AWEAppSettings$awemeSettings(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$AWEVideoNewPublishViewController$_publish)(_LOGOS_SELF_TYPE_NORMAL AWEVideoNewPublishViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$AWEVideoNewPublishViewController$_publish(_LOGOS_SELF_TYPE_NORMAL AWEVideoNewPublishViewController* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$HTSServiceCenter$getService$)(_LOGOS_SELF_TYPE_NORMAL HTSServiceCenter* _LOGOS_SELF_CONST, SEL, id); static id _logos_method$_ungrouped$HTSServiceCenter$getService$(_LOGOS_SELF_TYPE_NORMAL HTSServiceCenter* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$TrackerService$trackEvent$label$value$extra$attributes$)(_LOGOS_SELF_TYPE_NORMAL TrackerService* _LOGOS_SELF_CONST, SEL, id, id, id, id, id); static void _logos_method$_ungrouped$TrackerService$trackEvent$label$value$extra$attributes$(_LOGOS_SELF_TYPE_NORMAL TrackerService* _LOGOS_SELF_CONST, SEL, id, id, id, id, id); static void (*_logos_orig$_ungrouped$AWEPublishResultHandler$taskDidAppend$)(_LOGOS_SELF_TYPE_NORMAL AWEPublishResultHandler* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$AWEPublishResultHandler$taskDidAppend$(_LOGOS_SELF_TYPE_NORMAL AWEPublishResultHandler* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$AWEPublishResultHandler$task$didFinishWithResult$error$)(_LOGOS_SELF_TYPE_NORMAL AWEPublishResultHandler* _LOGOS_SELF_CONST, SEL, id, id, id); static void _logos_method$_ungrouped$AWEPublishResultHandler$task$didFinishWithResult$error$(_LOGOS_SELF_TYPE_NORMAL AWEPublishResultHandler* _LOGOS_SELF_CONST, SEL, id, id, id); static void (*_logos_orig$_ungrouped$AWEVideoPublishNormalTask$postAweme$)(_LOGOS_SELF_TYPE_NORMAL AWEVideoPublishNormalTask* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$AWEVideoPublishNormalTask$postAweme$(_LOGOS_SELF_TYPE_NORMAL AWEVideoPublishNormalTask* _LOGOS_SELF_CONST, SEL, id); static id (*_logos_meta_orig$_ungrouped$AWEFilePublisherFactory$publisherForResourceType$resourceURL$publishViewModel$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id, id); static id _logos_meta_method$_ungrouped$AWEFilePublisherFactory$publisherForResourceType$resourceURL$publishViewModel$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id, id); static id (*_logos_meta_orig$_ungrouped$AWEVideoPublishManager$sharedInstance)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static id _logos_meta_method$_ungrouped$AWEVideoPublishManager$sharedInstance(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static id (*_logos_meta_orig$_ungrouped$AWEVideoPublishManager$requestVideoUploadURLWithParameters$completion$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id); static id _logos_meta_method$_ungrouped$AWEVideoPublishManager$requestVideoUploadURLWithParameters$completion$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id); static id (*_logos_meta_orig$_ungrouped$AWEVideoPublishManager$requestUploadParametersWithCompletion$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id); static id _logos_meta_method$_ungrouped$AWEVideoPublishManager$requestUploadParametersWithCompletion$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id); static id (*_logos_meta_orig$_ungrouped$AWEVideoPublishManager$requestUploadParametersWithParameters$completion$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id); static id _logos_meta_method$_ungrouped$AWEVideoPublishManager$requestUploadParametersWithParameters$completion$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id); static id (*_logos_meta_orig$_ungrouped$AWEVideoPublishManager$requestVideoUrlWithVideoId$completion$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id); static id _logos_meta_method$_ungrouped$AWEVideoPublishManager$requestVideoUrlWithVideoId$completion$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id); static id (*_logos_meta_orig$_ungrouped$AWEVideoPublishManager$uploadVideo$uploadURL$headerField$parameters$timeout$progress$completion$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id, id, id, id, id, id); static id _logos_meta_method$_ungrouped$AWEVideoPublishManager$uploadVideo$uploadURL$headerField$parameters$timeout$progress$completion$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id, id, id, id, id, id); static id (*_logos_meta_orig$_ungrouped$AWEVideoPublishManager$publishAweme$completion$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id); static id _logos_meta_method$_ungrouped$AWEVideoPublishManager$publishAweme$completion$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id); static id (*_logos_meta_orig$_ungrouped$AWEVideoPublishManager$publishPhotoAweme$completion$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id); static id _logos_meta_method$_ungrouped$AWEVideoPublishManager$publishPhotoAweme$completion$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id); static id (*_logos_meta_orig$_ungrouped$AWENetworkService$uploadWithURLString$parameters$headerField$timeout$constructingBodyWithBlock$progress$needcommonParams$modelClass$callback$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id, id, double, id, id *, _Bool, Class, id); static id _logos_meta_method$_ungrouped$AWENetworkService$uploadWithURLString$parameters$headerField$timeout$constructingBodyWithBlock$progress$needcommonParams$modelClass$callback$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id, id, double, id, id *, _Bool, Class, id); static id (*_logos_meta_orig$_ungrouped$AWENetworkService$uploadWithURLString$params$headerField$timeout$fileURL$fileName$progress$modelClass$completion$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id, id, double, id, id, id *, Class, id); static id _logos_meta_method$_ungrouped$AWENetworkService$uploadWithURLString$params$headerField$timeout$fileURL$fileName$progress$modelClass$completion$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id, id, double, id, id, id *, Class, id); static id (*_logos_orig$_ungrouped$AWEAwemeShareViewController$_shareModeLogWithShareType$)(_LOGOS_SELF_TYPE_NORMAL AWEAwemeShareViewController* _LOGOS_SELF_CONST, SEL, long long); static id _logos_method$_ungrouped$AWEAwemeShareViewController$_shareModeLogWithShareType$(_LOGOS_SELF_TYPE_NORMAL AWEAwemeShareViewController* _LOGOS_SELF_CONST, SEL, long long); static void (*_logos_orig$_ungrouped$AWEAwemeShareViewController$p_showUnreviewedToastWithType$)(_LOGOS_SELF_TYPE_NORMAL AWEAwemeShareViewController* _LOGOS_SELF_CONST, SEL, long long); static void _logos_method$_ungrouped$AWEAwemeShareViewController$p_showUnreviewedToastWithType$(_LOGOS_SELF_TYPE_NORMAL AWEAwemeShareViewController* _LOGOS_SELF_CONST, SEL, long long); static void (*_logos_orig$_ungrouped$AWEAwemeShareViewController$p_showUnreviewedShareGuideWithType$)(_LOGOS_SELF_TYPE_NORMAL AWEAwemeShareViewController* _LOGOS_SELF_CONST, SEL, long long); static void _logos_method$_ungrouped$AWEAwemeShareViewController$p_showUnreviewedShareGuideWithType$(_LOGOS_SELF_TYPE_NORMAL AWEAwemeShareViewController* _LOGOS_SELF_CONST, SEL, long long); static _Bool (*_logos_orig$_ungrouped$AWEAwemeShareViewController$p_unreviewedVideoToLink$)(_LOGOS_SELF_TYPE_NORMAL AWEAwemeShareViewController* _LOGOS_SELF_CONST, SEL, long long); static _Bool _logos_method$_ungrouped$AWEAwemeShareViewController$p_unreviewedVideoToLink$(_LOGOS_SELF_TYPE_NORMAL AWEAwemeShareViewController* _LOGOS_SELF_CONST, SEL, long long); static void (*_logos_orig$_ungrouped$AWEAwemeShareViewController$clicked$)(_LOGOS_SELF_TYPE_NORMAL AWEAwemeShareViewController* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$AWEAwemeShareViewController$clicked$(_LOGOS_SELF_TYPE_NORMAL AWEAwemeShareViewController* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$NSURL$addObserver$forKeyPath$options$context$)(_LOGOS_SELF_TYPE_NORMAL NSURL* _LOGOS_SELF_CONST, SEL, NSObject *, NSString *, NSKeyValueObservingOptions, void *); static void _logos_method$_ungrouped$NSURL$addObserver$forKeyPath$options$context$(_LOGOS_SELF_TYPE_NORMAL NSURL* _LOGOS_SELF_CONST, SEL, NSObject *, NSString *, NSKeyValueObservingOptions, void *); 

#line 9 "/Users/xiaoyuan/Destop/work/GitHub/DouYin/DouYinDylib/Logos/DouYinDylib.xm"








































































static id _logos_method$_ungrouped$AWEVideoRecorderController$videoMaxDuration(_LOGOS_SELF_TYPE_NORMAL AWEVideoRecorderController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    id value =  _logos_orig$_ungrouped$AWEVideoRecorderController$videoMaxDuration(self, _cmd);
    return value;
}







long long _variableHooked;

static id _logos_meta_method$_ungrouped$HTSVideoConfig$defaultConfig(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    id _instance =  _logos_meta_orig$_ungrouped$HTSVideoConfig$defaultConfig(self, _cmd);
    



    
    
    [_instance setValue:@(30) forKey:@"_videoMaxSeconds"];
   
    
    return _instance;
}


static long long _logos_method$_ungrouped$HTSVideoConfig$videoMaxSeconds(_LOGOS_SELF_TYPE_NORMAL HTSVideoConfig* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    long long max = _logos_orig$_ungrouped$HTSVideoConfig$videoMaxSeconds(self, _cmd);
    return max;
}

static long long _logos_method$_ungrouped$HTSVideoConfig$videoUploadMaxSeconds(_LOGOS_SELF_TYPE_NORMAL HTSVideoConfig* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {




















    
    long long videoUploadMaxSeconds = _logos_orig$_ungrouped$HTSVideoConfig$videoUploadMaxSeconds(self, _cmd);
    return videoUploadMaxSeconds;
}


static _Bool _logos_method$_ungrouped$HTSVideoConfig$isLongVideoEnaled(_LOGOS_SELF_TYPE_NORMAL HTSVideoConfig* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {















    
    _Bool isLongVideoEnaled = _logos_orig$_ungrouped$HTSVideoConfig$isLongVideoEnaled(self, _cmd);
    return isLongVideoEnaled;
}






























































static id _logos_meta_method$_ungrouped$AWEAppSettings$awemeSettings(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {


    id awemeSettings = _logos_meta_orig$_ungrouped$AWEAppSettings$awemeSettings(self, _cmd);
    
    
    
    
    NSMutableDictionary *settingsM = [[awemeSettings valueForKey:@"_settings"] mutableCopy ];
    if ([settingsM[@"long_video_permitted"] integerValue] == 0) {
        
        settingsM[@"long_video_permitted"] = @1;
        [awemeSettings setValue:settingsM forKeyPath:@"_settings"];
    }
    
    return awemeSettings;
    
    




    
    































































































































































































































































































































































































































































































































































































































































































































































































}






static void _logos_method$_ungrouped$AWEVideoNewPublishViewController$_publish(_LOGOS_SELF_TYPE_NORMAL AWEVideoNewPublishViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    _logos_orig$_ungrouped$AWEVideoNewPublishViewController$_publish(self, _cmd);
    
    













































































































































}






static id _logos_method$_ungrouped$HTSServiceCenter$getService$(_LOGOS_SELF_TYPE_NORMAL HTSServiceCenter* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id obj) {
    id service = _logos_orig$_ungrouped$HTSServiceCenter$getService$(self, _cmd, obj);
    return service;
}











static void _logos_method$_ungrouped$TrackerService$trackEvent$label$value$extra$attributes$(_LOGOS_SELF_TYPE_NORMAL TrackerService* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg2, id arg3, id arg4, id arg5, id arg6) {
    _logos_orig$_ungrouped$TrackerService$trackEvent$label$value$extra$attributes$(self, _cmd, arg2, arg3, arg4, arg5, arg6);
}





static void _logos_method$_ungrouped$AWEPublishResultHandler$taskDidAppend$(_LOGOS_SELF_TYPE_NORMAL AWEPublishResultHandler* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg2) {
    
    _logos_orig$_ungrouped$AWEPublishResultHandler$taskDidAppend$(self, _cmd, arg2);
}


static void _logos_method$_ungrouped$AWEPublishResultHandler$task$didFinishWithResult$error$(_LOGOS_SELF_TYPE_NORMAL AWEPublishResultHandler* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg2, id arg3, id arg4) {
    _logos_orig$_ungrouped$AWEPublishResultHandler$task$didFinishWithResult$error$(self, _cmd, arg2, arg3, arg4);
}






static void _logos_method$_ungrouped$AWEVideoPublishNormalTask$postAweme$(_LOGOS_SELF_TYPE_NORMAL AWEVideoPublishNormalTask* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg2)  {
    _logos_orig$_ungrouped$AWEVideoPublishNormalTask$postAweme$(self, _cmd, arg2);
}





static id _logos_meta_method$_ungrouped$AWEFilePublisherFactory$publisherForResourceType$resourceURL$publishViewModel$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg2, id arg3, id arg4) {
    _logos_meta_orig$_ungrouped$AWEFilePublisherFactory$publisherForResourceType$resourceURL$publishViewModel$(self, _cmd, arg2, arg3, arg4);
}






static id _logos_meta_method$_ungrouped$AWEVideoPublishManager$sharedInstance(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    id _instance = _logos_meta_orig$_ungrouped$AWEVideoPublishManager$sharedInstance(self, _cmd);
    return _instance;
}


static id _logos_meta_method$_ungrouped$AWEVideoPublishManager$requestVideoUploadURLWithParameters$completion$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg2, id arg3) {














    
    id obj = _logos_meta_orig$_ungrouped$AWEVideoPublishManager$requestVideoUploadURLWithParameters$completion$(self, _cmd, arg2, arg3);
    return obj;
}


static id _logos_meta_method$_ungrouped$AWEVideoPublishManager$requestUploadParametersWithCompletion$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg2) {
    id obj = _logos_meta_orig$_ungrouped$AWEVideoPublishManager$requestUploadParametersWithCompletion$(self, _cmd, arg2);
    return obj;
}


static id _logos_meta_method$_ungrouped$AWEVideoPublishManager$requestUploadParametersWithParameters$completion$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg2, id arg3) {














    id obj = _logos_meta_orig$_ungrouped$AWEVideoPublishManager$requestUploadParametersWithParameters$completion$(self, _cmd, arg2, arg3);
    return obj;
}


static id _logos_meta_method$_ungrouped$AWEVideoPublishManager$requestVideoUrlWithVideoId$completion$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg2, id arg3) {
















    id obj = _logos_meta_orig$_ungrouped$AWEVideoPublishManager$requestVideoUrlWithVideoId$completion$(self, _cmd, arg2, arg3);
    return obj;
}


static id _logos_meta_method$_ungrouped$AWEVideoPublishManager$uploadVideo$uploadURL$headerField$parameters$timeout$progress$completion$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg2, id arg3, id arg4, id arg5, id arg6, id arg7, id arg8) {






    id obj = _logos_meta_orig$_ungrouped$AWEVideoPublishManager$uploadVideo$uploadURL$headerField$parameters$timeout$progress$completion$(self, _cmd, arg2, arg3, arg4, arg5, arg6, arg7, arg8);
    return obj;
}


static id _logos_meta_method$_ungrouped$AWEVideoPublishManager$publishAweme$completion$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg2, id arg3) {
    id obj = _logos_meta_orig$_ungrouped$AWEVideoPublishManager$publishAweme$completion$(self, _cmd, arg2, arg3);
    return obj;
}


static id _logos_meta_method$_ungrouped$AWEVideoPublishManager$publishPhotoAweme$completion$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg2, id arg3) {
    id obj = _logos_meta_orig$_ungrouped$AWEVideoPublishManager$publishPhotoAweme$completion$(self, _cmd, arg2, arg3);
    return obj;
}





static id _logos_meta_method$_ungrouped$AWENetworkService$uploadWithURLString$parameters$headerField$timeout$constructingBodyWithBlock$progress$needcommonParams$modelClass$callback$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2, id arg3, double arg4, id arg5, id * arg6, _Bool arg7, Class arg8, id arg9) {
    id obj = _logos_meta_orig$_ungrouped$AWENetworkService$uploadWithURLString$parameters$headerField$timeout$constructingBodyWithBlock$progress$needcommonParams$modelClass$callback$(self, _cmd, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9);
    return obj;
}
static id _logos_meta_method$_ungrouped$AWENetworkService$uploadWithURLString$params$headerField$timeout$fileURL$fileName$progress$modelClass$completion$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2, id arg3, double arg4, id arg5, id arg6, id * arg7, Class arg8, id arg9) {
    id obj = _logos_meta_orig$_ungrouped$AWENetworkService$uploadWithURLString$params$headerField$timeout$fileURL$fileName$progress$modelClass$completion$(self, _cmd, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9);
    return obj;
}





static id _logos_method$_ungrouped$AWEAwemeShareViewController$_shareModeLogWithShareType$(_LOGOS_SELF_TYPE_NORMAL AWEAwemeShareViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1) {
    id obj = _logos_orig$_ungrouped$AWEAwemeShareViewController$_shareModeLogWithShareType$(self, _cmd, arg1);
    return obj;
}
static void _logos_method$_ungrouped$AWEAwemeShareViewController$p_showUnreviewedToastWithType$(_LOGOS_SELF_TYPE_NORMAL AWEAwemeShareViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1) {
    _logos_orig$_ungrouped$AWEAwemeShareViewController$p_showUnreviewedToastWithType$(self, _cmd, arg1);
}
static void _logos_method$_ungrouped$AWEAwemeShareViewController$p_showUnreviewedShareGuideWithType$(_LOGOS_SELF_TYPE_NORMAL AWEAwemeShareViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1) {
    _logos_orig$_ungrouped$AWEAwemeShareViewController$p_showUnreviewedShareGuideWithType$(self, _cmd, arg1);
}
static _Bool _logos_method$_ungrouped$AWEAwemeShareViewController$p_unreviewedVideoToLink$(_LOGOS_SELF_TYPE_NORMAL AWEAwemeShareViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1) {
    _Bool res = _logos_orig$_ungrouped$AWEAwemeShareViewController$p_unreviewedVideoToLink$(self, _cmd, arg1);
    return res;
}
static void _logos_method$_ungrouped$AWEAwemeShareViewController$clicked$(_LOGOS_SELF_TYPE_NORMAL AWEAwemeShareViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg2) {
    _logos_orig$_ungrouped$AWEAwemeShareViewController$clicked$(self, _cmd, arg2);
}



static void _logos_method$_ungrouped$NSURL$addObserver$forKeyPath$options$context$(_LOGOS_SELF_TYPE_NORMAL NSURL* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSObject * observer, NSString * keyPath, NSKeyValueObservingOptions options, void * context) {
    
    if ([observer isKindOfClass:NSClassFromString(@"_FBKVOSharedController")] && [keyPath isEqualToString:@"progress.fractionCompleted"]) {
        printf("");
        return;
    }
    _logos_orig$_ungrouped$NSURL$addObserver$forKeyPath$options$context$(self, _cmd, observer, keyPath, options, context);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$AWEVideoRecorderController = objc_getClass("AWEVideoRecorderController"); MSHookMessageEx(_logos_class$_ungrouped$AWEVideoRecorderController, @selector(videoMaxDuration), (IMP)&_logos_method$_ungrouped$AWEVideoRecorderController$videoMaxDuration, (IMP*)&_logos_orig$_ungrouped$AWEVideoRecorderController$videoMaxDuration);Class _logos_class$_ungrouped$HTSVideoConfig = objc_getClass("HTSVideoConfig"); Class _logos_metaclass$_ungrouped$HTSVideoConfig = object_getClass(_logos_class$_ungrouped$HTSVideoConfig); MSHookMessageEx(_logos_metaclass$_ungrouped$HTSVideoConfig, @selector(defaultConfig), (IMP)&_logos_meta_method$_ungrouped$HTSVideoConfig$defaultConfig, (IMP*)&_logos_meta_orig$_ungrouped$HTSVideoConfig$defaultConfig);MSHookMessageEx(_logos_class$_ungrouped$HTSVideoConfig, @selector(videoMaxSeconds), (IMP)&_logos_method$_ungrouped$HTSVideoConfig$videoMaxSeconds, (IMP*)&_logos_orig$_ungrouped$HTSVideoConfig$videoMaxSeconds);MSHookMessageEx(_logos_class$_ungrouped$HTSVideoConfig, @selector(videoUploadMaxSeconds), (IMP)&_logos_method$_ungrouped$HTSVideoConfig$videoUploadMaxSeconds, (IMP*)&_logos_orig$_ungrouped$HTSVideoConfig$videoUploadMaxSeconds);MSHookMessageEx(_logos_class$_ungrouped$HTSVideoConfig, @selector(isLongVideoEnaled), (IMP)&_logos_method$_ungrouped$HTSVideoConfig$isLongVideoEnaled, (IMP*)&_logos_orig$_ungrouped$HTSVideoConfig$isLongVideoEnaled);Class _logos_class$_ungrouped$AWEAppSettings = objc_getClass("AWEAppSettings"); Class _logos_metaclass$_ungrouped$AWEAppSettings = object_getClass(_logos_class$_ungrouped$AWEAppSettings); MSHookMessageEx(_logos_metaclass$_ungrouped$AWEAppSettings, @selector(awemeSettings), (IMP)&_logos_meta_method$_ungrouped$AWEAppSettings$awemeSettings, (IMP*)&_logos_meta_orig$_ungrouped$AWEAppSettings$awemeSettings);Class _logos_class$_ungrouped$AWEVideoNewPublishViewController = objc_getClass("AWEVideoNewPublishViewController"); MSHookMessageEx(_logos_class$_ungrouped$AWEVideoNewPublishViewController, @selector(_publish), (IMP)&_logos_method$_ungrouped$AWEVideoNewPublishViewController$_publish, (IMP*)&_logos_orig$_ungrouped$AWEVideoNewPublishViewController$_publish);Class _logos_class$_ungrouped$HTSServiceCenter = objc_getClass("HTSServiceCenter"); MSHookMessageEx(_logos_class$_ungrouped$HTSServiceCenter, @selector(getService:), (IMP)&_logos_method$_ungrouped$HTSServiceCenter$getService$, (IMP*)&_logos_orig$_ungrouped$HTSServiceCenter$getService$);Class _logos_class$_ungrouped$TrackerService = objc_getClass("TrackerService"); MSHookMessageEx(_logos_class$_ungrouped$TrackerService, @selector(trackEvent:label:value:extra:attributes:), (IMP)&_logos_method$_ungrouped$TrackerService$trackEvent$label$value$extra$attributes$, (IMP*)&_logos_orig$_ungrouped$TrackerService$trackEvent$label$value$extra$attributes$);Class _logos_class$_ungrouped$AWEPublishResultHandler = objc_getClass("AWEPublishResultHandler"); MSHookMessageEx(_logos_class$_ungrouped$AWEPublishResultHandler, @selector(taskDidAppend:), (IMP)&_logos_method$_ungrouped$AWEPublishResultHandler$taskDidAppend$, (IMP*)&_logos_orig$_ungrouped$AWEPublishResultHandler$taskDidAppend$);MSHookMessageEx(_logos_class$_ungrouped$AWEPublishResultHandler, @selector(task:didFinishWithResult:error:), (IMP)&_logos_method$_ungrouped$AWEPublishResultHandler$task$didFinishWithResult$error$, (IMP*)&_logos_orig$_ungrouped$AWEPublishResultHandler$task$didFinishWithResult$error$);Class _logos_class$_ungrouped$AWEVideoPublishNormalTask = objc_getClass("AWEVideoPublishNormalTask"); MSHookMessageEx(_logos_class$_ungrouped$AWEVideoPublishNormalTask, @selector(postAweme:), (IMP)&_logos_method$_ungrouped$AWEVideoPublishNormalTask$postAweme$, (IMP*)&_logos_orig$_ungrouped$AWEVideoPublishNormalTask$postAweme$);Class _logos_class$_ungrouped$AWEFilePublisherFactory = objc_getClass("AWEFilePublisherFactory"); Class _logos_metaclass$_ungrouped$AWEFilePublisherFactory = object_getClass(_logos_class$_ungrouped$AWEFilePublisherFactory); MSHookMessageEx(_logos_metaclass$_ungrouped$AWEFilePublisherFactory, @selector(publisherForResourceType:resourceURL:publishViewModel:), (IMP)&_logos_meta_method$_ungrouped$AWEFilePublisherFactory$publisherForResourceType$resourceURL$publishViewModel$, (IMP*)&_logos_meta_orig$_ungrouped$AWEFilePublisherFactory$publisherForResourceType$resourceURL$publishViewModel$);Class _logos_class$_ungrouped$AWEVideoPublishManager = objc_getClass("AWEVideoPublishManager"); Class _logos_metaclass$_ungrouped$AWEVideoPublishManager = object_getClass(_logos_class$_ungrouped$AWEVideoPublishManager); MSHookMessageEx(_logos_metaclass$_ungrouped$AWEVideoPublishManager, @selector(sharedInstance), (IMP)&_logos_meta_method$_ungrouped$AWEVideoPublishManager$sharedInstance, (IMP*)&_logos_meta_orig$_ungrouped$AWEVideoPublishManager$sharedInstance);MSHookMessageEx(_logos_metaclass$_ungrouped$AWEVideoPublishManager, @selector(requestVideoUploadURLWithParameters:completion:), (IMP)&_logos_meta_method$_ungrouped$AWEVideoPublishManager$requestVideoUploadURLWithParameters$completion$, (IMP*)&_logos_meta_orig$_ungrouped$AWEVideoPublishManager$requestVideoUploadURLWithParameters$completion$);MSHookMessageEx(_logos_metaclass$_ungrouped$AWEVideoPublishManager, @selector(requestUploadParametersWithCompletion:), (IMP)&_logos_meta_method$_ungrouped$AWEVideoPublishManager$requestUploadParametersWithCompletion$, (IMP*)&_logos_meta_orig$_ungrouped$AWEVideoPublishManager$requestUploadParametersWithCompletion$);MSHookMessageEx(_logos_metaclass$_ungrouped$AWEVideoPublishManager, @selector(requestUploadParametersWithParameters:completion:), (IMP)&_logos_meta_method$_ungrouped$AWEVideoPublishManager$requestUploadParametersWithParameters$completion$, (IMP*)&_logos_meta_orig$_ungrouped$AWEVideoPublishManager$requestUploadParametersWithParameters$completion$);MSHookMessageEx(_logos_metaclass$_ungrouped$AWEVideoPublishManager, @selector(requestVideoUrlWithVideoId:completion:), (IMP)&_logos_meta_method$_ungrouped$AWEVideoPublishManager$requestVideoUrlWithVideoId$completion$, (IMP*)&_logos_meta_orig$_ungrouped$AWEVideoPublishManager$requestVideoUrlWithVideoId$completion$);MSHookMessageEx(_logos_metaclass$_ungrouped$AWEVideoPublishManager, @selector(uploadVideo:uploadURL:headerField:parameters:timeout:progress:completion:), (IMP)&_logos_meta_method$_ungrouped$AWEVideoPublishManager$uploadVideo$uploadURL$headerField$parameters$timeout$progress$completion$, (IMP*)&_logos_meta_orig$_ungrouped$AWEVideoPublishManager$uploadVideo$uploadURL$headerField$parameters$timeout$progress$completion$);MSHookMessageEx(_logos_metaclass$_ungrouped$AWEVideoPublishManager, @selector(publishAweme:completion:), (IMP)&_logos_meta_method$_ungrouped$AWEVideoPublishManager$publishAweme$completion$, (IMP*)&_logos_meta_orig$_ungrouped$AWEVideoPublishManager$publishAweme$completion$);MSHookMessageEx(_logos_metaclass$_ungrouped$AWEVideoPublishManager, @selector(publishPhotoAweme:completion:), (IMP)&_logos_meta_method$_ungrouped$AWEVideoPublishManager$publishPhotoAweme$completion$, (IMP*)&_logos_meta_orig$_ungrouped$AWEVideoPublishManager$publishPhotoAweme$completion$);Class _logos_class$_ungrouped$AWENetworkService = objc_getClass("AWENetworkService"); Class _logos_metaclass$_ungrouped$AWENetworkService = object_getClass(_logos_class$_ungrouped$AWENetworkService); MSHookMessageEx(_logos_metaclass$_ungrouped$AWENetworkService, @selector(uploadWithURLString:parameters:headerField:timeout:constructingBodyWithBlock:progress:needcommonParams:modelClass:callback:), (IMP)&_logos_meta_method$_ungrouped$AWENetworkService$uploadWithURLString$parameters$headerField$timeout$constructingBodyWithBlock$progress$needcommonParams$modelClass$callback$, (IMP*)&_logos_meta_orig$_ungrouped$AWENetworkService$uploadWithURLString$parameters$headerField$timeout$constructingBodyWithBlock$progress$needcommonParams$modelClass$callback$);MSHookMessageEx(_logos_metaclass$_ungrouped$AWENetworkService, @selector(uploadWithURLString:params:headerField:timeout:fileURL:fileName:progress:modelClass:completion:), (IMP)&_logos_meta_method$_ungrouped$AWENetworkService$uploadWithURLString$params$headerField$timeout$fileURL$fileName$progress$modelClass$completion$, (IMP*)&_logos_meta_orig$_ungrouped$AWENetworkService$uploadWithURLString$params$headerField$timeout$fileURL$fileName$progress$modelClass$completion$);Class _logos_class$_ungrouped$AWEAwemeShareViewController = objc_getClass("AWEAwemeShareViewController"); MSHookMessageEx(_logos_class$_ungrouped$AWEAwemeShareViewController, @selector(_shareModeLogWithShareType:), (IMP)&_logos_method$_ungrouped$AWEAwemeShareViewController$_shareModeLogWithShareType$, (IMP*)&_logos_orig$_ungrouped$AWEAwemeShareViewController$_shareModeLogWithShareType$);MSHookMessageEx(_logos_class$_ungrouped$AWEAwemeShareViewController, @selector(p_showUnreviewedToastWithType:), (IMP)&_logos_method$_ungrouped$AWEAwemeShareViewController$p_showUnreviewedToastWithType$, (IMP*)&_logos_orig$_ungrouped$AWEAwemeShareViewController$p_showUnreviewedToastWithType$);MSHookMessageEx(_logos_class$_ungrouped$AWEAwemeShareViewController, @selector(p_showUnreviewedShareGuideWithType:), (IMP)&_logos_method$_ungrouped$AWEAwemeShareViewController$p_showUnreviewedShareGuideWithType$, (IMP*)&_logos_orig$_ungrouped$AWEAwemeShareViewController$p_showUnreviewedShareGuideWithType$);MSHookMessageEx(_logos_class$_ungrouped$AWEAwemeShareViewController, @selector(p_unreviewedVideoToLink:), (IMP)&_logos_method$_ungrouped$AWEAwemeShareViewController$p_unreviewedVideoToLink$, (IMP*)&_logos_orig$_ungrouped$AWEAwemeShareViewController$p_unreviewedVideoToLink$);MSHookMessageEx(_logos_class$_ungrouped$AWEAwemeShareViewController, @selector(clicked:), (IMP)&_logos_method$_ungrouped$AWEAwemeShareViewController$clicked$, (IMP*)&_logos_orig$_ungrouped$AWEAwemeShareViewController$clicked$);Class _logos_class$_ungrouped$NSURL = objc_getClass("NSURL"); MSHookMessageEx(_logos_class$_ungrouped$NSURL, @selector(addObserver:forKeyPath:options:context:), (IMP)&_logos_method$_ungrouped$NSURL$addObserver$forKeyPath$options$context$, (IMP*)&_logos_orig$_ungrouped$NSURL$addObserver$forKeyPath$options$context$);} }
#line 1373 "/Users/xiaoyuan/Destop/work/GitHub/DouYin/DouYinDylib/Logos/DouYinDylib.xm"
