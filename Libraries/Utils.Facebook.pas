unit Utils.Facebook;

interface

type
  TFacebookUtils = class
  public
    class function InitAudienceNetwork: Boolean;
  end;

implementation

uses
  System.SysUtils,
  {$IFDEF ANDROID}
  Facebook.AudienceNetwork,
  Androidapi.Helpers,
  {$ENDIF ANDROID}
  {$IFDEF IOS}
  iOSapi.FacebookAdapter,
  {$ENDIF IOS}
  System.IOUtils;

{ TFacebookUtils }

class function TFacebookUtils.InitAudienceNetwork: Boolean;
begin
  Result:=True;
  {$IFDEF ANDROID}
  try
    TJAudienceNetworkAds.JavaClass.initialize(TAndroidHelper.Context);
  except
    on E: Exception do
    begin
      Result:=False;
    end;
  end;
  {$ENDIF ANDROID}
  {$IFDEF IOS}

  {$ENDIF IOS}
end;

{$IFDEF IOS}
const
  libFBSDKCoreKitBasics = 'FBSDKCoreKit-Basics.framework/FBSDKCoreKitBasics';
  libFBAudienceNetwork = 'FBAudienceNetwork-5.2.0.framework/FBAudienceNetwork';
  libFBAdaptor = 'FacebookAdapter-5.2.0.0.framework/Versions/A/FacebookAdapter';

// Fixes linker error: ___isOSVersionAtLeast missing (iOS SDK 12.x)
procedure CLangRTLoader; cdecl; external '/usr/lib/clang/lib/darwin/libclang_rt.ios.a';

function LibFBCoreKitBasics: Pointer; cdecl;
  external libFBSDKCoreKitBasics name 'OBJC_CLASS_$_FBSDKURLSessionTask';

//function LibFBCoreKit: Pointer; cdecl;
//  external libFBSDKCoreKit name 'OBJC_CLASS_$_FBSDKURLSessionTask';

function LibFBAN: Pointer; cdecl;
  external libFBAudienceNetwork name 'OBJC_CLASS_$_FBNativeAdView';

function LibFBANAdaptor: Pointer; cdecl;
  external libFBAdaptor name 'OBJC_CLASS_$_GADFBBannerAd';

{$ENDIF IOS}

initialization
finalization
  {$IFDEF IOS}
  if TOSVersion.Major < 0 then
  begin
    LibFBCoreKitBasics;
//    LibFBCoreKit;
    LibFBAN;
    LibFBANAdaptor;
  end;
  {$ENDIF IOS}

end.
