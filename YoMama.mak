# Microsoft Developer Studio Generated NMAKE File, Format Version 4.10
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101

!IF "$(CFG)" == ""
CFG=YoMama32 - Win32 Debug
!MESSAGE No configuration specified.  Defaulting to YoMama32 - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "YoMama32 - Win32 Debug" && "$(CFG)" !=\
 "YoMama32 - Win32 Release"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "YoMama.mak" CFG="YoMama32 - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "YoMama32 - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE "YoMama32 - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 
################################################################################
# Begin Project
CPP=cl.exe
RSC=rc.exe
MTL=mktyplib.exe

!IF  "$(CFG)" == "YoMama32 - Win32 Debug"

# PROP BASE Use_MFC 5
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "WinDebug"
# PROP BASE Intermediate_Dir "WinDebug"
# PROP Use_MFC 5
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "WinDebug"
# PROP Intermediate_Dir "WinDebug"
OUTDIR=.\WinDebug
INTDIR=.\WinDebug

ALL : "$(OUTDIR)\YoMama.exe"

CLEAN : 
	-@erase "$(INTDIR)\CSnapdlg.obj"
	-@erase "$(INTDIR)\Snap.obj"
	-@erase "$(INTDIR)\stdafx.obj"
	-@erase "$(INTDIR)\vc40.idb"
	-@erase "$(INTDIR)\vc40.pdb"
	-@erase "$(INTDIR)\YoMama.obj"
	-@erase "$(INTDIR)\YoMama.pch"
	-@erase "$(INTDIR)\YoMama.res"
	-@erase "$(OUTDIR)\YoMama.exe"
	-@erase "$(OUTDIR)\YoMama.ilk"
	-@erase "$(OUTDIR)\YoMama.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /MT /W3 /GX /Zi /Od /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /FR /Yu"stdafx.h" /c
# ADD CPP /nologo /MTd /W3 /Gm /GX /Zi /Od /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /Yu"stdafx.h" /c
# SUBTRACT CPP /Fr
CPP_PROJ=/nologo /MTd /W3 /Gm /GX /Zi /Od /D "_DEBUG" /D "WIN32" /D "_WINDOWS"\
 /D "_MBCS" /Fp"$(INTDIR)/YoMama.pch" /Yu"stdafx.h" /Fo"$(INTDIR)/"\
 /Fd"$(INTDIR)/" /c 
CPP_OBJS=.\WinDebug/
CPP_SBRS=.\.
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
RSC_PROJ=/l 0x409 /fo"$(INTDIR)/YoMama.res" /d "_DEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/YoMama.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /debug /machine:I386
# SUBTRACT BASE LINK32 /pdb:none
# ADD LINK32 /nologo /subsystem:windows /debug /machine:I386
# SUBTRACT LINK32 /pdb:none
LINK32_FLAGS=/nologo /subsystem:windows /incremental:yes\
 /pdb:"$(OUTDIR)/YoMama.pdb" /debug /machine:I386 /out:"$(OUTDIR)/YoMama.exe" 
LINK32_OBJS= \
	"$(INTDIR)\CSnapdlg.obj" \
	"$(INTDIR)\Snap.obj" \
	"$(INTDIR)\stdafx.obj" \
	"$(INTDIR)\YoMama.obj" \
	"$(INTDIR)\YoMama.res"

"$(OUTDIR)\YoMama.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "YoMama32 - Win32 Release"

# PROP BASE Use_MFC 5
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "WinRel"
# PROP BASE Intermediate_Dir "WinRel"
# PROP Use_MFC 5
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "WinRel"
# PROP Intermediate_Dir "WinRel"
OUTDIR=.\WinRel
INTDIR=.\WinRel

ALL : "$(OUTDIR)\YoMama.exe"

CLEAN : 
	-@erase "$(INTDIR)\CSnapdlg.obj"
	-@erase "$(INTDIR)\Snap.obj"
	-@erase "$(INTDIR)\stdafx.obj"
	-@erase "$(INTDIR)\YoMama.obj"
	-@erase "$(INTDIR)\YoMama.pch"
	-@erase "$(INTDIR)\YoMama.res"
	-@erase "$(OUTDIR)\YoMama.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /MT /W3 /GX /O2 /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /FR /Yu"stdafx.h" /c
# ADD CPP /nologo /MT /W3 /GX /O2 /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /Yu"stdafx.h" /c
# SUBTRACT CPP /Fr
CPP_PROJ=/nologo /MT /W3 /GX /O2 /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D\
 "_MBCS" /Fp"$(INTDIR)/YoMama.pch" /Yu"stdafx.h" /Fo"$(INTDIR)/" /c 
CPP_OBJS=.\WinRel/
CPP_SBRS=.\.
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
RSC_PROJ=/l 0x409 /fo"$(INTDIR)/YoMama.res" /d "NDEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/YoMama.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /machine:I386
# SUBTRACT BASE LINK32 /pdb:none
# ADD LINK32 /nologo /subsystem:windows /machine:I386
# SUBTRACT LINK32 /pdb:none
LINK32_FLAGS=/nologo /subsystem:windows /incremental:no\
 /pdb:"$(OUTDIR)/YoMama.pdb" /machine:I386 /out:"$(OUTDIR)/YoMama.exe" 
LINK32_OBJS= \
	"$(INTDIR)\CSnapdlg.obj" \
	"$(INTDIR)\Snap.obj" \
	"$(INTDIR)\stdafx.obj" \
	"$(INTDIR)\YoMama.obj" \
	"$(INTDIR)\YoMama.res"

"$(OUTDIR)\YoMama.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

MTL_PROJ=
################################################################################
# Begin Target

# Name "YoMama32 - Win32 Debug"
# Name "YoMama32 - Win32 Release"

!IF  "$(CFG)" == "YoMama32 - Win32 Debug"

!ELSEIF  "$(CFG)" == "YoMama32 - Win32 Release"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\stdafx.cpp
DEP_CPP_STDAF=\
	".\stdafx.h"\
	

!IF  "$(CFG)" == "YoMama32 - Win32 Debug"

# ADD BASE CPP /Yc"stdafx.h"
# ADD CPP /Yc"stdafx.h"

BuildCmds= \
	$(CPP) /nologo /MTd /W3 /Gm /GX /Zi /Od /D "_DEBUG" /D "WIN32" /D "_WINDOWS"\
 /D "_MBCS" /Fp"$(INTDIR)/YoMama.pch" /Yc"stdafx.h" /Fo"$(INTDIR)/"\
 /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\stdafx.obj" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\YoMama.pch" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "YoMama32 - Win32 Release"

# ADD BASE CPP /Yc"stdafx.h"
# ADD CPP /Yc"stdafx.h"

BuildCmds= \
	$(CPP) /nologo /MT /W3 /GX /O2 /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_MBCS"\
 /Fp"$(INTDIR)/YoMama.pch" /Yc"stdafx.h" /Fo"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\stdafx.obj" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\YoMama.pch" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\CSnapdlg.cpp
DEP_CPP_CSNAP=\
	".\CSnapdlg.h"\
	".\stdafx.h"\
	".\YoMama.h"\
	

"$(INTDIR)\CSnapdlg.obj" : $(SOURCE) $(DEP_CPP_CSNAP) "$(INTDIR)"\
 "$(INTDIR)\YoMama.pch"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\readme.txt

!IF  "$(CFG)" == "YoMama32 - Win32 Debug"

!ELSEIF  "$(CFG)" == "YoMama32 - Win32 Release"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\YoMama.cpp
DEP_CPP_YOMAM=\
	".\CSnapdlg.h"\
	".\stdafx.h"\
	".\YoMama.h"\
	

"$(INTDIR)\YoMama.obj" : $(SOURCE) $(DEP_CPP_YOMAM) "$(INTDIR)"\
 "$(INTDIR)\YoMama.pch"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\Snap.cpp
DEP_CPP_SNAP_=\
	".\Sections.h"\
	".\stdafx.h"\
	".\YoMama.h"\
	

"$(INTDIR)\Snap.obj" : $(SOURCE) $(DEP_CPP_SNAP_) "$(INTDIR)"\
 "$(INTDIR)\YoMama.pch"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\YoMama.ini

!IF  "$(CFG)" == "YoMama32 - Win32 Debug"

!ELSEIF  "$(CFG)" == "YoMama32 - Win32 Release"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\YoMama.rc
DEP_RSC_YOMAMA=\
	".\res\blakbart.ico"\
	".\res\YoMama.rc2"\
	".\Snaps.rc"\
	

"$(INTDIR)\YoMama.res" : $(SOURCE) $(DEP_RSC_YOMAMA) "$(INTDIR)"
   $(RSC) $(RSC_PROJ) $(SOURCE)


# End Source File
# End Target
# End Project
################################################################################
