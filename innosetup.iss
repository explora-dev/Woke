; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "woke"
#define MyAppVersion "0.0.1"
#define MyAppPublisher "Taylor Stieff"
#define MyAppURL "https://github.com/tmstieff/Woke"
#define MyAppExeName "woke.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{7A9BCC01-81B0-46FA-C22A-523A114bC22F}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DisableProgramGroupPage=yes
OutputBaseFilename=woke-0.0.1
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "release\woke.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "release\Qt5Core.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "release\Qt5Gui.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "release\Qt5Network.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "release\Qt5Sql.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "release\Qt5Svg.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "release\Qt5Widgets.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "release\libGLESV2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "release\libEGL.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "release\D3Dcompiler_47.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "release\opengl32sw.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "release\libgcc_s_dw2-1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "release\libstdc++-6.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "release\libwinpthread-1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "release\qdjango-db0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "release\libssl32.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "release\ssleay32.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "release\libeay32.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "release\iconengines\*"; DestDir: "{app}\iconengines"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "release\sqldrivers\*"; DestDir: "{app}\sqldrivers"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "release\bearer\*"; DestDir: "{app}\bearer"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "release\imageformats\*"; DestDir: "{app}\imageformats"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "release\platforms\*"; DestDir: "{app}\platforms"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "release\translations\*"; DestDir: "{app}\translations"; Flags: ignoreversion recursesubdirs createallsubdirs



; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
