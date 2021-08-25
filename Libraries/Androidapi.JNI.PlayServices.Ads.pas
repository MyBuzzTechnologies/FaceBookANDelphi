unit Androidapi.JNI.PlayServices.Ads;

interface

uses
  Androidapi.JNIBridge,
  Androidapi.JNI.GraphicsContentViewText,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.Os;

type
// ===== Forward declarations =====

  JAdvertisingIdClient = interface;//com.google.android.gms.ads.identifier.AdvertisingIdClient
  JAdvertisingIdClient_Info = interface;//com.google.android.gms.ads.identifier.AdvertisingIdClient$Info
  JAdvertisingIdClient_zza = interface;//com.google.android.gms.ads.identifier.AdvertisingIdClient$zza
  Jidentifier_zza = interface;//com.google.android.gms.ads.identifier.zza
  Jzzb = interface;//com.google.android.gms.ads.identifier.zzb
  Jzzc = interface;//com.google.android.gms.ads.identifier.zzc
  Jads_identifier_zza = interface;//com.google.android.gms.internal.ads_identifier.zza
  Jads_identifier_zzb = interface;//com.google.android.gms.internal.ads_identifier.zzb
  Jads_identifier_zzc = interface;//com.google.android.gms.internal.ads_identifier.zzc
  Jzzd = interface;//com.google.android.gms.internal.ads_identifier.zzd
  Jzze = interface;//com.google.android.gms.internal.ads_identifier.zze
  Jzzf = interface;//com.google.android.gms.internal.ads_identifier.zzf
  Jzzg = interface;//com.google.android.gms.internal.ads_identifier.zzg

// ===== Interface declarations =====

  JAdvertisingIdClientClass = interface(JObjectClass)
    ['{EBCEADC5-14A2-4E4C-A048-993746356F8E}']
    {class} function getAdvertisingIdInfo(P1: JContext): JAdvertisingIdClient_Info; cdecl;//Deprecated
    {class} function getIsAdIdFakeForDebugLogging(P1: JContext): Boolean; cdecl;//Deprecated
    {class} function init(P1: JContext): JAdvertisingIdClient; cdecl;//Deprecated
    {class} procedure setShouldSkipGmsCoreVersionCheck(P1: Boolean); cdecl;//Deprecated
  end;

  [JavaSignature('com/google/android/gms/ads/identifier/AdvertisingIdClient')]
  JAdvertisingIdClient = interface(JObject)
    ['{BE695BA2-4967-46DA-AAF8-E16C09394769}']
    procedure finish; cdecl;//Deprecated
    function getInfo: JAdvertisingIdClient_Info; cdecl;//Deprecated
    procedure start; cdecl;//Deprecated
  end;
  TJAdvertisingIdClient = class(TJavaGenericImport<JAdvertisingIdClientClass, JAdvertisingIdClient>) end;

  JAdvertisingIdClient_InfoClass = interface(JObjectClass)
    ['{AEB70444-348C-4CA8-B655-97E55204C286}']
    {class} function init(P1: JString; P2: Boolean): JAdvertisingIdClient_Info; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/android/gms/ads/identifier/AdvertisingIdClient$Info')]
  JAdvertisingIdClient_Info = interface(JObject)
    ['{A374133F-B45F-4FBE-959D-ABF8C9265F50}']
    function getId: JString; cdecl;//Deprecated
    function isLimitAdTrackingEnabled: Boolean; cdecl;//Deprecated
    function toString: JString; cdecl;//Deprecated
  end;
  TJAdvertisingIdClient_Info = class(TJavaGenericImport<JAdvertisingIdClient_InfoClass, JAdvertisingIdClient_Info>) end;

  JAdvertisingIdClient_zzaClass = interface(JThreadClass)
    ['{42192FFE-6150-42EE-8F3A-AFE6B7BA64C9}']
    {class} function init(P1: JAdvertisingIdClient; P2: Int64): JAdvertisingIdClient_zza; cdecl;
    {class} procedure run; cdecl;
  end;

  [JavaSignature('com/google/android/gms/ads/identifier/AdvertisingIdClient$zza')]
  JAdvertisingIdClient_zza = interface(JThread)
    ['{F54F6EE9-F0D1-4F58-976B-A1F9F3D8D759}']
  end;
  TJAdvertisingIdClient_zza = class(TJavaGenericImport<JAdvertisingIdClient_zzaClass, JAdvertisingIdClient_zza>) end;

  Jidentifier_zzaClass = interface(JThreadClass)
    ['{4D3476D9-E6E6-40EA-8278-C77CAB313E61}']
  end;

  [JavaSignature('com/google/android/gms/ads/identifier/zza')]
  Jidentifier_zza = interface(JThread)
    ['{43DD59AF-EA66-4368-B772-63DB64290A39}']
    procedure run; cdecl;//Deprecated
  end;
  TJidentifier_zza = class(TJavaGenericImport<Jidentifier_zzaClass, Jidentifier_zza>) end;

  JzzbClass = interface(JObjectClass)
    ['{D38183E4-765D-46A8-9C55-2FE24BCE908D}']
    {class} function init(P1: JContext): Jzzb; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/android/gms/ads/identifier/zzb')]
  Jzzb = interface(JObject)
    ['{6087FF1C-EC07-4CBA-ACF3-CA169CBEA97D}']
    function getBoolean(P1: JString; P2: Boolean): Boolean; cdecl;//Deprecated
  end;
  TJzzb = class(TJavaGenericImport<JzzbClass, Jzzb>) end;

  JzzcClass = interface(JObjectClass)
    ['{D147B642-4569-4C8A-92FB-5D453934890D}']
    {class} function init: Jzzc; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/android/gms/ads/identifier/zzc')]
  Jzzc = interface(JObject)
    ['{2867A27F-5F35-4ADB-83BD-B01F26B9A879}']
  end;
  TJzzc = class(TJavaGenericImport<JzzcClass, Jzzc>) end;

  Jads_identifier_zzaClass = interface(JIInterfaceClass)
    ['{6D151140-D135-4F59-9D5A-1B88DD78B291}']
  end;

  [JavaSignature('com/google/android/gms/internal/ads_identifier/zza')]
  Jads_identifier_zza = interface(JIInterface)
    ['{B2817A56-4C70-422A-A90D-5231CA1E0A13}']
    function asBinder: JIBinder; cdecl;//Deprecated
  end;
  TJads_identifier_zza = class(TJavaGenericImport<Jads_identifier_zzaClass, Jads_identifier_zza>) end;

  Jads_identifier_zzbClass = interface(JBinderClass)
    ['{5BC6301F-224F-46D9-9D01-6E2498EB2013}']
  end;

  [JavaSignature('com/google/android/gms/internal/ads_identifier/zzb')]
  Jads_identifier_zzb = interface(JBinder)
    ['{C075CADB-74BA-47E2-9543-CC39C79C7F51}']
    function asBinder: JIBinder; cdecl;//Deprecated
    function onTransact(P1: Integer; P2: JParcel; P3: JParcel; P4: Integer): Boolean; cdecl;//Deprecated
  end;
  TJads_identifier_zzb = class(TJavaGenericImport<Jads_identifier_zzbClass, Jads_identifier_zzb>) end;

  Jads_identifier_zzcClass = interface(JObjectClass)
    ['{822778FF-2AD8-4BBB-AFB6-72A1BF385DDC}']
    {class} function zza(P1: JParcel): Boolean; cdecl; overload;//Deprecated
    {class} procedure zza(P1: JParcel; P2: Boolean); cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/google/android/gms/internal/ads_identifier/zzc')]
  Jads_identifier_zzc = interface(JObject)
    ['{445983DF-B2C6-4D0C-9B32-AD1CDC31B3FC}']
  end;
  TJads_identifier_zzc = class(TJavaGenericImport<Jads_identifier_zzcClass, Jads_identifier_zzc>) end;

  JzzdClass = interface(IJavaClass)
    ['{64FDCA4D-DFDB-49A6-947A-A4C5E922B822}']
  end;

  [JavaSignature('com/google/android/gms/internal/ads_identifier/zzd')]
  Jzzd = interface(IJavaInstance)
    ['{DE874EB4-229D-47BC-AE23-A995434A18E0}']
  end;
  TJzzd = class(TJavaGenericImport<JzzdClass, Jzzd>) end;

  JzzeClass = interface(JIInterfaceClass)
    ['{280040CA-5B6A-4541-A9A4-77FF55483522}']
  end;

  [JavaSignature('com/google/android/gms/internal/ads_identifier/zze')]
  Jzze = interface(JIInterface)
    ['{681C12B0-5ED6-4E6D-862A-32A9980F4F16}']
    function getId: JString; cdecl;//Deprecated
    function zzb(P1: Boolean): Boolean; cdecl;//Deprecated
    function zzc: Boolean; cdecl;//Deprecated
  end;
  TJzze = class(TJavaGenericImport<JzzeClass, Jzze>) end;

  JzzfClass = interface(Jads_identifier_zzbClass)
    ['{E4514C0F-41EB-49B8-8E81-A8F05042EA71}']
    {class} function zza(P1: JIBinder): Jzze; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/android/gms/internal/ads_identifier/zzf')]
  Jzzf = interface(Jads_identifier_zzb)
    ['{92538E01-2A69-4C88-82FF-A4788351E867}']
  end;
  TJzzf = class(TJavaGenericImport<JzzfClass, Jzzf>) end;

  JzzgClass = interface(Jads_identifier_zzaClass)
    ['{3851B138-90A2-4C32-A00E-0B248E0303B7}']
  end;

  [JavaSignature('com/google/android/gms/internal/ads_identifier/zzg')]
  Jzzg = interface(Jads_identifier_zza)
    ['{30D581B8-DC54-4CA6-8033-E78A7AB1A784}']
    function getId: JString; cdecl;//Deprecated
    function zzb(P1: Boolean): Boolean; cdecl;//Deprecated
    function zzc: Boolean; cdecl;//Deprecated
  end;
  TJzzg = class(TJavaGenericImport<JzzgClass, Jzzg>) end;

implementation

procedure RegisterTypes;
begin
  TRegTypes.RegisterType('Androidapi.JNI.PlayServices.Ads.JAdvertisingIdClient', TypeInfo(Androidapi.JNI.PlayServices.Ads.JAdvertisingIdClient));
  TRegTypes.RegisterType('Androidapi.JNI.PlayServices.Ads.JAdvertisingIdClient_Info', TypeInfo(Androidapi.JNI.PlayServices.Ads.JAdvertisingIdClient_Info));
  TRegTypes.RegisterType('Androidapi.JNI.PlayServices.Ads.JAdvertisingIdClient_zza', TypeInfo(Androidapi.JNI.PlayServices.Ads.JAdvertisingIdClient_zza));
  TRegTypes.RegisterType('Androidapi.JNI.PlayServices.Ads.Jidentifier_zza', TypeInfo(Androidapi.JNI.PlayServices.Ads.Jidentifier_zza));
  TRegTypes.RegisterType('Androidapi.JNI.PlayServices.Ads.Jzzb', TypeInfo(Androidapi.JNI.PlayServices.Ads.Jzzb));
  TRegTypes.RegisterType('Androidapi.JNI.PlayServices.Ads.Jzzc', TypeInfo(Androidapi.JNI.PlayServices.Ads.Jzzc));
  TRegTypes.RegisterType('Androidapi.JNI.PlayServices.Ads.Jads_identifier_zza', TypeInfo(Androidapi.JNI.PlayServices.Ads.Jads_identifier_zza));
  TRegTypes.RegisterType('Androidapi.JNI.PlayServices.Ads.Jads_identifier_zzb', TypeInfo(Androidapi.JNI.PlayServices.Ads.Jads_identifier_zzb));
  TRegTypes.RegisterType('Androidapi.JNI.PlayServices.Ads.Jads_identifier_zzc', TypeInfo(Androidapi.JNI.PlayServices.Ads.Jads_identifier_zzc));
  TRegTypes.RegisterType('Androidapi.JNI.PlayServices.Ads.Jzzd', TypeInfo(Androidapi.JNI.PlayServices.Ads.Jzzd));
  TRegTypes.RegisterType('Androidapi.JNI.PlayServices.Ads.Jzze', TypeInfo(Androidapi.JNI.PlayServices.Ads.Jzze));
  TRegTypes.RegisterType('Androidapi.JNI.PlayServices.Ads.Jzzf', TypeInfo(Androidapi.JNI.PlayServices.Ads.Jzzf));
  TRegTypes.RegisterType('Androidapi.JNI.PlayServices.Ads.Jzzg', TypeInfo(Androidapi.JNI.PlayServices.Ads.Jzzg));
end;

initialization
  RegisterTypes;
end.

