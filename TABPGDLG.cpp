//---------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "TabPgDlg.h"
//---------------------------------------------------------------------
#pragma resource "*.dfm"
TPagesDlg *PagesDlg;
//--------------------------------------------------------------------- 
__fastcall TPagesDlg::TPagesDlg(TComponent* AOwner)
	: TForm(AOwner)
{
}
//---------------------------------------------------------------------

void __fastcall TPagesDlg::runClick(TObject *Sender)
{
    runtimeOUT->Caption = battIN->Text.ToDouble()/loadIN->Text.ToDouble()/100;
}
//---------------------------------------------------------------------------

