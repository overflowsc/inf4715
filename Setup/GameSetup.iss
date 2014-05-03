; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{4E973FBF-340A-4359-91BD-A95753E25300}
AppName=Haunted House
AppVerName=Haunted House 0.42 (Build: 2010-04-17)
AppPublisher=HauntedSoft
AppPublisherURL=http://www.equals-forty-two.com/
AppVersion=0.42
DefaultDirName={pf}\Haunted House
DisableDirPage=no
DefaultGroupName=Haunted House
DisableProgramGroupPage=yes
OutputDir=.\
OutputBaseFilename=Haunted House Setup
SetupIconFile=..\Haunted\GameApp\haunted.ico
UninstallDisplayIcon=..\Haunted\GameApp\hauntedUninstall.ico
Compression=lzma/max
SolidCompression=yes
WizardImageFile=SetupImage.bmp
PrivilegesRequired=none
AllowRootDirectory=yes
AppReadmeFile=Readme.txt

BackColor=$030303
BackColor2=$070707

[CustomMessages]
InstallMessage=Install %1

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags:
Name: "PhysX"; Description: "{cm:InstallMessage,NVIDIA PhysX 2.8.3}"; Flags: checkedonce

[Files]
Source: "Readme.txt"; DestDir: "{app}"; Flags: isreadme

Source: "..\Haunted\GameApp\hauntedUninstall.ico"; DestDir:"{app}"; Flags: ignoreversion
Source: "..\Haunted\Bin\GameApp.exe"; DestDir: "{app}\Bin\"; Flags: ignoreversion
Source: "..\Haunted\Bin\AntTweakBar.dll"; DestDir: "{app}\Bin\"; Flags: ignoreversion
Source: "..\Haunted\Bin\Awesomium.dll"; DestDir: "{app}\Bin\"; Flags: ignoreversion
Source: "..\Haunted\Bin\fmodex.dll"; DestDir: "{app}\Bin\"; Flags: ignoreversion
Source: "..\Haunted\Bin\icudt38.dll"; DestDir: "{app}\Bin\"; Flags: ignoreversion
Source: "..\Haunted\Bin\NxCharacter.dll"; DestDir: "{app}\Bin\"; Flags: ignoreversion
Source: "..\Haunted\Samples\Config.xml"; DestDir: "{app}\Samples\"; Flags: ignoreversion
Source: "..\Haunted\Samples\SoundsConfig.xml"; DestDir: "{app}\Samples\"; Flags: ignoreversion
Source: "..\Haunted\Samples\SceneInstances.xml"; DestDir: "{app}\Samples\"; Flags: ignoreversion
Source: "..\Haunted\Samples\StyleSheet.xsl"; DestDir: "{app}\Samples\"; Flags: ignoreversion
Source: "..\Haunted\Samples\Videos\*"; DestDir: "{app}\Samples\Videos\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "..\Haunted\Samples\Animations\*"; DestDir: "{app}\Samples\Animations\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "..\Haunted\Samples\Materials\*"; DestDir: "{app}\Samples\Materials\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "..\Haunted\Samples\Menus\*"; DestDir: "{app}\Samples\Menus\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "..\Haunted\Samples\Meshes\*"; DestDir: "{app}\Samples\Meshes\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "..\Haunted\Samples\Models\*"; DestDir: "{app}\Samples\Models\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "..\Haunted\Samples\Scripts\*"; DestDir: "{app}\Samples\Scripts\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "..\Haunted\Samples\Shaders\*"; DestDir: "{app}\Samples\Shaders\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "..\Haunted\Samples\Sounds\*"; DestDir: "{app}\Samples\Sounds\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "..\Haunted\Samples\Textures\*"; DestDir: "{app}\Samples\Textures\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "..\Haunted\Samples\Resource\*"; DestDir: "{app}\Samples\Resource\"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

Source: "PhysX_9.09.1112_SystemSoftware.exe"; DestDir: "{tmp}\PhysX"; Flags: ignoreversion deleteafterinstall
Source: "msxml4.msi"; DestDir: "{app}"; Flags: ignoreversion deleteafterinstall
Source: "DXSETUP.exe"; DestDir: "{app}"; Flags: ignoreversion deleteafterinstall
Source: "DSETUP.dll"; DestDir: "{app}"; Flags: ignoreversion deleteafterinstall
Source: "dsetup32.dll"; DestDir: "{app}"; Flags: ignoreversion deleteafterinstall
Source: "dxupdate.cab"; DestDir: "{app}"; Flags: ignoreversion deleteafterinstall
Source: "Aug2009_d3dx9_42_x86.cab"; DestDir: "{app}"; Flags: ignoreversion deleteafterinstall

[Icons]
Name: "{group}\Haunted House"; Filename: "{app}\Bin\GameApp.exe"; WorkingDir: "{app}\Bin\"
Name: "{group}\{cm:UninstallProgram,Haunted House}"; IconFileName:{app}\hauntedUninstall.ico; Filename: "{app}\Bin\GameApp.exe"
Name: "{commondesktop}\Haunted House"; Filename: "{app}\Bin\GameApp.exe"; WorkingDir: "{app}\Bin\"; Tasks: desktopicon

[Run]
Filename: "{tmp}\PhysX\PhysX_9.09.1112_SystemSoftware.exe"; Parameters:"/quiet";Tasks: "PhysX"; StatusMsg: "Installing PhysX..."; Flags: nowait
Filename: "{app}\DXSETUP.exe"; Parameters: "/SILENT"; WorkingDir: "{app}";  StatusMsg: "Installing DirectX Redistributable..."; Flags: waituntilterminated
Filename: "msiexec.exe"; Parameters: "/i ""{app}\msxml4.msi"" /quiet"; WorkingDir: "{app}";  StatusMsg: "Installing MSXML 4..."; Flags: waituntilterminated
Filename: "{app}\Bin\GameApp.exe"; WorkingDir: "{app}\Bin\"; Description: "{cm:LaunchProgram,Haunted House}"; Flags: postinstall skipifsilent unchecked










