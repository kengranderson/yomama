# Microsoft Visual C++ generated build script - Do not modify

PROJ = YOMAMA16
DEBUG = 0
PROGTYPE = 0
CALLER = 
ARGS = 
DLLS = 
D_RCDEFINES = /d_DEBUG
R_RCDEFINES = /dNDEBUG
ORIGIN = MSVC
ORIGIN_VER = 1.00
PROJPATH = C:\PROJECTS\YOMAMA\WIN16\
USEMFC = 1
CC = cl
CPP = cl
CXX = cl
CCREATEPCHFLAG = 
CPPCREATEPCHFLAG = /YcSTDAFX.H
CUSEPCHFLAG = 
CPPUSEPCHFLAG = /YuSTDAFX.H
FIRSTC =             
FIRSTCPP = STDAFX.CPP  
RC = rc
CFLAGS_D_WEXE = /nologo /G2 /W3 /Zi /AL /Od /D "_DEBUG" /FR /GA /Fd"YOMAMA16.PDB"
CFLAGS_R_WEXE = /nologo /Gs /G2 /W3 /AL /O1 /D "NDEBUG" /FR /GA
LFLAGS_D_WEXE = /NOLOGO /NOD /PACKC:61440 /STACK:10240 /ALIGN:16 /ONERROR:NOEXE /CO
LFLAGS_R_WEXE = /NOLOGO /NOD /PACKC:61440 /STACK:10240 /ALIGN:16 /ONERROR:NOEXE
LIBS_D_WEXE = lafxcwd oldnames libw llibcew commdlg shell 
LIBS_R_WEXE = lafxcw oldnames libw llibcew commdlg shell 
RCFLAGS = /nologo /z
RESFLAGS = /nologo /t
RUNFLAGS = 
DEFFILE = YOMAMA16.DEF
OBJS_EXT = 
LIBS_EXT = 
!if "$(DEBUG)" == "1"
CFLAGS = $(CFLAGS_D_WEXE)
LFLAGS = $(LFLAGS_D_WEXE)
LIBS = $(LIBS_D_WEXE)
MAPFILE = nul
RCDEFINES = $(D_RCDEFINES)
!else
CFLAGS = $(CFLAGS_R_WEXE)
LFLAGS = $(LFLAGS_R_WEXE)
LIBS = $(LIBS_R_WEXE)
MAPFILE = nul
RCDEFINES = $(R_RCDEFINES)
!endif
!if [if exist MSVC.BND del MSVC.BND]
!endif
SBRS = STDAFX.SBR \
		SNAP.SBR \
		CSNAPDLG.SBR \
		YOMAMA.SBR


CSNAPDLG_DEP = c:\projects\yomama\stdafx.h \
	c:\projects\yomama\yomama.h \
	c:\projects\yomama\csnapdlg.h


SNAP_DEP = c:\projects\yomama\stdafx.h \
	c:\projects\yomama\yomama.h \
	c:\projects\yomama\sections.h


STDAFX_DEP = c:\projects\yomama\stdafx.h


YOMAMA_DEP = c:\projects\yomama\stdafx.h \
	c:\projects\yomama\yomama.h \
	c:\projects\yomama\csnapdlg.h


YOMAMA_RCDEP = c:\projects\yomama\res\blakbart.ico \
	c:\projects\yomama\res\yomama.rc2 \
	c:\projects\yomama\snaps.rc


all:	$(PROJ).EXE $(PROJ).BSC

STDAFX.OBJ:	..\STDAFX.CPP $(STDAFX_DEP)
	$(CPP) $(CFLAGS) $(CPPCREATEPCHFLAG) /c ..\STDAFX.CPP

SNAP.OBJ:	..\SNAP.CPP $(SNAP_DEP)
	$(CPP) $(CFLAGS) $(CPPUSEPCHFLAG) /c ..\SNAP.CPP

CSNAPDLG.OBJ:	..\CSNAPDLG.CPP $(CSNAPDLG_DEP)
	$(CPP) $(CFLAGS) $(CPPUSEPCHFLAG) /c ..\CSNAPDLG.CPP

YOMAMA.OBJ:	..\YOMAMA.CPP $(YOMAMA_DEP)
	$(CPP) $(CFLAGS) $(CPPUSEPCHFLAG) /c ..\YOMAMA.CPP

YOMAMA.RES:	..\YOMAMA.RC $(YOMAMA_RCDEP)
	$(RC) $(RCFLAGS) $(RCDEFINES) -r -FoC:\PROJECTS\YOMAMA\WIN16\YOMAMA.RES ..\YOMAMA.RC


$(PROJ).EXE::	YOMAMA.RES

$(PROJ).EXE::	STDAFX.OBJ SNAP.OBJ CSNAPDLG.OBJ YOMAMA.OBJ $(OBJS_EXT) $(DEFFILE)
	echo >NUL @<<$(PROJ).CRF
STDAFX.OBJ +
SNAP.OBJ +
CSNAPDLG.OBJ +
YOMAMA.OBJ +
$(OBJS_EXT)
$(PROJ).EXE
$(MAPFILE)
d:\LIB\+
d:\MSVC\LIB\+
d:\MSVC\MFC\LIB\+
$(LIBS)
$(DEFFILE);
<<
	link $(LFLAGS) @$(PROJ).CRF
	$(RC) $(RESFLAGS) YOMAMA.RES $@
	@copy $(PROJ).CRF MSVC.BND

$(PROJ).EXE::	YOMAMA.RES
	if not exist MSVC.BND 	$(RC) $(RESFLAGS) YOMAMA.RES $@

run: $(PROJ).EXE
	$(PROJ) $(RUNFLAGS)


$(PROJ).BSC: $(SBRS)
	bscmake @<<
/o$@ $(SBRS)
<<
