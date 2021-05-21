// CSnapdlg.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CSnapDlg dialog

class CSnapDlg : public CDialog
{
// Construction
public:
	CSnapDlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CSnapDlg)
	enum { IDD = IDD_YOMAMA_DIALOG };
	CString	m_szSnap;
	CString	m_szGreeting;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSnapDlg)
	public:
	virtual BOOL DestroyWindow();
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CSnapDlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnNew();
	afx_msg void OnTimer(UINT nIDEvent);
	afx_msg void OnNew16();
	afx_msg void OnAbout();
	afx_msg void OnOK16();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};
