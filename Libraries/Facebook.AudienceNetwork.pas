unit Facebook.AudienceNetwork;

interface

uses
  Androidapi.JNIBridge,
  Androidapi.JNI.App,
  Androidapi.JNI.GraphicsContentViewText,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.Net,
  Androidapi.JNI.Os,
  Androidapi.JNI.Util,
  Androidapi.JNI.Widget;

type
// ===== Forward declarations =====

  JAnimator = interface;//android.animation.Animator
  JAnimator_AnimatorListener = interface;//android.animation.Animator$AnimatorListener
  JAnimator_AnimatorPauseListener = interface;//android.animation.Animator$AnimatorPauseListener
  JKeyframe = interface;//android.animation.Keyframe
  JLayoutTransition = interface;//android.animation.LayoutTransition
  JLayoutTransition_TransitionListener = interface;//android.animation.LayoutTransition$TransitionListener
  JPropertyValuesHolder = interface;//android.animation.PropertyValuesHolder
  JStateListAnimator = interface;//android.animation.StateListAnimator
  JTimeInterpolator = interface;//android.animation.TimeInterpolator
  JTypeConverter = interface;//android.animation.TypeConverter
  JTypeEvaluator = interface;//android.animation.TypeEvaluator
  JValueAnimator = interface;//android.animation.ValueAnimator
  JValueAnimator_AnimatorUpdateListener = interface;//android.animation.ValueAnimator$AnimatorUpdateListener
  JPathMotion = interface;//android.transition.PathMotion
  JScene = interface;//android.transition.Scene
  JTransition = interface;//android.transition.Transition
  JTransition_EpicenterCallback = interface;//android.transition.Transition$EpicenterCallback
  JTransition_TransitionListener = interface;//android.transition.Transition$TransitionListener
  JTransitionManager = interface;//android.transition.TransitionManager
  JTransitionPropagation = interface;//android.transition.TransitionPropagation
  JTransitionValues = interface;//android.transition.TransitionValues
  JInterpolator = interface;//android.view.animation.Interpolator
  JToolbar_LayoutParams = interface;//android.widget.Toolbar$LayoutParams
  Jfacebook_ads_AdListener = interface;//com.facebook.ads.AdListener
  JAbstractAdListener = interface;//com.facebook.ads.AbstractAdListener
  Jfacebook_ads_Ad = interface;//com.facebook.ads.Ad
  JAdChoicesView = interface;//com.facebook.ads.AdChoicesView
  JAdError = interface;//com.facebook.ads.AdError
  JAdNativeComponentView = interface;//com.facebook.ads.internal.api.AdNativeComponentView
  JMediaView = interface;//com.facebook.ads.MediaView
  JAdIconView = interface;//com.facebook.ads.AdIconView
  JAdComponentView = interface;//com.facebook.ads.internal.api.AdComponentView
  JAdOptionsView = interface;//com.facebook.ads.AdOptionsView
  JAdOptionsView_Orientation = interface;//com.facebook.ads.AdOptionsView$Orientation
  JAdSettings = interface;//com.facebook.ads.AdSettings
  JAdSettings_IntegrationErrorMode = interface;//com.facebook.ads.AdSettings$IntegrationErrorMode
  JAdSettings_MultiprocessSupportMode = interface;//com.facebook.ads.AdSettings$MultiprocessSupportMode
  JAdSettings_TestAdType = interface;//com.facebook.ads.AdSettings$TestAdType
  Jfacebook_ads_AdSize = interface;//com.facebook.ads.AdSize
  Jfacebook_ads_AdView = interface;//com.facebook.ads.AdView
  JAdViewParentApi = interface;//com.facebook.ads.internal.api.AdViewParentApi
  JAdView_1 = interface;//com.facebook.ads.AdView$1
  JAudienceNetworkActivity = interface;//com.facebook.ads.AudienceNetworkActivity
  JAudienceNetworkActivityApi = interface;//com.facebook.ads.internal.api.AudienceNetworkActivityApi
  JAudienceNetworkActivity_1 = interface;//com.facebook.ads.AudienceNetworkActivity$1
  JAudienceNetworkAds = interface;//com.facebook.ads.AudienceNetworkAds
  JAudienceNetworkAds_AdFormat = interface;//com.facebook.ads.AudienceNetworkAds$AdFormat
  JAudienceNetworkAds_InitListener = interface;//com.facebook.ads.AudienceNetworkAds$InitListener
  JAudienceNetworkAds_InitResult = interface;//com.facebook.ads.AudienceNetworkAds$InitResult
  JAudienceNetworkAds_InitSettingsBuilder = interface;//com.facebook.ads.AudienceNetworkAds$InitSettingsBuilder
  JAudienceNetworkContentProvider = interface;//com.facebook.ads.AudienceNetworkContentProvider
  JBidderTokenProvider = interface;//com.facebook.ads.BidderTokenProvider
  Jads_BuildConfig = interface;//com.facebook.ads.BuildConfig
  JCacheFlag = interface;//com.facebook.ads.CacheFlag
  JMediaViewVideoRenderer = interface;//com.facebook.ads.MediaViewVideoRenderer
  JDefaultMediaViewVideoRenderer = interface;//com.facebook.ads.DefaultMediaViewVideoRenderer
  JExtraHints = interface;//com.facebook.ads.ExtraHints
  JExtraHints_1 = interface;//com.facebook.ads.ExtraHints$1
  JExtraHints_Builder = interface;//com.facebook.ads.ExtraHints$Builder
  JExtraHints_HintType = interface;//com.facebook.ads.ExtraHints$HintType
  JExtraHints_Keyword = interface;//com.facebook.ads.ExtraHints$Keyword
  JInstreamVideoAdListener = interface;//com.facebook.ads.InstreamVideoAdListener
  JInstreamVideoAdView = interface;//com.facebook.ads.InstreamVideoAdView
  Jfacebook_ads_InterstitialAd = interface;//com.facebook.ads.InterstitialAd
  JInterstitialAdListener = interface;//com.facebook.ads.InterstitialAdListener
  JInterstitialAdExtendedListener = interface;//com.facebook.ads.InterstitialAdExtendedListener
  JMediaViewParentApi = interface;//com.facebook.ads.internal.api.MediaViewParentApi
  JMediaView_1 = interface;//com.facebook.ads.MediaView$1
  JMediaViewListener = interface;//com.facebook.ads.MediaViewListener
  JMediaViewVideoRendererWithBackgroundPlayback = interface;//com.facebook.ads.MediaViewVideoRendererWithBackgroundPlayback
  JNativeAdBase = interface;//com.facebook.ads.NativeAdBase
  JNativeAd = interface;//com.facebook.ads.NativeAd
  JNativeAd_AdCreativeType = interface;//com.facebook.ads.NativeAd$AdCreativeType
  JNativeAdBase_Image = interface;//com.facebook.ads.NativeAdBase$Image
  JNativeAdBase_MediaCacheFlag = interface;//com.facebook.ads.NativeAdBase$MediaCacheFlag
  JNativeAdBase_NativeAdLoadConfigBuilder = interface;//com.facebook.ads.NativeAdBase$NativeAdLoadConfigBuilder
  JNativeAdBase_NativeComponentTag = interface;//com.facebook.ads.NativeAdBase$NativeComponentTag
  JNativeAdBase_Rating = interface;//com.facebook.ads.NativeAdBase$Rating
  JNativeAdLayout = interface;//com.facebook.ads.NativeAdLayout
  JNativeAdListener = interface;//com.facebook.ads.NativeAdListener
  JNativeAdScrollView = interface;//com.facebook.ads.NativeAdScrollView
  JNativeAdScrollView_AdViewProvider = interface;//com.facebook.ads.NativeAdScrollView$AdViewProvider
  JNativeAdView = interface;//com.facebook.ads.NativeAdView
  JNativeAdView_Type = interface;//com.facebook.ads.NativeAdView$Type
  JNativeAdViewAttributes = interface;//com.facebook.ads.NativeAdViewAttributes
  JNativeAdsManager = interface;//com.facebook.ads.NativeAdsManager
  JNativeAdsManager_Listener = interface;//com.facebook.ads.NativeAdsManager$Listener
  JNativeBannerAd = interface;//com.facebook.ads.NativeBannerAd
  JNativeBannerAdView = interface;//com.facebook.ads.NativeBannerAdView
  JNativeBannerAdView_Type = interface;//com.facebook.ads.NativeBannerAdView$Type
  JRewardData = interface;//com.facebook.ads.RewardData
  JRewardedAdListener = interface;//com.facebook.ads.RewardedAdListener
  JRewardedVideoAd = interface;//com.facebook.ads.RewardedVideoAd
  JRewardedVideoAdListener = interface;//com.facebook.ads.RewardedVideoAdListener
  JRewardedVideoAdExtendedListener = interface;//com.facebook.ads.RewardedVideoAdExtendedListener
  JS2SRewardedVideoAdExtendedListener = interface;//com.facebook.ads.S2SRewardedVideoAdExtendedListener
  JS2SRewardedVideoAdListener = interface;//com.facebook.ads.S2SRewardedVideoAdListener
  JVideoAutoplayBehavior = interface;//com.facebook.ads.VideoAutoplayBehavior
  JVideoStartReason = interface;//com.facebook.ads.VideoStartReason
  JAdChoicesViewApi = interface;//com.facebook.ads.internal.api.AdChoicesViewApi
  JAdComponentViewParentApi = interface;//com.facebook.ads.internal.api.AdComponentViewParentApi
  JAdComponentView_1 = interface;//com.facebook.ads.internal.api.AdComponentView$1
  JAdComponentViewApi = interface;//com.facebook.ads.internal.api.AdComponentViewApi
  JAdComponentViewApiProvider = interface;//com.facebook.ads.internal.api.AdComponentViewApiProvider
  JAdOptionsViewApi = interface;//com.facebook.ads.internal.api.AdOptionsViewApi
  JAdSettingsApi = interface;//com.facebook.ads.internal.api.AdSettingsApi
  JAdSizeApi = interface;//com.facebook.ads.internal.api.AdSizeApi
  JAdViewApi = interface;//com.facebook.ads.internal.api.AdViewApi
  JAdViewConstructorParams = interface;//com.facebook.ads.internal.api.AdViewConstructorParams
  JAdsMessengerServiceApi = interface;//com.facebook.ads.internal.api.AdsMessengerServiceApi
  JAudienceNetworkAdsApi = interface;//com.facebook.ads.internal.api.AudienceNetworkAdsApi
  JBidderTokenProviderApi = interface;//com.facebook.ads.internal.api.BidderTokenProviderApi
  JBuildConfigApi = interface;//com.facebook.ads.internal.api.BuildConfigApi
  JDefaultMediaViewVideoRendererApi = interface;//com.facebook.ads.internal.api.DefaultMediaViewVideoRendererApi
  JInitSettingsBuilder = interface;//com.facebook.ads.internal.api.InitSettingsBuilder
  JInstreamVideoAdViewApi = interface;//com.facebook.ads.internal.api.InstreamVideoAdViewApi
  JInterstitialAdApi = interface;//com.facebook.ads.internal.api.InterstitialAdApi
  JMediaViewApi = interface;//com.facebook.ads.internal.api.MediaViewApi
  JMediaViewVideoRendererApi = interface;//com.facebook.ads.internal.api.MediaViewVideoRendererApi
  JNativeAdApi = interface;//com.facebook.ads.internal.api.NativeAdApi
  JNativeAdBaseApi = interface;//com.facebook.ads.internal.api.NativeAdBaseApi
  JNativeAdImageApi = interface;//com.facebook.ads.internal.api.NativeAdImageApi
  JNativeAdLayoutApi = interface;//com.facebook.ads.internal.api.NativeAdLayoutApi
  JNativeAdRatingApi = interface;//com.facebook.ads.internal.api.NativeAdRatingApi
  JNativeAdScrollViewApi = interface;//com.facebook.ads.internal.api.NativeAdScrollViewApi
  JNativeAdViewApi = interface;//com.facebook.ads.internal.api.NativeAdViewApi
  JNativeAdViewAttributesApi = interface;//com.facebook.ads.internal.api.NativeAdViewAttributesApi
  JNativeAdViewTypeApi = interface;//com.facebook.ads.internal.api.NativeAdViewTypeApi
  JNativeAdsManagerApi = interface;//com.facebook.ads.internal.api.NativeAdsManagerApi
  JNativeBannerAdApi = interface;//com.facebook.ads.internal.api.NativeBannerAdApi
  JNativeBannerAdViewApi = interface;//com.facebook.ads.internal.api.NativeBannerAdViewApi
  JNativeComponentTagApi = interface;//com.facebook.ads.internal.api.NativeComponentTagApi
  JRewardedVideoAdApi = interface;//com.facebook.ads.internal.api.RewardedVideoAdApi
  JBenchmark = interface;//com.facebook.ads.internal.bench.Benchmark
  JBenchmarkLimitsMs = interface;//com.facebook.ads.internal.bench.BenchmarkLimitsMs
  JBenchmarkReporter = interface;//com.facebook.ads.internal.bench.BenchmarkReporter
  JInvocationTooSlowException = interface;//com.facebook.ads.internal.bench.InvocationTooSlowException
  JAdvertisingId = interface;//com.facebook.ads.internal.bridge.gms.AdvertisingId
  JDexLoadErrorReporter = interface;//com.facebook.ads.internal.dynamicloading.DexLoadErrorReporter
  JDexLoadErrorReporter_1 = interface;//com.facebook.ads.internal.dynamicloading.DexLoadErrorReporter$1
  JDynamicLoader = interface;//com.facebook.ads.internal.dynamicloading.DynamicLoader
  JDynamicLoaderFactory = interface;//com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory
  JDynamicLoaderFactory_1 = interface;//com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory$1
  JDynamicLoaderFactory_2 = interface;//com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory$2
  JDynamicLoaderFactory_3 = interface;//com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory$3
  JDynamicLoaderFallback = interface;//com.facebook.ads.internal.dynamicloading.DynamicLoaderFallback
  JInvocationHandler = interface;//java.lang.reflect.InvocationHandler
  JDynamicLoaderFallback_1 = interface;//com.facebook.ads.internal.dynamicloading.DynamicLoaderFallback$1
  JDynamicLoaderFallback_2 = interface;//com.facebook.ads.internal.dynamicloading.DynamicLoaderFallback$2
  JDynamicLoaderFallback_SimpleMethodCaptor = interface;//com.facebook.ads.internal.dynamicloading.DynamicLoaderFallback$SimpleMethodCaptor
  JSimpleMethodCaptor_1 = interface;//com.facebook.ads.internal.dynamicloading.DynamicLoaderFallback$SimpleMethodCaptor$1
  JAdsMessengerService = interface;//com.facebook.ads.internal.ipc.AdsMessengerService
  JAdsProcessPriorityService = interface;//com.facebook.ads.internal.ipc.AdsProcessPriorityService
  JRemoteANActivity = interface;//com.facebook.ads.internal.ipc.RemoteANActivity
  JAdInternalSettings = interface;//com.facebook.ads.internal.settings.AdInternalSettings
  JMultithreadedBundleWrapper = interface;//com.facebook.ads.internal.settings.MultithreadedBundleWrapper
  JANActivityLifecycleCallbacksListener = interface;//com.facebook.ads.internal.util.common.ANActivityLifecycleCallbacksListener
  JPreconditions = interface;//com.facebook.ads.internal.util.common.Preconditions
  JProcessUtils = interface;//com.facebook.ads.internal.util.process.ProcessUtils
  JDeque = interface;//java.util.Deque

// ===== Interface declarations =====

  JAnimatorClass = interface(JObjectClass)
    ['{3F76A5DF-389E-4BD3-9861-04C5B00CEADE}']
    {class} function init: JAnimator; cdecl;//Deprecated
    {class} function clone: JAnimator; cdecl;//Deprecated
    {class} procedure &end; cdecl;//Deprecated
    {class} function getDuration: Int64; cdecl;//Deprecated
    {class} function isPaused: Boolean; cdecl;
    {class} function isRunning: Boolean; cdecl;
    {class} function isStarted: Boolean; cdecl;
    {class} procedure removePauseListener(listener: JAnimator_AnimatorPauseListener); cdecl;
    {class} procedure resume; cdecl;
    {class} function setDuration(duration: Int64): JAnimator; cdecl;
    {class} procedure setupEndValues; cdecl;
    {class} procedure setupStartValues; cdecl;
    {class} procedure start; cdecl;
  end;

  [JavaSignature('android/animation/Animator')]
  JAnimator = interface(JObject)
    ['{FA13E56D-1B6D-4A3D-8327-9E5BA785CF21}']
    procedure addListener(listener: JAnimator_AnimatorListener); cdecl;//Deprecated
    procedure addPauseListener(listener: JAnimator_AnimatorPauseListener); cdecl;//Deprecated
    procedure cancel; cdecl;//Deprecated
    function getInterpolator: JTimeInterpolator; cdecl;
    function getListeners: JArrayList; cdecl;
    function getStartDelay: Int64; cdecl;
    procedure pause; cdecl;
    procedure removeAllListeners; cdecl;
    procedure removeListener(listener: JAnimator_AnimatorListener); cdecl;
    procedure setInterpolator(value: JTimeInterpolator); cdecl;
    procedure setStartDelay(startDelay: Int64); cdecl;
    procedure setTarget(target: JObject); cdecl;
  end;
  TJAnimator = class(TJavaGenericImport<JAnimatorClass, JAnimator>) end;

  JAnimator_AnimatorListenerClass = interface(IJavaClass)
    ['{5ED6075A-B997-469C-B8D9-0AA8FB7E4798}']
    {class} procedure onAnimationCancel(animation: JAnimator); cdecl;//Deprecated
  end;

  [JavaSignature('android/animation/Animator$AnimatorListener')]
  JAnimator_AnimatorListener = interface(IJavaInstance)
    ['{E2DE8DD6-628B-4D84-AA46-8A1E3F00FF13}']
    procedure onAnimationEnd(animation: JAnimator); cdecl;//Deprecated
    procedure onAnimationRepeat(animation: JAnimator); cdecl;//Deprecated
    procedure onAnimationStart(animation: JAnimator); cdecl;//Deprecated
  end;
  TJAnimator_AnimatorListener = class(TJavaGenericImport<JAnimator_AnimatorListenerClass, JAnimator_AnimatorListener>) end;

  JAnimator_AnimatorPauseListenerClass = interface(IJavaClass)
    ['{CB0DC3F0-63BC-4284-ADD0-2ED367AE11E5}']
  end;

  [JavaSignature('android/animation/Animator$AnimatorPauseListener')]
  JAnimator_AnimatorPauseListener = interface(IJavaInstance)
    ['{43C9C106-65EA-4A7D-A958-FAB9E43FA4A6}']
    procedure onAnimationPause(animation: JAnimator); cdecl;//Deprecated
    procedure onAnimationResume(animation: JAnimator); cdecl;//Deprecated
  end;
  TJAnimator_AnimatorPauseListener = class(TJavaGenericImport<JAnimator_AnimatorPauseListenerClass, JAnimator_AnimatorPauseListener>) end;

  JKeyframeClass = interface(JObjectClass)
    ['{D383116E-5CCF-48D8-9EA1-B26FBF24BA39}']
    {class} function init: JKeyframe; cdecl;//Deprecated
    {class} function getType: Jlang_Class; cdecl;
    {class} function getValue: JObject; cdecl;
    {class} function hasValue: Boolean; cdecl;
    {class} function ofFloat(fraction: Single; value: Single): JKeyframe; cdecl; overload;
    {class} function ofFloat(fraction: Single): JKeyframe; cdecl; overload;
    {class} function ofInt(fraction: Single; value: Integer): JKeyframe; cdecl; overload;
    {class} function ofInt(fraction: Single): JKeyframe; cdecl; overload;
    {class} function ofObject(fraction: Single; value: JObject): JKeyframe; cdecl; overload;
    {class} function ofObject(fraction: Single): JKeyframe; cdecl; overload;
  end;

  [JavaSignature('android/animation/Keyframe')]
  JKeyframe = interface(JObject)
    ['{9D0687A4-669E-440F-8290-154739405019}']
    function clone: JKeyframe; cdecl;
    function getFraction: Single; cdecl;
    function getInterpolator: JTimeInterpolator; cdecl;
    procedure setFraction(fraction: Single); cdecl;//Deprecated
    procedure setInterpolator(interpolator: JTimeInterpolator); cdecl;//Deprecated
    procedure setValue(value: JObject); cdecl;//Deprecated
  end;
  TJKeyframe = class(TJavaGenericImport<JKeyframeClass, JKeyframe>) end;

  JLayoutTransitionClass = interface(JObjectClass)
    ['{433C5359-0A96-4796-AD7B-8084EF7EF7C4}']
    {class} function _GetAPPEARING: Integer; cdecl;
    {class} function _GetCHANGE_APPEARING: Integer; cdecl;
    {class} function _GetCHANGE_DISAPPEARING: Integer; cdecl;
    {class} function _GetCHANGING: Integer; cdecl;
    {class} function _GetDISAPPEARING: Integer; cdecl;
    {class} function init: JLayoutTransition; cdecl;//Deprecated
    {class} procedure addChild(parent: JViewGroup; child: JView); cdecl;//Deprecated
    {class} function getAnimator(transitionType: Integer): JAnimator; cdecl;
    {class} function getDuration(transitionType: Integer): Int64; cdecl;
    {class} function getInterpolator(transitionType: Integer): JTimeInterpolator; cdecl;
    {class} procedure hideChild(parent: JViewGroup; child: JView); cdecl; overload;//Deprecated
    {class} procedure hideChild(parent: JViewGroup; child: JView; newVisibility: Integer); cdecl; overload;
    {class} function isChangingLayout: Boolean; cdecl;
    {class} procedure removeTransitionListener(listener: JLayoutTransition_TransitionListener); cdecl;
    {class} procedure setAnimateParentHierarchy(animateParentHierarchy: Boolean); cdecl;
    {class} procedure setAnimator(transitionType: Integer; animator: JAnimator); cdecl;
    {class} procedure setStagger(transitionType: Integer; duration: Int64); cdecl;
    {class} procedure setStartDelay(transitionType: Integer; delay: Int64); cdecl;
    {class} procedure showChild(parent: JViewGroup; child: JView); cdecl; overload;//Deprecated
    {class} property APPEARING: Integer read _GetAPPEARING;
    {class} property CHANGE_APPEARING: Integer read _GetCHANGE_APPEARING;
    {class} property CHANGE_DISAPPEARING: Integer read _GetCHANGE_DISAPPEARING;
    {class} property CHANGING: Integer read _GetCHANGING;
    {class} property DISAPPEARING: Integer read _GetDISAPPEARING;
  end;

  [JavaSignature('android/animation/LayoutTransition')]
  JLayoutTransition = interface(JObject)
    ['{42450BEE-EBF2-4954-B9B7-F8DAE7DF0EC1}']
    procedure addTransitionListener(listener: JLayoutTransition_TransitionListener); cdecl;
    procedure disableTransitionType(transitionType: Integer); cdecl;
    procedure enableTransitionType(transitionType: Integer); cdecl;
    function getStagger(transitionType: Integer): Int64; cdecl;
    function getStartDelay(transitionType: Integer): Int64; cdecl;
    function getTransitionListeners: JList; cdecl;
    function isRunning: Boolean; cdecl;
    function isTransitionTypeEnabled(transitionType: Integer): Boolean; cdecl;
    procedure removeChild(parent: JViewGroup; child: JView); cdecl;
    procedure setDuration(duration: Int64); cdecl; overload;
    procedure setDuration(transitionType: Integer; duration: Int64); cdecl; overload;
    procedure setInterpolator(transitionType: Integer; interpolator: JTimeInterpolator); cdecl;
    procedure showChild(parent: JViewGroup; child: JView; oldVisibility: Integer); cdecl; overload;//Deprecated
  end;
  TJLayoutTransition = class(TJavaGenericImport<JLayoutTransitionClass, JLayoutTransition>) end;

  JLayoutTransition_TransitionListenerClass = interface(IJavaClass)
    ['{9FA6F1EC-8EDB-4A05-AF58-B55A525AE114}']
  end;

  [JavaSignature('android/animation/LayoutTransition$TransitionListener')]
  JLayoutTransition_TransitionListener = interface(IJavaInstance)
    ['{0FBE048F-FCDA-4692-B6F1-DE0F07FAE885}']
    procedure endTransition(transition: JLayoutTransition; container: JViewGroup; view: JView; transitionType: Integer); cdecl;
    procedure startTransition(transition: JLayoutTransition; container: JViewGroup; view: JView; transitionType: Integer); cdecl;
  end;
  TJLayoutTransition_TransitionListener = class(TJavaGenericImport<JLayoutTransition_TransitionListenerClass, JLayoutTransition_TransitionListener>) end;

  JPropertyValuesHolderClass = interface(JObjectClass)
    ['{36C77AFF-9C3F-42B6-88F3-320FE8CF9B25}']
    {class} function ofMultiFloat(propertyName: JString; values: TJavaBiArray<Single>): JPropertyValuesHolder; cdecl; overload;//Deprecated
    {class} function ofMultiFloat(propertyName: JString; path: JPath): JPropertyValuesHolder; cdecl; overload;//Deprecated
    {class} function ofMultiInt(propertyName: JString; values: TJavaBiArray<Integer>): JPropertyValuesHolder; cdecl; overload;
    {class} function ofMultiInt(propertyName: JString; path: JPath): JPropertyValuesHolder; cdecl; overload;
    {class} function ofObject(propertyName: JString; converter: JTypeConverter; path: JPath): JPropertyValuesHolder; cdecl; overload;
    {class} function ofObject(property_: JProperty; converter: JTypeConverter; path: JPath): JPropertyValuesHolder; cdecl; overload;
    {class} procedure setConverter(converter: JTypeConverter); cdecl;
    {class} procedure setEvaluator(evaluator: JTypeEvaluator); cdecl;
    {class} procedure setProperty(property_: JProperty); cdecl;
    {class} procedure setPropertyName(propertyName: JString); cdecl;
  end;

  [JavaSignature('android/animation/PropertyValuesHolder')]
  JPropertyValuesHolder = interface(JObject)
    ['{12B4ABFD-CBCA-4636-AF2D-C386EF895DC3}']
    function clone: JPropertyValuesHolder; cdecl;//Deprecated
    function getPropertyName: JString; cdecl;//Deprecated
    function toString: JString; cdecl;
  end;
  TJPropertyValuesHolder = class(TJavaGenericImport<JPropertyValuesHolderClass, JPropertyValuesHolder>) end;

  JStateListAnimatorClass = interface(JObjectClass)
    ['{109E4067-E218-47B1-93EB-65B8916A98D8}']
    {class} function init: JStateListAnimator; cdecl;//Deprecated
    {class} procedure jumpToCurrentState; cdecl;//Deprecated
  end;

  [JavaSignature('android/animation/StateListAnimator')]
  JStateListAnimator = interface(JObject)
    ['{CA2A9587-26AA-4DC2-8DFF-A1305A37608F}']
    procedure addState(specs: TJavaArray<Integer>; animator: JAnimator); cdecl;//Deprecated
    function clone: JStateListAnimator; cdecl;//Deprecated
  end;
  TJStateListAnimator = class(TJavaGenericImport<JStateListAnimatorClass, JStateListAnimator>) end;

  JTimeInterpolatorClass = interface(IJavaClass)
    ['{1E682A1C-9102-461D-A3CA-5596683F1D66}']
  end;

  [JavaSignature('android/animation/TimeInterpolator')]
  JTimeInterpolator = interface(IJavaInstance)
    ['{639F8A83-7D9B-49AF-A19E-96B27E46D2AB}']
    function getInterpolation(input: Single): Single; cdecl;
  end;
  TJTimeInterpolator = class(TJavaGenericImport<JTimeInterpolatorClass, JTimeInterpolator>) end;

  JTypeConverterClass = interface(JObjectClass)
    ['{BE2DD177-6D79-4B0C-B4F5-4E4CD9D7436D}']
    {class} function init(fromClass: Jlang_Class; toClass: Jlang_Class): JTypeConverter; cdecl;//Deprecated
    {class} function convert(value: JObject): JObject; cdecl;
  end;

  [JavaSignature('android/animation/TypeConverter')]
  JTypeConverter = interface(JObject)
    ['{BFEA4116-0766-4AD9-AA8F-4C15A583EB2E}']
  end;
  TJTypeConverter = class(TJavaGenericImport<JTypeConverterClass, JTypeConverter>) end;

  JTypeEvaluatorClass = interface(IJavaClass)
    ['{15B67CAF-6F50-4AA3-A88F-C5AF78D62FD4}']
  end;

  [JavaSignature('android/animation/TypeEvaluator')]
  JTypeEvaluator = interface(IJavaInstance)
    ['{F436383D-6F44-40D8-ACDD-9057777691FC}']
    function evaluate(fraction: Single; startValue: JObject; endValue: JObject): JObject; cdecl;
  end;
  TJTypeEvaluator = class(TJavaGenericImport<JTypeEvaluatorClass, JTypeEvaluator>) end;

  JValueAnimatorClass = interface(JAnimatorClass)
    ['{FF3B71ED-5A33-45B0-8500-7672B0B98E2C}']
    {class} function _GetINFINITE: Integer; cdecl;
    {class} function _GetRESTART: Integer; cdecl;
    {class} function _GetREVERSE: Integer; cdecl;
    {class} function init: JValueAnimator; cdecl;//Deprecated
    {class} procedure &end; cdecl;//Deprecated
    {class} function getAnimatedFraction: Single; cdecl;//Deprecated
    {class} function getAnimatedValue: JObject; cdecl; overload;
    {class} function getAnimatedValue(propertyName: JString): JObject; cdecl; overload;
    {class} function getCurrentPlayTime: Int64; cdecl;
    {class} function getFrameDelay: Int64; cdecl;//Deprecated
    {class} function getRepeatCount: Integer; cdecl;//Deprecated
    {class} function getRepeatMode: Integer; cdecl;//Deprecated
    {class} function getStartDelay: Int64; cdecl;//Deprecated
    {class} procedure removeAllUpdateListeners; cdecl;//Deprecated
    {class} procedure removeUpdateListener(listener: JValueAnimator_AnimatorUpdateListener); cdecl;//Deprecated
    {class} procedure resume; cdecl;//Deprecated
    {class} procedure setCurrentPlayTime(playTime: Int64); cdecl;//Deprecated
    {class} function setDuration(duration: Int64): JValueAnimator; cdecl;//Deprecated
    {class} procedure setEvaluator(value: JTypeEvaluator); cdecl;//Deprecated
    {class} procedure setFrameDelay(frameDelay: Int64); cdecl;
    {class} procedure setInterpolator(value: JTimeInterpolator); cdecl;
    {class} procedure setRepeatCount(value: Integer); cdecl;
    {class} procedure start; cdecl;
    {class} function toString: JString; cdecl;
    {class} property INFINITE: Integer read _GetINFINITE;
    {class} property RESTART: Integer read _GetRESTART;
    {class} property REVERSE: Integer read _GetREVERSE;
  end;

  [JavaSignature('android/animation/ValueAnimator')]
  JValueAnimator = interface(JAnimator)
    ['{70F92B14-EFD4-4DC7-91DE-6617417AE194}']
    procedure addUpdateListener(listener: JValueAnimator_AnimatorUpdateListener); cdecl;//Deprecated
    procedure cancel; cdecl;//Deprecated
    function clone: JValueAnimator; cdecl;//Deprecated
    function getDuration: Int64; cdecl;//Deprecated
    function getInterpolator: JTimeInterpolator; cdecl;//Deprecated
    function getValues: TJavaObjectArray<JPropertyValuesHolder>; cdecl;//Deprecated
    function isRunning: Boolean; cdecl;//Deprecated
    function isStarted: Boolean; cdecl;//Deprecated
    procedure pause; cdecl;//Deprecated
    procedure reverse; cdecl;//Deprecated
    procedure setCurrentFraction(fraction: Single); cdecl;//Deprecated
    procedure setRepeatMode(value: Integer); cdecl;
    procedure setStartDelay(startDelay: Int64); cdecl;
  end;
  TJValueAnimator = class(TJavaGenericImport<JValueAnimatorClass, JValueAnimator>) end;

  JValueAnimator_AnimatorUpdateListenerClass = interface(IJavaClass)
    ['{9CA50CBF-4462-4445-82CD-13CE985E2DE4}']
    {class} procedure onAnimationUpdate(animation: JValueAnimator); cdecl;//Deprecated
  end;

  [JavaSignature('android/animation/ValueAnimator$AnimatorUpdateListener')]
  JValueAnimator_AnimatorUpdateListener = interface(IJavaInstance)
    ['{0F883491-52EF-4A40-B7D2-FC23E11E46FE}']
  end;
  TJValueAnimator_AnimatorUpdateListener = class(TJavaGenericImport<JValueAnimator_AnimatorUpdateListenerClass, JValueAnimator_AnimatorUpdateListener>) end;

  JPathMotionClass = interface(JObjectClass)
    ['{E1CD1A94-115C-492C-A490-37F0E72956EB}']
    {class} function init: JPathMotion; cdecl; overload;//Deprecated
    {class} function init(context: JContext; attrs: JAttributeSet): JPathMotion; cdecl; overload;//Deprecated
  end;

  [JavaSignature('android/transition/PathMotion')]
  JPathMotion = interface(JObject)
    ['{BDC08353-C9FB-42D7-97CC-C35837D2F536}']
    function getPath(startX: Single; startY: Single; endX: Single; endY: Single): JPath; cdecl;
  end;
  TJPathMotion = class(TJavaGenericImport<JPathMotionClass, JPathMotion>) end;

  JSceneClass = interface(JObjectClass)
    ['{8B9120CA-AEEA-4DE3-BDC9-15CFD23A7B07}']
    {class} function init(sceneRoot: JViewGroup): JScene; cdecl; overload;//Deprecated
    {class} function init(sceneRoot: JViewGroup; layout: JView): JScene; cdecl; overload;//Deprecated
    {class} function init(sceneRoot: JViewGroup; layout: JViewGroup): JScene; cdecl; overload;//Deprecated
    {class} function getSceneForLayout(sceneRoot: JViewGroup; layoutId: Integer; context: JContext): JScene; cdecl;//Deprecated
    {class} function getSceneRoot: JViewGroup; cdecl;//Deprecated
    {class} procedure setEnterAction(action: JRunnable); cdecl;//Deprecated
  end;

  [JavaSignature('android/transition/Scene')]
  JScene = interface(JObject)
    ['{85A60B99-5837-4F1F-A344-C627DD586B82}']
    procedure enter; cdecl;//Deprecated
    procedure exit; cdecl;//Deprecated
    procedure setExitAction(action: JRunnable); cdecl;//Deprecated
  end;
  TJScene = class(TJavaGenericImport<JSceneClass, JScene>) end;

  JTransitionClass = interface(JObjectClass)
    ['{60EC06BC-8F7A-4416-A04B-5B57987EB18E}']
    {class} function _GetMATCH_ID: Integer; cdecl;
    {class} function _GetMATCH_INSTANCE: Integer; cdecl;
    {class} function _GetMATCH_ITEM_ID: Integer; cdecl;
    {class} function _GetMATCH_NAME: Integer; cdecl;
    {class} function init: JTransition; cdecl; overload;//Deprecated
    {class} function init(context: JContext; attrs: JAttributeSet): JTransition; cdecl; overload;//Deprecated
    {class} function addListener(listener: JTransition_TransitionListener): JTransition; cdecl;//Deprecated
    {class} function addTarget(targetId: Integer): JTransition; cdecl; overload;//Deprecated
    {class} function addTarget(targetName: JString): JTransition; cdecl; overload;//Deprecated
    {class} procedure captureEndValues(transitionValues: JTransitionValues); cdecl;
    {class} procedure captureStartValues(transitionValues: JTransitionValues); cdecl;
    {class} function clone: JTransition; cdecl;
    {class} function excludeChildren(type_: Jlang_Class; exclude: Boolean): JTransition; cdecl; overload;
    {class} function excludeTarget(targetId: Integer; exclude: Boolean): JTransition; cdecl; overload;
    {class} function excludeTarget(targetName: JString; exclude: Boolean): JTransition; cdecl; overload;
    {class} function getEpicenter: JRect; cdecl;
    {class} function getEpicenterCallback: JTransition_EpicenterCallback; cdecl;
    {class} function getInterpolator: JTimeInterpolator; cdecl;
    {class} function getStartDelay: Int64; cdecl;
    {class} function getTargetIds: JList; cdecl;
    {class} function getTransitionProperties: TJavaObjectArray<JString>; cdecl;//Deprecated
    {class} function getTransitionValues(view: JView; start: Boolean): JTransitionValues; cdecl;//Deprecated
    {class} function isTransitionRequired(startValues: JTransitionValues; endValues: JTransitionValues): Boolean; cdecl;//Deprecated
    {class} function removeTarget(target: JView): JTransition; cdecl; overload;//Deprecated
    {class} function removeTarget(target: Jlang_Class): JTransition; cdecl; overload;//Deprecated
    {class} function setDuration(duration: Int64): JTransition; cdecl;//Deprecated
    {class} procedure setPathMotion(pathMotion: JPathMotion); cdecl;//Deprecated
    {class} procedure setPropagation(transitionPropagation: JTransitionPropagation); cdecl;//Deprecated
    {class} function setStartDelay(startDelay: Int64): JTransition; cdecl;//Deprecated
    {class} property MATCH_ID: Integer read _GetMATCH_ID;
    {class} property MATCH_INSTANCE: Integer read _GetMATCH_INSTANCE;
    {class} property MATCH_ITEM_ID: Integer read _GetMATCH_ITEM_ID;
    {class} property MATCH_NAME: Integer read _GetMATCH_NAME;
  end;

  [JavaSignature('android/transition/Transition')]
  JTransition = interface(JObject)
    ['{C2F8200F-1C83-40AE-8C5B-C0C8BFF17F88}']
    function addTarget(targetType: Jlang_Class): JTransition; cdecl; overload;
    function addTarget(target: JView): JTransition; cdecl; overload;
    function canRemoveViews: Boolean; cdecl;
    function createAnimator(sceneRoot: JViewGroup; startValues: JTransitionValues; endValues: JTransitionValues): JAnimator; cdecl;
    function excludeChildren(targetId: Integer; exclude: Boolean): JTransition; cdecl; overload;
    function excludeChildren(target: JView; exclude: Boolean): JTransition; cdecl; overload;
    function excludeTarget(target: JView; exclude: Boolean): JTransition; cdecl; overload;
    function excludeTarget(type_: Jlang_Class; exclude: Boolean): JTransition; cdecl; overload;
    function getDuration: Int64; cdecl;
    function getName: JString; cdecl;
    function getPathMotion: JPathMotion; cdecl;
    function getPropagation: JTransitionPropagation; cdecl;
    function getTargetNames: JList; cdecl;//Deprecated
    function getTargetTypes: JList; cdecl;//Deprecated
    function getTargets: JList; cdecl;//Deprecated
    function removeListener(listener: JTransition_TransitionListener): JTransition; cdecl;//Deprecated
    function removeTarget(targetId: Integer): JTransition; cdecl; overload;//Deprecated
    function removeTarget(targetName: JString): JTransition; cdecl; overload;//Deprecated
    procedure setEpicenterCallback(epicenterCallback: JTransition_EpicenterCallback); cdecl;//Deprecated
    function setInterpolator(interpolator: JTimeInterpolator): JTransition; cdecl;//Deprecated
    function toString: JString; cdecl;//Deprecated
  end;
  TJTransition = class(TJavaGenericImport<JTransitionClass, JTransition>) end;

  JTransition_EpicenterCallbackClass = interface(JObjectClass)
    ['{8141257A-130B-466C-A08D-AA3A00946F4C}']
    {class} function init: JTransition_EpicenterCallback; cdecl;//Deprecated
  end;

  [JavaSignature('android/transition/Transition$EpicenterCallback')]
  JTransition_EpicenterCallback = interface(JObject)
    ['{CE004917-266F-4076-8913-F23184824FBA}']
    function onGetEpicenter(transition: JTransition): JRect; cdecl;
  end;
  TJTransition_EpicenterCallback = class(TJavaGenericImport<JTransition_EpicenterCallbackClass, JTransition_EpicenterCallback>) end;

  JTransition_TransitionListenerClass = interface(IJavaClass)
    ['{D5083752-E8A6-46DF-BE40-AE11073C387E}']
    {class} procedure onTransitionCancel(transition: JTransition); cdecl;
    {class} procedure onTransitionEnd(transition: JTransition); cdecl;
  end;

  [JavaSignature('android/transition/Transition$TransitionListener')]
  JTransition_TransitionListener = interface(IJavaInstance)
    ['{C32BE107-6E05-4898-AF0A-FAD970D66E29}']
    procedure onTransitionPause(transition: JTransition); cdecl;
    procedure onTransitionResume(transition: JTransition); cdecl;
    procedure onTransitionStart(transition: JTransition); cdecl;
  end;
  TJTransition_TransitionListener = class(TJavaGenericImport<JTransition_TransitionListenerClass, JTransition_TransitionListener>) end;

  JTransitionManagerClass = interface(JObjectClass)
    ['{4160EFA0-3499-4964-817E-46497BB5B957}']
    {class} function init: JTransitionManager; cdecl;//Deprecated
    {class} procedure beginDelayedTransition(sceneRoot: JViewGroup); cdecl; overload;//Deprecated
    {class} procedure beginDelayedTransition(sceneRoot: JViewGroup; transition: JTransition); cdecl; overload;//Deprecated
    {class} procedure endTransitions(sceneRoot: JViewGroup); cdecl;//Deprecated
    {class} procedure go(scene: JScene); cdecl; overload;//Deprecated
    {class} procedure go(scene: JScene; transition: JTransition); cdecl; overload;//Deprecated
    {class} procedure setTransition(scene: JScene; transition: JTransition); cdecl; overload;//Deprecated
    {class} procedure setTransition(fromScene: JScene; toScene: JScene; transition: JTransition); cdecl; overload;//Deprecated
  end;

  [JavaSignature('android/transition/TransitionManager')]
  JTransitionManager = interface(JObject)
    ['{FF5E1210-1F04-4F81-9CAC-3D7A5C4E972B}']
    procedure transitionTo(scene: JScene); cdecl;//Deprecated
  end;
  TJTransitionManager = class(TJavaGenericImport<JTransitionManagerClass, JTransitionManager>) end;

  JTransitionPropagationClass = interface(JObjectClass)
    ['{A881388A-C877-4DD9-9BAD-1BA4F56133EE}']
    {class} function init: JTransitionPropagation; cdecl;//Deprecated
    {class} procedure captureValues(transitionValues: JTransitionValues); cdecl;
    {class} function getPropagationProperties: TJavaObjectArray<JString>; cdecl;
  end;

  [JavaSignature('android/transition/TransitionPropagation')]
  JTransitionPropagation = interface(JObject)
    ['{7595B7EF-6BCE-4281-BC67-335E2FB6C091}']
    function getStartDelay(sceneRoot: JViewGroup; transition: JTransition; startValues: JTransitionValues; endValues: JTransitionValues): Int64; cdecl;
  end;
  TJTransitionPropagation = class(TJavaGenericImport<JTransitionPropagationClass, JTransitionPropagation>) end;

  JTransitionValuesClass = interface(JObjectClass)
    ['{3BF98CFA-6A4D-4815-8D42-15E97C916D91}']
    {class} function _Getvalues: JMap; cdecl;
    {class} function init: JTransitionValues; cdecl;//Deprecated
    {class} function hashCode: Integer; cdecl;
    {class} function toString: JString; cdecl;
    {class} property values: JMap read _Getvalues;
  end;

  [JavaSignature('android/transition/TransitionValues')]
  JTransitionValues = interface(JObject)
    ['{178E09E6-D32C-48A9-ADCF-8CCEA804052A}']
    function _Getview: JView; cdecl;
    procedure _Setview(Value: JView); cdecl;
    function equals(other: JObject): Boolean; cdecl;
    property view: JView read _Getview write _Setview;
  end;
  TJTransitionValues = class(TJavaGenericImport<JTransitionValuesClass, JTransitionValues>) end;

  JInterpolatorClass = interface(JTimeInterpolatorClass)
    ['{A575B46A-E489-409C-807A-1B8F2BE092E8}']
  end;

  [JavaSignature('android/view/animation/Interpolator')]
  JInterpolator = interface(JTimeInterpolator)
    ['{F1082403-52DA-4AF0-B017-DAB334325FC7}']
  end;
  TJInterpolator = class(TJavaGenericImport<JInterpolatorClass, JInterpolator>) end;

  JToolbar_LayoutParamsClass = interface(JActionBar_LayoutParamsClass)
    ['{6D43796C-C163-4084-BB30-6FE68AFD7ABB}']
    {class} function init(c: JContext; attrs: JAttributeSet): JToolbar_LayoutParams; cdecl; overload;//Deprecated
    {class} function init(width: Integer; height: Integer): JToolbar_LayoutParams; cdecl; overload;//Deprecated
    {class} function init(width: Integer; height: Integer; gravity: Integer): JToolbar_LayoutParams; cdecl; overload;//Deprecated
    {class} function init(gravity: Integer): JToolbar_LayoutParams; cdecl; overload;//Deprecated
    {class} function init(source: JToolbar_LayoutParams): JToolbar_LayoutParams; cdecl; overload;//Deprecated
    {class} function init(source: JActionBar_LayoutParams): JToolbar_LayoutParams; cdecl; overload;//Deprecated
    {class} function init(source: JViewGroup_MarginLayoutParams): JToolbar_LayoutParams; cdecl; overload;//Deprecated
    {class} function init(source: JViewGroup_LayoutParams): JToolbar_LayoutParams; cdecl; overload;//Deprecated
  end;

  [JavaSignature('android/widget/Toolbar$LayoutParams')]
  JToolbar_LayoutParams = interface(JActionBar_LayoutParams)
    ['{BCD101F9-B7B7-4B2F-9460-056B3EA7B9F0}']
  end;
  TJToolbar_LayoutParams = class(TJavaGenericImport<JToolbar_LayoutParamsClass, JToolbar_LayoutParams>) end;

  Jfacebook_ads_AdListenerClass = interface(IJavaClass)
    ['{BE531C58-05A5-4ED0-8684-06E92CF7ABA1}']
  end;

  [JavaSignature('com/facebook/ads/AdListener')]
  Jfacebook_ads_AdListener = interface(IJavaInstance)
    ['{1978A6EE-FE72-4F15-9045-18385E04C552}']
    procedure onAdClicked(P1: Jfacebook_ads_Ad); cdecl;//Deprecated
    procedure onAdLoaded(P1: Jfacebook_ads_Ad); cdecl;//Deprecated
    procedure onError(P1: Jfacebook_ads_Ad; P2: JAdError); cdecl;//Deprecated
    procedure onLoggingImpression(P1: Jfacebook_ads_Ad); cdecl;//Deprecated
  end;
  TJfacebook_ads_AdListener = class(TJavaGenericImport<Jfacebook_ads_AdListenerClass, Jfacebook_ads_AdListener>) end;

  JAbstractAdListenerClass = interface(Jfacebook_ads_AdListenerClass)
    ['{20F04748-2D92-43B0-94EB-9CB786EE0C39}']
    {class} function init: JAbstractAdListener; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/ads/AbstractAdListener')]
  JAbstractAdListener = interface(Jfacebook_ads_AdListener)
    ['{B6ACDD83-25DE-48FC-96FA-D4C7B39E73A8}']
    procedure onAdClicked(P1: Jfacebook_ads_Ad); cdecl;//Deprecated
    procedure onAdLoaded(P1: Jfacebook_ads_Ad); cdecl;//Deprecated
    procedure onError(P1: Jfacebook_ads_Ad; P2: JAdError); cdecl;//Deprecated
    procedure onInterstitialDismissed(P1: Jfacebook_ads_Ad); cdecl;//Deprecated
    procedure onInterstitialDisplayed(P1: Jfacebook_ads_Ad); cdecl;//Deprecated
    procedure onLoggingImpression(P1: Jfacebook_ads_Ad); cdecl;//Deprecated
  end;
  TJAbstractAdListener = class(TJavaGenericImport<JAbstractAdListenerClass, JAbstractAdListener>) end;

  Jfacebook_ads_AdClass = interface(IJavaClass)
    ['{DB852BBE-68BE-4752-939E-592EE728D200}']
  end;

  [JavaSignature('com/facebook/ads/Ad')]
  Jfacebook_ads_Ad = interface(IJavaInstance)
    ['{80E30C77-D1B7-4EA0-A779-A85DBE062372}']
    procedure destroy; cdecl;//Deprecated
    function getPlacementId: JString; cdecl;//Deprecated
    function isAdInvalidated: Boolean; cdecl;//Deprecated
    procedure loadAd; cdecl;//Deprecated
    procedure loadAdFromBid(P1: JString); cdecl;//Deprecated
    procedure setExtraHints(P1: JExtraHints); cdecl;//Deprecated
  end;
  TJfacebook_ads_Ad = class(TJavaGenericImport<Jfacebook_ads_AdClass, Jfacebook_ads_Ad>) end;

  JAdChoicesViewClass = interface(JRelativeLayoutClass)
    ['{F3BE845F-7C11-40E2-B685-E7B807D08333}']
    {class} function init(P1: JContext; P2: JNativeAdBase): JAdChoicesView; cdecl; overload;//Deprecated
    {class} function init(P1: JContext; P2: JNativeAdBase; P3: Boolean): JAdChoicesView; cdecl; overload;//Deprecated
    {class} function init(P1: JContext; P2: JNativeAdBase; P3: JNativeAdLayout): JAdChoicesView; cdecl; overload;//Deprecated
    {class} function init(P1: JContext; P2: JNativeAdBase; P3: Boolean; P4: JNativeAdLayout): JAdChoicesView; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/ads/AdChoicesView')]
  JAdChoicesView = interface(JRelativeLayout)
    ['{7FB5D231-E842-4F3D-AF75-E5C6E0667022}']
  end;
  TJAdChoicesView = class(TJavaGenericImport<JAdChoicesViewClass, JAdChoicesView>) end;

  JAdErrorClass = interface(JObjectClass)
    ['{ED5BDDB9-42BF-40D5-917A-4CDBD3171BBD}']
    {class} function _GetAD_ASSETS_UNSUPPORTED_TYPE_ERROR: JAdError; cdecl;
    {class} function _GetAD_ASSETS_UNSUPPORTED_TYPE_ERROR_CODE: Integer; cdecl;
    {class} function _GetAPI_NOT_SUPPORTED: Integer; cdecl;
    {class} function _GetBROKEN_MEDIA_ERROR: JAdError; cdecl;
    {class} function _GetBROKEN_MEDIA_ERROR_CODE: Integer; cdecl;
    {class} function _GetCACHE_ERROR: JAdError; cdecl;
    {class} function _GetCACHE_ERROR_CODE: Integer; cdecl;
    {class} function _GetCLEAR_TEXT_SUPPORT_NOT_ALLOWED: Integer; cdecl;
    {class} function _GetICONVIEW_MISSING_ERROR_CODE: Integer; cdecl;
    {class} function _GetINCORRECT_STATE_ERROR: Integer; cdecl;
    {class} function _GetINTERNAL_ERROR: JAdError; cdecl;
    {class} function _GetINTERNAL_ERROR_2003: Integer; cdecl;
    {class} function _GetINTERNAL_ERROR_2004: Integer; cdecl;
    {class} function _GetINTERNAL_ERROR_2006: Integer; cdecl;
    {class} function _GetINTERNAL_ERROR_CODE: Integer; cdecl;
    {class} function _GetINTERSTITIAL_AD_TIMEOUT: Integer; cdecl;
    {class} function _GetLOAD_CALLED_WHILE_SHOWING_AD: Integer; cdecl;
    {class} function _GetLOAD_TOO_FREQUENTLY: JAdError; cdecl;
    {class} function _GetLOAD_TOO_FREQUENTLY_ERROR_CODE: Integer; cdecl;
    {class} function _GetMEDIATION_ERROR: JAdError; cdecl;
    {class} function _GetMEDIATION_ERROR_CODE: Integer; cdecl;
    {class} function _GetMEDIAVIEW_MISSING_ERROR_CODE: Integer; cdecl;
    {class} function _GetMISSING_DEPENDENCIES_ERROR: Integer; cdecl;
    {class} function _GetMISSING_PROPERTIES: JAdError; cdecl;
    {class} function _GetNATIVE_AD_IS_NOT_LOADED: Integer; cdecl;
    {class} function _GetNETWORK_ERROR: JAdError; cdecl;
    {class} function _GetNETWORK_ERROR_CODE: Integer; cdecl;
    {class} function _GetNO_FILL: JAdError; cdecl;
    {class} function _GetNO_FILL_ERROR_CODE: Integer; cdecl;
    {class} function _GetREMOTE_ADS_SERVICE_ERROR: Integer; cdecl;
    {class} function _GetSERVER_ERROR: JAdError; cdecl;
    {class} function _GetSERVER_ERROR_CODE: Integer; cdecl;
    {class} function _GetSHOW_CALLED_BEFORE_LOAD_ERROR: JAdError; cdecl;
    {class} function _GetSHOW_CALLED_BEFORE_LOAD_ERROR_CODE: Integer; cdecl;
    {class} function getErrorCode: Integer; cdecl;
    {class} function getErrorMessage: JString; cdecl;
    {class} function init(P1: Integer; P2: JString): JAdError; cdecl;
    {class} function internalError(P1: Integer): JAdError; cdecl;
    {class} property AD_ASSETS_UNSUPPORTED_TYPE_ERROR: JAdError read _GetAD_ASSETS_UNSUPPORTED_TYPE_ERROR;
    {class} property AD_ASSETS_UNSUPPORTED_TYPE_ERROR_CODE: Integer read _GetAD_ASSETS_UNSUPPORTED_TYPE_ERROR_CODE;
    {class} property API_NOT_SUPPORTED: Integer read _GetAPI_NOT_SUPPORTED;
    {class} property BROKEN_MEDIA_ERROR: JAdError read _GetBROKEN_MEDIA_ERROR;
    {class} property BROKEN_MEDIA_ERROR_CODE: Integer read _GetBROKEN_MEDIA_ERROR_CODE;
    {class} property CACHE_ERROR: JAdError read _GetCACHE_ERROR;
    {class} property CACHE_ERROR_CODE: Integer read _GetCACHE_ERROR_CODE;
    {class} property CLEAR_TEXT_SUPPORT_NOT_ALLOWED: Integer read _GetCLEAR_TEXT_SUPPORT_NOT_ALLOWED;
    {class} property ICONVIEW_MISSING_ERROR_CODE: Integer read _GetICONVIEW_MISSING_ERROR_CODE;
    {class} property INCORRECT_STATE_ERROR: Integer read _GetINCORRECT_STATE_ERROR;
    {class} property INTERNAL_ERROR: JAdError read _GetINTERNAL_ERROR;
    {class} property INTERNAL_ERROR_2003: Integer read _GetINTERNAL_ERROR_2003;
    {class} property INTERNAL_ERROR_2004: Integer read _GetINTERNAL_ERROR_2004;
    {class} property INTERNAL_ERROR_2006: Integer read _GetINTERNAL_ERROR_2006;
    {class} property INTERNAL_ERROR_CODE: Integer read _GetINTERNAL_ERROR_CODE;
    {class} property INTERSTITIAL_AD_TIMEOUT: Integer read _GetINTERSTITIAL_AD_TIMEOUT;
    {class} property LOAD_CALLED_WHILE_SHOWING_AD: Integer read _GetLOAD_CALLED_WHILE_SHOWING_AD;
    {class} property LOAD_TOO_FREQUENTLY: JAdError read _GetLOAD_TOO_FREQUENTLY;
    {class} property LOAD_TOO_FREQUENTLY_ERROR_CODE: Integer read _GetLOAD_TOO_FREQUENTLY_ERROR_CODE;
    {class} property MEDIATION_ERROR: JAdError read _GetMEDIATION_ERROR;
    {class} property MEDIATION_ERROR_CODE: Integer read _GetMEDIATION_ERROR_CODE;
    {class} property MEDIAVIEW_MISSING_ERROR_CODE: Integer read _GetMEDIAVIEW_MISSING_ERROR_CODE;
    {class} property MISSING_DEPENDENCIES_ERROR: Integer read _GetMISSING_DEPENDENCIES_ERROR;
    {class} property MISSING_PROPERTIES: JAdError read _GetMISSING_PROPERTIES;
    {class} property NATIVE_AD_IS_NOT_LOADED: Integer read _GetNATIVE_AD_IS_NOT_LOADED;
    {class} property NETWORK_ERROR: JAdError read _GetNETWORK_ERROR;
    {class} property NETWORK_ERROR_CODE: Integer read _GetNETWORK_ERROR_CODE;
    {class} property NO_FILL: JAdError read _GetNO_FILL;
    {class} property NO_FILL_ERROR_CODE: Integer read _GetNO_FILL_ERROR_CODE;
    {class} property REMOTE_ADS_SERVICE_ERROR: Integer read _GetREMOTE_ADS_SERVICE_ERROR;
    {class} property SERVER_ERROR: JAdError read _GetSERVER_ERROR;
    {class} property SERVER_ERROR_CODE: Integer read _GetSERVER_ERROR_CODE;
    {class} property SHOW_CALLED_BEFORE_LOAD_ERROR: JAdError read _GetSHOW_CALLED_BEFORE_LOAD_ERROR;
    {class} property SHOW_CALLED_BEFORE_LOAD_ERROR_CODE: Integer read _GetSHOW_CALLED_BEFORE_LOAD_ERROR_CODE;
  end;

  [JavaSignature('com/facebook/ads/AdError')]
  JAdError = interface(JObject)
    ['{49A71190-C871-4E61-99D9-EC8359AE699D}']
  end;
  TJAdError = class(TJavaGenericImport<JAdErrorClass, JAdError>) end;

  JAdNativeComponentViewClass = interface(JRelativeLayoutClass)
    ['{5316AF88-7149-4CA1-B10E-7033B754680D}']
    {class} function init(P1: JContext): JAdNativeComponentView; cdecl; overload;//Deprecated
    {class} function init(P1: JContext; P2: JAttributeSet): JAdNativeComponentView; cdecl; overload;//Deprecated
    {class} function init(P1: JContext; P2: JAttributeSet; P3: Integer): JAdNativeComponentView; cdecl; overload;//Deprecated
    {class} function init(P1: JContext; P2: JAttributeSet; P3: Integer; P4: Integer): JAdNativeComponentView; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/ads/internal/api/AdNativeComponentView')]
  JAdNativeComponentView = interface(JRelativeLayout)
    ['{01132372-8508-40D7-B586-344058E38BC4}']
    function getAdContentsView: JView; cdecl;//Deprecated
  end;
  TJAdNativeComponentView = class(TJavaGenericImport<JAdNativeComponentViewClass, JAdNativeComponentView>) end;

  JMediaViewClass = interface(JAdNativeComponentViewClass)
    ['{6A36D37B-E909-427C-9C93-8A9C2C7304A5}']
    {class} function init(P1: JContext): JMediaView; cdecl; overload;//Deprecated
    {class} function init(P1: JContext; P2: JAttributeSet): JMediaView; cdecl; overload;//Deprecated
    {class} function init(P1: JContext; P2: JAttributeSet; P3: Integer): JMediaView; cdecl; overload;//Deprecated
    {class} function init(P1: JContext; P2: JAttributeSet; P3: Integer; P4: Integer): JMediaView; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/ads/MediaView')]
  JMediaView = interface(JAdNativeComponentView)
    ['{B1411F86-5BAB-4075-9CE6-F188C5F1AD2A}']
    procedure addView(P1: JView); cdecl; overload;//Deprecated
    procedure addView(P1: JView; P2: JViewGroup_LayoutParams); cdecl; overload;//Deprecated
    procedure addView(P1: JView; P2: Integer); cdecl; overload;//Deprecated
    procedure addView(P1: JView; P2: Integer; P3: Integer); cdecl; overload;//Deprecated
    procedure addView(P1: JView; P2: Integer; P3: JViewGroup_LayoutParams); cdecl; overload;//Deprecated
    procedure bringChildToFront(P1: JView); cdecl;//Deprecated
    procedure destroy; cdecl;//Deprecated
    function getAdContentsView: JView; cdecl;//Deprecated
    function getMediaHeight: Integer; cdecl;//Deprecated
    function getMediaViewApi: JMediaViewApi; cdecl;//Deprecated
    function getMediaWidth: Integer; cdecl;//Deprecated
    procedure setListener(P1: JMediaViewListener); cdecl;//Deprecated
    procedure setVideoRenderer(P1: JMediaViewVideoRenderer); cdecl;//Deprecated
  end;
  TJMediaView = class(TJavaGenericImport<JMediaViewClass, JMediaView>) end;

  JAdIconViewClass = interface(JMediaViewClass)
    ['{D9D96178-3244-45FF-ACAA-8937E7BC00BB}']
    {class} function init(P1: JContext): JAdIconView; cdecl; overload;//Deprecated
    {class} function init(P1: JContext; P2: JAttributeSet): JAdIconView; cdecl; overload;//Deprecated
    {class} function init(P1: JContext; P2: JAttributeSet; P3: Integer): JAdIconView; cdecl; overload;//Deprecated
    {class} function init(P1: JContext; P2: JAttributeSet; P3: Integer; P4: Integer): JAdIconView; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/ads/AdIconView')]
  JAdIconView = interface(JMediaView)
    ['{1A88961A-F4CC-423C-B746-A6AA354976BB}']
  end;
  TJAdIconView = class(TJavaGenericImport<JAdIconViewClass, JAdIconView>) end;

  JAdComponentViewClass = interface(JFrameLayoutClass)
    ['{E6BDD7DF-C2A2-450A-ABDE-631D2DA00747}']
    {class} function init(P1: JContext): JAdComponentView; cdecl; overload;//Deprecated
    {class} function init(P1: JContext; P2: JAttributeSet): JAdComponentView; cdecl; overload;//Deprecated
    {class} function init(P1: JContext; P2: JAttributeSet; P3: Integer): JAdComponentView; cdecl; overload;//Deprecated
    {class} function init(P1: JContext; P2: JAttributeSet; P3: Integer; P4: Integer): JAdComponentView; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/ads/internal/api/AdComponentView')]
  JAdComponentView = interface(JFrameLayout)
    ['{8FA23B13-60D1-4E2B-B638-6E6A3A63591D}']
    procedure onWindowFocusChanged(P1: Boolean); cdecl;//Deprecated
    procedure setLayoutParams(P1: JViewGroup_LayoutParams); cdecl;//Deprecated
  end;
  TJAdComponentView = class(TJavaGenericImport<JAdComponentViewClass, JAdComponentView>) end;

  JAdOptionsViewClass = interface(JAdComponentViewClass)
    ['{49F0E5AB-067C-44C1-9CC0-390132F809F5}']
    {class} function init(P1: JContext; P2: JNativeAdBase; P3: JNativeAdLayout): JAdOptionsView; cdecl; overload;//Deprecated
    {class} function init(P1: JContext; P2: JNativeAdBase; P3: JNativeAdLayout; P4: JAdOptionsView_Orientation; P5: Integer): JAdOptionsView; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/ads/AdOptionsView')]
  JAdOptionsView = interface(JAdComponentView)
    ['{4D07A650-0BBF-4DE5-ABA7-DD69FD1DE60F}']
    procedure setIconColor(P1: Integer); cdecl;//Deprecated
    procedure setIconSizeDp(P1: Integer); cdecl;//Deprecated
    procedure setSingleIcon(P1: Boolean); cdecl;//Deprecated
  end;
  TJAdOptionsView = class(TJavaGenericImport<JAdOptionsViewClass, JAdOptionsView>) end;

  JAdOptionsView_OrientationClass = interface(JEnumClass)
    ['{889F89D3-61BF-4997-8501-BE15ECB3BF35}']
    {class} function _GetHORIZONTAL: JAdOptionsView_Orientation; cdecl;
    {class} function _GetVERTICAL: JAdOptionsView_Orientation; cdecl;
    {class} function valueOf(P1: JString): JAdOptionsView_Orientation; cdecl;
    {class} function values: TJavaObjectArray<JAdOptionsView_Orientation>; cdecl;
    {class} property HORIZONTAL: JAdOptionsView_Orientation read _GetHORIZONTAL;
    {class} property VERTICAL: JAdOptionsView_Orientation read _GetVERTICAL;
  end;

  [JavaSignature('com/facebook/ads/AdOptionsView$Orientation')]
  JAdOptionsView_Orientation = interface(JEnum)
    ['{729D7972-9C47-43F8-928F-3C007BA6D8D9}']
  end;
  TJAdOptionsView_Orientation = class(TJavaGenericImport<JAdOptionsView_OrientationClass, JAdOptionsView_Orientation>) end;

  JAdSettingsClass = interface(JObjectClass)
    ['{C9350EB5-971B-44D6-8059-4E16D1977723}']
    {class} function _GetDEBUG: Boolean; cdecl;
    {class} procedure addTestDevice(P1: JString); cdecl;
    {class} procedure addTestDevices(P1: JCollection); cdecl;
    {class} procedure clearTestDevices; cdecl;
    {class} function getMediationService: JString; cdecl;
    {class} function getTestAdType: JAdSettings_TestAdType; cdecl;
    {class} function getUrlPrefix: JString; cdecl;
    {class} function init: JAdSettings; cdecl;
    {class} function isChildDirected: Boolean; cdecl;
    {class} function isTestMode(P1: JContext): Boolean; cdecl;
    {class} function isVideoAutoplay: Boolean; cdecl;
    {class} function isVideoAutoplayOnMobile: Boolean; cdecl;
    {class} procedure setDebugBuild(P1: Boolean); cdecl;
    {class} procedure setIntegrationErrorMode(P1: JAdSettings_IntegrationErrorMode); cdecl;
    {class} procedure setIsChildDirected(P1: Boolean); cdecl;
    {class} procedure setMediationService(P1: JString); cdecl;
    {class} procedure setMultiprocessSupportMode(P1: JAdSettings_MultiprocessSupportMode); cdecl;
    {class} procedure setTestAdType(P1: JAdSettings_TestAdType); cdecl;
    {class} procedure setTestMode(P1: Boolean); cdecl;
    {class} procedure setUrlPrefix(P1: JString); cdecl;
    {class} procedure setVideoAutoplay(P1: Boolean); cdecl;
    {class} procedure setVideoAutoplayOnMobile(P1: Boolean); cdecl;
    {class} procedure setVisibleAnimation(P1: Boolean); cdecl;
    {class} procedure turnOnSDKDebugger(P1: JContext); cdecl;
    {class} property DEBUG: Boolean read _GetDEBUG;
  end;

  [JavaSignature('com/facebook/ads/AdSettings')]
  JAdSettings = interface(JObject)
    ['{EBD94FB2-42EF-4D99-9EFF-3AC543D620B0}']
  end;
  TJAdSettings = class(TJavaGenericImport<JAdSettingsClass, JAdSettings>) end;

  JAdSettings_IntegrationErrorModeClass = interface(JEnumClass)
    ['{0EE6ECF3-FAFA-4339-BCB3-7E89BD26DDB2}']
    {class} function _GetINTEGRATION_ERROR_CALLBACK_MODE: JAdSettings_IntegrationErrorMode; cdecl;
    {class} function _GetINTEGRATION_ERROR_CRASH_DEBUG_MODE: JAdSettings_IntegrationErrorMode; cdecl;
    {class} function _GetserialVersionUID: Int64; cdecl;
    {class} function valueOf(P1: JString): JAdSettings_IntegrationErrorMode; cdecl;
    {class} function values: TJavaObjectArray<JAdSettings_IntegrationErrorMode>; cdecl;
    {class} property INTEGRATION_ERROR_CALLBACK_MODE: JAdSettings_IntegrationErrorMode read _GetINTEGRATION_ERROR_CALLBACK_MODE;
    {class} property INTEGRATION_ERROR_CRASH_DEBUG_MODE: JAdSettings_IntegrationErrorMode read _GetINTEGRATION_ERROR_CRASH_DEBUG_MODE;
    {class} property serialVersionUID: Int64 read _GetserialVersionUID;
  end;

  [JavaSignature('com/facebook/ads/AdSettings$IntegrationErrorMode')]
  JAdSettings_IntegrationErrorMode = interface(JEnum)
    ['{82399C2C-59A8-49B4-9BC3-BF8E1B21E66F}']
  end;
  TJAdSettings_IntegrationErrorMode = class(TJavaGenericImport<JAdSettings_IntegrationErrorModeClass, JAdSettings_IntegrationErrorMode>) end;

  JAdSettings_MultiprocessSupportModeClass = interface(JEnumClass)
    ['{AFFC42B6-AE7E-407C-BC3D-F035E9E788FA}']
    {class} function _GetMULTIPROCESS_SUPPORT_MODE_AUTO: JAdSettings_MultiprocessSupportMode; cdecl;
    {class} function _GetMULTIPROCESS_SUPPORT_MODE_OFF: JAdSettings_MultiprocessSupportMode; cdecl;
    {class} function _GetMULTIPROCESS_SUPPORT_MODE_ON: JAdSettings_MultiprocessSupportMode; cdecl;
    {class} function _GetserialVersionUID: Int64; cdecl;
    {class} function valueOf(P1: JString): JAdSettings_MultiprocessSupportMode; cdecl;
    {class} function values: TJavaObjectArray<JAdSettings_MultiprocessSupportMode>; cdecl;
    {class} property MULTIPROCESS_SUPPORT_MODE_AUTO: JAdSettings_MultiprocessSupportMode read _GetMULTIPROCESS_SUPPORT_MODE_AUTO;
    {class} property MULTIPROCESS_SUPPORT_MODE_OFF: JAdSettings_MultiprocessSupportMode read _GetMULTIPROCESS_SUPPORT_MODE_OFF;
    {class} property MULTIPROCESS_SUPPORT_MODE_ON: JAdSettings_MultiprocessSupportMode read _GetMULTIPROCESS_SUPPORT_MODE_ON;
    {class} property serialVersionUID: Int64 read _GetserialVersionUID;
  end;

  [JavaSignature('com/facebook/ads/AdSettings$MultiprocessSupportMode')]
  JAdSettings_MultiprocessSupportMode = interface(JEnum)
    ['{9AC57D38-39DA-4546-ACAB-33D00E2A0C06}']
  end;
  TJAdSettings_MultiprocessSupportMode = class(TJavaGenericImport<JAdSettings_MultiprocessSupportModeClass, JAdSettings_MultiprocessSupportMode>) end;

  JAdSettings_TestAdTypeClass = interface(JEnumClass)
    ['{20BF09CC-F4E3-4B8B-A887-64C7AE55BB70}']
    {class} function _GetCAROUSEL_IMG_SQUARE_APP_INSTALL: JAdSettings_TestAdType; cdecl;
    {class} function _GetCAROUSEL_IMG_SQUARE_LINK: JAdSettings_TestAdType; cdecl;
    {class} function _GetDEFAULT: JAdSettings_TestAdType; cdecl;
    {class} function _GetIMG_16_9_APP_INSTALL: JAdSettings_TestAdType; cdecl;
    {class} function _GetIMG_16_9_LINK: JAdSettings_TestAdType; cdecl;
    {class} function _GetPLAYABLE: JAdSettings_TestAdType; cdecl;
    {class} function _GetVIDEO_HD_16_9_15S_APP_INSTALL: JAdSettings_TestAdType; cdecl;
    {class} function _GetVIDEO_HD_16_9_15S_LINK: JAdSettings_TestAdType; cdecl;
    {class} function _GetVIDEO_HD_16_9_46S_APP_INSTALL: JAdSettings_TestAdType; cdecl;
    {class} function _GetVIDEO_HD_16_9_46S_LINK: JAdSettings_TestAdType; cdecl;
    {class} function _GetVIDEO_HD_9_16_39S_APP_INSTALL: JAdSettings_TestAdType; cdecl;
    {class} function _GetVIDEO_HD_9_16_39S_LINK: JAdSettings_TestAdType; cdecl;
    {class} function _GetserialVersionUID: Int64; cdecl;
    {class} function getAdTypeString: JString; cdecl;
    {class} function getHumanReadable: JString; cdecl;
    {class} function valueOf(P1: JString): JAdSettings_TestAdType; cdecl;
    {class} function values: TJavaObjectArray<JAdSettings_TestAdType>; cdecl;
    {class} property CAROUSEL_IMG_SQUARE_APP_INSTALL: JAdSettings_TestAdType read _GetCAROUSEL_IMG_SQUARE_APP_INSTALL;
    {class} property CAROUSEL_IMG_SQUARE_LINK: JAdSettings_TestAdType read _GetCAROUSEL_IMG_SQUARE_LINK;
    {class} property DEFAULT: JAdSettings_TestAdType read _GetDEFAULT;
    {class} property IMG_16_9_APP_INSTALL: JAdSettings_TestAdType read _GetIMG_16_9_APP_INSTALL;
    {class} property IMG_16_9_LINK: JAdSettings_TestAdType read _GetIMG_16_9_LINK;
    {class} property PLAYABLE: JAdSettings_TestAdType read _GetPLAYABLE;
    {class} property VIDEO_HD_16_9_15S_APP_INSTALL: JAdSettings_TestAdType read _GetVIDEO_HD_16_9_15S_APP_INSTALL;
    {class} property VIDEO_HD_16_9_15S_LINK: JAdSettings_TestAdType read _GetVIDEO_HD_16_9_15S_LINK;
    {class} property VIDEO_HD_16_9_46S_APP_INSTALL: JAdSettings_TestAdType read _GetVIDEO_HD_16_9_46S_APP_INSTALL;
    {class} property VIDEO_HD_16_9_46S_LINK: JAdSettings_TestAdType read _GetVIDEO_HD_16_9_46S_LINK;
    {class} property VIDEO_HD_9_16_39S_APP_INSTALL: JAdSettings_TestAdType read _GetVIDEO_HD_9_16_39S_APP_INSTALL;
    {class} property VIDEO_HD_9_16_39S_LINK: JAdSettings_TestAdType read _GetVIDEO_HD_9_16_39S_LINK;
    {class} property serialVersionUID: Int64 read _GetserialVersionUID;
  end;

  [JavaSignature('com/facebook/ads/AdSettings$TestAdType')]
  JAdSettings_TestAdType = interface(JEnum)
    ['{0D324443-9E30-4DA2-AB76-9BCFC537AB3E}']
  end;
  TJAdSettings_TestAdType = class(TJavaGenericImport<JAdSettings_TestAdTypeClass, JAdSettings_TestAdType>) end;

  Jfacebook_ads_AdSizeClass = interface(JSerializableClass)
    ['{63C5ED7E-2189-4FC0-A90E-C6E0F30EADCD}']
    {class} function _GetBANNER_320_50: Jfacebook_ads_AdSize; cdecl;
    {class} function _GetBANNER_HEIGHT_50: Jfacebook_ads_AdSize; cdecl;
    {class} function _GetBANNER_HEIGHT_90: Jfacebook_ads_AdSize; cdecl;
    {class} function _GetINTERSTITIAL: Jfacebook_ads_AdSize; cdecl;
    {class} function _GetRECTANGLE_HEIGHT_250: Jfacebook_ads_AdSize; cdecl;
    {class} function equals(P1: JObject): Boolean; cdecl;
    {class} function fromWidthAndHeight(P1: Integer; P2: Integer): Jfacebook_ads_AdSize; cdecl;
    {class} function getHeight: Integer; cdecl;
    {class} function getWidth: Integer; cdecl;
    {class} function hashCode: Integer; cdecl;
    {class} function init(P1: Integer; P2: Integer): Jfacebook_ads_AdSize; cdecl;
    {class} property BANNER_320_50: Jfacebook_ads_AdSize read _GetBANNER_320_50;
    {class} property BANNER_HEIGHT_50: Jfacebook_ads_AdSize read _GetBANNER_HEIGHT_50;
    {class} property BANNER_HEIGHT_90: Jfacebook_ads_AdSize read _GetBANNER_HEIGHT_90;
    {class} property INTERSTITIAL: Jfacebook_ads_AdSize read _GetINTERSTITIAL;
    {class} property RECTANGLE_HEIGHT_250: Jfacebook_ads_AdSize read _GetRECTANGLE_HEIGHT_250;
  end;

  [JavaSignature('com/facebook/ads/AdSize')]
  Jfacebook_ads_AdSize = interface(JSerializable)
    ['{A8598394-399C-42F5-A8E3-29D6324C9D88}']
  end;
  TJfacebook_ads_AdSize = class(TJavaGenericImport<Jfacebook_ads_AdSizeClass, Jfacebook_ads_AdSize>) end;

  Jfacebook_ads_AdViewClass = interface(JRelativeLayoutClass)
    ['{0EBCF766-422E-4163-8BAE-1E44DCA222FA}']
    {class} function init(P1: JContext; P2: JString; P3: JString): Jfacebook_ads_AdView; cdecl; overload;//Deprecated
    {class} function init(P1: JContext; P2: JString; P3: Jfacebook_ads_AdSize): Jfacebook_ads_AdView; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/ads/AdView')]
  Jfacebook_ads_AdView = interface(JRelativeLayout)
    ['{25E5E587-F235-4105-8442-C57FE9F405F5}']
    procedure destroy; cdecl;//Deprecated
    procedure disableAutoRefresh; cdecl;//Deprecated
    function getPlacementId: JString; cdecl;//Deprecated
    function isAdInvalidated: Boolean; cdecl;//Deprecated
    procedure loadAd; cdecl;//Deprecated
    procedure loadAdFromBid(P1: JString); cdecl;//Deprecated
    procedure setAdListener(P1: Jfacebook_ads_AdListener); cdecl;//Deprecated
    procedure setExtraHints(P1: JExtraHints); cdecl;//Deprecated
  end;
  TJfacebook_ads_AdView = class(TJavaGenericImport<Jfacebook_ads_AdViewClass, Jfacebook_ads_AdView>) end;

  JAdViewParentApiClass = interface(IJavaClass)
    ['{C402C7C1-5CF5-4CD6-AAEB-4627159C1DBD}']
  end;

  [JavaSignature('com/facebook/ads/internal/api/AdViewParentApi')]
  JAdViewParentApi = interface(IJavaInstance)
    ['{0A09DF99-F3AF-4AF9-9BC7-2CBFEF4622B8}']
    procedure onConfigurationChanged(P1: JConfiguration); cdecl;//Deprecated
  end;
  TJAdViewParentApi = class(TJavaGenericImport<JAdViewParentApiClass, JAdViewParentApi>) end;

  JAdView_1Class = interface(JAdViewParentApiClass)
    ['{18D13063-7053-41B1-9C6F-2EFB18EFF6EA}']
    {class} procedure onConfigurationChanged(P1: JConfiguration); cdecl;
  end;

  [JavaSignature('com/facebook/ads/AdView$1')]
  JAdView_1 = interface(JAdViewParentApi)
    ['{4B811F37-065B-4F56-8EDB-C7AD097C16C6}']
  end;
  TJAdView_1 = class(TJavaGenericImport<JAdView_1Class, JAdView_1>) end;

  JAudienceNetworkActivityClass = interface(JActivityClass)
    ['{1F39120D-E02C-4F73-98A9-D72A7DB19A92}']
    {class} function init: JAudienceNetworkActivity; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/ads/AudienceNetworkActivity')]
  JAudienceNetworkActivity = interface(JActivity)
    ['{B4B3F111-1528-484F-872C-C1A32CF2C93E}']
    procedure finish; cdecl;//Deprecated
    procedure onBackPressed; cdecl;//Deprecated
    procedure onConfigurationChanged(P1: JConfiguration); cdecl;//Deprecated
    procedure onCreate(P1: JBundle); cdecl;//Deprecated
    procedure onPause; cdecl;//Deprecated
    procedure onResume; cdecl;//Deprecated
    procedure onSaveInstanceState(P1: JBundle); cdecl;//Deprecated
    procedure onStart; cdecl;//Deprecated
    function onTouchEvent(P1: JMotionEvent): Boolean; cdecl;//Deprecated
  end;
  TJAudienceNetworkActivity = class(TJavaGenericImport<JAudienceNetworkActivityClass, JAudienceNetworkActivity>) end;

  JAudienceNetworkActivityApiClass = interface(IJavaClass)
    ['{3156042F-A89E-4605-A680-0A0B2AA11780}']
  end;

  [JavaSignature('com/facebook/ads/internal/api/AudienceNetworkActivityApi')]
  JAudienceNetworkActivityApi = interface(IJavaInstance)
    ['{2719B280-39B2-4648-8489-A3B90F2DEA79}']
    procedure finish; cdecl;//Deprecated
    procedure onBackPressed; cdecl;//Deprecated
    procedure onConfigurationChanged(P1: JConfiguration); cdecl;//Deprecated
    procedure onCreate(P1: JBundle); cdecl;//Deprecated
    procedure onDestroy; cdecl;//Deprecated
    procedure onPause; cdecl;//Deprecated
    procedure onResume; cdecl;//Deprecated
    procedure onSaveInstanceState(P1: JBundle); cdecl;//Deprecated
    function onTouchEvent(P1: JMotionEvent): Boolean; cdecl;//Deprecated
    procedure onStart; cdecl;//Deprecated
  end;
  TJAudienceNetworkActivityApi = class(TJavaGenericImport<JAudienceNetworkActivityApiClass, JAudienceNetworkActivityApi>) end;

  JAudienceNetworkActivity_1Class = interface(JAudienceNetworkActivityApiClass)
    ['{612B1C4F-6FB7-411C-8A8B-566DD096DCA9}']
    {class} procedure finish; cdecl;
    {class} procedure onBackPressed; cdecl;
    {class} procedure onConfigurationChanged(P1: JConfiguration); cdecl;
    {class} procedure onCreate(P1: JBundle); cdecl;
    {class} procedure onDestroy; cdecl;
    {class} procedure onPause; cdecl;
    {class} procedure onResume; cdecl;
    {class} procedure onSaveInstanceState(P1: JBundle); cdecl;
    {class} procedure onStart; cdecl;
    {class} function onTouchEvent(P1: JMotionEvent): Boolean; cdecl;
  end;

  [JavaSignature('com/facebook/ads/AudienceNetworkActivity$1')]
  JAudienceNetworkActivity_1 = interface(JAudienceNetworkActivityApi)
    ['{FA512C7D-735D-4311-B67A-901F65F5CE63}']
  end;
  TJAudienceNetworkActivity_1 = class(TJavaGenericImport<JAudienceNetworkActivity_1Class, JAudienceNetworkActivity_1>) end;

  JAudienceNetworkAdsClass = interface(JObjectClass)
    ['{BEDF3D82-6424-4C15-A54F-910D443BE6AF}']
    {class} function _GetTAG: JString; cdecl;
    {class} function buildInitSettings(P1: JContext): JAudienceNetworkAds_InitSettingsBuilder; cdecl;
    {class} function getAdFormatForPlacement(P1: JContext; P2: JString): Integer; cdecl;
    {class} function getAdsProcessName(P1: JContext): JString; cdecl;
    {class} procedure initialize(P1: JContext); cdecl;
    {class} function isInAdsProcess(P1: JContext): Boolean; cdecl;
    {class} function isInitialized(P1: JContext): Boolean; cdecl;
    {class} property TAG: JString read _GetTAG;
  end;

  [JavaSignature('com/facebook/ads/AudienceNetworkAds')]
  JAudienceNetworkAds = interface(JObject)
    ['{2C9FCEED-B009-4C30-BC56-77AEB7E8EC8A}']
  end;
  TJAudienceNetworkAds = class(TJavaGenericImport<JAudienceNetworkAdsClass, JAudienceNetworkAds>) end;

  JAudienceNetworkAds_AdFormatClass = interface(JAnnotationClass)
    ['{CCCECF0C-FA73-46F8-8EB4-D2403FDF8E57}']
    {class} function _GetBANNER: Integer; cdecl;
    {class} function _GetINSTREAM_VIDEO_MOBILE: Integer; cdecl;
    {class} function _GetINTERSTITIAL: Integer; cdecl;
    {class} function _GetNATIVE: Integer; cdecl;
    {class} function _GetNATIVE_BANNER: Integer; cdecl;
    {class} function _GetREWARDED_VIDEO: Integer; cdecl;
    {class} function _GetUNKNOWN: Integer; cdecl;
    {class} property BANNER: Integer read _GetBANNER;
    {class} property INSTREAM_VIDEO_MOBILE: Integer read _GetINSTREAM_VIDEO_MOBILE;
    {class} property INTERSTITIAL: Integer read _GetINTERSTITIAL;
    {class} property NATIVE: Integer read _GetNATIVE;
    {class} property NATIVE_BANNER: Integer read _GetNATIVE_BANNER;
    {class} property REWARDED_VIDEO: Integer read _GetREWARDED_VIDEO;
    {class} property UNKNOWN: Integer read _GetUNKNOWN;
  end;

  [JavaSignature('com/facebook/ads/AudienceNetworkAds$AdFormat')]
  JAudienceNetworkAds_AdFormat = interface(JAnnotation)
    ['{B32CD3F0-A3E4-4018-9C06-A2F40B731CD4}']
  end;
  TJAudienceNetworkAds_AdFormat = class(TJavaGenericImport<JAudienceNetworkAds_AdFormatClass, JAudienceNetworkAds_AdFormat>) end;

  JAudienceNetworkAds_InitListenerClass = interface(IJavaClass)
    ['{E0E1FAEE-C347-4E36-921E-E8F5DEDA8FD2}']
  end;

  [JavaSignature('com/facebook/ads/AudienceNetworkAds$InitListener')]
  JAudienceNetworkAds_InitListener = interface(IJavaInstance)
    ['{2930016B-FC53-4093-A8C8-2625EBE5186B}']
    procedure onInitialized(P1: JAudienceNetworkAds_InitResult); cdecl;//Deprecated
  end;
  TJAudienceNetworkAds_InitListener = class(TJavaGenericImport<JAudienceNetworkAds_InitListenerClass, JAudienceNetworkAds_InitListener>) end;

  JAudienceNetworkAds_InitResultClass = interface(IJavaClass)
    ['{9BCE10C9-788A-49AF-91AC-0E8DBEF226F4}']
  end;

  [JavaSignature('com/facebook/ads/AudienceNetworkAds$InitResult')]
  JAudienceNetworkAds_InitResult = interface(IJavaInstance)
    ['{41B37A73-C52F-493B-96CA-A01B641D3329}']
    function getMessage: JString; cdecl;//Deprecated
    function isSuccess: Boolean; cdecl;//Deprecated
  end;
  TJAudienceNetworkAds_InitResult = class(TJavaGenericImport<JAudienceNetworkAds_InitResultClass, JAudienceNetworkAds_InitResult>) end;

  JAudienceNetworkAds_InitSettingsBuilderClass = interface(IJavaClass)
    ['{ACA19FA4-1B0C-451A-85CB-3CB5FB9B6836}']
  end;

  [JavaSignature('com/facebook/ads/AudienceNetworkAds$InitSettingsBuilder')]
  JAudienceNetworkAds_InitSettingsBuilder = interface(IJavaInstance)
    ['{C7E14E50-67AC-4F0F-A022-DCFD48DF9A42}']
    procedure initialize; cdecl;//Deprecated
    function withInitListener(P1: JAudienceNetworkAds_InitListener): JAudienceNetworkAds_InitSettingsBuilder; cdecl;//Deprecated
    function withMediationService(P1: JString): JAudienceNetworkAds_InitSettingsBuilder; cdecl;//Deprecated
    function withPlacementIds(P1: JList): JAudienceNetworkAds_InitSettingsBuilder; cdecl;//Deprecated
  end;
  TJAudienceNetworkAds_InitSettingsBuilder = class(TJavaGenericImport<JAudienceNetworkAds_InitSettingsBuilderClass, JAudienceNetworkAds_InitSettingsBuilder>) end;

  JAudienceNetworkContentProviderClass = interface(JContentProviderClass)
    ['{155B5B34-3606-4239-A89C-93E86307C217}']
    {class} function init: JAudienceNetworkContentProvider; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/ads/AudienceNetworkContentProvider')]
  JAudienceNetworkContentProvider = interface(JContentProvider)
    ['{11AC9E48-FB33-4ABF-8342-7388F90C7929}']
    function delete(P1: Jnet_Uri; P2: JString; P3: TJavaObjectArray<JString>): Integer; cdecl;//Deprecated
    function getType(P1: Jnet_Uri): JString; cdecl;//Deprecated
    function insert(P1: Jnet_Uri; P2: JContentValues): Jnet_Uri; cdecl;//Deprecated
    function onCreate: Boolean; cdecl;//Deprecated
    function query(P1: Jnet_Uri; P2: TJavaObjectArray<JString>; P3: JString; P4: TJavaObjectArray<JString>; P5: JString): JCursor; cdecl;//Deprecated
    function update(P1: Jnet_Uri; P2: JContentValues; P3: JString; P4: TJavaObjectArray<JString>): Integer; cdecl;//Deprecated
  end;
  TJAudienceNetworkContentProvider = class(TJavaGenericImport<JAudienceNetworkContentProviderClass, JAudienceNetworkContentProvider>) end;

  JBidderTokenProviderClass = interface(JObjectClass)
    ['{DB8FDA08-0105-48B2-A646-05D44B1D3F7B}']
    {class} function getBidderToken(P1: JContext): JString; cdecl;//Deprecated
    {class} function init: JBidderTokenProvider; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/ads/BidderTokenProvider')]
  JBidderTokenProvider = interface(JObject)
    ['{A4B2CA18-A1D9-4DA4-A9BF-BE07DFE02669}']
  end;
  TJBidderTokenProvider = class(TJavaGenericImport<JBidderTokenProviderClass, JBidderTokenProvider>) end;

  Jads_BuildConfigClass = interface(JObjectClass)
    ['{5AA37F67-6DFC-411C-B432-E5A0EFF8F9E6}']
    {class} function _GetAPPLICATION_ID: JString; cdecl;
    {class} function _GetBUILD_TYPE: JString; cdecl;
    {class} function _GetDEBUG: Boolean; cdecl;
    {class} function _GetVERSION_NAME: JString; cdecl;
    {class} function init: Jads_BuildConfig; cdecl;
    {class} property APPLICATION_ID: JString read _GetAPPLICATION_ID;
    {class} property BUILD_TYPE: JString read _GetBUILD_TYPE;
    {class} property DEBUG: Boolean read _GetDEBUG;
    {class} property VERSION_NAME: JString read _GetVERSION_NAME;
  end;

  [JavaSignature('com/facebook/ads/BuildConfig')]
  Jads_BuildConfig = interface(JObject)
    ['{69DEA66A-96B6-49D8-A377-776AE72F9194}']
  end;
  TJads_BuildConfig = class(TJavaGenericImport<Jads_BuildConfigClass, Jads_BuildConfig>) end;

  JCacheFlagClass = interface(JEnumClass)
    ['{5086E56E-46CD-4319-A1F2-267780FA802B}']
    {class} function _GetALL: JEnumSet; cdecl;
    {class} function _GetICON: JCacheFlag; cdecl;
    {class} function _GetIMAGE: JCacheFlag; cdecl;
    {class} function _GetNONE: JCacheFlag; cdecl;
    {class} function _GetVIDEO: JCacheFlag; cdecl;
    {class} function valueOf(P1: JString): JCacheFlag; cdecl;
    {class} function values: TJavaObjectArray<JCacheFlag>; cdecl;
    {class} property ALL: JEnumSet read _GetALL;
    {class} property ICON: JCacheFlag read _GetICON;
    {class} property IMAGE: JCacheFlag read _GetIMAGE;
    {class} property NONE: JCacheFlag read _GetNONE;
    {class} property VIDEO: JCacheFlag read _GetVIDEO;
  end;

  [JavaSignature('com/facebook/ads/CacheFlag')]
  JCacheFlag = interface(JEnum)
    ['{4F704258-4D5C-4F40-B9BC-92093168122D}']
  end;
  TJCacheFlag = class(TJavaGenericImport<JCacheFlagClass, JCacheFlag>) end;

  JMediaViewVideoRendererClass = interface(JAdComponentViewClass)
    ['{014305FC-9F19-4A69-9342-701AA8BE95E5}']
    {class} procedure addView(P1: JView); cdecl; overload;
    {class} procedure addView(P1: JView; P2: JViewGroup_LayoutParams); cdecl; overload;
    {class} procedure addView(P1: JView; P2: Integer); cdecl; overload;
    {class} procedure addView(P1: JView; P2: Integer; P3: Integer); cdecl; overload;
    {class} procedure addView(P1: JView; P2: Integer; P3: JViewGroup_LayoutParams); cdecl; overload;
    {class} procedure destroy; cdecl;
    {class} procedure disengageSeek(P1: JVideoStartReason); cdecl;
    {class} procedure engageSeek; cdecl;
    {class} function getCurrentTimeMs: Integer; cdecl;
    {class} function getDuration: Integer; cdecl;
    {class} function getMediaViewVideoRendererApi: JMediaViewVideoRendererApi; cdecl;
    {class} function getVolume: Single; cdecl;
    {class} function init(P1: JContext): JMediaViewVideoRenderer; cdecl; overload;
    {class} function init(P1: JContext; P2: JAttributeSet): JMediaViewVideoRenderer; cdecl; overload;
    {class} function init(P1: JContext; P2: JAttributeSet; P3: Integer): JMediaViewVideoRenderer; cdecl; overload;
    {class} function init(P1: JContext; P2: JAttributeSet; P3: Integer; P4: Integer): JMediaViewVideoRenderer; cdecl; overload;
    {class} procedure onCompleted; cdecl;
    {class} procedure onError; cdecl;
    {class} procedure onPaused; cdecl;
    {class} procedure onPlayed; cdecl;
    {class} procedure onPrepared; cdecl;
    {class} procedure onSeek; cdecl;
    {class} procedure onSeekDisengaged; cdecl;
    {class} procedure onSeekEngaged; cdecl;
    {class} procedure onVolumeChanged; cdecl;
    {class} procedure pause(P1: Boolean); cdecl;
    {class} procedure play(P1: JVideoStartReason); cdecl;
    {class} procedure seekTo(P1: Integer); cdecl;
    {class} procedure setNativeAd(P1: JNativeAd); cdecl;
    {class} procedure setVolume(P1: Single); cdecl;
    {class} function shouldAllowBackgroundPlayback: Boolean; cdecl;
    {class} function shouldAutoplay: Boolean; cdecl;
    {class} procedure unsetNativeAd; cdecl;
  end;

  [JavaSignature('com/facebook/ads/MediaViewVideoRenderer')]
  JMediaViewVideoRenderer = interface(JAdComponentView)
    ['{07EACE2E-C4F6-4D8A-9F3D-C46C36C04B16}']
  end;
  TJMediaViewVideoRenderer = class(TJavaGenericImport<JMediaViewVideoRendererClass, JMediaViewVideoRenderer>) end;

  JDefaultMediaViewVideoRendererClass = interface(JMediaViewVideoRendererClass)
    ['{83416B84-6CA1-4A27-A942-6F857BE74E62}']
    {class} function init(P1: JContext): JDefaultMediaViewVideoRenderer; cdecl; overload;//Deprecated
    {class} function init(P1: JContext; P2: JAttributeSet): JDefaultMediaViewVideoRenderer; cdecl; overload;//Deprecated
    {class} function init(P1: JContext; P2: JAttributeSet; P3: Integer): JDefaultMediaViewVideoRenderer; cdecl; overload;//Deprecated
    {class} function init(P1: JContext; P2: JAttributeSet; P3: Integer; P4: Integer): JDefaultMediaViewVideoRenderer; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/ads/DefaultMediaViewVideoRenderer')]
  JDefaultMediaViewVideoRenderer = interface(JMediaViewVideoRenderer)
    ['{C27B7D36-3BCD-4830-A6FD-F7D82F357245}']
    procedure onPrepared; cdecl;//Deprecated
  end;
  TJDefaultMediaViewVideoRenderer = class(TJavaGenericImport<JDefaultMediaViewVideoRendererClass, JDefaultMediaViewVideoRenderer>) end;

  JExtraHintsClass = interface(JObjectClass)
    ['{3BBA328D-AC81-4068-8F34-278578C83BD1}']
  end;

  [JavaSignature('com/facebook/ads/ExtraHints')]
  JExtraHints = interface(JObject)
    ['{39A326D0-9219-4E47-A156-45144C5671B6}']
    function getHints: JString; cdecl;//Deprecated
    function getMediationData: JString; cdecl;//Deprecated
  end;
  TJExtraHints = class(TJavaGenericImport<JExtraHintsClass, JExtraHints>) end;

  JExtraHints_1Class = interface(JObjectClass)
    ['{58A3B935-2EDD-4D20-A33F-0DB98CFD6667}']
  end;

  [JavaSignature('com/facebook/ads/ExtraHints$1')]
  JExtraHints_1 = interface(JObject)
    ['{9D21D0EB-75D0-409A-8544-E6658B059A14}']
  end;
  TJExtraHints_1 = class(TJavaGenericImport<JExtraHints_1Class, JExtraHints_1>) end;

  JExtraHints_BuilderClass = interface(JObjectClass)
    ['{1EBF4301-F556-4203-B120-58F011B3C387}']
    {class} function init: JExtraHints_Builder; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/ads/ExtraHints$Builder')]
  JExtraHints_Builder = interface(JObject)
    ['{210F3695-B53A-4FC3-9DEC-F99C34B32C7F}']
    function build: JExtraHints; cdecl;//Deprecated
    function contentUrl(P1: JString): JExtraHints_Builder; cdecl;//Deprecated
    function extraData(P1: JString): JExtraHints_Builder; cdecl;//Deprecated
    function keywords(P1: JList): JExtraHints_Builder; cdecl;//Deprecated
    function mediationData(P1: JString): JExtraHints_Builder; cdecl;//Deprecated
  end;
  TJExtraHints_Builder = class(TJavaGenericImport<JExtraHints_BuilderClass, JExtraHints_Builder>) end;

  JExtraHints_HintTypeClass = interface(JEnumClass)
    ['{B526F490-6742-419D-8EEA-2A79C4D2D495}']
    {class} function _GetCONTENT_URL: JExtraHints_HintType; cdecl;
    {class} function _GetEXTRA_DATA: JExtraHints_HintType; cdecl;
    {class} function _GetKEYWORDS: JExtraHints_HintType; cdecl;
    {class} function valueOf(P1: JString): JExtraHints_HintType; cdecl;
    {class} function values: TJavaObjectArray<JExtraHints_HintType>; cdecl;
    {class} property CONTENT_URL: JExtraHints_HintType read _GetCONTENT_URL;
    {class} property EXTRA_DATA: JExtraHints_HintType read _GetEXTRA_DATA;
    {class} property KEYWORDS: JExtraHints_HintType read _GetKEYWORDS;
  end;

  [JavaSignature('com/facebook/ads/ExtraHints$HintType')]
  JExtraHints_HintType = interface(JEnum)
    ['{0A5CA40C-0A6E-4EE1-8772-CF36556CA579}']
  end;
  TJExtraHints_HintType = class(TJavaGenericImport<JExtraHints_HintTypeClass, JExtraHints_HintType>) end;

  JExtraHints_KeywordClass = interface(JEnumClass)
    ['{EB1423F4-630F-47E7-BB05-08BAE032782A}']
    {class} function _GetACCESSORIES: JExtraHints_Keyword; cdecl;
    {class} function _GetART_HISTORY: JExtraHints_Keyword; cdecl;
    {class} function _GetAUTOMOTIVE: JExtraHints_Keyword; cdecl;
    {class} function _GetBEAUTY: JExtraHints_Keyword; cdecl;
    {class} function _GetBIOLOGY: JExtraHints_Keyword; cdecl;
    {class} function _GetBOARD_GAMES: JExtraHints_Keyword; cdecl;
    {class} function _GetBUSINESS_SOFTWARE: JExtraHints_Keyword; cdecl;
    {class} function _GetBUYING_SELLING_HOMES: JExtraHints_Keyword; cdecl;
    {class} function _GetCATS: JExtraHints_Keyword; cdecl;
    {class} function _GetCELEBRITIES: JExtraHints_Keyword; cdecl;
    {class} function _GetCLOTHING: JExtraHints_Keyword; cdecl;
    {class} function _GetCOMIC_BOOKS: JExtraHints_Keyword; cdecl;
    {class} function _GetDESKTOP_VIDEO: JExtraHints_Keyword; cdecl;
    {class} function _GetDOGS: JExtraHints_Keyword; cdecl;
    {class} function _GetEDUCATION: JExtraHints_Keyword; cdecl;
    {class} function _GetEMAIL: JExtraHints_Keyword; cdecl;
    {class} function _GetENTERTAINMENT: JExtraHints_Keyword; cdecl;
    {class} function _GetFAMILY_PARENTING: JExtraHints_Keyword; cdecl;
    {class} function _GetFASHION: JExtraHints_Keyword; cdecl;
    {class} function _GetFINE_ART: JExtraHints_Keyword; cdecl;
    {class} function _GetFOOD_DRINK: JExtraHints_Keyword; cdecl;
    {class} function _GetFRENCH_CUISINE: JExtraHints_Keyword; cdecl;
    {class} function _GetGOVERNMENT: JExtraHints_Keyword; cdecl;
    {class} function _GetHEALTH_FITNESS: JExtraHints_Keyword; cdecl;
    {class} function _GetHOBBIES: JExtraHints_Keyword; cdecl;
    {class} function _GetHOME_GARDEN: JExtraHints_Keyword; cdecl;
    {class} function _GetHUMOR: JExtraHints_Keyword; cdecl;
    {class} function _GetINTERNET_TECHNOLOGY: JExtraHints_Keyword; cdecl;
    {class} function _GetLARGE_ANIMALS: JExtraHints_Keyword; cdecl;
    {class} function _GetLAW: JExtraHints_Keyword; cdecl;
    {class} function _GetLEGAL_ISSUES: JExtraHints_Keyword; cdecl;
    {class} function _GetLITERATURE: JExtraHints_Keyword; cdecl;
    {class} function _GetMARKETING: JExtraHints_Keyword; cdecl;
    {class} function _GetMOVIES: JExtraHints_Keyword; cdecl;
    {class} function _GetMUSIC: JExtraHints_Keyword; cdecl;
    {class} function _GetNEWS: JExtraHints_Keyword; cdecl;
    {class} function _GetPERSONAL_FINANCE: JExtraHints_Keyword; cdecl;
    {class} function _GetPETS: JExtraHints_Keyword; cdecl;
    {class} function _GetPHOTOGRAPHY: JExtraHints_Keyword; cdecl;
    {class} function _GetPOLITICS: JExtraHints_Keyword; cdecl;
    {class} function _GetREAL_ESTATE: JExtraHints_Keyword; cdecl;
    {class} function _GetROLEPLAYING_GAMES: JExtraHints_Keyword; cdecl;
    {class} function _GetSCIENCE: JExtraHints_Keyword; cdecl;
    {class} function _GetSHOPPING: JExtraHints_Keyword; cdecl;
    {class} function _GetSOCIETY: JExtraHints_Keyword; cdecl;
    {class} function _GetSPORTS: JExtraHints_Keyword; cdecl;
    {class} function _GetTECHNOLOGY: JExtraHints_Keyword; cdecl;
    {class} function _GetTELEVISION: JExtraHints_Keyword; cdecl;
    {class} function _GetTRAVEL: JExtraHints_Keyword; cdecl;
    {class} function _GetVIDEO_COMPUTER_GAMES: JExtraHints_Keyword; cdecl;
    {class} function valueOf(P1: JString): JExtraHints_Keyword; cdecl;
    {class} function values: TJavaObjectArray<JExtraHints_Keyword>; cdecl;
    {class} property ACCESSORIES: JExtraHints_Keyword read _GetACCESSORIES;
    {class} property ART_HISTORY: JExtraHints_Keyword read _GetART_HISTORY;
    {class} property AUTOMOTIVE: JExtraHints_Keyword read _GetAUTOMOTIVE;
    {class} property BEAUTY: JExtraHints_Keyword read _GetBEAUTY;
    {class} property BIOLOGY: JExtraHints_Keyword read _GetBIOLOGY;
    {class} property BOARD_GAMES: JExtraHints_Keyword read _GetBOARD_GAMES;
    {class} property BUSINESS_SOFTWARE: JExtraHints_Keyword read _GetBUSINESS_SOFTWARE;
    {class} property BUYING_SELLING_HOMES: JExtraHints_Keyword read _GetBUYING_SELLING_HOMES;
    {class} property CATS: JExtraHints_Keyword read _GetCATS;
    {class} property CELEBRITIES: JExtraHints_Keyword read _GetCELEBRITIES;
    {class} property CLOTHING: JExtraHints_Keyword read _GetCLOTHING;
    {class} property COMIC_BOOKS: JExtraHints_Keyword read _GetCOMIC_BOOKS;
    {class} property DESKTOP_VIDEO: JExtraHints_Keyword read _GetDESKTOP_VIDEO;
    {class} property DOGS: JExtraHints_Keyword read _GetDOGS;
    {class} property EDUCATION: JExtraHints_Keyword read _GetEDUCATION;
    {class} property EMAIL: JExtraHints_Keyword read _GetEMAIL;
    {class} property ENTERTAINMENT: JExtraHints_Keyword read _GetENTERTAINMENT;
    {class} property FAMILY_PARENTING: JExtraHints_Keyword read _GetFAMILY_PARENTING;
    {class} property FASHION: JExtraHints_Keyword read _GetFASHION;
    {class} property FINE_ART: JExtraHints_Keyword read _GetFINE_ART;
    {class} property FOOD_DRINK: JExtraHints_Keyword read _GetFOOD_DRINK;
    {class} property FRENCH_CUISINE: JExtraHints_Keyword read _GetFRENCH_CUISINE;
    {class} property GOVERNMENT: JExtraHints_Keyword read _GetGOVERNMENT;
    {class} property HEALTH_FITNESS: JExtraHints_Keyword read _GetHEALTH_FITNESS;
    {class} property HOBBIES: JExtraHints_Keyword read _GetHOBBIES;
    {class} property HOME_GARDEN: JExtraHints_Keyword read _GetHOME_GARDEN;
    {class} property HUMOR: JExtraHints_Keyword read _GetHUMOR;
    {class} property INTERNET_TECHNOLOGY: JExtraHints_Keyword read _GetINTERNET_TECHNOLOGY;
    {class} property LARGE_ANIMALS: JExtraHints_Keyword read _GetLARGE_ANIMALS;
    {class} property LAW: JExtraHints_Keyword read _GetLAW;
    {class} property LEGAL_ISSUES: JExtraHints_Keyword read _GetLEGAL_ISSUES;
    {class} property LITERATURE: JExtraHints_Keyword read _GetLITERATURE;
    {class} property MARKETING: JExtraHints_Keyword read _GetMARKETING;
    {class} property MOVIES: JExtraHints_Keyword read _GetMOVIES;
    {class} property MUSIC: JExtraHints_Keyword read _GetMUSIC;
    {class} property NEWS: JExtraHints_Keyword read _GetNEWS;
    {class} property PERSONAL_FINANCE: JExtraHints_Keyword read _GetPERSONAL_FINANCE;
    {class} property PETS: JExtraHints_Keyword read _GetPETS;
    {class} property PHOTOGRAPHY: JExtraHints_Keyword read _GetPHOTOGRAPHY;
    {class} property POLITICS: JExtraHints_Keyword read _GetPOLITICS;
    {class} property REAL_ESTATE: JExtraHints_Keyword read _GetREAL_ESTATE;
    {class} property ROLEPLAYING_GAMES: JExtraHints_Keyword read _GetROLEPLAYING_GAMES;
    {class} property SCIENCE: JExtraHints_Keyword read _GetSCIENCE;
    {class} property SHOPPING: JExtraHints_Keyword read _GetSHOPPING;
    {class} property SOCIETY: JExtraHints_Keyword read _GetSOCIETY;
    {class} property SPORTS: JExtraHints_Keyword read _GetSPORTS;
    {class} property TECHNOLOGY: JExtraHints_Keyword read _GetTECHNOLOGY;
    {class} property TELEVISION: JExtraHints_Keyword read _GetTELEVISION;
    {class} property TRAVEL: JExtraHints_Keyword read _GetTRAVEL;
    {class} property VIDEO_COMPUTER_GAMES: JExtraHints_Keyword read _GetVIDEO_COMPUTER_GAMES;
  end;

  [JavaSignature('com/facebook/ads/ExtraHints$Keyword')]
  JExtraHints_Keyword = interface(JEnum)
    ['{CE31AD5D-0467-49C2-B85B-4032F5D32B6E}']
  end;
  TJExtraHints_Keyword = class(TJavaGenericImport<JExtraHints_KeywordClass, JExtraHints_Keyword>) end;

  JInstreamVideoAdListenerClass = interface(Jfacebook_ads_AdListenerClass)
    ['{1E2DDDF8-E8A7-494D-BA78-9A6576C93A2D}']
  end;

  [JavaSignature('com/facebook/ads/InstreamVideoAdListener')]
  JInstreamVideoAdListener = interface(Jfacebook_ads_AdListener)
    ['{5CA3032A-B5E7-4C13-9241-FC97D7840D57}']
    procedure onAdVideoComplete(P1: Jfacebook_ads_Ad); cdecl;//Deprecated
  end;
  TJInstreamVideoAdListener = class(TJavaGenericImport<JInstreamVideoAdListenerClass, JInstreamVideoAdListener>) end;

  JInstreamVideoAdViewClass = interface(JRelativeLayoutClass)
    ['{2B466D62-F702-4A1F-B276-588FF7DDB3F6}']
    {class} function init(P1: JContext; P2: JBundle): JInstreamVideoAdView; cdecl; overload;//Deprecated
    {class} function init(P1: JContext; P2: JString; P3: Jfacebook_ads_AdSize): JInstreamVideoAdView; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/ads/InstreamVideoAdView')]
  JInstreamVideoAdView = interface(JRelativeLayout)
    ['{DBFE36A0-9989-4407-A88A-03D76C482FA6}']
    procedure destroy; cdecl;//Deprecated
    function getPlacementId: JString; cdecl;//Deprecated
    function getSaveInstanceState: JBundle; cdecl;//Deprecated
    function isAdInvalidated: Boolean; cdecl;//Deprecated
    function isAdLoaded: Boolean; cdecl;//Deprecated
    procedure loadAd; cdecl;//Deprecated
    procedure loadAdFromBid(P1: JString); cdecl;//Deprecated
    procedure setAdListener(P1: JInstreamVideoAdListener); cdecl;//Deprecated
    procedure setExtraHints(P1: JExtraHints); cdecl;//Deprecated
    function show: Boolean; cdecl;//Deprecated
  end;
  TJInstreamVideoAdView = class(TJavaGenericImport<JInstreamVideoAdViewClass, JInstreamVideoAdView>) end;

  Jfacebook_ads_InterstitialAdClass = interface(Jfacebook_ads_AdClass)
    ['{852B9A21-B36E-4E9A-8166-BA9902A88B58}']
    {class} function init(P1: JContext; P2: JString): Jfacebook_ads_InterstitialAd; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/ads/InterstitialAd')]
  Jfacebook_ads_InterstitialAd = interface(Jfacebook_ads_Ad)
    ['{E5B6BD4F-7319-4120-AA3B-2F8A57561138}']
    procedure destroy; cdecl;//Deprecated
    function getPlacementId: JString; cdecl;//Deprecated
    function isAdInvalidated: Boolean; cdecl;//Deprecated
    function isAdLoaded: Boolean; cdecl;//Deprecated
    procedure loadAd; cdecl; overload;//Deprecated
    procedure loadAd(P1: JEnumSet); cdecl; overload;//Deprecated
    procedure loadAdFromBid(P1: JString); cdecl; overload;//Deprecated
    procedure loadAdFromBid(P1: JEnumSet; P2: JString); cdecl; overload;//Deprecated
    procedure setAdListener(P1: JInterstitialAdListener); cdecl;//Deprecated
    procedure setExtraHints(P1: JExtraHints); cdecl;//Deprecated
    procedure setRewardedAdListener(P1: JRewardedAdListener); cdecl;//Deprecated
    function show: Boolean; cdecl;//Deprecated
  end;
  TJfacebook_ads_InterstitialAd = class(TJavaGenericImport<Jfacebook_ads_InterstitialAdClass, Jfacebook_ads_InterstitialAd>) end;

  JInterstitialAdListenerClass = interface(Jfacebook_ads_AdListenerClass)
    ['{3FB18994-A7BA-4959-A515-F294B19AD67F}']
  end;

  [JavaSignature('com/facebook/ads/InterstitialAdListener')]
  JInterstitialAdListener = interface(Jfacebook_ads_AdListener)
    ['{E2D77E25-F713-42CA-9A6A-9C65BDE22F10}']
    procedure onInterstitialDismissed(P1: Jfacebook_ads_Ad); cdecl;//Deprecated
    procedure onInterstitialDisplayed(P1: Jfacebook_ads_Ad); cdecl;//Deprecated
  end;
  TJInterstitialAdListener = class(TJavaGenericImport<JInterstitialAdListenerClass, JInterstitialAdListener>) end;

  JInterstitialAdExtendedListenerClass = interface(JInterstitialAdListenerClass)
    ['{52A1987F-3F57-4C2B-A24D-AF7CCE469E0E}']
  end;

  [JavaSignature('com/facebook/ads/InterstitialAdExtendedListener')]
  JInterstitialAdExtendedListener = interface(JInterstitialAdListener)
    ['{2D4A7D04-0B42-4707-BDBA-3ED3448D5152}']
    procedure onInterstitialActivityDestroyed; cdecl;//Deprecated
  end;
  TJInterstitialAdExtendedListener = class(TJavaGenericImport<JInterstitialAdExtendedListenerClass, JInterstitialAdExtendedListener>) end;

  JMediaViewParentApiClass = interface(IJavaClass)
    ['{34FE7067-2E03-4086-A0E5-D70A74CFFDE8}']
  end;

  [JavaSignature('com/facebook/ads/internal/api/MediaViewParentApi')]
  JMediaViewParentApi = interface(IJavaInstance)
    ['{C4813F45-C0EF-447E-A627-B9CFD9B835EE}']
    procedure bringChildToFront(P1: JView); cdecl;//Deprecated
    procedure setImmutable(P1: Boolean); cdecl;//Deprecated
  end;
  TJMediaViewParentApi = class(TJavaGenericImport<JMediaViewParentApiClass, JMediaViewParentApi>) end;

  JMediaView_1Class = interface(JMediaViewParentApiClass)
    ['{0D1C8E8D-05AA-4886-A8F1-69F13A712EE3}']
    {class} procedure bringChildToFront(P1: JView); cdecl;
    {class} procedure setImmutable(P1: Boolean); cdecl;
  end;

  [JavaSignature('com/facebook/ads/MediaView$1')]
  JMediaView_1 = interface(JMediaViewParentApi)
    ['{72F4AE49-FCF7-4ADD-967C-A90737A56BEA}']
  end;
  TJMediaView_1 = class(TJavaGenericImport<JMediaView_1Class, JMediaView_1>) end;

  JMediaViewListenerClass = interface(IJavaClass)
    ['{278AC730-A2D4-4345-8234-5E23B9C651D1}']
  end;

  [JavaSignature('com/facebook/ads/MediaViewListener')]
  JMediaViewListener = interface(IJavaInstance)
    ['{0D133DC4-91ED-4988-94D6-45A050FEE67F}']
    procedure onComplete(P1: JMediaView); cdecl;//Deprecated
    procedure onEnterFullscreen(P1: JMediaView); cdecl;//Deprecated
    procedure onExitFullscreen(P1: JMediaView); cdecl;//Deprecated
    procedure onFullscreenBackground(P1: JMediaView); cdecl;//Deprecated
    procedure onFullscreenForeground(P1: JMediaView); cdecl;//Deprecated
    procedure onPause(P1: JMediaView); cdecl;//Deprecated
    procedure onPlay(P1: JMediaView); cdecl;//Deprecated
    procedure onVolumeChange(P1: JMediaView; P2: Single); cdecl;//Deprecated
  end;
  TJMediaViewListener = class(TJavaGenericImport<JMediaViewListenerClass, JMediaViewListener>) end;

  JMediaViewVideoRendererWithBackgroundPlaybackClass = interface(JMediaViewVideoRendererClass)
    ['{DB82BC18-FBA8-4DCC-9C1A-4171E44F566A}']
    {class} function init(P1: JContext): JMediaViewVideoRendererWithBackgroundPlayback; cdecl; overload;//Deprecated
    {class} function init(P1: JContext; P2: JAttributeSet): JMediaViewVideoRendererWithBackgroundPlayback; cdecl; overload;//Deprecated
    {class} function init(P1: JContext; P2: JAttributeSet; P3: Integer): JMediaViewVideoRendererWithBackgroundPlayback; cdecl; overload;//Deprecated
    {class} function init(P1: JContext; P2: JAttributeSet; P3: Integer; P4: Integer): JMediaViewVideoRendererWithBackgroundPlayback; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/ads/MediaViewVideoRendererWithBackgroundPlayback')]
  JMediaViewVideoRendererWithBackgroundPlayback = interface(JMediaViewVideoRenderer)
    ['{42B7B3FF-2CD8-4B6E-94F8-FD7A8901AD74}']
    procedure onPrepared; cdecl;//Deprecated
    function shouldAllowBackgroundPlayback: Boolean; cdecl;//Deprecated
  end;
  TJMediaViewVideoRendererWithBackgroundPlayback = class(TJavaGenericImport<JMediaViewVideoRendererWithBackgroundPlaybackClass, JMediaViewVideoRendererWithBackgroundPlayback>) end;

  JNativeAdBaseClass = interface(Jfacebook_ads_AdClass)
    ['{33ED6BB4-3290-4A6A-B572-CBBFEBDB6067}']
    {class} function buildLoadAdConfig: JNativeAdBase_NativeAdLoadConfigBuilder; cdecl;
    {class} procedure destroy; cdecl;
    {class} procedure downloadMedia; cdecl;
    {class} function fromBidPayload(P1: JContext; P2: JString; P3: JString): JNativeAdBase; cdecl;
    {class} function getAdBodyText: JString; cdecl;
    {class} function getAdCallToAction: JString; cdecl;
    {class} function getAdChoicesIcon: JNativeAdBase_Image; cdecl;
    {class} function getAdChoicesImageUrl: JString; cdecl;
    {class} function getAdChoicesLinkUrl: JString; cdecl;
    {class} function getAdChoicesText: JString; cdecl;
    {class} function getAdCoverImage: JNativeAdBase_Image; cdecl;
    {class} function getAdHeadline: JString; cdecl;
    {class} function getAdIcon: JNativeAdBase_Image; cdecl;
    {class} function getAdLinkDescription: JString; cdecl;
    {class} function getAdSocialContext: JString; cdecl;
    {class} function getAdStarRating: JNativeAdBase_Rating; cdecl;
    {class} function getAdTranslation: JString; cdecl;
    {class} function getAdUntrimmedBodyText: JString; cdecl;
    {class} function getAdViewAttributes: JNativeAdViewAttributes; cdecl;
    {class} function getAdvertiserName: JString; cdecl;
    {class} function getId: JString; cdecl;
    {class} function getInternalNativeAd: JNativeAdBaseApi; cdecl;
    {class} function getPlacementId: JString; cdecl;
    {class} function getPromotedTranslation: JString; cdecl;
    {class} function getSponsoredTranslation: JString; cdecl;
    {class} function hasCallToAction: Boolean; cdecl;
    {class} function init(P1: JNativeAdBaseApi): JNativeAdBase; cdecl; overload;
    {class} function init(P1: JContext; P2: JString): JNativeAdBase; cdecl; overload;
    {class} function isAdInvalidated: Boolean; cdecl;
    {class} function isAdLoaded: Boolean; cdecl;
    {class} function isNativeConfigEnabled: Boolean; cdecl;
    {class} procedure loadAd; cdecl; overload;
    {class} procedure loadAd(P1: JNativeAdBase_MediaCacheFlag); cdecl; overload;
    {class} procedure loadAdFromBid(P1: JString); cdecl; overload;
    {class} procedure loadAdFromBid(P1: JString; P2: JNativeAdBase_MediaCacheFlag); cdecl; overload;
    {class} procedure onCtaBroadcast; cdecl;
    {class} procedure setAdListener(P1: JNativeAdListener); cdecl;
    {class} procedure setExtraHints(P1: JExtraHints); cdecl;
    {class} procedure setOnTouchListener(P1: JView_OnTouchListener); cdecl;
    {class} procedure unregisterView; cdecl;
  end;

  [JavaSignature('com/facebook/ads/NativeAdBase')]
  JNativeAdBase = interface(Jfacebook_ads_Ad)
    ['{7E220AD4-3312-48BB-957B-88957EBFC9BF}']
  end;
  TJNativeAdBase = class(TJavaGenericImport<JNativeAdBaseClass, JNativeAdBase>) end;

  JNativeAdClass = interface(JNativeAdBaseClass)
    ['{87963E84-D26C-48BA-9C1E-2E8278011104}']
    {class} function init(P1: JContext; P2: JString): JNativeAd; cdecl; overload;//Deprecated
    {class} function init(P1: JContext; P2: JNativeAdBaseApi): JNativeAd; cdecl; overload;//Deprecated
    {class} function init(P1: JContext; P2: JNativeAdBase): JNativeAd; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/ads/NativeAd')]
  JNativeAd = interface(JNativeAdBase)
    ['{F9BAC112-C681-4E6F-BF82-69A656F6C836}']
    function getAdCreativeType: JNativeAd_AdCreativeType; cdecl;//Deprecated
    function getNativeAdApi: JNativeAdApi; cdecl;//Deprecated
    procedure registerViewForInteraction(P1: JView; P2: JMediaView); cdecl; overload;//Deprecated
    procedure registerViewForInteraction(P1: JView; P2: JMediaView; P3: JImageView); cdecl; overload;//Deprecated
    procedure registerViewForInteraction(P1: JView; P2: JMediaView; P3: JList); cdecl; overload;//Deprecated
    procedure registerViewForInteraction(P1: JView; P2: JMediaView; P3: JMediaView); cdecl; overload;//Deprecated
    procedure registerViewForInteraction(P1: JView; P2: JMediaView; P3: JImageView; P4: JList); cdecl; overload;//Deprecated
    procedure registerViewForInteraction(P1: JView; P2: JMediaView; P3: JMediaView; P4: JList); cdecl; overload;//Deprecated
  end;
  TJNativeAd = class(TJavaGenericImport<JNativeAdClass, JNativeAd>) end;

  JNativeAd_AdCreativeTypeClass = interface(JEnumClass)
    ['{B4C090AF-2748-42C7-944E-2D4043BD90D7}']
    {class} function _GetCAROUSEL: JNativeAd_AdCreativeType; cdecl;
    {class} function _GetIMAGE: JNativeAd_AdCreativeType; cdecl;
    {class} function _GetUNKNOWN: JNativeAd_AdCreativeType; cdecl;
    {class} function _GetVIDEO: JNativeAd_AdCreativeType; cdecl;
    {class} function valueOf(P1: JString): JNativeAd_AdCreativeType; cdecl;
    {class} function values: TJavaObjectArray<JNativeAd_AdCreativeType>; cdecl;
    {class} property CAROUSEL: JNativeAd_AdCreativeType read _GetCAROUSEL;
    {class} property IMAGE: JNativeAd_AdCreativeType read _GetIMAGE;
    {class} property UNKNOWN: JNativeAd_AdCreativeType read _GetUNKNOWN;
    {class} property VIDEO: JNativeAd_AdCreativeType read _GetVIDEO;
  end;

  [JavaSignature('com/facebook/ads/NativeAd$AdCreativeType')]
  JNativeAd_AdCreativeType = interface(JEnum)
    ['{23987AE6-3ADA-40DA-BF0D-B870A7ACD7DF}']
  end;
  TJNativeAd_AdCreativeType = class(TJavaGenericImport<JNativeAd_AdCreativeTypeClass, JNativeAd_AdCreativeType>) end;

  JNativeAdBase_ImageClass = interface(JObjectClass)
    ['{A2E23765-40EE-4A68-BA2B-F33AA08735AB}']
    {class} function fromJSONObject(P1: JJSONObject): JNativeAdBase_Image; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/ads/NativeAdBase$Image')]
  JNativeAdBase_Image = interface(JObject)
    ['{095B74F1-254E-4171-B6F1-1979CEC46B4C}']
    function getHeight: Integer; cdecl;//Deprecated
    function getWidth: Integer; cdecl;//Deprecated
  end;
  TJNativeAdBase_Image = class(TJavaGenericImport<JNativeAdBase_ImageClass, JNativeAdBase_Image>) end;

  JNativeAdBase_MediaCacheFlagClass = interface(JEnumClass)
    ['{756320E0-03E1-46BD-BB68-98B546426C7E}']
    {class} function _GetALL: JNativeAdBase_MediaCacheFlag; cdecl;
    {class} function _GetNONE: JNativeAdBase_MediaCacheFlag; cdecl;
    {class} function valueOf(P1: JString): JNativeAdBase_MediaCacheFlag; cdecl;
    {class} function values: TJavaObjectArray<JNativeAdBase_MediaCacheFlag>; cdecl;
    {class} property ALL: JNativeAdBase_MediaCacheFlag read _GetALL;
    {class} property NONE: JNativeAdBase_MediaCacheFlag read _GetNONE;
  end;

  [JavaSignature('com/facebook/ads/NativeAdBase$MediaCacheFlag')]
  JNativeAdBase_MediaCacheFlag = interface(JEnum)
    ['{EBB45F83-5B78-401B-9CC4-00A7439EF558}']
  end;
  TJNativeAdBase_MediaCacheFlag = class(TJavaGenericImport<JNativeAdBase_MediaCacheFlagClass, JNativeAdBase_MediaCacheFlag>) end;

  JNativeAdBase_NativeAdLoadConfigBuilderClass = interface(IJavaClass)
    ['{3078AB2A-80EF-4AF1-991D-78EFDD66CB4E}']
    {class} function _GetUNKNOWN_IMAGE_SIZE: Integer; cdecl;
    {class} procedure loadAd; cdecl;
    {class} function withBid(P1: JString): JNativeAdBase_NativeAdLoadConfigBuilder; cdecl;
    {class} function withMediaCacheFlag(P1: JNativeAdBase_MediaCacheFlag): JNativeAdBase_NativeAdLoadConfigBuilder; cdecl;
    {class} function withPreloadedIconView(P1: Integer; P2: Integer): JNativeAdBase_NativeAdLoadConfigBuilder; cdecl;
    {class} property UNKNOWN_IMAGE_SIZE: Integer read _GetUNKNOWN_IMAGE_SIZE;
  end;

  [JavaSignature('com/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder')]
  JNativeAdBase_NativeAdLoadConfigBuilder = interface(IJavaInstance)
    ['{CA1EE57A-6ECC-4DD5-9341-3FC86C05AB27}']
  end;
  TJNativeAdBase_NativeAdLoadConfigBuilder = class(TJavaGenericImport<JNativeAdBase_NativeAdLoadConfigBuilderClass, JNativeAdBase_NativeAdLoadConfigBuilder>) end;

  JNativeAdBase_NativeComponentTagClass = interface(JEnumClass)
    ['{A9C09E73-1228-4926-9AE3-031F10EDCA75}']
    {class} function _GetAD_BODY: JNativeAdBase_NativeComponentTag; cdecl;
    {class} function _GetAD_CALL_TO_ACTION: JNativeAdBase_NativeComponentTag; cdecl;
    {class} function _GetAD_CHOICES_ICON: JNativeAdBase_NativeComponentTag; cdecl;
    {class} function _GetAD_COVER_IMAGE: JNativeAdBase_NativeComponentTag; cdecl;
    {class} function _GetAD_ICON: JNativeAdBase_NativeComponentTag; cdecl;
    {class} function _GetAD_MEDIA: JNativeAdBase_NativeComponentTag; cdecl;
    {class} function _GetAD_OPTIONS_VIEW: JNativeAdBase_NativeComponentTag; cdecl;
    {class} function _GetAD_SOCIAL_CONTEXT: JNativeAdBase_NativeComponentTag; cdecl;
    {class} function _GetAD_SUBTITLE: JNativeAdBase_NativeComponentTag; cdecl;
    {class} function _GetAD_TITLE: JNativeAdBase_NativeComponentTag; cdecl;
    {class} procedure tagView(P1: JView; P2: JNativeAdBase_NativeComponentTag); cdecl;
    {class} function valueOf(P1: JString): JNativeAdBase_NativeComponentTag; cdecl;
    {class} function values: TJavaObjectArray<JNativeAdBase_NativeComponentTag>; cdecl;
    {class} property AD_BODY: JNativeAdBase_NativeComponentTag read _GetAD_BODY;
    {class} property AD_CALL_TO_ACTION: JNativeAdBase_NativeComponentTag read _GetAD_CALL_TO_ACTION;
    {class} property AD_CHOICES_ICON: JNativeAdBase_NativeComponentTag read _GetAD_CHOICES_ICON;
    {class} property AD_COVER_IMAGE: JNativeAdBase_NativeComponentTag read _GetAD_COVER_IMAGE;
    {class} property AD_ICON: JNativeAdBase_NativeComponentTag read _GetAD_ICON;
    {class} property AD_MEDIA: JNativeAdBase_NativeComponentTag read _GetAD_MEDIA;
    {class} property AD_OPTIONS_VIEW: JNativeAdBase_NativeComponentTag read _GetAD_OPTIONS_VIEW;
    {class} property AD_SOCIAL_CONTEXT: JNativeAdBase_NativeComponentTag read _GetAD_SOCIAL_CONTEXT;
    {class} property AD_SUBTITLE: JNativeAdBase_NativeComponentTag read _GetAD_SUBTITLE;
    {class} property AD_TITLE: JNativeAdBase_NativeComponentTag read _GetAD_TITLE;
  end;

  [JavaSignature('com/facebook/ads/NativeAdBase$NativeComponentTag')]
  JNativeAdBase_NativeComponentTag = interface(JEnum)
    ['{CA280E30-8672-42E9-A6F1-446FD09E94E7}']
  end;
  TJNativeAdBase_NativeComponentTag = class(TJavaGenericImport<JNativeAdBase_NativeComponentTagClass, JNativeAdBase_NativeComponentTag>) end;

  JNativeAdBase_RatingClass = interface(JObjectClass)
    ['{FC47BE55-A4F3-4455-82A4-B160C66572BD}']
    {class} function fromJSONObject(P1: JJSONObject): JNativeAdBase_Rating; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/ads/NativeAdBase$Rating')]
  JNativeAdBase_Rating = interface(JObject)
    ['{7805D75E-80E4-4FB4-8869-E586B3A9803C}']
    function getScale: Double; cdecl;//Deprecated
    function getValue: Double; cdecl;//Deprecated
  end;
  TJNativeAdBase_Rating = class(TJavaGenericImport<JNativeAdBase_RatingClass, JNativeAdBase_Rating>) end;

  JNativeAdLayoutClass = interface(JAdComponentViewClass)
    ['{F59F25E1-B216-43B3-8A83-AC8E23D0AC70}']
    {class} function init(P1: JContext): JNativeAdLayout; cdecl; overload;//Deprecated
    {class} function init(P1: JContext; P2: JNativeAdLayoutApi): JNativeAdLayout; cdecl; overload;//Deprecated
    {class} function init(P1: JContext; P2: JAttributeSet): JNativeAdLayout; cdecl; overload;//Deprecated
    {class} function init(P1: JContext; P2: JAttributeSet; P3: Integer): JNativeAdLayout; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/ads/NativeAdLayout')]
  JNativeAdLayout = interface(JAdComponentView)
    ['{A2AA35DE-2E3E-43E8-BD12-CE78FE2179FD}']
    function getNativeAdLayoutApi: JNativeAdLayoutApi; cdecl;//Deprecated
    procedure setMaxWidth(P1: Integer); cdecl;//Deprecated
    procedure setMinWidth(P1: Integer); cdecl;//Deprecated
  end;
  TJNativeAdLayout = class(TJavaGenericImport<JNativeAdLayoutClass, JNativeAdLayout>) end;

  JNativeAdListenerClass = interface(Jfacebook_ads_AdListenerClass)
    ['{87E1EA5C-45DC-4539-A5C7-C9CBD672EA3B}']
  end;

  [JavaSignature('com/facebook/ads/NativeAdListener')]
  JNativeAdListener = interface(Jfacebook_ads_AdListener)
    ['{BEBD721C-9CC8-4631-ACE2-45DBA880F501}']
    procedure onMediaDownloaded(P1: Jfacebook_ads_Ad); cdecl;//Deprecated
  end;
  TJNativeAdListener = class(TJavaGenericImport<JNativeAdListenerClass, JNativeAdListener>) end;

  JNativeAdScrollViewClass = interface(JLinearLayoutClass)
    ['{D6F55776-E47D-4758-B5CD-8F6F22FA25E1}']
    {class} function _GetDEFAULT_INSET: Integer; cdecl;
    {class} function _GetDEFAULT_MAX_ADS: Integer; cdecl;
    {class} function init(P1: JContext; P2: JNativeAdsManager; P3: Integer): JNativeAdScrollView; cdecl; overload;
    {class} function init(P1: JContext; P2: JNativeAdsManager; P3: JNativeAdView_Type): JNativeAdScrollView; cdecl; overload;
    {class} function init(P1: JContext; P2: JNativeAdsManager; P3: JNativeAdScrollView_AdViewProvider): JNativeAdScrollView; cdecl; overload;
    {class} function init(P1: JContext; P2: JNativeAdsManager; P3: JNativeAdView_Type; P4: JNativeAdViewAttributes): JNativeAdScrollView; cdecl; overload;
    {class} function init(P1: JContext; P2: JNativeAdsManager; P3: JNativeAdScrollView_AdViewProvider; P4: Integer): JNativeAdScrollView; cdecl; overload;
    {class} function init(P1: JContext; P2: JNativeAdsManager; P3: Integer; P4: JNativeAdViewAttributes): JNativeAdScrollView; cdecl; overload;
    {class} function init(P1: JContext; P2: JNativeAdsManager; P3: JNativeAdView_Type; P4: JNativeAdViewAttributes; P5: Integer): JNativeAdScrollView; cdecl; overload;
    {class} function init(P1: JContext; P2: JNativeAdsManager; P3: Integer; P4: JNativeAdViewAttributes; P5: Integer): JNativeAdScrollView; cdecl; overload;
    {class} procedure setInset(P1: Integer); cdecl;
    {class} property DEFAULT_INSET: Integer read _GetDEFAULT_INSET;
    {class} property DEFAULT_MAX_ADS: Integer read _GetDEFAULT_MAX_ADS;
  end;

  [JavaSignature('com/facebook/ads/NativeAdScrollView')]
  JNativeAdScrollView = interface(JLinearLayout)
    ['{9178CA4A-F1F7-42E5-9115-5695922DF14E}']
  end;
  TJNativeAdScrollView = class(TJavaGenericImport<JNativeAdScrollViewClass, JNativeAdScrollView>) end;

  JNativeAdScrollView_AdViewProviderClass = interface(IJavaClass)
    ['{6D336EEE-5A40-4997-A7B2-C227CC8800CB}']
  end;

  [JavaSignature('com/facebook/ads/NativeAdScrollView$AdViewProvider')]
  JNativeAdScrollView_AdViewProvider = interface(IJavaInstance)
    ['{97F9897A-8136-4A8C-9659-78BA55BC0B17}']
    function createView(P1: JNativeAd; P2: Integer): JView; cdecl;//Deprecated
    procedure destroyView(P1: JNativeAd; P2: JView); cdecl;//Deprecated
  end;
  TJNativeAdScrollView_AdViewProvider = class(TJavaGenericImport<JNativeAdScrollView_AdViewProviderClass, JNativeAdScrollView_AdViewProvider>) end;

  JNativeAdViewClass = interface(JObjectClass)
    ['{FEF18F2E-EE7A-4631-985B-E925CC89F995}']
    {class} function init: JNativeAdView; cdecl;//Deprecated
    {class} function render(P1: JContext; P2: JNativeAd): JView; cdecl; overload;//Deprecated
    {class} function render(P1: JContext; P2: JNativeAd; P3: JNativeAdView_Type): JView; cdecl; overload;//Deprecated
    {class} function render(P1: JContext; P2: JNativeAd; P3: JNativeAdViewAttributes): JView; cdecl; overload;//Deprecated
    {class} function render(P1: JContext; P2: JNativeAd; P3: JNativeAdView_Type; P4: JNativeAdViewAttributes): JView; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/ads/NativeAdView')]
  JNativeAdView = interface(JObject)
    ['{7402D7E7-5DDF-48A2-BE39-43804AAC5E89}']
  end;
  TJNativeAdView = class(TJavaGenericImport<JNativeAdViewClass, JNativeAdView>) end;

  JNativeAdView_TypeClass = interface(JEnumClass)
    ['{0C5F1F93-C7E6-4134-8C13-474B4286FEAF}']
    {class} function _GetHEIGHT_300: JNativeAdView_Type; cdecl;
    {class} function _GetHEIGHT_400: JNativeAdView_Type; cdecl;
    {class} function getEnumCode: Integer; cdecl;
    {class} function getHeight: Integer; cdecl;
    {class} function getValue: Integer; cdecl;
    {class} function getWidth: Integer; cdecl;
    {class} function valueOf(P1: JString): JNativeAdView_Type; cdecl;
    {class} function values: TJavaObjectArray<JNativeAdView_Type>; cdecl;
    {class} property HEIGHT_300: JNativeAdView_Type read _GetHEIGHT_300;
    {class} property HEIGHT_400: JNativeAdView_Type read _GetHEIGHT_400;
  end;

  [JavaSignature('com/facebook/ads/NativeAdView$Type')]
  JNativeAdView_Type = interface(JEnum)
    ['{1238F068-BA4D-4ACE-BF93-48A68EABF623}']
  end;
  TJNativeAdView_Type = class(TJavaGenericImport<JNativeAdView_TypeClass, JNativeAdView_Type>) end;

  JNativeAdViewAttributesClass = interface(JObjectClass)
    ['{58DA1BD5-20A7-4053-9785-A7E36BA55424}']
    {class} function init: JNativeAdViewAttributes; cdecl; overload;//Deprecated
    {class} function init(P1: JContext): JNativeAdViewAttributes; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/ads/NativeAdViewAttributes')]
  JNativeAdViewAttributes = interface(JObject)
    ['{55FF16C9-0955-42F7-955C-DC03EE113670}']
    function getAutoplay: Boolean; cdecl;//Deprecated
    function getAutoplayOnMobile: Boolean; cdecl;//Deprecated
    function getBackgroundColor: Integer; cdecl;//Deprecated
    function getButtonBorderColor: Integer; cdecl;//Deprecated
    function getButtonColor: Integer; cdecl;//Deprecated
    function getButtonTextColor: Integer; cdecl;//Deprecated
    function getDescriptionTextColor: Integer; cdecl;//Deprecated
    function getDescriptionTextSize: Integer; cdecl;//Deprecated
    function getInternalAttributes: JNativeAdViewAttributesApi; cdecl;//Deprecated
    function getTitleTextColor: Integer; cdecl;//Deprecated
    function getTitleTextSize: Integer; cdecl;//Deprecated
    function getTypeface: JTypeface; cdecl;//Deprecated
    function setAutoplay(P1: Boolean): JNativeAdViewAttributes; cdecl;//Deprecated
    function setAutoplayOnMobile(P1: Boolean): JNativeAdViewAttributes; cdecl;//Deprecated
    function setBackgroundColor(P1: Integer): JNativeAdViewAttributes; cdecl;//Deprecated
    function setButtonBorderColor(P1: Integer): JNativeAdViewAttributes; cdecl;//Deprecated
    function setButtonColor(P1: Integer): JNativeAdViewAttributes; cdecl;//Deprecated
    function setButtonTextColor(P1: Integer): JNativeAdViewAttributes; cdecl;//Deprecated
    function setDescriptionTextColor(P1: Integer): JNativeAdViewAttributes; cdecl;//Deprecated
    function setTitleTextColor(P1: Integer): JNativeAdViewAttributes; cdecl;//Deprecated
    function setTypeface(P1: JTypeface): JNativeAdViewAttributes; cdecl;//Deprecated
  end;
  TJNativeAdViewAttributes = class(TJavaGenericImport<JNativeAdViewAttributesClass, JNativeAdViewAttributes>) end;

  JNativeAdsManagerClass = interface(JObjectClass)
    ['{0D3AC705-2724-4074-80A2-55F011411C20}']
    {class} function init(P1: JContext; P2: JString; P3: Integer): JNativeAdsManager; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/ads/NativeAdsManager')]
  JNativeAdsManager = interface(JObject)
    ['{4B8FCA14-5E6E-4914-8BF1-0EB467C24419}']
    procedure disableAutoRefresh; cdecl;//Deprecated
    function getUniqueNativeAdCount: Integer; cdecl;//Deprecated
    function isLoaded: Boolean; cdecl;//Deprecated
    procedure loadAds; cdecl; overload;//Deprecated
    procedure loadAds(P1: JNativeAdBase_MediaCacheFlag); cdecl; overload;//Deprecated
    function nextNativeAd: JNativeAd; cdecl;//Deprecated
    procedure setExtraHints(P1: JString); cdecl;//Deprecated
    procedure setListener(P1: JNativeAdsManager_Listener); cdecl;//Deprecated
  end;
  TJNativeAdsManager = class(TJavaGenericImport<JNativeAdsManagerClass, JNativeAdsManager>) end;

  JNativeAdsManager_ListenerClass = interface(IJavaClass)
    ['{5224EE9C-6940-4242-AEAC-0D8FC3F69E18}']
  end;

  [JavaSignature('com/facebook/ads/NativeAdsManager$Listener')]
  JNativeAdsManager_Listener = interface(IJavaInstance)
    ['{1D60B7A7-4B93-4352-95C1-10D201D9F57C}']
    procedure onAdError(P1: JAdError); cdecl;//Deprecated
    procedure onAdsLoaded; cdecl;//Deprecated
  end;
  TJNativeAdsManager_Listener = class(TJavaGenericImport<JNativeAdsManager_ListenerClass, JNativeAdsManager_Listener>) end;

  JNativeBannerAdClass = interface(JNativeAdBaseClass)
    ['{8D931645-1190-4A9B-B8B3-F44D724E15E1}']
    {class} function init(P1: JContext; P2: JString): JNativeBannerAd; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/ads/NativeBannerAd')]
  JNativeBannerAd = interface(JNativeAdBase)
    ['{73B78940-455A-4E99-84F8-DB7CBC6DC6E3}']
    procedure registerViewForInteraction(P1: JView; P2: JImageView); cdecl; overload;//Deprecated
    procedure registerViewForInteraction(P1: JView; P2: JMediaView); cdecl; overload;//Deprecated
    procedure registerViewForInteraction(P1: JView; P2: JMediaView; P3: JList); cdecl; overload;//Deprecated
    procedure registerViewForInteraction(P1: JView; P2: JImageView; P3: JList); cdecl; overload;//Deprecated
  end;
  TJNativeBannerAd = class(TJavaGenericImport<JNativeBannerAdClass, JNativeBannerAd>) end;

  JNativeBannerAdViewClass = interface(JObjectClass)
    ['{657BF528-0928-4882-88C3-3CE68622997D}']
    {class} function init: JNativeBannerAdView; cdecl;//Deprecated
    {class} function render(P1: JContext; P2: JNativeBannerAd; P3: JNativeBannerAdView_Type): JView; cdecl; overload;//Deprecated
    {class} function render(P1: JContext; P2: JNativeBannerAd; P3: JNativeBannerAdView_Type; P4: JNativeAdViewAttributes): JView; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/facebook/ads/NativeBannerAdView')]
  JNativeBannerAdView = interface(JObject)
    ['{21012E27-FED9-40EB-BB35-8F612A5BF26A}']
  end;
  TJNativeBannerAdView = class(TJavaGenericImport<JNativeBannerAdViewClass, JNativeBannerAdView>) end;

  JNativeBannerAdView_TypeClass = interface(JEnumClass)
    ['{81D80608-7A66-4E73-8491-569518FCEC77}']
    {class} function _GetHEIGHT_100: JNativeBannerAdView_Type; cdecl;
    {class} function _GetHEIGHT_120: JNativeBannerAdView_Type; cdecl;
    {class} function _GetHEIGHT_50: JNativeBannerAdView_Type; cdecl;
    {class} function getEnumCode: Integer; cdecl;
    {class} function getHeight: Integer; cdecl;
    {class} function getValue: Integer; cdecl;
    {class} function getWidth: Integer; cdecl;
    {class} function valueOf(P1: JString): JNativeBannerAdView_Type; cdecl;
    {class} function values: TJavaObjectArray<JNativeBannerAdView_Type>; cdecl;
    {class} property HEIGHT_100: JNativeBannerAdView_Type read _GetHEIGHT_100;
    {class} property HEIGHT_120: JNativeBannerAdView_Type read _GetHEIGHT_120;
    {class} property HEIGHT_50: JNativeBannerAdView_Type read _GetHEIGHT_50;
  end;

  [JavaSignature('com/facebook/ads/NativeBannerAdView$Type')]
  JNativeBannerAdView_Type = interface(JEnum)
    ['{6C076A83-0B82-4819-9CA3-39FE88DBD073}']
  end;
  TJNativeBannerAdView_Type = class(TJavaGenericImport<JNativeBannerAdView_TypeClass, JNativeBannerAdView_Type>) end;

  JRewardDataClass = interface(JSerializableClass)
    ['{6D988A3B-097E-47C8-98D1-97DC0BAA5AA0}']
    {class} function _GetserialVersionUID: Int64; cdecl;
    {class} function getCurrency: JString; cdecl;
    {class} function getUserID: JString; cdecl;
    {class} function init(P1: JString; P2: JString): JRewardData; cdecl;
    {class} property serialVersionUID: Int64 read _GetserialVersionUID;
  end;

  [JavaSignature('com/facebook/ads/RewardData')]
  JRewardData = interface(JSerializable)
    ['{36A0BFF1-CCFA-4018-B456-2ED0B83412F7}']
  end;
  TJRewardData = class(TJavaGenericImport<JRewardDataClass, JRewardData>) end;

  JRewardedAdListenerClass = interface(IJavaClass)
    ['{97D98476-4ACE-470E-8E88-5687E3A588AE}']
  end;

  [JavaSignature('com/facebook/ads/RewardedAdListener')]
  JRewardedAdListener = interface(IJavaInstance)
    ['{27764568-2DB1-4D63-8D46-7B807FC7C60F}']
    procedure onRewardedAdCompleted; cdecl;//Deprecated
    procedure onRewardedAdServerFailed; cdecl;//Deprecated
    procedure onRewardedAdServerSucceeded; cdecl;//Deprecated
  end;
  TJRewardedAdListener = class(TJavaGenericImport<JRewardedAdListenerClass, JRewardedAdListener>) end;

  JRewardedVideoAdClass = interface(Jfacebook_ads_AdClass)
    ['{054E937F-50C3-490B-A61D-E0E8BBDF7D39}']
    {class} function _GetUNSET_VIDEO_DURATION: Integer; cdecl;
    {class} procedure destroy; cdecl;
    {class} procedure enableRVChain(P1: Boolean); cdecl;
    {class} function getPlacementId: JString; cdecl;
    {class} function getVideoDuration: Integer; cdecl;
    {class} function init(P1: JContext; P2: JString): JRewardedVideoAd; cdecl;
    {class} function isAdInvalidated: Boolean; cdecl;
    {class} function isAdLoaded: Boolean; cdecl;
    {class} procedure loadAd; cdecl; overload;
    {class} procedure loadAd(P1: Boolean); cdecl; overload;
    {class} procedure loadAdFromBid(P1: JString); cdecl; overload;
    {class} procedure loadAdFromBid(P1: JString; P2: Boolean); cdecl; overload;
    {class} procedure setAdListener(P1: JRewardedVideoAdListener); cdecl;
    {class} procedure setExtraHints(P1: JExtraHints); cdecl;
    {class} procedure setRewardData(P1: JRewardData); cdecl;
    {class} function show: Boolean; cdecl; overload;
    {class} function show(P1: Integer): Boolean; cdecl; overload;
    {class} property UNSET_VIDEO_DURATION: Integer read _GetUNSET_VIDEO_DURATION;
  end;

  [JavaSignature('com/facebook/ads/RewardedVideoAd')]
  JRewardedVideoAd = interface(Jfacebook_ads_Ad)
    ['{3A075CCB-83DE-46EE-A93B-4AA064B1FB4A}']
  end;
  TJRewardedVideoAd = class(TJavaGenericImport<JRewardedVideoAdClass, JRewardedVideoAd>) end;

  JRewardedVideoAdListenerClass = interface(Jfacebook_ads_AdListenerClass)
    ['{6F3F90B0-A54D-4545-B7AA-E8C220DA00CF}']
  end;

  [JavaSignature('com/facebook/ads/RewardedVideoAdListener')]
  JRewardedVideoAdListener = interface(Jfacebook_ads_AdListener)
    ['{57C81173-9DC5-4173-87C2-F32A8C101C7F}']
    procedure onLoggingImpression(P1: Jfacebook_ads_Ad); cdecl;//Deprecated
    procedure onRewardedVideoClosed; cdecl;//Deprecated
    procedure onRewardedVideoCompleted; cdecl;//Deprecated
  end;
  TJRewardedVideoAdListener = class(TJavaGenericImport<JRewardedVideoAdListenerClass, JRewardedVideoAdListener>) end;

  JRewardedVideoAdExtendedListenerClass = interface(JRewardedVideoAdListenerClass)
    ['{8AE27BA0-40C1-4450-B1FC-8C47C4A09520}']
  end;

  [JavaSignature('com/facebook/ads/RewardedVideoAdExtendedListener')]
  JRewardedVideoAdExtendedListener = interface(JRewardedVideoAdListener)
    ['{48B915A9-8346-4A64-A49F-AB632DADF00A}']
    procedure onRewardedVideoActivityDestroyed; cdecl;//Deprecated
  end;
  TJRewardedVideoAdExtendedListener = class(TJavaGenericImport<JRewardedVideoAdExtendedListenerClass, JRewardedVideoAdExtendedListener>) end;

  JS2SRewardedVideoAdExtendedListenerClass = interface(JRewardedVideoAdExtendedListenerClass)
    ['{5F871FC8-78C5-4BC4-91C3-0A13048876BD}']
  end;

  [JavaSignature('com/facebook/ads/S2SRewardedVideoAdExtendedListener')]
  JS2SRewardedVideoAdExtendedListener = interface(JRewardedVideoAdExtendedListener)
    ['{8C02A910-24E8-45E1-88E8-66037C2FE929}']
  end;
  TJS2SRewardedVideoAdExtendedListener = class(TJavaGenericImport<JS2SRewardedVideoAdExtendedListenerClass, JS2SRewardedVideoAdExtendedListener>) end;

  JS2SRewardedVideoAdListenerClass = interface(JRewardedVideoAdListenerClass)
    ['{7752C56E-8AC7-43EF-BC56-ABF47C423273}']
  end;

  [JavaSignature('com/facebook/ads/S2SRewardedVideoAdListener')]
  JS2SRewardedVideoAdListener = interface(JRewardedVideoAdListener)
    ['{1A0F0320-C980-4933-B306-4F8C86260356}']
    procedure onRewardServerFailed; cdecl;//Deprecated
    procedure onRewardServerSuccess; cdecl;//Deprecated
  end;
  TJS2SRewardedVideoAdListener = class(TJavaGenericImport<JS2SRewardedVideoAdListenerClass, JS2SRewardedVideoAdListener>) end;

  JVideoAutoplayBehaviorClass = interface(JEnumClass)
    ['{2C908BD3-C603-4DAA-9529-58743B364254}']
    {class} function _GetDEFAULT: JVideoAutoplayBehavior; cdecl;
    {class} function _GetOFF: JVideoAutoplayBehavior; cdecl;
    {class} function _GetON: JVideoAutoplayBehavior; cdecl;
    {class} function valueOf(P1: JString): JVideoAutoplayBehavior; cdecl;
    {class} function values: TJavaObjectArray<JVideoAutoplayBehavior>; cdecl;
    {class} property DEFAULT: JVideoAutoplayBehavior read _GetDEFAULT;
    {class} property OFF: JVideoAutoplayBehavior read _GetOFF;
    {class} property ON: JVideoAutoplayBehavior read _GetON;
  end;

  [JavaSignature('com/facebook/ads/VideoAutoplayBehavior')]
  JVideoAutoplayBehavior = interface(JEnum)
    ['{CCBB0CFB-6D4E-4599-8D14-5599E422E628}']
  end;
  TJVideoAutoplayBehavior = class(TJavaGenericImport<JVideoAutoplayBehaviorClass, JVideoAutoplayBehavior>) end;

  JVideoStartReasonClass = interface(JEnumClass)
    ['{57129E34-F524-4F05-9B83-840464507122}']
    {class} function _GetAUTO_STARTED: JVideoStartReason; cdecl;
    {class} function _GetNOT_STARTED: JVideoStartReason; cdecl;
    {class} function _GetUSER_STARTED: JVideoStartReason; cdecl;
    {class} function valueOf(P1: JString): JVideoStartReason; cdecl;
    {class} function values: TJavaObjectArray<JVideoStartReason>; cdecl;
    {class} property AUTO_STARTED: JVideoStartReason read _GetAUTO_STARTED;
    {class} property NOT_STARTED: JVideoStartReason read _GetNOT_STARTED;
    {class} property USER_STARTED: JVideoStartReason read _GetUSER_STARTED;
  end;

  [JavaSignature('com/facebook/ads/VideoStartReason')]
  JVideoStartReason = interface(JEnum)
    ['{71866EB6-7B13-4B6F-A0E1-976732737178}']
  end;
  TJVideoStartReason = class(TJavaGenericImport<JVideoStartReasonClass, JVideoStartReason>) end;

  JAdChoicesViewApiClass = interface(IJavaClass)
    ['{50885E20-20FF-463C-9166-53298EE866EA}']
  end;

  [JavaSignature('com/facebook/ads/internal/api/AdChoicesViewApi')]
  JAdChoicesViewApi = interface(IJavaInstance)
    ['{70BC74BB-690A-462C-8A77-AAE06F52AEFF}']
    procedure initialize(P1: Boolean; P2: JNativeAdLayout); cdecl;//Deprecated
  end;
  TJAdChoicesViewApi = class(TJavaGenericImport<JAdChoicesViewApiClass, JAdChoicesViewApi>) end;

  JAdComponentViewParentApiClass = interface(IJavaClass)
    ['{E13E0D86-FBC8-421B-88AC-6364D9C21EB9}']
  end;

  [JavaSignature('com/facebook/ads/internal/api/AdComponentViewParentApi')]
  JAdComponentViewParentApi = interface(IJavaInstance)
    ['{70B1B79B-5694-4735-981F-80728B0B7B1D}']
    procedure addView(P1: JView; P2: Integer; P3: JViewGroup_LayoutParams); cdecl;//Deprecated
    procedure onAttachedToWindow; cdecl;//Deprecated
    procedure onDetachedFromWindow; cdecl;//Deprecated
    procedure onMeasure(P1: Integer; P2: Integer); cdecl;//Deprecated
    procedure onVisibilityChanged(P1: JView; P2: Integer); cdecl;//Deprecated
    procedure onWindowFocusChanged(P1: Boolean); cdecl;//Deprecated
    procedure setLayoutParams(P1: JViewGroup_LayoutParams); cdecl;//Deprecated
    procedure setMeasuredDimension(P1: Integer; P2: Integer); cdecl;//Deprecated
  end;
  TJAdComponentViewParentApi = class(TJavaGenericImport<JAdComponentViewParentApiClass, JAdComponentViewParentApi>) end;

  JAdComponentView_1Class = interface(JAdComponentViewParentApiClass)
    ['{FF00FB12-E6A4-437B-9E23-2E6EB2C4FB7D}']
    {class} procedure addView(P1: JView; P2: Integer; P3: JViewGroup_LayoutParams); cdecl;
    {class} procedure onAttachedToWindow; cdecl;
    {class} procedure onDetachedFromWindow; cdecl;
    {class} procedure onMeasure(P1: Integer; P2: Integer); cdecl;
    {class} procedure onVisibilityChanged(P1: JView; P2: Integer); cdecl;
    {class} procedure onWindowFocusChanged(P1: Boolean); cdecl;
    {class} procedure setLayoutParams(P1: JViewGroup_LayoutParams); cdecl;
    {class} procedure setMeasuredDimension(P1: Integer; P2: Integer); cdecl;
  end;

  [JavaSignature('com/facebook/ads/internal/api/AdComponentView$1')]
  JAdComponentView_1 = interface(JAdComponentViewParentApi)
    ['{286A0945-3D3C-44C2-9A02-5D017A9A4E91}']
  end;
  TJAdComponentView_1 = class(TJavaGenericImport<JAdComponentView_1Class, JAdComponentView_1>) end;

  JAdComponentViewApiClass = interface(JAdComponentViewParentApiClass)
    ['{8C2132D8-4682-422E-B0A3-7774148152EF}']
  end;

  [JavaSignature('com/facebook/ads/internal/api/AdComponentViewApi')]
  JAdComponentViewApi = interface(JAdComponentViewParentApi)
    ['{8E2A5559-C0CD-4ED9-A2A9-377DF3A01216}']
    procedure onAttachedToView(P1: JAdComponentView; P2: JAdComponentViewParentApi); cdecl;//Deprecated
  end;
  TJAdComponentViewApi = class(TJavaGenericImport<JAdComponentViewApiClass, JAdComponentViewApi>) end;

  JAdComponentViewApiProviderClass = interface(IJavaClass)
    ['{081B5428-DDEB-4D8D-B191-A534C82178F6}']
  end;

  [JavaSignature('com/facebook/ads/internal/api/AdComponentViewApiProvider')]
  JAdComponentViewApiProvider = interface(IJavaInstance)
    ['{020E0588-A23B-481C-BF00-97D6FA5FAA49}']
    function getAdComponentViewApi: JAdComponentViewApi; cdecl;//Deprecated
  end;
  TJAdComponentViewApiProvider = class(TJavaGenericImport<JAdComponentViewApiProviderClass, JAdComponentViewApiProvider>) end;

  JAdOptionsViewApiClass = interface(JAdComponentViewApiProviderClass)
    ['{ECFD1D51-6AAD-4F36-9E09-2873EADF2EEF}']
  end;

  [JavaSignature('com/facebook/ads/internal/api/AdOptionsViewApi')]
  JAdOptionsViewApi = interface(JAdComponentViewApiProvider)
    ['{8B6B55B0-75B4-4A07-9083-D9FB72F2B6EA}']
    procedure setIconColor(P1: Integer); cdecl;//Deprecated
    procedure setIconSizeDp(P1: Integer); cdecl;//Deprecated
    procedure setSingleIcon(P1: Boolean); cdecl;//Deprecated
  end;
  TJAdOptionsViewApi = class(TJavaGenericImport<JAdOptionsViewApiClass, JAdOptionsViewApi>) end;

  JAdSettingsApiClass = interface(IJavaClass)
    ['{60EF66AD-0008-4E14-87CD-37D8A1FD6759}']
  end;

  [JavaSignature('com/facebook/ads/internal/api/AdSettingsApi')]
  JAdSettingsApi = interface(IJavaInstance)
    ['{36FEC5D7-0174-4A7A-9C54-D19C321989A2}']
    function isTestMode(P1: JContext): Boolean; cdecl;//Deprecated
    procedure turnOnDebugger; cdecl;//Deprecated
  end;
  TJAdSettingsApi = class(TJavaGenericImport<JAdSettingsApiClass, JAdSettingsApi>) end;

  JAdSizeApiClass = interface(IJavaClass)
    ['{9D04D0B1-7BBD-435B-AE27-CD12FB495084}']
    {class} function _GetBANNER_320_50: Integer; cdecl;
    {class} function _GetBANNER_HEIGHT_50: Integer; cdecl;
    {class} function _GetBANNER_HEIGHT_90: Integer; cdecl;
    {class} function _GetINTERSTITIAL: Integer; cdecl;
    {class} function _GetRECTANGLE_HEIGHT_250: Integer; cdecl;
    {class} function getHeight: Integer; cdecl;
    {class} function getWidth: Integer; cdecl;
    {class} property BANNER_320_50: Integer read _GetBANNER_320_50;
    {class} property BANNER_HEIGHT_50: Integer read _GetBANNER_HEIGHT_50;
    {class} property BANNER_HEIGHT_90: Integer read _GetBANNER_HEIGHT_90;
    {class} property INTERSTITIAL: Integer read _GetINTERSTITIAL;
    {class} property RECTANGLE_HEIGHT_250: Integer read _GetRECTANGLE_HEIGHT_250;
  end;

  [JavaSignature('com/facebook/ads/internal/api/AdSizeApi')]
  JAdSizeApi = interface(IJavaInstance)
    ['{F7BBA721-16EF-494D-A3DD-54601427DD05}']
  end;
  TJAdSizeApi = class(TJavaGenericImport<JAdSizeApiClass, JAdSizeApi>) end;

  JAdViewApiClass = interface(JAdViewParentApiClass)
    ['{6127E31E-7C5C-4E2D-A730-B4AF9F5DC2FC}']
  end;

  [JavaSignature('com/facebook/ads/internal/api/AdViewApi')]
  JAdViewApi = interface(JAdViewParentApi)
    ['{5EA585FE-54E3-435F-BBAF-6F505FC44C58}']
    procedure onConfigurationChanged(P1: JConfiguration); cdecl;//Deprecated
    procedure setAdListener(P1: Jfacebook_ads_AdListener); cdecl;//Deprecated
    procedure setExtraHints(P1: JExtraHints); cdecl;//Deprecated
  end;
  TJAdViewApi = class(TJavaGenericImport<JAdViewApiClass, JAdViewApi>) end;

  JAdViewConstructorParamsClass = interface(JObjectClass)
    ['{BB6C517B-65DC-4115-8744-57661FA56CC7}']
    {class} function _GetCONTEXT: Integer; cdecl;
    {class} function _GetCONTEXT_ATTRS: Integer; cdecl;
    {class} function _GetCONTEXT_ATTRS_STYLE_ATTR: Integer; cdecl;
    {class} function _GetCONTEXT_ATTRS_STYLE_ATTR_STYLE_RES: Integer; cdecl;
    {class} function getAttributeSet: JAttributeSet; cdecl;
    {class} function getContext: JContext; cdecl;
    {class} function getDefStyleAttr: Integer; cdecl;
    {class} function getDefStyleRes: Integer; cdecl;
    {class} function getInitializationType: Integer; cdecl;
    {class} function init(P1: JContext): JAdViewConstructorParams; cdecl; overload;
    {class} function init(P1: JContext; P2: JAttributeSet): JAdViewConstructorParams; cdecl; overload;
    {class} function init(P1: JContext; P2: JAttributeSet; P3: Integer): JAdViewConstructorParams; cdecl; overload;
    {class} function init(P1: JContext; P2: JAttributeSet; P3: Integer; P4: Integer): JAdViewConstructorParams; cdecl; overload;
    {class} property CONTEXT: Integer read _GetCONTEXT;
    {class} property CONTEXT_ATTRS: Integer read _GetCONTEXT_ATTRS;
    {class} property CONTEXT_ATTRS_STYLE_ATTR: Integer read _GetCONTEXT_ATTRS_STYLE_ATTR;
    {class} property CONTEXT_ATTRS_STYLE_ATTR_STYLE_RES: Integer read _GetCONTEXT_ATTRS_STYLE_ATTR_STYLE_RES;
  end;

  [JavaSignature('com/facebook/ads/internal/api/AdViewConstructorParams')]
  JAdViewConstructorParams = interface(JObject)
    ['{ECAF8E1D-2C65-47EC-9A42-78748F551246}']
  end;
  TJAdViewConstructorParams = class(TJavaGenericImport<JAdViewConstructorParamsClass, JAdViewConstructorParams>) end;

  JAdsMessengerServiceApiClass = interface(IJavaClass)
    ['{B2A3DF17-0A1C-4FB2-A461-CC0D56DD0590}']
  end;

  [JavaSignature('com/facebook/ads/internal/api/AdsMessengerServiceApi')]
  JAdsMessengerServiceApi = interface(IJavaInstance)
    ['{90C4A6EF-700B-4822-9184-FECD0B5A24A3}']
    function onBind(P1: JIntent): JIBinder; cdecl;//Deprecated
    procedure onCreate; cdecl;//Deprecated
    procedure onDestroy; cdecl;//Deprecated
  end;
  TJAdsMessengerServiceApi = class(TJavaGenericImport<JAdsMessengerServiceApiClass, JAdsMessengerServiceApi>) end;

  JAudienceNetworkAdsApiClass = interface(IJavaClass)
    ['{D0A638E2-8A5D-4022-8850-04FA73A18845}']
    {class} function _GetBANNER: Integer; cdecl;
    {class} function _GetINSTREAM_VIDEO_MOBILE: Integer; cdecl;
    {class} function _GetINTERSTITIAL: Integer; cdecl;
    {class} function _GetNATIVE: Integer; cdecl;
    {class} function _GetNATIVE_BANNER: Integer; cdecl;
    {class} function _GetREWARDED_VIDEO: Integer; cdecl;
    {class} function _GetUNKNOWN: Integer; cdecl;
    {class} function getAdFormatForPlacement(P1: JString): Integer; cdecl;
    {class} procedure initialize(P1: JContext; P2: JMultithreadedBundleWrapper; P3: JAudienceNetworkAds_InitListener); cdecl;
    {class} function isInitialized: Boolean; cdecl;
    {class} procedure onContentProviderCreated(P1: JContext); cdecl;
    {class} property BANNER: Integer read _GetBANNER;
    {class} property INSTREAM_VIDEO_MOBILE: Integer read _GetINSTREAM_VIDEO_MOBILE;
    {class} property INTERSTITIAL: Integer read _GetINTERSTITIAL;
    {class} property NATIVE: Integer read _GetNATIVE;
    {class} property NATIVE_BANNER: Integer read _GetNATIVE_BANNER;
    {class} property REWARDED_VIDEO: Integer read _GetREWARDED_VIDEO;
    {class} property UNKNOWN: Integer read _GetUNKNOWN;
  end;

  [JavaSignature('com/facebook/ads/internal/api/AudienceNetworkAdsApi')]
  JAudienceNetworkAdsApi = interface(IJavaInstance)
    ['{0CF4130F-10D0-447D-84EA-A3E54089CF81}']
  end;
  TJAudienceNetworkAdsApi = class(TJavaGenericImport<JAudienceNetworkAdsApiClass, JAudienceNetworkAdsApi>) end;

  JBidderTokenProviderApiClass = interface(IJavaClass)
    ['{18E81BE1-C3C2-475A-A930-5136AB7D73ED}']
  end;

  [JavaSignature('com/facebook/ads/internal/api/BidderTokenProviderApi')]
  JBidderTokenProviderApi = interface(IJavaInstance)
    ['{D738FF7E-A7A6-47FE-AA7A-E0AD7945A690}']
    function getBidderToken(P1: JContext): JString; cdecl;//Deprecated
  end;
  TJBidderTokenProviderApi = class(TJavaGenericImport<JBidderTokenProviderApiClass, JBidderTokenProviderApi>) end;

  JBuildConfigApiClass = interface(JObjectClass)
    ['{D4421063-7138-4C76-8763-EBF534C8D4E3}']
    {class} function getVersionName: JString; cdecl;//Deprecated
    {class} function init: JBuildConfigApi; cdecl;//Deprecated
    {class} function isDebug: Boolean; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/ads/internal/api/BuildConfigApi')]
  JBuildConfigApi = interface(JObject)
    ['{4E6C1D9F-9037-4119-8DBA-F7D06075CCC2}']
  end;
  TJBuildConfigApi = class(TJavaGenericImport<JBuildConfigApiClass, JBuildConfigApi>) end;

  JDefaultMediaViewVideoRendererApiClass = interface(IJavaClass)
    ['{31F0BD99-2992-4D06-A40C-51E6CCF140AB}']
    {class} function _GetMEDIA_VIEW_RENDERER_CHILD_TYPE_BACKGROUND_PLAYBACK: Integer; cdecl;
    {class} function _GetMEDIA_VIEW_RENDERER_CHILD_TYPE_DEFAULT: Integer; cdecl;
    {class} procedure initialize(P1: JContext; P2: JMediaViewVideoRenderer; P3: JMediaViewVideoRendererApi; P4: Integer); cdecl;
    {class} procedure onPrepared; cdecl;
    {class} property MEDIA_VIEW_RENDERER_CHILD_TYPE_BACKGROUND_PLAYBACK: Integer read _GetMEDIA_VIEW_RENDERER_CHILD_TYPE_BACKGROUND_PLAYBACK;
    {class} property MEDIA_VIEW_RENDERER_CHILD_TYPE_DEFAULT: Integer read _GetMEDIA_VIEW_RENDERER_CHILD_TYPE_DEFAULT;
  end;

  [JavaSignature('com/facebook/ads/internal/api/DefaultMediaViewVideoRendererApi')]
  JDefaultMediaViewVideoRendererApi = interface(IJavaInstance)
    ['{7444228F-E70F-4BCD-864D-2F295E77664A}']
  end;
  TJDefaultMediaViewVideoRendererApi = class(TJavaGenericImport<JDefaultMediaViewVideoRendererApiClass, JDefaultMediaViewVideoRendererApi>) end;

  JInitSettingsBuilderClass = interface(JAudienceNetworkAds_InitSettingsBuilderClass)
    ['{BEB31CD1-86DB-4F02-8043-84A7BFE7E2A2}']
    {class} function _GetPLACEMENTS_KEY: JString; cdecl;
    {class} function init(P1: JContext): JInitSettingsBuilder; cdecl;
    {class} procedure initialize; cdecl;
    {class} function withInitListener(P1: JAudienceNetworkAds_InitListener): JInitSettingsBuilder; cdecl;
    {class} function withMediationService(P1: JString): JInitSettingsBuilder; cdecl;
    {class} function withPlacementIds(P1: JList): JInitSettingsBuilder; cdecl;
    {class} property PLACEMENTS_KEY: JString read _GetPLACEMENTS_KEY;
  end;

  [JavaSignature('com/facebook/ads/internal/api/InitSettingsBuilder')]
  JInitSettingsBuilder = interface(JAudienceNetworkAds_InitSettingsBuilder)
    ['{8C0C8453-906B-4D83-A131-51C65EE40661}']
  end;
  TJInitSettingsBuilder = class(TJavaGenericImport<JInitSettingsBuilderClass, JInitSettingsBuilder>) end;

  JInstreamVideoAdViewApiClass = interface(Jfacebook_ads_AdClass)
    ['{8C0265E3-ABE5-43B7-8BBE-4867B3AFFC47}']
  end;

  [JavaSignature('com/facebook/ads/internal/api/InstreamVideoAdViewApi')]
  JInstreamVideoAdViewApi = interface(Jfacebook_ads_Ad)
    ['{9936F57D-453E-4A51-81AC-82F538B84F06}']
    procedure destroy; cdecl;//Deprecated
    function getPlacementId: JString; cdecl;//Deprecated
    function getSaveInstanceState: JBundle; cdecl;//Deprecated
    function isAdInvalidated: Boolean; cdecl;//Deprecated
    function isAdLoaded: Boolean; cdecl;//Deprecated
    procedure loadAd; cdecl;//Deprecated
    procedure loadAdFromBid(P1: JString); cdecl;//Deprecated
    procedure setAdListener(P1: JInstreamVideoAdListener); cdecl;//Deprecated
    procedure setExtraHints(P1: JExtraHints); cdecl;//Deprecated
    function show: Boolean; cdecl;//Deprecated
  end;
  TJInstreamVideoAdViewApi = class(TJavaGenericImport<JInstreamVideoAdViewApiClass, JInstreamVideoAdViewApi>) end;

  JInterstitialAdApiClass = interface(Jfacebook_ads_AdClass)
    ['{59BBA822-AC72-4790-9E28-2C16CF5FCD12}']
  end;

  [JavaSignature('com/facebook/ads/internal/api/InterstitialAdApi')]
  JInterstitialAdApi = interface(Jfacebook_ads_Ad)
    ['{512C294E-3AFB-40CA-95B5-F1A4DB453D60}']
    function isAdLoaded: Boolean; cdecl;//Deprecated
    procedure loadAd(P1: JEnumSet); cdecl;//Deprecated
    procedure loadAdFromBid(P1: JEnumSet; P2: JString); cdecl;//Deprecated
    procedure setAdListener(P1: JInterstitialAdListener); cdecl;//Deprecated
    procedure setExtraHints(P1: JExtraHints); cdecl;//Deprecated
    procedure setRewardedAdListener(P1: JRewardedAdListener); cdecl;//Deprecated
    function show: Boolean; cdecl;//Deprecated
  end;
  TJInterstitialAdApi = class(TJavaGenericImport<JInterstitialAdApiClass, JInterstitialAdApi>) end;

  JMediaViewApiClass = interface(IJavaClass)
    ['{9C6B850E-F578-4970-900E-6C72B644E435}']
  end;

  [JavaSignature('com/facebook/ads/internal/api/MediaViewApi')]
  JMediaViewApi = interface(IJavaInstance)
    ['{44D90900-3DE0-4B20-BFC1-F62F62E72AC3}']
    procedure bringChildToFront(P1: JView); cdecl;//Deprecated
    procedure destroy; cdecl;//Deprecated
    function getAdContentsView: JView; cdecl;//Deprecated
    function getMediaHeight: Integer; cdecl;//Deprecated
    function getMediaWidth: Integer; cdecl;//Deprecated
    procedure initialize(P1: JAdViewConstructorParams; P2: JMediaView; P3: JMediaViewParentApi); cdecl;//Deprecated
    procedure setListener(P1: JMediaViewListener); cdecl;//Deprecated
    procedure setVideoRenderer(P1: JMediaViewVideoRenderer); cdecl;//Deprecated
  end;
  TJMediaViewApi = class(TJavaGenericImport<JMediaViewApiClass, JMediaViewApi>) end;

  JMediaViewVideoRendererApiClass = interface(JAdComponentViewApiProviderClass)
    ['{BCF15F1F-9C7A-472C-A50C-A2506161FD3C}']
  end;

  [JavaSignature('com/facebook/ads/internal/api/MediaViewVideoRendererApi')]
  JMediaViewVideoRendererApi = interface(JAdComponentViewApiProvider)
    ['{646D7089-6E1E-4528-9CFF-399E0D0704B8}']
    procedure destroy; cdecl;//Deprecated
    procedure disengageSeek(P1: JVideoStartReason); cdecl;//Deprecated
    procedure engageSeek; cdecl;//Deprecated
    function getCurrentTimeMs: Integer; cdecl;//Deprecated
    function getDuration: Integer; cdecl;//Deprecated
    function getVideoView: JView; cdecl;//Deprecated
    function getVolume: Single; cdecl;//Deprecated
    procedure initialize(P1: JAdViewConstructorParams; P2: JMediaViewVideoRenderer); cdecl;//Deprecated
    procedure pause(P1: Boolean); cdecl;//Deprecated
    procedure play(P1: JVideoStartReason); cdecl;//Deprecated
    procedure seekTo(P1: Integer); cdecl;//Deprecated
    procedure setVolume(P1: Single); cdecl;//Deprecated
    function shouldAutoplay: Boolean; cdecl;//Deprecated
  end;
  TJMediaViewVideoRendererApi = class(TJavaGenericImport<JMediaViewVideoRendererApiClass, JMediaViewVideoRendererApi>) end;

  JNativeAdApiClass = interface(IJavaClass)
    ['{86F4B14E-BC0D-4BF2-BDB4-DE1027306776}']
  end;

  [JavaSignature('com/facebook/ads/internal/api/NativeAdApi')]
  JNativeAdApi = interface(IJavaInstance)
    ['{B72F6EF5-6CBE-4B17-93AB-31A73ED0A88F}']
    function getAdCreativeType: JNativeAd_AdCreativeType; cdecl;//Deprecated
    function getVideoAutoplayBehavior: JVideoAutoplayBehavior; cdecl;//Deprecated
    procedure registerViewForInteraction(P1: JView; P2: JMediaView); cdecl; overload;//Deprecated
    procedure registerViewForInteraction(P1: JView; P2: JMediaView; P3: JImageView); cdecl; overload;//Deprecated
    procedure registerViewForInteraction(P1: JView; P2: JMediaView; P3: JMediaView); cdecl; overload;//Deprecated
    procedure registerViewForInteraction(P1: JView; P2: JMediaView; P3: JList); cdecl; overload;//Deprecated
    procedure registerViewForInteraction(P1: JView; P2: JMediaView; P3: JImageView; P4: JList); cdecl; overload;//Deprecated
    procedure registerViewForInteraction(P1: JView; P2: JMediaView; P3: JMediaView; P4: JList); cdecl; overload;//Deprecated
  end;
  TJNativeAdApi = class(TJavaGenericImport<JNativeAdApiClass, JNativeAdApi>) end;

  JNativeAdBaseApiClass = interface(IJavaClass)
    ['{9B5940A3-80B6-46C7-8BAD-E35713983B1D}']
  end;

  [JavaSignature('com/facebook/ads/internal/api/NativeAdBaseApi')]
  JNativeAdBaseApi = interface(IJavaInstance)
    ['{F38732EF-5372-4D78-8DE6-EAF9E2A8C0BE}']
    function buildLoadAdConfig: JNativeAdBase_NativeAdLoadConfigBuilder; cdecl;//Deprecated
    procedure destroy; cdecl;//Deprecated
    procedure downloadMedia; cdecl;//Deprecated
    function getAdBodyText: JString; cdecl;//Deprecated
    function getAdCallToAction: JString; cdecl;//Deprecated
    function getAdChoicesIcon: JNativeAdImageApi; cdecl;//Deprecated
    function getAdChoicesImageUrl: JString; cdecl;//Deprecated
    function getAdChoicesLinkUrl: JString; cdecl;//Deprecated
    function getAdChoicesText: JString; cdecl;//Deprecated
    function getAdCoverImage: JNativeAdImageApi; cdecl;//Deprecated
    function getAdHeadline: JString; cdecl;//Deprecated
    function getAdIcon: JNativeAdImageApi; cdecl;//Deprecated
    function getAdLinkDescription: JString; cdecl;//Deprecated
    function getAdSocialContext: JString; cdecl;//Deprecated
    function getAdStarRating: JNativeAdRatingApi; cdecl;//Deprecated
    function getAdTranslation: JString; cdecl;//Deprecated
    function getAdUntrimmedBodyText: JString; cdecl;//Deprecated
    function getAdvertiserName: JString; cdecl;//Deprecated
    function getId: JString; cdecl;//Deprecated
    function getPlacementId: JString; cdecl;//Deprecated
    function getPromotedTranslation: JString; cdecl;//Deprecated
    function getSponsoredTranslation: JString; cdecl;//Deprecated
    function hasCallToAction: Boolean; cdecl;//Deprecated
    function isAdInvalidated: Boolean; cdecl;//Deprecated
    function isAdLoaded: Boolean; cdecl;//Deprecated
    procedure loadAd; cdecl; overload;//Deprecated
    procedure loadAd(P1: JNativeAdBase_MediaCacheFlag); cdecl; overload;//Deprecated
    procedure loadAdFromBid(P1: JString); cdecl; overload;//Deprecated
    procedure loadAdFromBid(P1: JString; P2: JNativeAdBase_MediaCacheFlag); cdecl; overload;//Deprecated
    procedure onCtaBroadcast; cdecl;//Deprecated
    procedure setAdListener(P1: JNativeAdListener; P2: JNativeAdBase); cdecl;//Deprecated
    procedure setExtraHints(P1: JExtraHints); cdecl;//Deprecated
    procedure setOnTouchListener(P1: JView_OnTouchListener); cdecl;//Deprecated
    procedure unregisterView; cdecl;//Deprecated
  end;
  TJNativeAdBaseApi = class(TJavaGenericImport<JNativeAdBaseApiClass, JNativeAdBaseApi>) end;

  JNativeAdImageApiClass = interface(IJavaClass)
    ['{1000D3C5-F36F-4C19-A6B6-C04486E206FD}']
  end;

  [JavaSignature('com/facebook/ads/internal/api/NativeAdImageApi')]
  JNativeAdImageApi = interface(IJavaInstance)
    ['{BA0265BC-C294-44E7-BC9E-82736B63D2A2}']
    function getHeight: Integer; cdecl;//Deprecated
    function getUrl: JString; cdecl;//Deprecated
    function getWidth: Integer; cdecl;//Deprecated
  end;
  TJNativeAdImageApi = class(TJavaGenericImport<JNativeAdImageApiClass, JNativeAdImageApi>) end;

  JNativeAdLayoutApiClass = interface(JAdComponentViewApiProviderClass)
    ['{EF73B69F-1D51-44F8-8E19-1136B6BD9D7F}']
  end;

  [JavaSignature('com/facebook/ads/internal/api/NativeAdLayoutApi')]
  JNativeAdLayoutApi = interface(JAdComponentViewApiProvider)
    ['{609F7871-8E93-41C4-8BCC-ADF28480FCD6}']
    procedure initialize(P1: JNativeAdLayout); cdecl;//Deprecated
    procedure setMaxWidth(P1: Integer); cdecl;//Deprecated
    procedure setMinWidth(P1: Integer); cdecl;//Deprecated
  end;
  TJNativeAdLayoutApi = class(TJavaGenericImport<JNativeAdLayoutApiClass, JNativeAdLayoutApi>) end;

  JNativeAdRatingApiClass = interface(IJavaClass)
    ['{6CEFB85D-AC65-4824-94BD-A24F1B01517A}']
  end;

  [JavaSignature('com/facebook/ads/internal/api/NativeAdRatingApi')]
  JNativeAdRatingApi = interface(IJavaInstance)
    ['{A3ACEDF0-DBF7-4559-9FF1-8AFE0AE688B9}']
    function getScale: Double; cdecl;//Deprecated
    function getValue: Double; cdecl;//Deprecated
  end;
  TJNativeAdRatingApi = class(TJavaGenericImport<JNativeAdRatingApiClass, JNativeAdRatingApi>) end;

  JNativeAdScrollViewApiClass = interface(IJavaClass)
    ['{CC3D9D1C-3E91-45E1-92B0-4EAC30559C15}']
  end;

  [JavaSignature('com/facebook/ads/internal/api/NativeAdScrollViewApi')]
  JNativeAdScrollViewApi = interface(IJavaInstance)
    ['{1952C11E-DD0C-4403-9DD3-D952A2A8FCFE}']
    procedure setInset(P1: Integer); cdecl;//Deprecated
  end;
  TJNativeAdScrollViewApi = class(TJavaGenericImport<JNativeAdScrollViewApiClass, JNativeAdScrollViewApi>) end;

  JNativeAdViewApiClass = interface(IJavaClass)
    ['{E5D95B67-8DF6-4FED-B6A5-FD347099475A}']
  end;

  [JavaSignature('com/facebook/ads/internal/api/NativeAdViewApi')]
  JNativeAdViewApi = interface(IJavaInstance)
    ['{1FFA1AB2-1CDA-4090-8863-A3027D5034CB}']
    function render(P1: JContext; P2: JNativeAd): JView; cdecl; overload;//Deprecated
    function render(P1: JContext; P2: JNativeAd; P3: JNativeAdView_Type): JView; cdecl; overload;//Deprecated
    function render(P1: JContext; P2: JNativeAd; P3: JNativeAdViewAttributes): JView; cdecl; overload;//Deprecated
    function render(P1: JContext; P2: JNativeAd; P3: JNativeAdView_Type; P4: JNativeAdViewAttributes): JView; cdecl; overload;//Deprecated
  end;
  TJNativeAdViewApi = class(TJavaGenericImport<JNativeAdViewApiClass, JNativeAdViewApi>) end;

  JNativeAdViewAttributesApiClass = interface(IJavaClass)
    ['{E31CD459-3081-4051-A071-14AA9E9743C4}']
  end;

  [JavaSignature('com/facebook/ads/internal/api/NativeAdViewAttributesApi')]
  JNativeAdViewAttributesApi = interface(IJavaInstance)
    ['{7BB4FE7F-204A-4026-B40A-49B09EF3DE59}']
    procedure setBackgroundColor(P1: Integer); cdecl;//Deprecated
    procedure setCTABackgroundColor(P1: Integer); cdecl;//Deprecated
    procedure setCTABorderColor(P1: Integer); cdecl;//Deprecated
    procedure setCTATextColor(P1: Integer); cdecl;//Deprecated
    procedure setPrimaryTextColor(P1: Integer); cdecl;//Deprecated
    procedure setSecondaryTextColor(P1: Integer); cdecl;//Deprecated
    procedure setTypeface(P1: JTypeface); cdecl;//Deprecated
  end;
  TJNativeAdViewAttributesApi = class(TJavaGenericImport<JNativeAdViewAttributesApiClass, JNativeAdViewAttributesApi>) end;

  JNativeAdViewTypeApiClass = interface(IJavaClass)
    ['{725A6E95-36F7-4823-B33D-F4E737AC975E}']
    {class} function _GetHEIGHT_100: Integer; cdecl;
    {class} function _GetHEIGHT_120: Integer; cdecl;
    {class} function _GetHEIGHT_300: Integer; cdecl;
    {class} function _GetHEIGHT_400: Integer; cdecl;
    {class} function _GetHEIGHT_50: Integer; cdecl;
    {class} function _GetRECT_DYNAMIC: Integer; cdecl;
    {class} function getHeight: Integer; cdecl;
    {class} function getValue: Integer; cdecl;
    {class} function getWidth: Integer; cdecl;
    {class} property HEIGHT_100: Integer read _GetHEIGHT_100;
    {class} property HEIGHT_120: Integer read _GetHEIGHT_120;
    {class} property HEIGHT_300: Integer read _GetHEIGHT_300;
    {class} property HEIGHT_400: Integer read _GetHEIGHT_400;
    {class} property HEIGHT_50: Integer read _GetHEIGHT_50;
    {class} property RECT_DYNAMIC: Integer read _GetRECT_DYNAMIC;
  end;

  [JavaSignature('com/facebook/ads/internal/api/NativeAdViewTypeApi')]
  JNativeAdViewTypeApi = interface(IJavaInstance)
    ['{E1328958-5A18-46E0-AA8F-35DF296BE9BF}']
  end;
  TJNativeAdViewTypeApi = class(TJavaGenericImport<JNativeAdViewTypeApiClass, JNativeAdViewTypeApi>) end;

  JNativeAdsManagerApiClass = interface(IJavaClass)
    ['{4894899E-704D-44C8-8D0B-073F057010B1}']
  end;

  [JavaSignature('com/facebook/ads/internal/api/NativeAdsManagerApi')]
  JNativeAdsManagerApi = interface(IJavaInstance)
    ['{39A79D3C-3758-40B3-8C0A-30F7F840B063}']
    procedure disableAutoRefresh; cdecl;//Deprecated
    function getUniqueNativeAdCount: Integer; cdecl;//Deprecated
    function isLoaded: Boolean; cdecl;//Deprecated
    procedure loadAds; cdecl; overload;//Deprecated
    procedure loadAds(P1: JNativeAdBase_MediaCacheFlag); cdecl; overload;//Deprecated
    function nextNativeAd: JNativeAd; cdecl;//Deprecated
    procedure setExtraHints(P1: JString); cdecl;//Deprecated
    procedure setListener(P1: JNativeAdsManager_Listener); cdecl;//Deprecated
  end;
  TJNativeAdsManagerApi = class(TJavaGenericImport<JNativeAdsManagerApiClass, JNativeAdsManagerApi>) end;

  JNativeBannerAdApiClass = interface(IJavaClass)
    ['{F1035372-19CA-4A5D-8ED1-ED8F4A9CF8B9}']
  end;

  [JavaSignature('com/facebook/ads/internal/api/NativeBannerAdApi')]
  JNativeBannerAdApi = interface(IJavaInstance)
    ['{428A5765-8F22-4329-83A5-8594996BF260}']
    procedure registerViewForInteraction(P1: JView; P2: JMediaView); cdecl; overload;//Deprecated
    procedure registerViewForInteraction(P1: JView; P2: JImageView); cdecl; overload;//Deprecated
    procedure registerViewForInteraction(P1: JView; P2: JImageView; P3: JList); cdecl; overload;//Deprecated
    procedure registerViewForInteraction(P1: JView; P2: JMediaView; P3: JList); cdecl; overload;//Deprecated
  end;
  TJNativeBannerAdApi = class(TJavaGenericImport<JNativeBannerAdApiClass, JNativeBannerAdApi>) end;

  JNativeBannerAdViewApiClass = interface(IJavaClass)
    ['{87DD3956-6E0A-48AB-9B6B-761C58112971}']
  end;

  [JavaSignature('com/facebook/ads/internal/api/NativeBannerAdViewApi')]
  JNativeBannerAdViewApi = interface(IJavaInstance)
    ['{3C92D832-D797-421B-BDAD-97F1B38F87C7}']
    function render(P1: JContext; P2: JNativeBannerAd; P3: JNativeBannerAdView_Type): JView; cdecl; overload;//Deprecated
    function render(P1: JContext; P2: JNativeBannerAd; P3: JNativeBannerAdView_Type; P4: JNativeAdViewAttributes): JView; cdecl; overload;//Deprecated
  end;
  TJNativeBannerAdViewApi = class(TJavaGenericImport<JNativeBannerAdViewApiClass, JNativeBannerAdViewApi>) end;

  JNativeComponentTagApiClass = interface(IJavaClass)
    ['{91D73FB3-76C3-42E4-9DDD-4ED4D4E5B2F5}']
  end;

  [JavaSignature('com/facebook/ads/internal/api/NativeComponentTagApi')]
  JNativeComponentTagApi = interface(IJavaInstance)
    ['{69B9B54F-388F-45FB-9B89-B407CC86DE8F}']
    procedure tagView(P1: JView; P2: JNativeAdBase_NativeComponentTag); cdecl;//Deprecated
  end;
  TJNativeComponentTagApi = class(TJavaGenericImport<JNativeComponentTagApiClass, JNativeComponentTagApi>) end;

  JRewardedVideoAdApiClass = interface(Jfacebook_ads_AdClass)
    ['{3F45AC2E-FA64-411E-B652-AD389F2F80C0}']
  end;

  [JavaSignature('com/facebook/ads/internal/api/RewardedVideoAdApi')]
  JRewardedVideoAdApi = interface(Jfacebook_ads_Ad)
    ['{6B6C6DC9-A90C-4F05-9646-5B4A4B8574CB}']
    procedure destroy; cdecl;//Deprecated
    procedure enableRVChain(P1: Boolean); cdecl;//Deprecated
    function getPlacementId: JString; cdecl;//Deprecated
    function getVideoDuration: Integer; cdecl;//Deprecated
    function isAdInvalidated: Boolean; cdecl;//Deprecated
    function isAdLoaded: Boolean; cdecl;//Deprecated
    procedure loadAd; cdecl; overload;//Deprecated
    procedure loadAd(P1: Boolean); cdecl; overload;//Deprecated
    procedure loadAdFromBid(P1: JString); cdecl; overload;//Deprecated
    procedure loadAdFromBid(P1: JString; P2: Boolean); cdecl; overload;//Deprecated
    procedure setAdListener(P1: JRewardedVideoAdListener); cdecl;//Deprecated
    procedure setExtraHints(P1: JExtraHints); cdecl;//Deprecated
    procedure setRewardData(P1: JRewardData); cdecl;//Deprecated
    function show: Boolean; cdecl; overload;//Deprecated
    function show(P1: Integer): Boolean; cdecl; overload;//Deprecated
  end;
  TJRewardedVideoAdApi = class(TJavaGenericImport<JRewardedVideoAdApiClass, JRewardedVideoAdApi>) end;

  JBenchmarkClass = interface(JAnnotationClass)
    ['{D91BFF8F-7ED4-41EB-9029-1EE11E0B319E}']
  end;

  [JavaSignature('com/facebook/ads/internal/bench/Benchmark')]
  JBenchmark = interface(JAnnotation)
    ['{8EB0AF76-25AA-4A2B-AE10-A462725A63D9}']
    function failAtMillis: Integer; cdecl;//Deprecated
    function warnAtMillis: Integer; cdecl;//Deprecated
  end;
  TJBenchmark = class(TJavaGenericImport<JBenchmarkClass, JBenchmark>) end;

  JBenchmarkLimitsMsClass = interface(JObjectClass)
    ['{1026A345-E1EB-4145-9798-1C9FE603B38C}']
    {class} function _GetGSF: Integer; cdecl;
    {class} function _GetGSW: Integer; cdecl;
    {class} property GSF: Integer read _GetGSF;
    {class} property GSW: Integer read _GetGSW;
  end;

  [JavaSignature('com/facebook/ads/internal/bench/BenchmarkLimitsMs')]
  JBenchmarkLimitsMs = interface(JObject)
    ['{66339A5C-789E-42C9-9673-14502755DB31}']
  end;
  TJBenchmarkLimitsMs = class(TJavaGenericImport<JBenchmarkLimitsMsClass, JBenchmarkLimitsMs>) end;

  JBenchmarkReporterClass = interface(JObjectClass)
    ['{F6B1C93F-2D76-4941-AD8E-40F4245D27C9}']
    {class} procedure executed(P1: JString; P2: JString; P3: JString; P4: Int64); cdecl;//Deprecated
    {class} procedure executedWithWarning(P1: JString; P2: JString; P3: JString; P4: Int64; P5: Int64); cdecl;//Deprecated
    {class} procedure failed(P1: JString; P2: JString; P3: JString; P4: Int64; P5: Int64); cdecl;//Deprecated
    {class} procedure thrown(P1: JString; P2: JString; P3: JString; P4: JThrowable; P5: Int64); cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/ads/internal/bench/BenchmarkReporter')]
  JBenchmarkReporter = interface(JObject)
    ['{16594827-313A-4433-8EF5-E02BDD9D4141}']
  end;
  TJBenchmarkReporter = class(TJavaGenericImport<JBenchmarkReporterClass, JBenchmarkReporter>) end;

  JInvocationTooSlowExceptionClass = interface(JRuntimeExceptionClass)
    ['{AB9273D2-4E85-4946-8E57-2DBA619FAFB9}']
  end;

  [JavaSignature('com/facebook/ads/internal/bench/InvocationTooSlowException')]
  JInvocationTooSlowException = interface(JRuntimeException)
    ['{CD3F4042-473C-43A5-9456-207D1796DD7A}']
  end;
  TJInvocationTooSlowException = class(TJavaGenericImport<JInvocationTooSlowExceptionClass, JInvocationTooSlowException>) end;

  JAdvertisingIdClass = interface(JObjectClass)
    ['{ED03BA28-CF34-4F8B-AA48-CA62064B2C28}']
    {class} function getAdvertisingIdInfoDirectly(P1: JContext): JAdvertisingId; cdecl;//Deprecated
    {class} function init(P1: JString; P2: Boolean): JAdvertisingId; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/ads/internal/bridge/gms/AdvertisingId')]
  JAdvertisingId = interface(JObject)
    ['{5A6C73E2-B9CA-4341-9AA0-765367222F8D}']
    function getId: JString; cdecl;//Deprecated
    function isLimitAdTracking: Boolean; cdecl;//Deprecated
  end;
  TJAdvertisingId = class(TJavaGenericImport<JAdvertisingIdClass, JAdvertisingId>) end;

  JDexLoadErrorReporterClass = interface(JObjectClass)
    ['{DBA3D8FE-55A6-479A-A90C-9108F1DDE41C}']
    {class} function _GetSAMPLING: Double; cdecl;
    {class} function init: JDexLoadErrorReporter; cdecl;
    {class} procedure reportDexLoadingIssue(P1: JContext; P2: JString; P3: Double); cdecl;
    {class} property SAMPLING: Double read _GetSAMPLING;
  end;

  [JavaSignature('com/facebook/ads/internal/dynamicloading/DexLoadErrorReporter')]
  JDexLoadErrorReporter = interface(JObject)
    ['{E04DB468-F594-4D3C-8E8D-2EC5732253F8}']
  end;
  TJDexLoadErrorReporter = class(TJavaGenericImport<JDexLoadErrorReporterClass, JDexLoadErrorReporter>) end;

  JDexLoadErrorReporter_1Class = interface(JThreadClass)
    ['{1F8DFE11-7228-45FE-9477-91E7468B5565}']
    {class} procedure run; cdecl;
  end;

  [JavaSignature('com/facebook/ads/internal/dynamicloading/DexLoadErrorReporter$1')]
  JDexLoadErrorReporter_1 = interface(JThread)
    ['{57856CFA-4421-462E-888A-B42FDCF84C15}']
  end;
  TJDexLoadErrorReporter_1 = class(TJavaGenericImport<JDexLoadErrorReporter_1Class, JDexLoadErrorReporter_1>) end;

  JDynamicLoaderClass = interface(IJavaClass)
    ['{EB9434A1-28F6-415A-8DC8-50B0F3FE269A}']
  end;

  [JavaSignature('com/facebook/ads/internal/dynamicloading/DynamicLoader')]
  JDynamicLoader = interface(IJavaInstance)
    ['{79054AA0-637A-4D5D-AACD-EDD1411B9342}']
    function createAdChoicesViewApi(P1: JAdChoicesView; P2: JContext; P3: JNativeAdBase): JAdChoicesViewApi; cdecl;//Deprecated
    function createAdOptionsView(P1: JContext; P2: JNativeAdBase; P3: JNativeAdLayout; P4: JAdOptionsView): JAdOptionsViewApi; cdecl; overload;//Deprecated
    function createAdOptionsView(P1: JContext; P2: JNativeAdBase; P3: JNativeAdLayout; P4: JAdOptionsView_Orientation; P5: Integer; P6: JAdOptionsView): JAdOptionsViewApi; cdecl; overload;//Deprecated
    function createAdSettingsApi: JAdSettingsApi; cdecl;//Deprecated
    function createAdSizeApi(P1: Integer): JAdSizeApi; cdecl;//Deprecated
    function createAdViewApi(P1: JContext; P2: JString; P3: Jfacebook_ads_AdSize; P4: JAdViewParentApi; P5: Jfacebook_ads_AdView): JAdViewApi; cdecl; overload;//Deprecated
    function createAdViewApi(P1: JContext; P2: JString; P3: JString; P4: JAdViewParentApi; P5: Jfacebook_ads_AdView): JAdViewApi; cdecl; overload;//Deprecated
    function createAdsMessengerServiceApi(P1: JAdsMessengerService): JAdsMessengerServiceApi; cdecl;//Deprecated
    function createAudienceNetworkActivity(P1: JAudienceNetworkActivity; P2: JAudienceNetworkActivityApi): JAudienceNetworkActivityApi; cdecl;//Deprecated
    function createAudienceNetworkAdsApi: JAudienceNetworkAdsApi; cdecl;//Deprecated
    function createBidderTokenProviderApi: JBidderTokenProviderApi; cdecl;//Deprecated
    function createDefaultMediaViewVideoRendererApi: JDefaultMediaViewVideoRendererApi; cdecl;//Deprecated
    function createInstreamVideoAdViewApi(P1: JInstreamVideoAdView; P2: JContext; P3: JBundle): JInstreamVideoAdViewApi; cdecl; overload;//Deprecated
    function createInstreamVideoAdViewApi(P1: JInstreamVideoAdView; P2: JContext; P3: JString; P4: Jfacebook_ads_AdSize): JInstreamVideoAdViewApi; cdecl; overload;//Deprecated
    function createInterstitialAd(P1: JContext; P2: JString; P3: Jfacebook_ads_InterstitialAd): JInterstitialAdApi; cdecl;//Deprecated
    function createMediaViewApi: JMediaViewApi; cdecl;//Deprecated
    function createMediaViewVideoRendererApi: JMediaViewVideoRendererApi; cdecl;//Deprecated
    function createNativeAdApi(P1: JNativeAd; P2: JNativeAdBaseApi): JNativeAdApi; cdecl; overload;//Deprecated
    function createNativeAdApi(P1: JNativeAdBase; P2: JNativeAd; P3: JNativeAdBaseApi): JNativeAdApi; cdecl; overload;//Deprecated
    function createNativeAdBaseApi(P1: JNativeAdBaseApi): JNativeAdBaseApi; cdecl; overload;//Deprecated
    function createNativeAdBaseApi(P1: JContext; P2: JString): JNativeAdBaseApi; cdecl; overload;//Deprecated
    function createNativeAdBaseFromBidPayload(P1: JContext; P2: JString; P3: JString): JNativeAdBase; cdecl;//Deprecated
    function createNativeAdImageApi(P1: JJSONObject): JNativeAdImageApi; cdecl;//Deprecated
    function createNativeAdLayoutApi: JNativeAdLayoutApi; cdecl;//Deprecated
    function createNativeAdRatingApi(P1: JJSONObject): JNativeAdRatingApi; cdecl;//Deprecated
    function createNativeAdScrollViewApi(P1: JNativeAdScrollView; P2: JContext; P3: JNativeAdsManager; P4: JNativeAdScrollView_AdViewProvider; P5: Integer; P6: JNativeAdView_Type; P7: JNativeAdViewAttributes; P8: Integer): JNativeAdScrollViewApi; cdecl;//Deprecated
    function createNativeAdViewApi: JNativeAdViewApi; cdecl;//Deprecated
    function createNativeAdViewAttributesApi: JNativeAdViewAttributesApi; cdecl;//Deprecated
    function createNativeAdViewTypeApi(P1: Integer): JNativeAdViewTypeApi; cdecl;//Deprecated
    function createNativeAdsManagerApi(P1: JContext; P2: JString; P3: Integer): JNativeAdsManagerApi; cdecl;//Deprecated
    function createNativeBannerAdApi(P1: JNativeBannerAd; P2: JNativeAdBaseApi): JNativeBannerAdApi; cdecl;//Deprecated
    function createNativeBannerAdViewApi: JNativeBannerAdViewApi; cdecl;//Deprecated
    function createNativeComponentTagApi: JNativeComponentTagApi; cdecl;//Deprecated
    function createRewardedVideoAd(P1: JContext; P2: JString; P3: JRewardedVideoAd): JRewardedVideoAdApi; cdecl;//Deprecated
    procedure maybeInitInternally(P1: JContext); cdecl;//Deprecated
  end;
  TJDynamicLoader = class(TJavaGenericImport<JDynamicLoaderClass, JDynamicLoader>) end;

  JDynamicLoaderFactoryClass = interface(JObjectClass)
    ['{513FCB10-CE68-435E-AB98-A418A4D360DB}']
    {class} function _GetLOAD_FROM_ASSETS: Boolean; cdecl;
    {class} function getDynamicLoader: JDynamicLoader; cdecl;
    {class} function init: JDynamicLoaderFactory; cdecl;
    {class} procedure initialize(P1: JContext; P2: JMultithreadedBundleWrapper; P3: JAudienceNetworkAds_InitListener; P4: Boolean); cdecl;
    {class} function isFallbackMode: Boolean; cdecl;
    {class} function makeLoader(P1: JContext): JDynamicLoader; cdecl; overload;
    {class} function makeLoader(P1: JContext; P2: Boolean): JDynamicLoader; cdecl; overload;
    {class} function makeLoaderUnsafe: JDynamicLoader; cdecl;
    {class} procedure setFallbackMode(P1: Boolean); cdecl;
    {class} procedure setUseLegacyClassLoader(P1: Boolean); cdecl;
    {class} property LOAD_FROM_ASSETS: Boolean read _GetLOAD_FROM_ASSETS;
  end;

  [JavaSignature('com/facebook/ads/internal/dynamicloading/DynamicLoaderFactory')]
  JDynamicLoaderFactory = interface(JObject)
    ['{4EAA52D8-C714-4447-AB35-162F2F22D607}']
  end;
  TJDynamicLoaderFactory = class(TJavaGenericImport<JDynamicLoaderFactoryClass, JDynamicLoaderFactory>) end;

  JDynamicLoaderFactory_1Class = interface(JRunnableClass)
    ['{892B6B0D-38B6-4088-80C0-E9A696A93D55}']
    {class} procedure run; cdecl;
  end;

  [JavaSignature('com/facebook/ads/internal/dynamicloading/DynamicLoaderFactory$1')]
  JDynamicLoaderFactory_1 = interface(JRunnable)
    ['{FC35DE65-5FCB-4278-A040-5FD4544F0F5C}']
  end;
  TJDynamicLoaderFactory_1 = class(TJavaGenericImport<JDynamicLoaderFactory_1Class, JDynamicLoaderFactory_1>) end;

  JDynamicLoaderFactory_2Class = interface(JRunnableClass)
    ['{5CC3BCBD-E261-474E-A3EE-5BE90CBC09D7}']
    {class} procedure run; cdecl;
  end;

  [JavaSignature('com/facebook/ads/internal/dynamicloading/DynamicLoaderFactory$2')]
  JDynamicLoaderFactory_2 = interface(JRunnable)
    ['{4679C527-485D-4F0C-A75B-30A4C2BF1CA2}']
  end;
  TJDynamicLoaderFactory_2 = class(TJavaGenericImport<JDynamicLoaderFactory_2Class, JDynamicLoaderFactory_2>) end;

  JDynamicLoaderFactory_3Class = interface(JAudienceNetworkAds_InitResultClass)
    ['{5E2DAE83-E1DA-4F20-90D6-25BBFA50FD4B}']
    {class} function getMessage: JString; cdecl;
    {class} function isSuccess: Boolean; cdecl;
  end;

  [JavaSignature('com/facebook/ads/internal/dynamicloading/DynamicLoaderFactory$3')]
  JDynamicLoaderFactory_3 = interface(JAudienceNetworkAds_InitResult)
    ['{EB85D552-F3F7-4552-B1E0-5075BC5C3D28}']
  end;
  TJDynamicLoaderFactory_3 = class(TJavaGenericImport<JDynamicLoaderFactory_3Class, JDynamicLoaderFactory_3>) end;

  JDynamicLoaderFallbackClass = interface(JObjectClass)
    ['{A937AE7A-B99D-43E3-8927-9FE988746317}']
  end;

  [JavaSignature('com/facebook/ads/internal/dynamicloading/DynamicLoaderFallback')]
  JDynamicLoaderFallback = interface(JObject)
    ['{A77EC3EF-3553-401E-9791-4A859B710EAB}']
  end;
  TJDynamicLoaderFallback = class(TJavaGenericImport<JDynamicLoaderFallbackClass, JDynamicLoaderFallback>) end;

  JInvocationHandlerClass = interface(IJavaClass)
    ['{6A007CA5-3D80-4B09-9FFC-B88E3C887FB2}']
    {class} function invoke(proxy: JObject; method: JMethod; args: TJavaObjectArray<JObject>): JObject; cdecl;
  end;

  [JavaSignature('java/lang/reflect/InvocationHandler')]
  JInvocationHandler = interface(IJavaInstance)
    ['{C23EFD3B-082E-4C1E-8E2C-BA2AD7C6F02D}']
  end;
  TJInvocationHandler = class(TJavaGenericImport<JInvocationHandlerClass, JInvocationHandler>) end;

  JDynamicLoaderFallback_1Class = interface(JInvocationHandlerClass)
    ['{D873081D-001E-4D77-A606-BB1472AEABF2}']
    {class} function invoke(P1: JObject; P2: JMethod; P3: TJavaObjectArray<JObject>): JObject; cdecl;
  end;

  [JavaSignature('com/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$1')]
  JDynamicLoaderFallback_1 = interface(JInvocationHandler)
    ['{699D73A3-879C-4B82-98D0-5F276D943F99}']
  end;
  TJDynamicLoaderFallback_1 = class(TJavaGenericImport<JDynamicLoaderFallback_1Class, JDynamicLoaderFallback_1>) end;

  JDynamicLoaderFallback_2Class = interface(JRunnableClass)
    ['{BC6B9F7A-FF75-43DD-8CD9-37B71DDB7C4B}']
    {class} procedure run; cdecl;
  end;

  [JavaSignature('com/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$2')]
  JDynamicLoaderFallback_2 = interface(JRunnable)
    ['{9AA62068-0CE5-424B-A58F-5405112116DF}']
  end;
  TJDynamicLoaderFallback_2 = class(TJavaGenericImport<JDynamicLoaderFallback_2Class, JDynamicLoaderFallback_2>) end;

  JDynamicLoaderFallback_SimpleMethodCaptorClass = interface(JObjectClass)
    ['{5EDB7E65-180F-4C2A-A4FA-D24F9E02555B}']
  end;

  [JavaSignature('com/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor')]
  JDynamicLoaderFallback_SimpleMethodCaptor = interface(JObject)
    ['{9395BC3A-51B8-42D6-95B2-00246E6DADD9}']
    function mock(P1: Jlang_Class): JObject; cdecl;//Deprecated
  end;
  TJDynamicLoaderFallback_SimpleMethodCaptor = class(TJavaGenericImport<JDynamicLoaderFallback_SimpleMethodCaptorClass, JDynamicLoaderFallback_SimpleMethodCaptor>) end;

  JSimpleMethodCaptor_1Class = interface(JInvocationHandlerClass)
    ['{6F112832-45BF-45BC-91F5-F88541C65DDA}']
    {class} function invoke(P1: JObject; P2: JMethod; P3: TJavaObjectArray<JObject>): JObject; cdecl;
  end;

  [JavaSignature('com/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$SimpleMethodCaptor$1')]
  JSimpleMethodCaptor_1 = interface(JInvocationHandler)
    ['{E528AB19-C056-4F79-8D70-ED14615B4CD8}']
  end;
  TJSimpleMethodCaptor_1 = class(TJavaGenericImport<JSimpleMethodCaptor_1Class, JSimpleMethodCaptor_1>) end;

  JAdsMessengerServiceClass = interface(JServiceClass)
    ['{ABE78E5C-E6D7-408F-B5AB-7E4A008241F4}']
    {class} function init: JAdsMessengerService; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/ads/internal/ipc/AdsMessengerService')]
  JAdsMessengerService = interface(JService)
    ['{5508274B-EF88-4C45-A2CE-7DBCB1F23C96}']
    function onBind(P1: JIntent): JIBinder; cdecl;//Deprecated
    procedure onCreate; cdecl;//Deprecated
    procedure onDestroy; cdecl;//Deprecated
  end;
  TJAdsMessengerService = class(TJavaGenericImport<JAdsMessengerServiceClass, JAdsMessengerService>) end;

  JAdsProcessPriorityServiceClass = interface(JServiceClass)
    ['{9C2D55A2-EA20-4358-A33D-721C3AA9B809}']
    {class} function init: JAdsProcessPriorityService; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/ads/internal/ipc/AdsProcessPriorityService')]
  JAdsProcessPriorityService = interface(JService)
    ['{58A580DE-EB14-4688-9EF0-0FBCF43852BD}']
    function onBind(P1: JIntent): JIBinder; cdecl;//Deprecated
    procedure onCreate; cdecl;//Deprecated
  end;
  TJAdsProcessPriorityService = class(TJavaGenericImport<JAdsProcessPriorityServiceClass, JAdsProcessPriorityService>) end;

  JRemoteANActivityClass = interface(JAudienceNetworkActivityClass)
    ['{194F3927-C30A-40D8-9703-D81012BB9350}']
    {class} function init: JRemoteANActivity; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/ads/internal/ipc/RemoteANActivity')]
  JRemoteANActivity = interface(JAudienceNetworkActivity)
    ['{533C5C1C-FD5F-4938-897A-ACC7F80535FF}']
  end;
  TJRemoteANActivity = class(TJavaGenericImport<JRemoteANActivityClass, JRemoteANActivity>) end;

  JAdInternalSettingsClass = interface(JObjectClass)
    ['{F20FFCE7-D118-40F3-A10D-F15D94D2C24A}']
    {class} function _GetBOOL_CHILD_DIRECTED_KEY: JString; cdecl;
    {class} function _GetSRL_INTEGRATION_ERROR_MODE_KEY: JString; cdecl;
    {class} function _GetTEST_AD_TYPE_KEY: JString; cdecl;
    {class} function _GetsForceIpc: Boolean; cdecl;
    {class} procedure _SetsForceIpc(Value: Boolean); cdecl;
    {class} function _GetsMultiprocessSupportMode: JAdSettings_MultiprocessSupportMode; cdecl;
    {class} procedure _SetsMultiprocessSupportMode(Value: JAdSettings_MultiprocessSupportMode); cdecl;
    {class} function _GetsSettingsBundle: JMultithreadedBundleWrapper; cdecl;
    {class} procedure _SetsSettingsBundle(Value: JMultithreadedBundleWrapper); cdecl;
    {class} procedure addTestDevice(P1: JString); cdecl;
    {class} procedure addTestDevices(P1: JCollection); cdecl;
    {class} procedure clearTestDevices; cdecl;
    {class} function getMediationService: JString; cdecl;
    {class} function getTestDevicesList: JArrayList; cdecl;
    {class} function getUrlPrefix: JString; cdecl;
    {class} function init: JAdInternalSettings; cdecl;
    {class} function isDebugBuild: Boolean; cdecl;
    {class} function isDebuggerOn: Boolean; cdecl;
    {class} function isExplicitTestMode: Boolean; cdecl;
    {class} function isTestMode(P1: JContext): Boolean; cdecl;
    {class} function isVideoAutoplay: Boolean; cdecl;
    {class} function isVideoAutoplayOnMobile: Boolean; cdecl;
    {class} function isVisibleAnimation: Boolean; cdecl;
    {class} procedure setDebugBuild(P1: Boolean); cdecl;
    {class} procedure setForceIpc(P1: Boolean); cdecl;
    {class} procedure setMediationService(P1: JString); cdecl;
    {class} procedure setMultiprocessSupportMode(P1: JAdSettings_MultiprocessSupportMode); cdecl;
    {class} procedure setTestMode(P1: Boolean); cdecl;
    {class} procedure setUrlPrefix(P1: JString); cdecl;
    {class} procedure setVideoAutoplay(P1: Boolean); cdecl;
    {class} procedure setVideoAutoplayOnMobile(P1: Boolean); cdecl;
    {class} procedure setVisibleAnimation(P1: Boolean); cdecl;
    {class} procedure turnOnSDKDebugger(P1: JContext); cdecl;
    {class} property BOOL_CHILD_DIRECTED_KEY: JString read _GetBOOL_CHILD_DIRECTED_KEY;
    {class} property SRL_INTEGRATION_ERROR_MODE_KEY: JString read _GetSRL_INTEGRATION_ERROR_MODE_KEY;
    {class} property TEST_AD_TYPE_KEY: JString read _GetTEST_AD_TYPE_KEY;
    {class} property sForceIpc: Boolean read _GetsForceIpc write _SetsForceIpc;
    {class} property sMultiprocessSupportMode: JAdSettings_MultiprocessSupportMode read _GetsMultiprocessSupportMode write _SetsMultiprocessSupportMode;
    {class} property sSettingsBundle: JMultithreadedBundleWrapper read _GetsSettingsBundle write _SetsSettingsBundle;
  end;

  [JavaSignature('com/facebook/ads/internal/settings/AdInternalSettings')]
  JAdInternalSettings = interface(JObject)
    ['{20CFA556-F04F-4273-B784-7578D5C25FC4}']
  end;
  TJAdInternalSettings = class(TJavaGenericImport<JAdInternalSettingsClass, JAdInternalSettings>) end;

  JMultithreadedBundleWrapperClass = interface(JObjectClass)
    ['{AFDEF45D-175F-4778-95B4-8E69F8780E10}']
    {class} function init: JMultithreadedBundleWrapper; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/ads/internal/settings/MultithreadedBundleWrapper')]
  JMultithreadedBundleWrapper = interface(JObject)
    ['{EFCE53FF-C565-429F-978B-5ED8B25864DD}']
    function getBoolean(P1: JString): Boolean; cdecl; overload;//Deprecated
    function getBoolean(P1: JString; P2: Boolean): Boolean; cdecl; overload;//Deprecated
    function getSerializable(P1: JString): JSerializable; cdecl;//Deprecated
    function getString(P1: JString; P2: JString): JString; cdecl;//Deprecated
    function getStringArrayList(P1: JString): JArrayList; cdecl;//Deprecated
    procedure putBoolean(P1: JString; P2: Boolean); cdecl;//Deprecated
    procedure putSerializable(P1: JString; P2: JSerializable); cdecl;//Deprecated
    procedure putString(P1: JString; P2: JString); cdecl;//Deprecated
    procedure putStringArrayList(P1: JString; P2: JArrayList); cdecl;//Deprecated
    procedure reset(P1: JBundle); cdecl;//Deprecated
    function toBundle: JBundle; cdecl;//Deprecated
  end;
  TJMultithreadedBundleWrapper = class(TJavaGenericImport<JMultithreadedBundleWrapperClass, JMultithreadedBundleWrapper>) end;

  JANActivityLifecycleCallbacksListenerClass = interface(JApplication_ActivityLifecycleCallbacksClass)
    ['{7BB546B4-DCD5-4487-9489-B2EEEC1A9657}']
    {class} function getANActivityLifecycleCallbacksListener: JANActivityLifecycleCallbacksListener; cdecl;//Deprecated
    {class} function init: JANActivityLifecycleCallbacksListener; cdecl;//Deprecated
    {class} procedure registerActivityCallbacks(P1: JContext); cdecl;//Deprecated
    {class} procedure unregisterActivityCallbacks(P1: JContext); cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/ads/internal/util/common/ANActivityLifecycleCallbacksListener')]
  JANActivityLifecycleCallbacksListener = interface(JApplication_ActivityLifecycleCallbacks)
    ['{054BF5A6-9851-4204-A504-FE677D90CEC3}']
    function getActivityStack: JDeque; cdecl;//Deprecated
    procedure onActivityCreated(P1: JActivity; P2: JBundle); cdecl;//Deprecated
    procedure onActivityDestroyed(P1: JActivity); cdecl;//Deprecated
    procedure onActivityPaused(P1: JActivity); cdecl;//Deprecated
    procedure onActivityResumed(P1: JActivity); cdecl;//Deprecated
    procedure onActivitySaveInstanceState(P1: JActivity; P2: JBundle); cdecl;//Deprecated
    procedure onActivityStarted(P1: JActivity); cdecl;//Deprecated
    procedure onActivityStopped(P1: JActivity); cdecl;//Deprecated
  end;
  TJANActivityLifecycleCallbacksListener = class(TJavaGenericImport<JANActivityLifecycleCallbacksListenerClass, JANActivityLifecycleCallbacksListener>) end;

  JPreconditionsClass = interface(JObjectClass)
    ['{BE53C2CE-1B5B-4E0B-8FB3-851838F6F827}']
    {class} procedure checkIsOnMainThread; cdecl;//Deprecated
    {class} procedure checkIsTrue(P1: Boolean; P2: JString); cdecl;//Deprecated
    {class} function checkNotNull(P1: JObject; P2: JString): JObject; cdecl;//Deprecated
    {class} function init: JPreconditions; cdecl;//Deprecated
  end;

  [JavaSignature('com/facebook/ads/internal/util/common/Preconditions')]
  JPreconditions = interface(JObject)
    ['{2871346A-50FA-48FE-B320-CF15795BA610}']
  end;
  TJPreconditions = class(TJavaGenericImport<JPreconditionsClass, JPreconditions>) end;

  JProcessUtilsClass = interface(JObjectClass)
    ['{C7A1F9F2-EBDF-4421-961A-D738EBD5A601}']
    {class} function _GetsCurrentProcessCheckCalled: Boolean; cdecl;
    {class} procedure _SetsCurrentProcessCheckCalled(Value: Boolean); cdecl;
    {class} function _GetsRemoteProcess: Boolean; cdecl;
    {class} procedure _SetsRemoteProcess(Value: Boolean); cdecl;
    {class} function getProcessName(P1: JContext): JString; cdecl;
    {class} function getProcessSpecificName(P1: JString; P2: JContext): JString; cdecl;
    {class} property sCurrentProcessCheckCalled: Boolean read _GetsCurrentProcessCheckCalled write _SetsCurrentProcessCheckCalled;
    {class} property sRemoteProcess: Boolean read _GetsRemoteProcess write _SetsRemoteProcess;
  end;

  [JavaSignature('com/facebook/ads/internal/util/process/ProcessUtils')]
  JProcessUtils = interface(JObject)
    ['{1A68A8EC-E076-4FFD-9160-C1D9E4E911F4}']
  end;
  TJProcessUtils = class(TJavaGenericImport<JProcessUtilsClass, JProcessUtils>) end;

  JDequeClass = interface(JQueueClass)
    ['{D9174044-C981-45EE-909F-7D665EC75940}']
    {class} function add(e: JObject): Boolean; cdecl;//Deprecated
    {class} procedure addFirst(e: JObject); cdecl;//Deprecated
    {class} procedure addLast(e: JObject); cdecl;//Deprecated
    {class} function getFirst: JObject; cdecl;//Deprecated
    {class} function getLast: JObject; cdecl;//Deprecated
    {class} function iterator: JIterator; cdecl;//Deprecated
    {class} function peek: JObject; cdecl;
    {class} function peekFirst: JObject; cdecl;
    {class} function peekLast: JObject; cdecl;
    {class} function pop: JObject; cdecl;
    {class} procedure push(e: JObject); cdecl;
    {class} function remove: JObject; cdecl; overload;
    {class} function removeLast: JObject; cdecl;
    {class} function removeLastOccurrence(o: JObject): Boolean; cdecl;
  end;

  [JavaSignature('java/util/Deque')]
  JDeque = interface(JQueue)
    ['{BC7C81CA-81F1-4787-9583-7B6774819543}']
    function &contains(o: JObject): Boolean; cdecl;//Deprecated
    function descendingIterator: JIterator; cdecl;//Deprecated
    function element: JObject; cdecl;//Deprecated
    function offer(e: JObject): Boolean; cdecl;
    function offerFirst(e: JObject): Boolean; cdecl;
    function offerLast(e: JObject): Boolean; cdecl;
    function poll: JObject; cdecl;
    function pollFirst: JObject; cdecl;
    function pollLast: JObject; cdecl;
    function remove(o: JObject): Boolean; cdecl; overload;
    function removeFirst: JObject; cdecl;
    function removeFirstOccurrence(o: JObject): Boolean; cdecl;
    function size: Integer; cdecl;
  end;
  TJDeque = class(TJavaGenericImport<JDequeClass, JDeque>) end;

implementation

procedure RegisterTypes;
begin
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JAnimator', TypeInfo(Facebook.AudienceNetwork.JAnimator));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JAnimator_AnimatorListener', TypeInfo(Facebook.AudienceNetwork.JAnimator_AnimatorListener));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JAnimator_AnimatorPauseListener', TypeInfo(Facebook.AudienceNetwork.JAnimator_AnimatorPauseListener));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JKeyframe', TypeInfo(Facebook.AudienceNetwork.JKeyframe));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JLayoutTransition', TypeInfo(Facebook.AudienceNetwork.JLayoutTransition));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JLayoutTransition_TransitionListener', TypeInfo(Facebook.AudienceNetwork.JLayoutTransition_TransitionListener));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JPropertyValuesHolder', TypeInfo(Facebook.AudienceNetwork.JPropertyValuesHolder));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JStateListAnimator', TypeInfo(Facebook.AudienceNetwork.JStateListAnimator));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JTimeInterpolator', TypeInfo(Facebook.AudienceNetwork.JTimeInterpolator));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JTypeConverter', TypeInfo(Facebook.AudienceNetwork.JTypeConverter));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JTypeEvaluator', TypeInfo(Facebook.AudienceNetwork.JTypeEvaluator));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JValueAnimator', TypeInfo(Facebook.AudienceNetwork.JValueAnimator));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JValueAnimator_AnimatorUpdateListener', TypeInfo(Facebook.AudienceNetwork.JValueAnimator_AnimatorUpdateListener));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JPathMotion', TypeInfo(Facebook.AudienceNetwork.JPathMotion));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JScene', TypeInfo(Facebook.AudienceNetwork.JScene));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JTransition', TypeInfo(Facebook.AudienceNetwork.JTransition));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JTransition_EpicenterCallback', TypeInfo(Facebook.AudienceNetwork.JTransition_EpicenterCallback));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JTransition_TransitionListener', TypeInfo(Facebook.AudienceNetwork.JTransition_TransitionListener));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JTransitionManager', TypeInfo(Facebook.AudienceNetwork.JTransitionManager));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JTransitionPropagation', TypeInfo(Facebook.AudienceNetwork.JTransitionPropagation));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JTransitionValues', TypeInfo(Facebook.AudienceNetwork.JTransitionValues));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JInterpolator', TypeInfo(Facebook.AudienceNetwork.JInterpolator));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JToolbar_LayoutParams', TypeInfo(Facebook.AudienceNetwork.JToolbar_LayoutParams));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.Jfacebook_ads_AdListener', TypeInfo(Facebook.AudienceNetwork.Jfacebook_ads_AdListener));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JAbstractAdListener', TypeInfo(Facebook.AudienceNetwork.JAbstractAdListener));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.Jfacebook_ads_Ad', TypeInfo(Facebook.AudienceNetwork.Jfacebook_ads_Ad));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JAdChoicesView', TypeInfo(Facebook.AudienceNetwork.JAdChoicesView));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JAdError', TypeInfo(Facebook.AudienceNetwork.JAdError));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JAdNativeComponentView', TypeInfo(Facebook.AudienceNetwork.JAdNativeComponentView));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JMediaView', TypeInfo(Facebook.AudienceNetwork.JMediaView));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JAdIconView', TypeInfo(Facebook.AudienceNetwork.JAdIconView));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JAdComponentView', TypeInfo(Facebook.AudienceNetwork.JAdComponentView));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JAdOptionsView', TypeInfo(Facebook.AudienceNetwork.JAdOptionsView));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JAdOptionsView_Orientation', TypeInfo(Facebook.AudienceNetwork.JAdOptionsView_Orientation));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JAdSettings', TypeInfo(Facebook.AudienceNetwork.JAdSettings));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JAdSettings_IntegrationErrorMode', TypeInfo(Facebook.AudienceNetwork.JAdSettings_IntegrationErrorMode));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JAdSettings_MultiprocessSupportMode', TypeInfo(Facebook.AudienceNetwork.JAdSettings_MultiprocessSupportMode));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JAdSettings_TestAdType', TypeInfo(Facebook.AudienceNetwork.JAdSettings_TestAdType));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.Jfacebook_ads_AdSize', TypeInfo(Facebook.AudienceNetwork.Jfacebook_ads_AdSize));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.Jfacebook_ads_AdView', TypeInfo(Facebook.AudienceNetwork.Jfacebook_ads_AdView));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JAdViewParentApi', TypeInfo(Facebook.AudienceNetwork.JAdViewParentApi));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JAdView_1', TypeInfo(Facebook.AudienceNetwork.JAdView_1));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JAudienceNetworkActivity', TypeInfo(Facebook.AudienceNetwork.JAudienceNetworkActivity));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JAudienceNetworkActivityApi', TypeInfo(Facebook.AudienceNetwork.JAudienceNetworkActivityApi));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JAudienceNetworkActivity_1', TypeInfo(Facebook.AudienceNetwork.JAudienceNetworkActivity_1));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JAudienceNetworkAds', TypeInfo(Facebook.AudienceNetwork.JAudienceNetworkAds));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JAudienceNetworkAds_AdFormat', TypeInfo(Facebook.AudienceNetwork.JAudienceNetworkAds_AdFormat));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JAudienceNetworkAds_InitListener', TypeInfo(Facebook.AudienceNetwork.JAudienceNetworkAds_InitListener));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JAudienceNetworkAds_InitResult', TypeInfo(Facebook.AudienceNetwork.JAudienceNetworkAds_InitResult));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JAudienceNetworkAds_InitSettingsBuilder', TypeInfo(Facebook.AudienceNetwork.JAudienceNetworkAds_InitSettingsBuilder));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JAudienceNetworkContentProvider', TypeInfo(Facebook.AudienceNetwork.JAudienceNetworkContentProvider));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JBidderTokenProvider', TypeInfo(Facebook.AudienceNetwork.JBidderTokenProvider));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.Jads_BuildConfig', TypeInfo(Facebook.AudienceNetwork.Jads_BuildConfig));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JCacheFlag', TypeInfo(Facebook.AudienceNetwork.JCacheFlag));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JMediaViewVideoRenderer', TypeInfo(Facebook.AudienceNetwork.JMediaViewVideoRenderer));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JDefaultMediaViewVideoRenderer', TypeInfo(Facebook.AudienceNetwork.JDefaultMediaViewVideoRenderer));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JExtraHints', TypeInfo(Facebook.AudienceNetwork.JExtraHints));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JExtraHints_1', TypeInfo(Facebook.AudienceNetwork.JExtraHints_1));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JExtraHints_Builder', TypeInfo(Facebook.AudienceNetwork.JExtraHints_Builder));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JExtraHints_HintType', TypeInfo(Facebook.AudienceNetwork.JExtraHints_HintType));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JExtraHints_Keyword', TypeInfo(Facebook.AudienceNetwork.JExtraHints_Keyword));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JInstreamVideoAdListener', TypeInfo(Facebook.AudienceNetwork.JInstreamVideoAdListener));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JInstreamVideoAdView', TypeInfo(Facebook.AudienceNetwork.JInstreamVideoAdView));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.Jfacebook_ads_InterstitialAd', TypeInfo(Facebook.AudienceNetwork.Jfacebook_ads_InterstitialAd));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JInterstitialAdListener', TypeInfo(Facebook.AudienceNetwork.JInterstitialAdListener));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JInterstitialAdExtendedListener', TypeInfo(Facebook.AudienceNetwork.JInterstitialAdExtendedListener));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JMediaViewParentApi', TypeInfo(Facebook.AudienceNetwork.JMediaViewParentApi));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JMediaView_1', TypeInfo(Facebook.AudienceNetwork.JMediaView_1));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JMediaViewListener', TypeInfo(Facebook.AudienceNetwork.JMediaViewListener));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JMediaViewVideoRendererWithBackgroundPlayback', TypeInfo(Facebook.AudienceNetwork.JMediaViewVideoRendererWithBackgroundPlayback));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JNativeAdBase', TypeInfo(Facebook.AudienceNetwork.JNativeAdBase));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JNativeAd', TypeInfo(Facebook.AudienceNetwork.JNativeAd));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JNativeAd_AdCreativeType', TypeInfo(Facebook.AudienceNetwork.JNativeAd_AdCreativeType));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JNativeAdBase_Image', TypeInfo(Facebook.AudienceNetwork.JNativeAdBase_Image));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JNativeAdBase_MediaCacheFlag', TypeInfo(Facebook.AudienceNetwork.JNativeAdBase_MediaCacheFlag));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JNativeAdBase_NativeAdLoadConfigBuilder', TypeInfo(Facebook.AudienceNetwork.JNativeAdBase_NativeAdLoadConfigBuilder));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JNativeAdBase_NativeComponentTag', TypeInfo(Facebook.AudienceNetwork.JNativeAdBase_NativeComponentTag));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JNativeAdBase_Rating', TypeInfo(Facebook.AudienceNetwork.JNativeAdBase_Rating));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JNativeAdLayout', TypeInfo(Facebook.AudienceNetwork.JNativeAdLayout));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JNativeAdListener', TypeInfo(Facebook.AudienceNetwork.JNativeAdListener));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JNativeAdScrollView', TypeInfo(Facebook.AudienceNetwork.JNativeAdScrollView));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JNativeAdScrollView_AdViewProvider', TypeInfo(Facebook.AudienceNetwork.JNativeAdScrollView_AdViewProvider));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JNativeAdView', TypeInfo(Facebook.AudienceNetwork.JNativeAdView));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JNativeAdView_Type', TypeInfo(Facebook.AudienceNetwork.JNativeAdView_Type));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JNativeAdViewAttributes', TypeInfo(Facebook.AudienceNetwork.JNativeAdViewAttributes));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JNativeAdsManager', TypeInfo(Facebook.AudienceNetwork.JNativeAdsManager));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JNativeAdsManager_Listener', TypeInfo(Facebook.AudienceNetwork.JNativeAdsManager_Listener));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JNativeBannerAd', TypeInfo(Facebook.AudienceNetwork.JNativeBannerAd));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JNativeBannerAdView', TypeInfo(Facebook.AudienceNetwork.JNativeBannerAdView));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JNativeBannerAdView_Type', TypeInfo(Facebook.AudienceNetwork.JNativeBannerAdView_Type));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JRewardData', TypeInfo(Facebook.AudienceNetwork.JRewardData));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JRewardedAdListener', TypeInfo(Facebook.AudienceNetwork.JRewardedAdListener));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JRewardedVideoAd', TypeInfo(Facebook.AudienceNetwork.JRewardedVideoAd));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JRewardedVideoAdListener', TypeInfo(Facebook.AudienceNetwork.JRewardedVideoAdListener));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JRewardedVideoAdExtendedListener', TypeInfo(Facebook.AudienceNetwork.JRewardedVideoAdExtendedListener));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JS2SRewardedVideoAdExtendedListener', TypeInfo(Facebook.AudienceNetwork.JS2SRewardedVideoAdExtendedListener));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JS2SRewardedVideoAdListener', TypeInfo(Facebook.AudienceNetwork.JS2SRewardedVideoAdListener));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JVideoAutoplayBehavior', TypeInfo(Facebook.AudienceNetwork.JVideoAutoplayBehavior));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JVideoStartReason', TypeInfo(Facebook.AudienceNetwork.JVideoStartReason));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JAdChoicesViewApi', TypeInfo(Facebook.AudienceNetwork.JAdChoicesViewApi));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JAdComponentViewParentApi', TypeInfo(Facebook.AudienceNetwork.JAdComponentViewParentApi));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JAdComponentView_1', TypeInfo(Facebook.AudienceNetwork.JAdComponentView_1));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JAdComponentViewApi', TypeInfo(Facebook.AudienceNetwork.JAdComponentViewApi));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JAdComponentViewApiProvider', TypeInfo(Facebook.AudienceNetwork.JAdComponentViewApiProvider));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JAdOptionsViewApi', TypeInfo(Facebook.AudienceNetwork.JAdOptionsViewApi));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JAdSettingsApi', TypeInfo(Facebook.AudienceNetwork.JAdSettingsApi));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JAdSizeApi', TypeInfo(Facebook.AudienceNetwork.JAdSizeApi));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JAdViewApi', TypeInfo(Facebook.AudienceNetwork.JAdViewApi));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JAdViewConstructorParams', TypeInfo(Facebook.AudienceNetwork.JAdViewConstructorParams));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JAdsMessengerServiceApi', TypeInfo(Facebook.AudienceNetwork.JAdsMessengerServiceApi));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JAudienceNetworkAdsApi', TypeInfo(Facebook.AudienceNetwork.JAudienceNetworkAdsApi));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JBidderTokenProviderApi', TypeInfo(Facebook.AudienceNetwork.JBidderTokenProviderApi));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JBuildConfigApi', TypeInfo(Facebook.AudienceNetwork.JBuildConfigApi));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JDefaultMediaViewVideoRendererApi', TypeInfo(Facebook.AudienceNetwork.JDefaultMediaViewVideoRendererApi));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JInitSettingsBuilder', TypeInfo(Facebook.AudienceNetwork.JInitSettingsBuilder));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JInstreamVideoAdViewApi', TypeInfo(Facebook.AudienceNetwork.JInstreamVideoAdViewApi));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JInterstitialAdApi', TypeInfo(Facebook.AudienceNetwork.JInterstitialAdApi));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JMediaViewApi', TypeInfo(Facebook.AudienceNetwork.JMediaViewApi));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JMediaViewVideoRendererApi', TypeInfo(Facebook.AudienceNetwork.JMediaViewVideoRendererApi));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JNativeAdApi', TypeInfo(Facebook.AudienceNetwork.JNativeAdApi));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JNativeAdBaseApi', TypeInfo(Facebook.AudienceNetwork.JNativeAdBaseApi));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JNativeAdImageApi', TypeInfo(Facebook.AudienceNetwork.JNativeAdImageApi));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JNativeAdLayoutApi', TypeInfo(Facebook.AudienceNetwork.JNativeAdLayoutApi));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JNativeAdRatingApi', TypeInfo(Facebook.AudienceNetwork.JNativeAdRatingApi));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JNativeAdScrollViewApi', TypeInfo(Facebook.AudienceNetwork.JNativeAdScrollViewApi));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JNativeAdViewApi', TypeInfo(Facebook.AudienceNetwork.JNativeAdViewApi));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JNativeAdViewAttributesApi', TypeInfo(Facebook.AudienceNetwork.JNativeAdViewAttributesApi));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JNativeAdViewTypeApi', TypeInfo(Facebook.AudienceNetwork.JNativeAdViewTypeApi));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JNativeAdsManagerApi', TypeInfo(Facebook.AudienceNetwork.JNativeAdsManagerApi));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JNativeBannerAdApi', TypeInfo(Facebook.AudienceNetwork.JNativeBannerAdApi));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JNativeBannerAdViewApi', TypeInfo(Facebook.AudienceNetwork.JNativeBannerAdViewApi));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JNativeComponentTagApi', TypeInfo(Facebook.AudienceNetwork.JNativeComponentTagApi));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JRewardedVideoAdApi', TypeInfo(Facebook.AudienceNetwork.JRewardedVideoAdApi));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JBenchmark', TypeInfo(Facebook.AudienceNetwork.JBenchmark));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JBenchmarkLimitsMs', TypeInfo(Facebook.AudienceNetwork.JBenchmarkLimitsMs));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JBenchmarkReporter', TypeInfo(Facebook.AudienceNetwork.JBenchmarkReporter));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JInvocationTooSlowException', TypeInfo(Facebook.AudienceNetwork.JInvocationTooSlowException));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JAdvertisingId', TypeInfo(Facebook.AudienceNetwork.JAdvertisingId));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JDexLoadErrorReporter', TypeInfo(Facebook.AudienceNetwork.JDexLoadErrorReporter));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JDexLoadErrorReporter_1', TypeInfo(Facebook.AudienceNetwork.JDexLoadErrorReporter_1));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JDynamicLoader', TypeInfo(Facebook.AudienceNetwork.JDynamicLoader));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JDynamicLoaderFactory', TypeInfo(Facebook.AudienceNetwork.JDynamicLoaderFactory));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JDynamicLoaderFactory_1', TypeInfo(Facebook.AudienceNetwork.JDynamicLoaderFactory_1));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JDynamicLoaderFactory_2', TypeInfo(Facebook.AudienceNetwork.JDynamicLoaderFactory_2));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JDynamicLoaderFactory_3', TypeInfo(Facebook.AudienceNetwork.JDynamicLoaderFactory_3));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JDynamicLoaderFallback', TypeInfo(Facebook.AudienceNetwork.JDynamicLoaderFallback));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JInvocationHandler', TypeInfo(Facebook.AudienceNetwork.JInvocationHandler));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JDynamicLoaderFallback_1', TypeInfo(Facebook.AudienceNetwork.JDynamicLoaderFallback_1));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JDynamicLoaderFallback_2', TypeInfo(Facebook.AudienceNetwork.JDynamicLoaderFallback_2));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JDynamicLoaderFallback_SimpleMethodCaptor', TypeInfo(Facebook.AudienceNetwork.JDynamicLoaderFallback_SimpleMethodCaptor));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JSimpleMethodCaptor_1', TypeInfo(Facebook.AudienceNetwork.JSimpleMethodCaptor_1));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JAdsMessengerService', TypeInfo(Facebook.AudienceNetwork.JAdsMessengerService));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JAdsProcessPriorityService', TypeInfo(Facebook.AudienceNetwork.JAdsProcessPriorityService));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JRemoteANActivity', TypeInfo(Facebook.AudienceNetwork.JRemoteANActivity));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JAdInternalSettings', TypeInfo(Facebook.AudienceNetwork.JAdInternalSettings));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JMultithreadedBundleWrapper', TypeInfo(Facebook.AudienceNetwork.JMultithreadedBundleWrapper));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JANActivityLifecycleCallbacksListener', TypeInfo(Facebook.AudienceNetwork.JANActivityLifecycleCallbacksListener));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JPreconditions', TypeInfo(Facebook.AudienceNetwork.JPreconditions));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JProcessUtils', TypeInfo(Facebook.AudienceNetwork.JProcessUtils));
  TRegTypes.RegisterType('Facebook.AudienceNetwork.JDeque', TypeInfo(Facebook.AudienceNetwork.JDeque));
end;

initialization
  RegisterTypes;
end.

