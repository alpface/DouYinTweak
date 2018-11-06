// See http://iphonedevwiki.net/index.php/Logos

#import <UIKit/UIKit.h>
#import "HTSVideoConfig.h"
#import <substrate.h>

/********************************************* 长视频权限相关 ***************************************/

%hook AWEVideoRecorderController

/*
- (id)videoMaxDuration
{
r10 = self;
r8 = @selector(defaultConfig);
r0 = [HTSVideoConfig defaultConfig];
r7 = &arg_C;
r5 = [r0 retain];
if ([r5 isLongVideoEnaled] == 0x0) goto loc_2304edc;
goto loc_2304ea6;

loc_2304edc:
[r5 release];
r0 = *objc_cls_ref_HTSVideoConfig;
r0 = [r0 defaultConfig];
r4 = [r0 retain];
r5 = [r4 videoMaxSeconds];

loc_2304f08:
r0 = [r4 release];
asm{ vmov       s0, r5 } << 0x10 | r5;
asm{ vcvt.f32.s32 s0, s0 };
asm{ vmov       r0, s0 };
Pop();
Pop();
Pop();
return r0;

loc_2304ea6:
r6 = @selector(publishModel);
r0 = [r10 publishModel];
r7 = r7;
r4 = [r0 retain];
if ([r4 isDuet] == 0x0) goto loc_2304f20;
goto loc_2304ed6;

loc_2304f20:
r0 = [r10 publishModel];
r7 = r7;
r6 = [r0 retain];
r10 = [r6 coShootingType];
[r6 release];
[r4 release];
[r5 release];
if (r10 != 0x2) {
r4 = [[AWEStudioConfig defaultConfig] retain];
r5 = [r4 videoLenthMode];
r0 = *objc_cls_ref_HTSVideoConfig;
r0 = [r0 defaultConfig];
r6 = [r0 retain];
asm{ it         eq };
if (r5 == 0x2) {
}
r5 = [r6 standardVideoMaxSeconds];
[r6 release];
}
else {
r0 = *objc_cls_ref_HTSVideoConfig;
r0 = [r0 defaultConfig];
r4 = [r0 retain];
r5 = [r4 videoMaxSeconds];
}
goto loc_2304f08;

loc_2304ed6:
[r4 release];
goto loc_2304edc;
}

*/
- (id)videoMaxDuration {
    id value =  %orig;
    return value;
}


%end


%hook HTSVideoConfig

long long _variableHooked;

+ (id)defaultConfig {
    id _instance =  %orig;
    // 'Hook' the variable
//    BOOL variableHooked = MSHookIvar<long long>(self, "_exampleVariable");
//    // The name of the hooked variable does not need to be the same
//    variableHooked = @(30);
    
    // 修改成员属性的值
    [_instance setValue:@(30) forKey:@"_videoMaxSeconds"];
   
    
    return _instance;
}

// 视频最多能发多少秒
- (long long)videoMaxSeconds {
    long long max = %orig;
    return max;
}
- (long long)videoUploadMaxSeconds
{
//    r7 = &arg_4;
//    r4 = self;
//    if (sub_e0b924(r4, @selector(isLongVideoEnaled)) != 0x0) {
//        @selector(maxVideoDuration) - 0x0 + !CARRY(sub_e0b924(AWEAppDarkForestSettingManager, @selector(maxVideoDuration)) - 0x1);
//        if (r2 >= 0x0) {
//            r0 = sub_e0c35c();
//            return r0;
//        }
//        else {
//            r0 = 0x3c;
//            return r0;
//        }
//    }
//    else {
//        Pop();
//        Pop();
//        Pop();
//        r0 = loc_1c0d788();
//    }
//    return r0;
    
    long long videoUploadMaxSeconds = %orig;
    return videoUploadMaxSeconds;
}

- (_Bool)isLongVideoEnaled
{
//    if (CPU_FLAGS & NE) {
//        Push(r4);
//        Push(r7);
//        Push(lr);
//    }
//    r0 = sub_e0b924(AWEAppDarkForestSettingManager, @selector(maxVideoDuration));
//    if ((r0 < 0x0) || (sub_e0b924(*objc_cls_ref_AWEAppDarkForestSettingManager, @selector(enableLongVideo)) == 0x0)) {
//        r0 = 0x0;
//        return r0;
//    }
//    else {
//        r0 = 0x1;
//        return r0;
//    }
//    return r0;
    
    _Bool isLongVideoEnaled = %orig;
    return isLongVideoEnaled;
}
%end

%hook AWEAppDarkForestSettingManager

//+ (long long)enableLongVideo
//{
////    r0 = sub_e0b924(AWEAppSettings, @selector(awemeSettings));
////    r4 = sub_e0b928(r0);
////    r5 = sub_e0b924(r4, @selector(boolValueForKeyPath:defaultValue:));
////    sub_e0b91c(r4);
////    r0 = r5;
////    return r0;
//
//    long long enableLongVideo = %orig;
//    return enableLongVideo;
//}
//
//+ (_Bool)enableLongVideo
//{
////    r0 = sub_e0b924(AWEAppSettings, @selector(awemeSettings));
////    r4 = sub_e0b928(r0);
////    var_0 = 0x0;
////    r5 = sub_e0b924(r4, @selector(intValueForKeyPath:defaultValue:));
////    sub_e0b91c(r4);
////    r0 = r5;
////    return r0;
//    _Bool enableLongVideo = %orig;
//    return enableLongVideo;
//}

%end

%hook AWEAppSettings

//- (long long)intValueForKeyPath:(id)arg1 defaultValue:(long long)arg2 stable:(_Bool)arg3 {
//
//    long long res = %orig;
//    return res;
//}
//- (long long)intValueForKeyPath:(id)arg1 defaultValue:(long long)arg2 {
//    long long res = %orig;
//    return res;
//}
//- (double)doubleValueForKeyPath:(id)arg1 defaultValue:(double)arg2 stable:(_Bool)arg3 {
//    double res = %orig;
//    return res;
//}
//- (double)doubleValueForKeyPath:(id)arg1 defaultValue:(double)arg2 {
//    double res = %orig;
//    return res;
//}
//- (_Bool)boolValueForKeyPath:(id)arg1 defaultValue:(_Bool)arg2 stable:(_Bool)arg3 {
//    _Bool res = %orig;
//    return res;
//}
//- (_Bool)boolValueForKeyPath:(id)arg1 defaultValue:(_Bool)arg2 {
//    _Bool res = %orig;
//    return res;
//}

/// enableLongVideo 和 maxVideoDuration的根源 是通过这里获取的
+ (id)awemeSettings
{
//    r0 = loc_1c0d788();
//    return r0;
    id awemeSettings = %orig;
    // 返回的是当前对象本身：
    // 有两个属性_settings和_stableSettings 这两个属性都是字典
    // _settings中包含app的各种设置key-value，其中长视频和视频的时间都是保存在这里的
    // app在启动时会调用+[AWEAppMainSettingManager enableReadFancyCode] 初始化awemeSettings单例
    NSMutableDictionary *settingsM = [[awemeSettings valueForKey:@"_settings"] mutableCopy ];
    if ([settingsM[@"long_video_permitted"] integerValue] == 0) {
        // 修改长视频权限
        settingsM[@"long_video_permitted"] = @1;
        [awemeSettings setValue:settingsM forKeyPath:@"_settings"];
    }
    
    return awemeSettings;
    
    /*
     服务器记录的长视频权限的key
     "long_video_permitted" = 0;
    "long_video_threshold" = 59000;
     */
    
    /*
     打印_settings:
     Printing description of awemeSettings->_settings:
     {
     "_AME_APICommonParam_Timestamp" = 1541495265000;
     "_AME_Header_RequestID" = 20181106170745010010051043604337;
     a1 = 1;
     a22 = "iPhone9,2";
     "ad_coupon_config" =     {
     show = 1;
     };
     "ad_display_time" = 3;
     "ad_feedback_landingpage_url" = "https://www.chengzijianzhan.com/tetris/page/1614296068146180/";
     "ad_feedback_phone" = "400-603-0918";
     "ad_intro_for_adversitser_flag" = 1;
     "ad_intro_landingpage_url" = "https://www.chengzijianzhan.com/tetris/page/1613995453434910/";
     "ad_landing_page_config" =     {
     "ad_landing_page_auto_jump_allow_list" =         (
     snssdk141,
     snssdk1128,
     snssdk32,
     snssdk51,
     snssdk1165,
     snssdk1112,
     snssdk36,
     bytedance
     );
     "ad_landing_page_auto_jump_control_enabled" = 1;
     "ad_landing_page_click_jump_allow_list" =         (
     meituanwaimai,
     yitiao
     );
     "ad_landing_page_click_jump_control_enabled" = 1;
     "ad_landing_page_click_jump_intercept_list" = "<null>";
     "ad_landing_page_click_jump_intercept_tips" = "\U4e0d\U80fd\U5b8c\U6210\U8df3\U8f6c";
     "ad_landing_page_click_jump_interval" = 3000;
     };
     "add_device_fingerprint_open" = 0;
     "anti_addiction_day_time" = 7200;
     "anti_addiction_night_time" = 4500;
     "anti_addiction_separation" = 22;
     "anti_addiction_toast_time" = 5400;
     "app_store_score" =     {
     section = 5;
     switch = 1;
     threshold = 3;
     };
     "avatar_decoration_enabled" = 1;
     "awe_security_center_v2" = 1;
     "aweme_fe_conf" =     {
     "business_ec" =         {
     "page_edit" =             {
     "fallback_url" = "https://aweme.snssdk.com/falcon/rn/business?initPage=edit&status_bar_color=fff&status_font_dark=1&loading_bgcolor=fff";
     schema = "aweme://reactnative?channel_name=rn_patch&module_name=page_business&bundle_name=business&hide_nav_bar=1&initPage=edit";
     };
     "page_eshop_toolbox" =             {
     "fallback_url" = "https://aweme.snssdk.com/falcon/rn/eshop_toolbox?hide_nav_bar=1&status_bar_color=fff&status_font_dark=1&loading_bgcolor=fff";
     schema = "aweme://reactnative?channel_name=rn_patch&module_name=page_eshop_toolbox&bundle_name=business&hide_nav_bar=1";
     };
     "page_home" =             {
     "fallback_url" = "https://aweme.snssdk.com/falcon/rn/business?initPage=home&status_bar_color=fff&status_font_dark=1&loading_bgcolor=fff";
     schema = "aweme://reactnative?channel_name=rn_patch&module_name=page_business&bundle_name=business&hide_nav_bar=1&initPage=home";
     };
     };
     };
     "aweme_gecko_conf" =     {
     "initial_channel" =         (
     "rn_base_ios",
     "rn_patch_ios",
     "falcon_dyfe",
     "fe_app_rn_patch_ios",
     "douyin_live_falcon"
     );
     };
     "beauty_model" = 2;
     "can_be_live_podcast" = 0;
     "can_duet" = 1;
     "can_react" = 1;
     "close_fantasy" = 1;
     "close_fantasy_v2" = 1;
     "close_new_account_url" = 0;
     "comment_setting_enable" = 0;
     "commerce_use_zhima" = 1;
     "complete_profile_policy" =     {
     interval = 2;
     times = 3;
     };
     "create_aweme_entry" = 0;
     "default_avatar_uris" =     (
     "p0.pstatp.com/origin/3791/5035712059",
     "p0.pstatp.com/origin/3795/3033762272",
     "p0.pstatp.com/origin/3792/5112637127",
     "p0.pstatp.com/origin/3791/5070639578",
     "p0.pstatp.com/origin/3797/2889309425",
     "p0.pstatp.com/origin/3793/3114521287",
     "p0.pstatp.com/origin/3796/2975850990",
     "p0.pstatp.com/origin/3795/3044413937",
     "p0.pstatp.com/origin/3795/3047680722",
     "p0.pstatp.com/origin/3793/3131589739",
     8d66002ca10cc7a57906
     );
     "default_cover_urls" =     (
     {
     uri = c8510002be9a3a61aad2;
     "url_list" =             (
     "http://p1.pstatp.com/obj/c8510002be9a3a61aad2",
     "http://pb3.pstatp.com/obj/c8510002be9a3a61aad2",
     "http://pb3.pstatp.com/obj/c8510002be9a3a61aad2"
     );
     },
     {
     uri = c818001b7d4f790dc0c2;
     "url_list" =             (
     "http://p3.pstatp.com/obj/c818001b7d4f790dc0c2",
     "http://pb9.pstatp.com/obj/c818001b7d4f790dc0c2",
     "http://pb3.pstatp.com/obj/c818001b7d4f790dc0c2"
     );
     },
     {
     uri = c83300148d959f8a60b1;
     "url_list" =             (
     "http://p1.pstatp.com/obj/c83300148d959f8a60b1",
     "http://pb3.pstatp.com/obj/c83300148d959f8a60b1",
     "http://pb3.pstatp.com/obj/c83300148d959f8a60b1"
     );
     },
     {
     uri = c853000ff659f147682f;
     "url_list" =             (
     "http://p1.pstatp.com/obj/c853000ff659f147682f",
     "http://pb3.pstatp.com/obj/c853000ff659f147682f",
     "http://pb3.pstatp.com/obj/c853000ff659f147682f"
     );
     },
     {
     uri = c852001dfafdadb2d3de;
     "url_list" =             (
     "http://p3.pstatp.com/obj/c852001dfafdadb2d3de",
     "http://pb9.pstatp.com/obj/c852001dfafdadb2d3de",
     "http://pb3.pstatp.com/obj/c852001dfafdadb2d3de"
     );
     },
     {
     uri = c84d0007ec696c1ff6e8;
     "url_list" =             (
     "http://p3.pstatp.com/obj/c84d0007ec696c1ff6e8",
     "http://pb9.pstatp.com/obj/c84d0007ec696c1ff6e8",
     "http://pb3.pstatp.com/obj/c84d0007ec696c1ff6e8"
     );
     },
     {
     uri = c84d0007ec6c02d356d6;
     "url_list" =             (
     "http://p3.pstatp.com/obj/c84d0007ec6c02d356d6",
     "http://pb9.pstatp.com/obj/c84d0007ec6c02d356d6",
     "http://pb3.pstatp.com/obj/c84d0007ec6c02d356d6"
     );
     },
     {
     uri = c8580007195863f40ff7;
     "url_list" =             (
     "http://p9.pstatp.com/obj/c8580007195863f40ff7",
     "http://pb1.pstatp.com/obj/c8580007195863f40ff7",
     "http://pb3.pstatp.com/obj/c8580007195863f40ff7"
     );
     },
     {
     uri = c84100187bb3e1e459ca;
     "url_list" =             (
     "http://p3.pstatp.com/obj/c84100187bb3e1e459ca",
     "http://pb9.pstatp.com/obj/c84100187bb3e1e459ca",
     "http://pb3.pstatp.com/obj/c84100187bb3e1e459ca"
     );
     }
     );
     "device_monitor" = 1;
     "device_platform" = iphone;
     "disable_live_cdn_selection" = 0;
     "download_check_status" = 1;
     "download_forbidden_toast" = "\U4f5c\U54c1\U5ba1\U6838\U4e2d\Uff0c\U8bf7\U7a0d\U540e\U518d\U8bd5";
     "download_sdk_config" =     {
     "download_dialog_config" =         {
     "is_enable_back_dialog" = 1;
     };
     "download_lib_switch" = 2;
     };
     "download_setting_enable" = 0;
     "enable_account_log_upload" = 1;
     "enable_background_sticker" = 0;
     "enable_check_environment_safe_status" = 0;
     "enable_dynamic_cover" = 0;
     "enable_fancy_qrcode" = 1;
     "enable_hard_decode" = 1;
     "enable_hardware_encode" = 0;
     "enable_hashtag_profile" = 1;
     "enable_home_scan_qrcode" = 1;
     "enable_huawei_super_slow" = 0;
     "enable_large_matting_detect_model" = 1;
     "enable_local_music_entrance" = 1;
     "enable_omsdk" = 0;
     "enable_react_native_page" = 0;
     "enable_read_fancy_qrcode" = 1;
     "enable_slow_optimize" = 0;
     "enable_upload_mobile_pcid" = 0;
     extra =     {
     now = 1541495265000;
     };
     "feed_tab" = 0;
     "follow_feed_as_default" = 0;
     "forbid_local_watermark" = 0;
     "fp_upload_device_url" = "https://api.tiktokv.com/rc/device_info/v1/collection/";
     "free_flow_card" =     {
     "entry_url" = "https://www.douyin.com/douyin/douyin_card/collection/?media_source=1&oid=0";
     "entry_url_text" = "\U514d\U6d41\U91cf\U770b\U6296\U97f3";
     "toast_slogan" = "\U6d41\U91cf\U5361\U9650\U65f6\U9001150\U5143\U8bdd\U8d39";
     "toast_title" = "\U5f53\U524d\U4e3a\U975eWiFi\U73af\U5883\Uff0c\U5df2\U4e3a\U60a8\U6682\U505c\U64ad\U653e";
     "toast_type" = 0;
     "toast_url" = "https://douka.okeuu.com/limitlessCardForWechat/index.html#/singlesDay/index?ct=0&cmpid=jt-dycard-ttshuang1103&shopid=lmk.cps.jtdycardttshuang1103";
     "toast_url_text" = "\U529e\U7406\U514d\U6d41\U91cf\U670d\U52a1";
     };
     "fresh_animation" = 0;
     "fresh_tab" = 0;
     "ftc_age_enable" = 0;
     "global_tips" =     {
     "at_too_more" = "\U6700\U591a@\U4e94\U4e2a\U597d\U53cb";
     "draft_publish" = "\U5df2\U4fdd\U5b58\U81f3\U4e2a\U4eba\U4e3b\U9875\U8349\U7a3f\U7bb1\Uff0c\U5feb\U53bb\U53d1\U5e03\U5427\Uff5e";
     "net_weak" = "\U7f51\U7edc\U4e0d\U7ed9\U529b";
     "not_comment" = "\U6296\U97f3\U541b\U6b63\U5728\U5ba1\U6838\U4f60\U7684\U89c6\U9891\Uff0c\U6682\U65f6\U8fd8\U4e0d\U80fd\U8bc4\U8bba\U54e6";
     "not_share" = "\U6296\U97f3\U541b\U6b63\U5728\U5ba1\U6838\U4f60\U7684\U89c6\U9891\Uff0c\U6682\U65f6\U8fd8\U4e0d\U80fd\U5206\U4eab\U54e6";
     "search_tips" = "\U8f93\U5165\U641c\U7d22\U5185\U5bb9";
     "self_see_not_share" = "\U5206\U4eab\U5931\U8d25\Uff0c\U8be6\U60c5\U8bf7\U67e5\U770b\U7cfb\U7edf\U901a\U77e5";
     "share_fail" = "\U554a\U54e6\Uff0c\U670d\U52a1\U5668\U6253\U778c\U7761\U4e86\Uff0c\U518d\U8bd5\U4e00\U6b21\U5427\Uff5e ";
     };
     "guide_word_display_settings" =     {
     "most_display_times" = 3;
     "one_display_intervals" = 604800;
     "op_most_display_times" = 1;
     "op_one_display_intervals" = 604800;
     };
     "has_weixin_suppress" = 0;
     "hotsearch_switchs" =     {
     "hotsearch_aweme_billboard_switch" = 1;
     "hotsearch_billboard_switch" = 1;
     "hotsearch_music_billboard_switch" = 1;
     "hotsearch_positive_energy_billboard_switch" = 1;
     "hotsearch_star_billboard_switch" = 1;
     };
     "hotsoon_download_url" = "http://d.huoshanzhibo.com/Pp7r/";
     "http_retry_count" = 4;
     "http_retry_interval" = 0;
     "http_timeout" = 60000;
     "https_list" =     (
     "aweme/v1/commit/item/digg/",
     "aweme/v1/commit/follow/user/"
     );
     "im_comment_forward_enabled" = 1;
     "im_contacts_multi_select_limit" = 10;
     "im_image_switch" = 1;
     "im_switch" = 1;
     "im_switch_spi" = 1;
     "im_url_template" = "https://link.wtturl.cn?scene=im";
     "ios_loki_disabled" = 0;
     "is_download_micro_app" = 1;
     "is_force_https" = 1;
     "is_ob" = 0;
     "is_target_binding_user" = 0;
     "is_use_tongdun_sdk" = 1;
     "js_actlog_url" = "//s3.pstatp.com/bytecom/resource/track_log/src/toutiao-track-log.js?ad_id={{ad_id}}";
     "live_default_bitrate" = 512000;
     "live_fps" = 18;
     "live_max_bitrate" = 720000;
     "live_min_bitrate" = 512000;
     "live_res_h" = 960;
     "live_res_w" = 540;
     "live_switch_spi" = 0;
     "live_use_zhima" = 1;
     "log_pb" =     {
     "impr_id" = 20181106170745010010051043604337;
     };
     "long_video_permitted" = 0;
     "long_video_threshold" = 59000;
     "music_billboard_rule_url" = "https://aweme.snssdk.com/falcon/douyin_falcon/rule/music/";
     "musician_show_type" = 1;
     "nearby_tab" = 1;
     "need_new_license" = 1;
     "need_pre_load" = 1;
     "network_lib_type" = 1;
     "network_timeout" = 5000;
     "new_user_tab_switch" = 1;
     "notice_close_time" = 2592000000;
     "notice_count_latency" = 3000;
     "notice_refresh_time" = 300;
     "old_style_challenge_ids" =     (
     1584287770870814,
     1575309109788685,
     1576244833286157
     );
     "open_forward" = 1;
     "open_im" = 0;
     "open_im_link" = 1;
     "orginal_musician_url" = "https://aweme.snssdk.com/magic/runtime/?id=1469";
     "original_musician_entry" = 1;
     "original_musician_share_style" = 1;
     "pic_qrcode_recognition_switch" = 1;
     "player_type" = 1;
     "popWindowEveryTime_postaweme" = 0;
     "popWindowEveryTime_postcomment" = 0;
     "private_available" = 1;
     "profile_completion" =     {
     avatar = "0.3";
     birthday = "0.1";
     gender = "0.1";
     location = "0.1";
     nickname = "0.2";
     school = "0.1";
     "short_id" = 0;
     signature = "0.1";
     };
     "profile_completion_threshold" = "0.7";
     "progressbar_threshold" = 30000;
     "push_pre_permission_view" =     {
     "toast_text" = "\U6253\U5f00\U901a\U77e5\Uff0c\U66f4\U5feb\U67e5\U6536\U4f60\U5173\U6ce8\U7684\U4f5c\U8005\U53d1\U5e03\U89c6\U9891\Uff0c\U4e0e\U5176\U4ed6\U7528\U6237\U7684\U4e92\U52a8\U7b49\U66f4\U591a\U6d88\U606f\U3002";
     "toast_title" = "\U901a\U77e5\Uff0c\U662f\U4ef6\U5f88\U91cd\U8981\U7684\U4e8b\U60c5";
     };
     "qrcode_domain_whitelist" =     (
     "aweme.snssdk.com",
     "www.douyin.com",
     "www.snssdk.com",
     "www.tiktokv.com",
     "www.amemv.com",
     "www.tiktok.com",
     "www.iesdouyin.com",
     "www.douyinact.com",
     "www.douyinact.net",
     "www.iesdouyin.net",
     "www.douyincdn.com",
     "www.douyinvideo.net",
     "www.douyinshortvideo.com",
     "www.douyinclips.com",
     "www.douyinmusicvideo.com",
     "www.douyinmusicclips.com",
     "www.dymusictape.com",
     "www.dyvideotape.com",
     "www.dyshortvideo.com",
     "www.dymusicvideo.com",
     "www.musical.ly",
     "www.direct.ly",
     "www.directly.im",
     "www.honeypomelo.in",
     "www.livelycdn.com",
     "www.miumiu.io",
     "www.miumiu.lol",
     "www.musapi.cc",
     "www.muscdn.com",
     "www.muscdn.net",
     "www.muscdn.org",
     "www.muser.me",
     "www.musicallycdn.com",
     "www.musinc.io",
     "www.pingpong.ly",
     "www.pomelo.im",
     "www.squadapp.im",
     "www.zhiliaoapp.com",
     "www.musemuse.cn",
     "www.mymuse.com.cn"
     );
     "react_mic_status" = 1;
     "record_bitrate_mode" = 1;
     "red_packet_retry_interval" = 300;
     "red_packet_retry_max" = 3;
     "refresh_available" = 0;
     "refresh_feed_del_history" = 1;
     "refresh_zhima" = 0;
     "search_carousel_intervals" = 5;
     "search_tab" =     (
     general,
     video,
     user,
     music,
     challenge,
     poi
     );
     "search_trend_banner_url" =     {
     uri = da670001b22c5c5b029e;
     "url_list" =         (
     "https://p1-dy.bytecdn.cn/obj/da670001b22c5c5b029e",
     "https://p3-dy.bytecdn.cn/obj/da670001b22c5c5b029e",
     "https://pb3.pstatp.com/obj/da670001b22c5c5b029e"
     );
     };
     "self_see_not_share" = "\U5206\U4eab\U5931\U8d25\Uff0c\U8be6\U60c5\U8bf7\U67e5\U770b\U7cfb\U7edf\U901a\U77e5";
     "self_see_watermark_switch" = 1;
     "settings_request_interval" = 30;
     "share_direct_with_pic" = 1;
     "share_h5_url_whitelist" =     (
     "dymusictape.com",
     "dymusicvideo.com",
     "dyshortvideo.com",
     "dyvideotape.com",
     "douyinclips.com",
     "douyinmusicclips.com",
     "douyinmusicvideo.com",
     "douyinshortvideo.com",
     "douyinvideo.net",
     "iesdouyin.com",
     "douyinact.net",
     "douyinact.com",
     "iesdouyin.net",
     "douyincdn.com",
     "douyin.com",
     "snssdk.com",
     "amemv.com",
     "toutiaoshipin.com",
     "jinritoutiao.bj.cn",
     "jinritoutiao.com",
     "jinritoutiao.js.cn",
     "toutiao.com.hk",
     "toutiao.com.tw",
     "toutiao.org",
     "toutiao11.com",
     "toutiao12.com",
     "toutiao13.com",
     "toutiaocdn.cn",
     "toutiaocdn.com",
     "toutiaocdn.net",
     "toutiaocloud.com",
     "toutiaoimg.cn",
     "toutiaoimg.com",
     "toutiaoimg.net",
     "toutiaoribao.cn",
     "toutiao.com",
     "toutiaopage.com",
     "snssdk.com",
     "pstatp.com",
     "jinritoutiao.fj.cn",
     "jinritoutiao.sh.cn",
     "jinritoutiao.tj.cn",
     "jinritoutiao.xz.cn",
     "toutiaocloud.cn",
     "toutiaocloud.net",
     "toutiao-corp.cn",
     "toutiao-corp.com",
     "toutiaoinc.cn",
     "toutiao-inc.cn",
     "toutiaoinc.com",
     "toutiao-inc.com",
     "toutiaoinc.net",
     "toutiao-inc.net",
     "itoutiao.com.cn",
     "itoutiao.net",
     "jinritoutiao.gd.cn",
     "microtoutiao.com",
     "shangtoutiao.com",
     "toutiao.tv",
     "toutiao14.com",
     "toutiao15.com",
     "toutiao16.com",
     "toutiao17.com",
     "toutiao18.com",
     "toutiao19.com",
     "toutiao20.com",
     "toutiao21.com",
     "toutiao22.com",
     "toutiao23.com",
     "toutiao25.com",
     "toutiao26.com",
     "toutiao27.com",
     "toutiao29.com",
     "toutiao30.com",
     "toutiao31.com",
     "toutiao32.com",
     "toutiao33.com",
     "toutiao34.com",
     "toutiao35.com",
     "toutiao36.com",
     "toutiao37.com",
     "toutiao38.com",
     "toutiao39.com",
     "toutiao40.com",
     "toutiao41.com",
     "toutiao42.com",
     "toutiao43.com",
     "toutiao44.com",
     "toutiao45.com",
     "toutiao46.com",
     "toutiao47.com",
     "toutiao48.com",
     "toutiao49.com",
     "toutiao50.com",
     "toutiao51.com",
     "toutiao52.com",
     "toutiao53.com",
     "toutiao54.com",
     "toutiao55.com",
     "toutiao57.com",
     "toutiao59.com",
     "toutiao60.com",
     "toutiao61.com",
     "toutiao62.com",
     "toutiao63.com",
     "toutiao64.com",
     "toutiaohao.cn",
     "toutiaohao.com",
     "toutiaohao.com.cn",
     "toutiaohao.net",
     "toutiaoribao.net",
     "toutiaoshipin.cn"
     );
     "share_platforms" =     (
     {
     "command_msg" = "";
     "notice_msg_pre" = "";
     "notify_msg" = "";
     "platform_id" = "chat_merge";
     "platform_name" = "\U7ad9\U5185\U597d\U53cb";
     "share_mode" = 1;
     "toast_msg" = "";
     },
     {
     "command_msg" = "";
     "notice_msg_pre" = "\U817e\U8baf\U4ee5\U201c\U4e92\U8054\U7f51\U77ed\U89c6\U9891\U6574\U6cbb\U201d\U4e3a\U7406\U7531\Uff0c\U5c4f\U853d\U4e86\U60a8\U8981\U5206\U4eab\U7684\U6296\U97f3\U94fe\U63a5\U3002\n\n\U9700\U8981\U60a8\U4e0a\U4f20\U89c6\U9891\U624d\U80fd\U5206\U4eab\U3002";
     "notify_msg" = "\U817e\U8baf\U4ee5\U201c\U4e92\U8054\U7f51\U77ed\U89c6\U9891\U6574\U6cbb\U201d\U4e3a\U7406\U7531\Uff0c\U5c4f\U853d\U4e86\U60a8\U8981\U5206\U4eab\U7684\U6296\U97f3\U94fe\U63a5\U3002\n\n\U9700\U8981\U60a8\U4e0a\U4f20\U89c6\U9891\U624d\U80fd\U5206\U4eab\U3002";
     "platform_id" = "weixin_moments";
     "platform_name" = "\U670b\U53cb\U5708";
     "share_mode" = 3;
     "toast_msg" = "\U5df2\U4fdd\U5b58\U5230\U76f8\U518c\Uff0c\U8bf7\U5230\U670b\U53cb\U5708\U4e0a\U4f20";
     },
     {
     "command_msg" = "";
     "notice_msg_pre" = "\U817e\U8baf\U4ee5\U201c\U4e92\U8054\U7f51\U77ed\U89c6\U9891\U6574\U6cbb\U201d\U4e3a\U7406\U7531\Uff0c\U5c4f\U853d\U4e86\U60a8\U8981\U5206\U4eab\U7684\U6296\U97f3\U94fe\U63a5\U3002\n\n\U9700\U8981\U60a8\U4e0a\U4f20\U89c6\U9891\U624d\U80fd\U5206\U4eab\U3002";
     "notify_msg" = "\U817e\U8baf\U4ee5\U201c\U4e92\U8054\U7f51\U77ed\U89c6\U9891\U6574\U6cbb\U201d\U4e3a\U7406\U7531\Uff0c\U5c4f\U853d\U4e86\U60a8\U8981\U5206\U4eab\U7684\U6296\U97f3\U94fe\U63a5\U3002\n\n\U9700\U8981\U60a8\U4e0a\U4f20\U89c6\U9891\U624d\U80fd\U5206\U4eab\U3002";
     "platform_id" = weixin;
     "platform_name" = "\U5fae\U4fe1";
     "share_mode" = 3;
     "toast_msg" = "\U5df2\U4fdd\U5b58\U5230\U76f8\U518c\Uff0c\U8bf7\U5230\U5fae\U4fe1\U4e0a\U4f20";
     },
     {
     "command_msg" = "";
     "notice_msg_pre" = "\U817e\U8baf\U4ee5\U201c\U4e92\U8054\U7f51\U77ed\U89c6\U9891\U6574\U6cbb\U201d\U4e3a\U7406\U7531\Uff0c\U5c4f\U853d\U4e86\U60a8\U8981\U5206\U4eab\U7684\U6296\U97f3\U94fe\U63a5\U3002\n\n\U9700\U8981\U60a8\U4e0a\U4f20\U89c6\U9891\U624d\U80fd\U5206\U4eab\U3002";
     "notify_msg" = "\U817e\U8baf\U4ee5\U201c\U4e92\U8054\U7f51\U77ed\U89c6\U9891\U6574\U6cbb\U201d\U4e3a\U7406\U7531\Uff0c\U5c4f\U853d\U4e86\U60a8\U8981\U5206\U4eab\U7684\U6296\U97f3\U94fe\U63a5\U3002\n\n\U9700\U8981\U60a8\U4e0a\U4f20\U89c6\U9891\U624d\U80fd\U5206\U4eab\U3002";
     "platform_id" = qzone;
     "platform_name" = "QQ\U7a7a\U95f4";
     "share_mode" = 3;
     "toast_msg" = "\U5df2\U4fdd\U5b58\U5230\U76f8\U518c\Uff0c\U8bf7\U5230QQ\U7a7a\U95f4\U4e0a\U4f20";
     },
     {
     "command_msg" = "";
     "notice_msg_pre" = "\U817e\U8baf\U4ee5\U201c\U4e92\U8054\U7f51\U77ed\U89c6\U9891\U6574\U6cbb\U201d\U4e3a\U7406\U7531\Uff0c\U5c4f\U853d\U4e86\U60a8\U8981\U5206\U4eab\U7684\U6296\U97f3\U94fe\U63a5\U3002\n\n\U9700\U8981\U60a8\U4e0a\U4f20\U89c6\U9891\U624d\U80fd\U5206\U4eab\U3002";
     "notify_msg" = "\U817e\U8baf\U4ee5\U201c\U4e92\U8054\U7f51\U77ed\U89c6\U9891\U6574\U6cbb\U201d\U4e3a\U7406\U7531\Uff0c\U5c4f\U853d\U4e86\U60a8\U8981\U5206\U4eab\U7684\U6296\U97f3\U94fe\U63a5\U3002\n\n\U9700\U8981\U60a8\U4e0a\U4f20\U89c6\U9891\U624d\U80fd\U5206\U4eab\U3002";
     "platform_id" = qq;
     "platform_name" = QQ;
     "share_mode" = 3;
     "toast_msg" = "\U5df2\U4fdd\U5b58\U5230\U76f8\U518c\Uff0c\U8bf7\U5230QQ\U4e0a\U4f20";
     },
     {
     "command_msg" = "";
     "notice_msg_pre" = "";
     "notify_msg" = "";
     "platform_id" = toutiao;
     "platform_name" = "\U5934\U6761";
     "share_mode" = 1;
     "toast_msg" = "";
     },
     {
     "command_msg" = "";
     "notice_msg_pre" = "\U6210\U529f\U4fdd\U5b58\U5230\U7cfb\U7edf\U76f8\U518c\Uff0c\U8bf7\U5230\U5fae\U535a\U4e0a\U4f20\U89c6\U9891";
     "notify_msg" = "\U6210\U529f\U4fdd\U5b58\U5230\U7cfb\U7edf\U76f8\U518c\Uff0c\U8bf7\U5230\U5fae\U535a\U4e0a\U4f20\U89c6\U9891";
     "platform_id" = weibo;
     "platform_name" = "\U5fae\U535a";
     "share_mode" = 3;
     "toast_msg" = "";
     },
     {
     "command_msg" = "";
     "notice_msg_pre" = "\U6210\U529f\U4fdd\U5b58\U5230\U7cfb\U7edf\U76f8\U518c\Uff0c\U8bf7\U5230Instagram\U4e0a\U4f20\U89c6\U9891";
     "notify_msg" = "\U6210\U529f\U4fdd\U5b58\U5230\U7cfb\U7edf\U76f8\U518c\Uff0c\U8bf7\U5230Instagram\U4e0a\U4f20\U89c6\U9891";
     "platform_id" = instagram;
     "platform_name" = Instagram;
     "share_mode" = 1;
     "toast_msg" = "";
     },
     {
     "command_msg" = "";
     "notice_msg_pre" = "";
     "notify_msg" = "";
     "platform_id" = more;
     "platform_name" = "\U66f4\U591a\U5206\U4eab";
     "share_mode" = 1;
     "toast_msg" = "";
     }
     );
     "share_url_whitelist" =     {
     "long_whitelist" =         (
     "iesdouyin.com",
     "www.douyin.com",
     "www.amemv.com",
     "www.iesdouyin.com",
     "www.douyinshortvideo.com"
     );
     "short_whitelist" =         (
     "v.douyin.com",
     "v16.tiktokv.com",
     "vt.tiktok.com",
     "v16.musical.ly",
     "vm.tiktok.com"
     );
     };
     "shield_music_field" =     (
     );
     "shield_music_sdk" = 1;
     shopping =     {
     "add_shop_url" = "https://aweme.snssdk.com/falcon/douyin_falcon/business/goods_240/";
     "buyer_orders_url" = "https://haohuo.snssdk.com/views/order/center?origin_type=1002003000&origin_id=0";
     "edit_draft_url" = "https://aweme.snssdk.com/falcon/douyin_falcon/business/goods_240/";
     "edit_shop_url" = "https://aweme.snssdk.com/falcon/douyin_falcon/business/goodsEdit_240/";
     enable = 1;
     "enable_user" = 1;
     "max_bindings" = 3;
     "seller_orders_url" = "https://lianmeng.snssdk.com/home/index";
     "use_taobao" = 0;
     };
     "show_blank" = 1;
     "show_block" = 1;
     "show_creator_license_230" =     {
     show = 0;
     };
     "show_prevent_download" = 0;
     sp =     {
     estr = a3668f0afac72ca3f6c1697d29e0e1bb1fef4ab0285319b95ac39fa42c38d05f;
     };
     "star_billboard_rule_url" = "https://aweme.snssdk.com/falcon/douyin_falcon/rule/star/";
     "status_code" = 0;
     "sticker_artist_entry" = 1;
     "sticker_artist_url" = "https://aweme.snssdk.com/magic/runtime/?id=2263";
     "sync_to_toutiao" = 1;
     "sync_to_toutiao_url" = "https://i.snssdk.com/user/profile/influence/v1/?app_id=1128#tt_daymode=0";
     "test_device_type" = "iPhone9,2";
     "test_dict" =     (
     );
     "test_lucky_money" = 0;
     "test_region" = CN;
     "test_settings" = 0;
     "third_login_bind_settings" =     {
     "login_jump" =         (
     {
     "jump_type" = 0;
     "jump_url" = "";
     "login_platform" = 4;
     },
     {
     "jump_type" = 0;
     "jump_url" = "";
     "login_platform" = 5;
     },
     {
     "jump_type" = 0;
     "jump_url" = "";
     "login_platform" = 6;
     }
     );
     "other_bind_window" =         (
     {
     "bind_desc" = "\U53d7\U7b2c\U4e09\U65b9\U6e20\U9053\U5f71\U54cd\Uff0c\U60a8\U65e0\U6cd5\U518d\U901a\U8fc7QQ\U767b\U5f55\U6296\U97f3\Uff0c\U4e3a\U9632\U6b62\U8d26\U53f7\U4e22\U5931\Uff0c\U5efa\U8bae\U60a8\U7ed1\U5b9a\U624b\U673a\U53f7";
     "bind_title" = "\U7ed1\U5b9a\U624b\U673a\U53f7, \U4fdd\U62a4\U8d26\U53f7\U5b89\U5168";
     interval = 60;
     "login_platform" = 4;
     "open_window" = 0;
     "total_times" = 3;
     },
     {
     "bind_desc" = "\U53d7\U7b2c\U4e09\U65b9\U6e20\U9053\U5f71\U54cd\Uff0c\U60a8\U65e0\U6cd5\U518d\U901a\U8fc7\U5fae\U4fe1\U767b\U5f55\U6296\U97f3\Uff0c\U4e3a\U9632\U6b62\U8d26\U53f7\U4e22\U5931\Uff0c\U5efa\U8bae\U60a8\U7ed1\U5b9a\U624b\U673a\U53f7";
     "bind_title" = "\U7ed1\U5b9a\U624b\U673a\U53f7, \U4fdd\U62a4\U8d26\U53f7\U5b89\U5168";
     interval = 60;
     "login_platform" = 5;
     "open_window" = 0;
     "total_times" = 3;
     },
     {
     "bind_desc" = "\U53d7\U7b2c\U4e09\U65b9\U6e20\U9053\U5f71\U54cd\Uff0c\U60a8\U65e0\U6cd5\U518d\U901a\U8fc7\U65b0\U6d6a\U767b\U5f55\U6296\U97f3\Uff0c\U4e3a\U9632\U6b62\U8d26\U53f7\U4e22\U5931\Uff0c\U5efa\U8bae\U60a8\U7ed1\U5b9a\U624b\U673a\U53f7";
     "bind_title" = "\U7ed1\U5b9a\U624b\U673a\U53f7, \U4fdd\U62a4\U8d26\U53f7\U5b89\U5168";
     interval = 60;
     "login_platform" = 6;
     "open_window" = 0;
     "total_times" = 3;
     }
     );
     "profile_bind_window" =         (
     {
     "bind_desc" = "\U7ed1\U5b9a\U624b\U673a\U53f7\U53ef\U9632\U6b62\U8d26\U53f7\U88ab\U76d7, \U540c\U65f6\U4eab\U53d7\U66f4\U591a\U670d\U52a1";
     "bind_title" = "\U7ed1\U5b9a\U624b\U673a\U53f7";
     interval = 172800;
     "login_platform" = 4;
     "open_window" = 1;
     "total_times" = 3;
     },
     {
     "bind_desc" = "\U7ed1\U5b9a\U624b\U673a\U53f7\U53ef\U9632\U6b62\U8d26\U53f7\U88ab\U76d7, \U540c\U65f6\U4eab\U53d7\U66f4\U591a\U670d\U52a1";
     "bind_title" = "\U7ed1\U5b9a\U624b\U673a\U53f7";
     interval = 172800;
     "login_platform" = 5;
     "open_window" = 1;
     "total_times" = 3;
     },
     {
     "bind_desc" = "\U7ed1\U5b9a\U624b\U673a\U53f7\U53ef\U9632\U6b62\U8d26\U53f7\U88ab\U76d7, \U540c\U65f6\U4eab\U53d7\U66f4\U591a\U670d\U52a1";
     "bind_title" = "\U7ed1\U5b9a\U624b\U673a\U53f7";
     interval = 172800;
     "login_platform" = 6;
     "open_window" = 1;
     "total_times" = 3;
     }
     );
     };
     "third_login_bind_window" = "<null>";
     "tt_device_info_collect_controller" =     {
     "device_info_switch" = 1;
     riskapp =         {
     };
     riskdir =         {
     };
     sensitive =         {
     bssid = 1;
     name = 1;
     ssid = 1;
     };
     whiteapp =         {
     };
     };
     "ttnet_route" = 0;
     "ttplayer_buffer_duration_switch" = 1000;
     ttregion = 0;
     "upload_contacts_policy_caption" = "\U53d1\U73b0\U901a\U8baf\U5f55\U597d\U53cb";
     "upload_contacts_policy_interval" = 0;
     "upload_contacts_policy_pic" = "https://p1.pstatp.com/obj/887a001320efd10f757d";
     "upload_contacts_policy_text" = "\U540c\U6b65\U901a\U8baf\U5f55\Uff0c\U770b\U770b\U6709\U54ea\U4e9b\U8054\U7cfb\U4eba\U5728\U4f7f\U7528\U6296\U97f3";
     "upload_contacts_policy_times" = 0;
     "upload_origin_audio_track" = 1;
     "use_chrome_net" = 0;
     "use_live_wallpaper" = 1;
     "use_new_account_URL" = 1;
     "use_new_audiovideo_sync" = 0;
     "use_new_ffmpeg" = 0;
     "use_new_sdk" = 1;
     "use_shangtang" = 1;
     "use_ttplayer" = 0;
     "verify_exceed" = 5;
     "video_bitrate" = 4000;
     "video_bitrate_category" =     (
     "2.5",
     "2.5",
     "3.5"
     );
     "video_commit" = 70;
     "video_compose" = 30;
     "video_frame_rate" = 30;
     "video_play_config" = 0;
     "video_quality_category" = "<null>";
     "video_size" = 540x960;
     "video_size_category" =     (
     540x960,
     720x1280,
     720x1280
     );
     "wakeup_weibo_app" = 1;
     "wallet_web_view" = "sslocal://webview?url=https%3A%2F%2Fwallet.snssdk.com%2Fdouyin%2Fpay&title=%E9%92%B1%E5%8C%85&hide_nav_bar=1&hide_status_bar=1";
     "with_commerce_entry" = 0;
     }
     */
}
%end

/********************************************* 发布视频相关 ***************************************/
%hook AWEVideoNewPublishViewController

- (void)_publish
{
    %orig;
    
    /*
     STK35 = r7;
     r7 = &arg_C;
     sp = sp - 0x60;
     r11 = self;
     r3 = *___stack_chk_guard;
     arg_5C = r3;
     [AWESecAntiSpam startForScene:@"camera"];
     r10 = @selector(defaultCenter);
     r5 = [[HTSServiceCenter defaultCenter] retain];
     arg_10 = @selector(class);
     [TrackerService class];
     r6 = @selector(getService:);
     r4 = [[r5 getService:r2] retain];
     arg_8 = 0x0;
     asm{ strd       r0, r0, [sp] };
     arg_14 = @selector(trackEvent:label:value:extra:attributes:);
     [r4 trackEvent:@"publish" label:@"submit" value:STK1 extra:STK0 attributes:STK-1];
     [r4 release];
     [r5 release];
     r0 = [NSMutableArray array];
     r7 = r7;
     r8 = [r0 retain];
     if ([r11 shouldSyncToHuoshan] != 0x0) {
     [r8 addObject:@"hotsoon"];
     }
     if ([r11 shouldSyncToToutiao] != 0x0) {
     [r8 addObject:@"toutiao"];
     }
     r4 = [NSString alloc];
     var_0 = 0x0;
     r5 = [[NSJSONSerialization dataWithJSONObject:r8 options:0x0 error:STK-1] retain];
     r4 = [r4 initWithData:r5 encoding:0x4];
     [r5 release];
     r10 = [[HTSServiceCenter defaultCenter] retain];
     [TrackerService class];
     r0 = [r10 getService:r2];
     r7 = r7;
     r6 = [r0 retain];
     arg_4C = @"to_app";
     r0 = r8;
     arg_10 = r8;
     r8 = 0x0;
     r0 = [r0 count];
     r2 = NSNumber;
     arg_C = r4;
     asm{ it         ne };
     if (r0 != 0x0) {
     }
     asm{ strdne     r0, r3, [sp, #0x50] };
     r4 = [[r2 numberWithInt:0x0] retain];
     var_0 = 0x2;
     arg_58 = r4;
     r5 = [[NSDictionary dictionaryWithObjects:&arg_54 forKeys:&arg_4C count:STK-1] retain];
     arg_8 = r5;
     asm{ strd       r8, r8, [sp] };
     [r6 trackEvent:r2 label:STK3 value:STK31 extra:STK30 attributes:STK29];
     [r5 release];
     [r4 release];
     [r6 release];
     [r10 release];
     r0 = [r11 buttonSyncToHuoshan];
     r7 = r7;
     r6 = [r0 retain];
     r5 = @selector(isSelected);
     r0 = [r6 isSelected];
     asm{ it         eq };
     if (r0 == 0x0) {
     }
     r4 = @selector(saveUserRelatedBool:forKey:);
     [r11 saveUserRelatedBool:r2 forKey:STK3];
     [r6 release];
     r0 = [r11 buttonSyncToToutiao];
     r7 = r7;
     r0 = [r0 retain];
     r6 = r0;
     r0 = [r0 isSelected];
     COND = r0 != 0x0;
     r0 = r11;
     asm{  };
     if (!COND) {
     }
     [r0 saveUserRelatedBool:r2 forKey:STK3];
     [r6 release];
     r0 = [AWEStorage studioStorage];
     r7 = r7;
     r4 = [r0 retain];
     [r4 setBool:0x1 forKey:@"AWETargetUserAlreadyShowSyncToutiaoKey"];
     [r4 release];
     if (sub_1c10dc8() != 0x0) {
     asm{ strdeq     r3, r8, [sp, #0x38] };
     r8 = *_NSConcreteStackBlock;
     asm{ strd       r1, r2, [sp, #0x40] };
     arg_48 = r11;
     arg_34 = r8;
     r6 = objc_retainBlock(&arg_34);
     r0 = [r11 buttonSaveAlbum];
     r0 = [r0 retain];
     r4 = r0;
     r5 = [r0 isSelected];
     [r4 release];
     r0 = [PHPhotoLibrary authorizationStatus];
     if ((r5 == 0x0) || (r0 != 0x0)) {
     r1 = *(r6 + 0xc);
     (r1)(r6, r1);
     }
     else {
     r8 = *_NSConcreteStackBlock;
     arg_1C = 0xc2000000;
     r4 = AWEDeviceManager;
     asm{ stm.w      r3, {r0, r1, r2, r11} };
     arg_18 = r8;
     r0 = [r6 retain];
     arg_30 = r0;
     [r4 requestPhotoLibraryPermission:&arg_18];
     [arg_30 release];
     }
     asm{ ldrd       r5, r4, [sp, #0xc] };
     [r6 release];
     }
     else {
     [AWETapticEngineManager notifyFailure];
     [AWEToast show:cfstring_S_MRQ____N_S_u];
     asm{ ldrd       r5, r4, [sp, #0xc] };
     }
     [r5 release];
     [r4 release];
     r1 = *___stack_chk_guard;
     asm{ ittt       eq };
     if (r1 == arg_5C) {
     }
     if (CPU_FLAGS & NE) {
     Pop();
     Pop();
     Pop();
     }
     if (CPU_FLAGS & NE) {
     return;
     }
     r0 = __stack_chk_fail();
     return;
     */
}

%end

%hook HTSServiceCenter

- (id)getService:(id)obj
{
    id service = %orig;
    return service;
}

%end

// 里面封装了用户操作的一些接口，比如:点赞、关注
%hook AWEUserService

%end

%hook TrackerService

- (void)trackEvent:(id)arg2 label:(id)arg3 value:(id)arg4 extra:(id)arg5 attributes:(id)arg6
{
    %orig;
}

%end

%hook AWEPublishResultHandler
- (void)taskDidAppend:(id)arg2
{
    
    %orig;
}

- (void)task:(id)arg2 didFinishWithResult:(id)arg3 error:(id)arg4
{
    %orig;
}

%end

// 发布视频
%hook AWEVideoPublishNormalTask
- (void)postAweme:(id)arg2
{
    %orig;
}

%end

%hook AWEFilePublisherFactory
+ (id)publisherForResourceType:(id)arg2 resourceURL:(id)arg3 publishViewModel:(id)arg4
{
    %orig;
}

%end

%hook AWEVideoPublishManager

+ (id)sharedInstance
{
    id _instance = %orig;
    return _instance;
}

+ (id)requestVideoUploadURLWithParameters:(id)arg2 completion:(id)arg3
{
//    r8 = [arg2 retain];
//    r6 = [arg3 retain];
//    r10 = [[NSString stringWithFormat:@"%@/aweme/v1/create/video/", @"https://aweme.snssdk.com"] retain];
//    r5 = [AWEVideoPublishResponseModel class];
//    r0 = *_NSConcreteStackBlock;
//    arg_8 = r0;
//    arg_C = 0xc2000000;
//    arg_10 = 0x0;
//    asm{ strd       r2, r0, [sp, #0x14] };
//    arg_1C = r6;
//    r6 = [r6 retain];
//    asm{ strd       r5, r0, [sp] };
//    r0 = [AWENetworkService getWithURLString:r10 params:r8 modelClass:STK0 completion:STK-1];
//    return r0;
    
    id obj = %orig;
    return obj;
}

+ (id)requestUploadParametersWithCompletion:(id)arg2
{
    id obj = %orig;
    return obj;
}

+ (id)requestUploadParametersWithParameters:(id)arg2 completion:(id)arg3
{
//    r8 = [arg2 retain];
//    r6 = [arg3 retain];
//    r10 = [[NSString stringWithFormat:@"%@/aweme/v1/upload/authkey/", @"https://aweme.snssdk.com"] retain];
//    r5 = [AWEResourceUploadParametersResponseModel class];
//    r0 = *_NSConcreteStackBlock;
//    arg_8 = r0;
//    arg_C = 0xc2000000;
//    arg_10 = 0x0;
//    asm{ strd       r2, r0, [sp, #0x14] };
//    arg_1C = r6;
//    r6 = [r6 retain];
//    asm{ strd       r5, r0, [sp] };
//    r0 = [AWENetworkService postWithURLString:r10 params:r8 modelClass:STK0 completion:STK-1];
//    return r0;
    id obj = %orig;
    return obj;
}

+ (id)requestVideoUrlWithVideoId:(id)arg2 completion:(id)arg3
{
//    arg_8 = [arg2 retain];
//    r6 = [arg3 retain];
//    r11 = [[NSString stringWithFormat:@"%@/aweme/v1/sign/gain/url/", @"https://aweme.snssdk.com"] retain];
//    asm{ strd       r3, r5, [sp, #0xc] };
//    var_0 = 0x1;
//    r4 = [[NSDictionary dictionaryWithObjects:(sp - 0x2c) + 0x10 forKeys:(sp - 0x2c) + 0xc count:STK-1] retain];
//    [AWEGetVideoUrlResponse class];
//    arg_14 = *_NSConcreteStackBlock;
//    arg_18 = 0xc2000000;
//    arg_1C = 0x0;
//    arg_20 = 0x232ade9;
//    asm{ strd       r0, r6, [sp, #0x24] };
//    r6 = [r6 retain];
//    asm{ strd       r5, r0, [sp] };
//    r0 = [AWENetworkService getWithURLString:r11 params:r4 modelClass:STK0 completion:STK-1];
//    return r0;
    id obj = %orig;
    return obj;
}

+ (id)uploadVideo:(id)arg2 uploadURL:(id)arg3 headerField:(id)arg4 parameters:(id)arg5 timeout:(id)arg6 progress:(id)arg7 completion:(id)arg8
{
//    arg_20 = AWENetworkService;
//    [AWEBaseTTApiModel class];
//    arg_2C = *_NSConcreteStackBlock;
//    arg_10 = @"file";
//    r0 = [AWENetworkService uploadWithURLString:arg_28 params:r8 headerField:STK5 timeout:STK4 fileURL:STK3 fileName:STK2 progress:STK1 modelClass:STK0 completion:STK-1];
//    return r0;
    id obj = %orig;
    return obj;
}

+ (id)publishAweme:(id)arg2 completion:(id)arg3
{
    id obj = %orig;
    return obj;
}

+ (id)publishPhotoAweme:(id)arg2 completion:(id)arg3
{
    id obj = %orig;
    return obj;
}

%end

/// 上传视频的类
%hook AWENetworkService
+ (id)uploadWithURLString:(id)arg1 parameters:(id)arg2 headerField:(id)arg3 timeout:(double)arg4 constructingBodyWithBlock:(id)arg5 progress:(id *)arg6 needcommonParams:(_Bool)arg7 modelClass:(Class)arg8 callback:(id)arg9 {
    id obj = %orig;
    return obj;
}
+ (id)uploadWithURLString:(id)arg1 params:(id)arg2 headerField:(id)arg3 timeout:(double)arg4 fileURL:(id)arg5 fileName:(id)arg6 progress:(id *)arg7 modelClass:(Class)arg8 completion:(id)arg9 {
    id obj = %orig;
    return obj;
}
%end
