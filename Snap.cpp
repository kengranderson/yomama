// Snap.cpp : implementation file
//

#include "stdafx.h"
#include "YoMama.h"
#include "Sections.h"

#ifdef _DEBUG
#undef THIS_FILE
static char BASED_CODE THIS_FILE[] = __FILE__;
#endif

int		rand(int nMin, int nMax);
BOOL	SectionOK(int n);
BOOL	SnapOK(CString& s);

/////////////////////////////////////////////////////////////////////////////
// CSnap object

int		_nSections[] = {IDS_FAT, IDS_STUPID, IDS_UGLY, IDS_OLD, IDS_GOT, IDS_BLACK, 
	IDS_EASY, IDS_BODY, IDS_POOR, IDS_MISC, IDS_LAST, 0};

char*	_lpszSections[] = {"Fat", "Stupid", "Ugly", "Old", "Got", "Black", "Easy", "Body", "Poor", "Misc", ""};

int		rand (int nMin, int nMax)
	{
	long	l1, l2, l3;
	long	lRand = rand();

	l1 = (long) (nMax - nMin) * lRand;
	l2 = (long) RAND_MAX * (long) nMin;
	l3 = (l1 + l2) / RAND_MAX;
	return((int) l3);
	}

// Retrieves a snap from the string table, based on current restrictions.
BOOL	GetSnap (CString& s)
	{
	const	ATTEMPTS_MAX = 1000;
	static	nLastNum;
	int		nID;
	int		nAttempts = 0;
	BOOL	fSuccess = FALSE;

	do
		{
		nAttempts++;
		// Get random string between IDS_FAT and IDS_LAST.
		ASSERT(IDS_FAT != IDS_LAST);
		while (nLastNum == (nID = rand(IDS_FAT, IDS_LAST)))
			;

		// Check to make sure that the string satisifies the current filters, or try again.
		if (SectionOK(nID) && (fSuccess = s.LoadString(nID)))
			{
			// Check to make sure that the string satisifies the current filters, or try again.
			if (SnapOK(s))
				{
				nLastNum = nID;
				break;
				}
			}
		} 
		while (nAttempts < ATTEMPTS_MAX);

	return(fSuccess);
	}

BOOL	SectionOK (int n)
	{
	BOOL	fOK = FALSE;
	int		nSection = 0;
	int*	pnSection = _nSections;

	while (*pnSection)
		{
		if (*++pnSection > n)
			{
			fOK = AfxGetApp()->GetProfileInt("Sections", _lpszSections[nSection], TRUE);
			break;
			}
		nSection++;
		}
	return(fOK);
	}

BOOL	SnapOK (CString& s)
	{
	BOOL	fOK = FALSE;

	// Strip off the rating.
	CString	szRating = s.Left(1);

	s = s.Mid(1);
	switch (szRating[0])
		{
		case 'G':
			fOK = TRUE;
			break;
		
		case 'P':
			fOK = AfxGetApp()->GetProfileInt("Sections", "PG", TRUE);
			break;
		}
	return(fOK);
	}
 
