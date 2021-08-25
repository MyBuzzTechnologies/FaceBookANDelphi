{ *********************************************************** }
{ }
{ CodeGear Delphi Runtime Library }
{ }
{ Copyright(c) 2012-2014 Embarcadero Technologies, Inc. }
{ }
{ *********************************************************** }

//
// Delphi-Objective-C Bridge
// Interfaces for Cocoa framework FacebookAdapter
//

unit iOSapi.FacebookAdapter;

interface

// ===== External functions =====

const
  libFacebookAdapter = 'FacebookAdapter';

implementation

{$IF defined(IOS) and NOT defined(CPUARM)}

uses
  Posix.Dlfcn;

var
  FacebookAdapterModule: THandle;

{$ENDIF IOS}
{$IF defined(IOS) and NOT defined(CPUARM)}

initialization

FacebookAdapterModule := dlopen(MarshaledAString(libFacebookAdapter), RTLD_LAZY);

finalization

dlclose(FacebookAdapterModule);
{$ENDIF IOS}

end.
