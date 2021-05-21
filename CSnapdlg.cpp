// CSnapdlg.cpp : implementation file
//

#include "stdafx.h"
#include "YoMama.h"
#include "CSnapdlg.h"

#ifdef _DEBUG
#undef THIS_FILE
static char BASED_CODE THIS_FILE[] = __FILE__;
#endif

BOOL	GetSnap(CString& s);

/////////////////////////////////////////////////////////////////////////////
// CAboutDlg dialog used for App About

class CAboutDlg : public CDialog
{
public:
	CAboutDlg();

// Dialog Data
	//{{AFX_DATA(CAboutDlg)
	enum { IDD = IDD_ABOUTBOX };
	//}}AFX_DATA

// Implementation
protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//{{AFX_MSG(CAboutDlg)
	virtual BOOL OnInitDialog();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

CAboutDlg::CAboutDlg() : CDialog(CAboutDlg::IDD)
{
	//{{AFX_DATA_INIT(CAboutDlg)
	//}}AFX_DATA_INIT
}

void CAboutDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CAboutDlg)
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CAboutDlg, CDialog)
	//{{AFX_MSG_MAP(CAboutDlg)
		// No message handlers
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CAboutDlg message handlers

BOOL	CAboutDlg::OnInitDialog ()
	{
	CDialog::OnInitDialog();
	CenterWindow();
	
	// TODO: Add extra about dlg initialization here
	
	return(TRUE);  // return TRUE  unless you set the focus to a control
	}

/////////////////////////////////////////////////////////////////////////////
// CSnapDlg dialog

CSnapDlg::CSnapDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CSnapDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CSnapDlg)
	m_szSnap = _T("");
	m_szGreeting = _T("");
	//}}AFX_DATA_INIT
	// Note that LoadIcon does not require a subsequent DestroyIcon in Win32
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CSnapDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CSnapDlg)
	DDX_Text(pDX, IDC_EDIT, m_szSnap);
	DDX_Text(pDX, IDC_GREETING, m_szGreeting);
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CSnapDlg, CDialog)
	//{{AFX_MSG_MAP(CSnapDlg)
	ON_WM_SYSCOMMAND()
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	ON_BN_CLICKED(IDC_NEW, OnNew)
	ON_WM_TIMER()
	ON_BN_CLICKED(IDC_NEW16, OnNew16)
	ON_BN_CLICKED(IDM_ABOUTBOX, OnAbout)
	ON_BN_CLICKED(IDOK16, OnOK16)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CSnapDlg message handlers

BOOL	CSnapDlg::OnInitDialog ()
	{
	BOOL	fReturn = TRUE;
	
	CDialog::OnInitDialog();
	CenterWindow();

#ifdef _WIN32
	// Set the icon for the dialog.	
	SendMessage(WM_SETICON, FALSE, (LPARAM) (HICON) LoadImage(AfxGetInstanceHandle(), 
		MAKEINTRESOURCE(IDR_MAINFRAME), IMAGE_ICON, GetSystemMetrics(SM_CXSMICON), GetSystemMetrics(SM_CYSMICON), 0));
#else
#define WM_SETICON                      0x0080
	// If we are the 16-bit app running under Win95,
	// hide normal buttons, show Win16 buttons.

	DWORD	dwVersion = GetVersion();

	if (LOBYTE(LOWORD(dwVersion)) == 3 && HIBYTE(LOWORD(dwVersion)) > 0xa)
		{
		GetDlgItem(IDOK)->ShowWindow(SW_HIDE);
		GetDlgItem(IDC_NEW)->ShowWindow(SW_HIDE);

		GetDlgItem(IDOK16)->ShowWindow(SW_SHOW);
		GetDlgItem(IDC_NEW16)->ShowWindow(SW_SHOW);
		GetDlgItem(IDM_ABOUTBOX)->ShowWindow(SW_SHOW);
		GetDlgItem(IDOK16)->SetFocus();

		fReturn = FALSE;
		}

	SendMessage(WM_SETICON, FALSE, (LPARAM) (UINT) m_hIcon); 
#endif

	// Add "About..." menu item to system menu.

	// IDM_ABOUTBOX must be in the system command range.
	ASSERT((IDM_ABOUTBOX & 0xFFF0) == IDM_ABOUTBOX);
	ASSERT(IDM_ABOUTBOX < 0xF000);

	CMenu* pSysMenu = GetSystemMenu(FALSE);
	CString strAboutMenu;
	strAboutMenu.LoadString(IDS_ABOUTBOX);
	if (!strAboutMenu.IsEmpty())
		{
		pSysMenu->AppendMenu(MF_SEPARATOR);
		pSysMenu->AppendMenu(MF_STRING, IDM_ABOUTBOX, strAboutMenu);
		}
	
	// Remove extraneous menu entries.
	pSysMenu->DeleteMenu(SC_MAXIMIZE, MF_BYCOMMAND);

	// Set the timer.
	SetTimer(1, 1000, NULL);

	// Get a snap to display.
	OnNew();

	return(fReturn);  // return TRUE  unless you set the focus to a control
	}

void CSnapDlg::OnSysCommand(UINT nID, LPARAM lParam)
{
	if ((nID & 0xFFF0) == IDM_ABOUTBOX)
	{
		CAboutDlg dlgAbout;
		dlgAbout.DoModal();
	}
	else
	{
		CDialog::OnSysCommand(nID, lParam);
	}
}

// If you add a minimize button to your dialog, you will need the code below
//  to draw the icon.  For MFC applications using the document/view model,
//  this is automatically done for you by the framework.

void CSnapDlg::OnPaint() 
{
	if (IsIconic())
	{
		CPaintDC dc(this); // device context for painting

		SendMessage(WM_ICONERASEBKGND, (WPARAM) dc.GetSafeHdc(), 0);

		// Center icon in client rectangle
		int cxIcon = GetSystemMetrics(SM_CXICON);
		int cyIcon = GetSystemMetrics(SM_CYICON);
		CRect rect;
		GetClientRect(&rect);
		int x = (rect.Width() - cxIcon + 1) / 2;
		int y = (rect.Height() - cyIcon + 1) / 2;

		// Draw the icon
		dc.DrawIcon(x, y, m_hIcon);
	}
	else
	{
		CDialog::OnPaint();
	}
}

// The system calls this to obtain the cursor to display while the user drags
//  the minimized window.
HCURSOR CSnapDlg::OnQueryDragIcon()
{
	return (HCURSOR) m_hIcon;
}

void	CSnapDlg::OnNew () 
	{
	// Look up a new string.
	if (GetSnap(m_szSnap))
		{
		// Update the display.
		OnTimer(1);
		// Put the data in the dialog box now.
		UpdateData(FALSE);
		}
	else
		AfxMessageBox("I could not find an appropriate snap on yo mama!  Check your settings and reinstall if necessary.",
			MB_ICONSTOP | MB_OK);
	}

void	CSnapDlg::OnTimer (UINT nIDEvent) 
	{
	static	UINT	nTimes[] = {IDS_MORNING, IDS_AFTERNOON, IDS_EVENING, 
		IDS_NIGHT, IDS_LATENIGHT};

	UINT	nTimeOfDay, nHour;
	// Get the current time.
	CTime	tm(CTime::GetCurrentTime());
	
	// Get the proper salutation for the current time.
	nHour = tm.GetHour();
	
	if (0 < nHour && nHour <= 5)
		nTimeOfDay = IDS_LATENIGHT;
	else if (5 < nHour && nHour <= 11)
		nTimeOfDay = IDS_MORNING;
	else if (11 < nHour && nHour <= 17)
		nTimeOfDay = IDS_AFTERNOON;
	else if (17 < nHour && nHour <= 21)
		nTimeOfDay = IDS_EVENING;
	else if (21 < nHour && nHour <= 23)
		nTimeOfDay = IDS_NIGHT;

	CString	s;
	
	s.LoadString(nTimeOfDay);
	// Append the time information.
#ifdef _WIN32
	s += tm.Format(" %#x at %#I:%M %p.");
#else
	s += tm.Format(" %A, %B %d, %Y at %I:%M %p.");
#endif

	// If the display needs to change, update it.
	if (m_szGreeting != s)
		{
		m_szGreeting = s;
		UpdateData(FALSE);
		}
	}

BOOL	CSnapDlg::DestroyWindow () 
	{
	KillTimer(1);
	DestroyIcon(m_hIcon);
	m_hIcon = NULL;
	return(CDialog::DestroyWindow());
	}

void	CSnapDlg::OnNew16 ()
	{
	OnNew();
	}

void	CSnapDlg::OnAbout ()
	{
	OnSysCommand(IDM_ABOUTBOX, NULL);
	}

void	CSnapDlg::OnOK16 ()
	{
	OnOK();
	}
