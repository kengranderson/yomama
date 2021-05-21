// YoMama.cpp : Defines the class behaviors for the application.
//

#include "stdafx.h"
#include "YoMama.h"
#include "CSnapdlg.h"

#ifdef _DEBUG
#undef THIS_FILE
static char BASED_CODE THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CSnapApp

BEGIN_MESSAGE_MAP(CSnapApp, CWinApp)
	//{{AFX_MSG_MAP(CSnapApp)
		// NOTE - the ClassWizard will add and remove mapping macros here.
		//    DO NOT EDIT what you see in these blocks of generated code!
	//}}AFX_MSG
	ON_COMMAND(ID_HELP, CWinApp::OnHelp)
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CSnapApp construction

CSnapApp::CSnapApp ()
	{
	}

/////////////////////////////////////////////////////////////////////////////
// The one and only CSnapApp object

CSnapApp theApp;

/////////////////////////////////////////////////////////////////////////////
// CSnapApp initialization

BOOL	CSnapApp::InitInstance ()
	{
	// Standard initialization
	// If you are not using these features and wish to reduce the size
	//  of your final executable, you should remove from the following
	//  the specific initialization routines you do not need.

	char	szBuff[_MAX_PATH + 1];
	::GetModuleFileName(m_hInstance, szBuff, _MAX_PATH);
	
	char*	p = strrchr(szBuff, '\\');

	if (p)
		{
		*++p = 0;
		lstrcat(p, "YOMAMA.INI");
		free((void*) m_pszProfileName);
		m_pszProfileName = _strdup(szBuff);
		}
	
#ifdef	_WIN32
	Enable3dControls();
#else
	SetDialogBkColor();        // Set dialog background color to gray
#endif

	LoadStdProfileSettings();  // Load standard INI file options (including MRU)

	// Start up random number generator.
	srand((UINT) time(NULL));

	CSnapDlg dlg;
	m_pMainWnd = &dlg;
	int nResponse = dlg.DoModal();
	if (nResponse == IDOK)
		{
		// TODO: Place code here to handle when the dialog is
		//  dismissed with OK
		}
	else if (nResponse == IDCANCEL)
		{
		// TODO: Place code here to handle when the dialog is
		//  dismissed with Cancel
		}

	// Since the dialog has been closed, return FALSE so that we exit the
	//  application, rather than start the application's message pump.
	return(FALSE);
	}
