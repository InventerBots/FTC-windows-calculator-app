//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Calculator.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "Unit1"
#pragma resource "*.dfm"
TForm4 *Form4;

double PI = 3.14;

//---------------------------------------------------------------------------
__fastcall TForm4::TForm4(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm4::runClick(TObject *Sender)
{
	if (loadIN->Text.ToDouble() != 0) {
		runtimeOUT->Caption = battIN->Text.ToDouble()/loadIN->Text.ToDouble()/100;
		watsOUT->Caption = loadIN->Text*voltsIN->Text;
    }
}
//---------------------------------------------------------------------------

void __fastcall TForm4::Button1Click(TObject *Sender)
{
		// fps calcuation
	if (MreductionIN->Text.ToDouble() != 0 || reductionIN->Text.ToDouble() != 0) {
		WfpsOUT->Caption = (MrpmIN->Text.ToDouble()/MreductionIN->Text.ToDouble()/
				reductionIN->Text.ToDouble())*(WdIN->Text*PI)/60/12;
	}
		// motor rpm calcuation
	if (MreductionIN->Text.ToDouble() != 0) {
		MrpmOUT->Caption = (MrpmIN->Text.ToDouble()/MreductionIN->Text.ToDouble());
	}
		// wheel rpm calcuation
	if (MreductionIN->Text.ToDouble() != 0 || reductionIN->Text.ToDouble() != 0) {
		WrpmOUT->Caption = (MrpmIN->Text.ToDouble()/MreductionIN->Text.ToDouble()/
				reductionIN->Text.ToDouble());
	}
		// power calcuation
	if (WdIN->Text.ToDouble() != 0) {
		powerOUT->Caption = (MpowerIN->Text.ToDouble()*MreductionIN->Text.ToDouble()*
				reductionIN->Text.ToDouble()/WdIN->Text.ToDouble());
	}
}
//---------------------------------------------------------------------------

void __fastcall TForm4::FormActivate(TObject *Sender)
{
	calculator->ActivePageIndex = 0;
	ComboBox1->ItemIndex = 0; // set the defoult line in the Speed Calculator Combo Box
	ComboBox2->ItemIndex = 0; // set the defoult line in the Runtime Combo Box
	gearbox->Visible = true; // show the gearbox ccmbo box at startup
	gearbox->ItemIndex = 0; // set the defoult line in the Gearbox combo box
}
//---------------------------------------------------------------------------

void __fastcall TForm4::ComboBox2Change(TObject *Sender)
{
	 if (ComboBox2->ItemIndex == 1) {
		battIN->Text = 3000; // set the battery capacity to 3000mah
		voltsIN->Text = 12;
	 } else {
		battIN->Text = 0; // reset the battery capacity input
		voltsIN->Text = 0;
	 }
}
//---------------------------------------------------------------------------

void __fastcall TForm4::ComboBox1Change(TObject *Sender)
{
	switch (ComboBox1->ItemIndex)
	{
		case 1: // REV HD Hex motor
			MpowerIN->Text = 9.9;
			MrpmIN->Text = 6000;
			MreductionIN->Text = 40;
			gearbox->Visible = false;
			MreductionIN->Enabled = true;
		break;

		case 2:
			MpowerIN->Text = 9.9;
			MrpmIN->Text = 6000;
			MreductionIN->Text = 1;
			gearbox->Visible = true;
			MreductionIN->Enabled = true;
		break;

		case 3: // REV Core Hex motor
			MpowerIN->Text = 6.3;
			MrpmIN->Text = 9000;
			MreductionIN->Text = 72;
			gearbox->Visible = false;
			MreductionIN->Enabled = false;
		break;

		case 4: // Andymark Nevrest 20
			MpowerIN->Text = 8.6;
			MrpmIN->Text = 6600;
			MreductionIN->Text = 20;
			gearbox->Visible = false;
			MreductionIN->Enabled = true;
		break;

		case 5: // Andymark Nevrest 40
			MpowerIN->Text = 8.6;
			MrpmIN->Text = 6600;
			MreductionIN->Text = 40;
			gearbox->Visible = false;
			MreductionIN->Enabled = true;
		break;

		case 6: // Andymark Nevrest 60
			MpowerIN->Text = 8.6;
			MrpmIN->Text = 6600;
			MreductionIN->Text = 60;
			gearbox->Visible = false;
			MreductionIN->Enabled = true;
		break;

		case 7: // Andymark Nevrest no gearbox
			MpowerIN->Text = 8.6;
			MrpmIN->Text = 6600;
			MreductionIN->Text = 1;
			gearbox->Visible = true;
			MreductionIN->Enabled = true;
		break;

		case 8: // TETRIX motor
			MpowerIN->Text = 320;
			MrpmIN->Text = 152;
			MreductionIN->Text = 1; // reduction is unknow
			gearbox->Visible = false;
			MreductionIN->Enabled = false;
		break;

		case 9: // MATRIX motor
			MpowerIN->Text = 8.8;
			MrpmIN->Text = 7392;
			MreductionIN->Text = 52.8;
			gearbox->Visible = false;
			MreductionIN->Enabled = false;
		break;

		default: // Costom motor, reset all fields
			MpowerIN->Text = 0;
			MrpmIN->Text = 0;
			MreductionIN->Text = 0;
			gearbox->Visible = true;
			MreductionIN->Enabled = true;
	}
}
//---------------------------------------------------------------------------


void __fastcall TForm4::gearboxChange(TObject *Sender)
{
	switch (gearbox->ItemIndex)
	{
		case 1:
			MreductionIN->Text = 3; // 3:1
		break;

		case 2:
			MreductionIN->Text = 4; // 4:1
		break;

		case 3:
			MreductionIN->Text = 5; // 5:1
		break;

		case 4:
			MreductionIN->Text = 11; // 11:1
		break;

		case 5:
			MreductionIN->Text = 13; // 13:1
		break;

		case 6:
			MreductionIN->Text = 16; // 16:1
		break;

		case 7:
			MreductionIN->Text = 17; // 17:1
		break;

		case 8:
			MreductionIN->Text = 20; // 20:1
		break;

		case 9:
			MreductionIN->Text = 26; // 26:1
		break;

		case 10:
			MreductionIN->Text = 38; // 38:1
		break;

		case 11:
			MreductionIN->Text = 45; // 45:1
		break;

		case 12:
			MreductionIN->Text = 54; // 54:1
		break;

		case 13:
			MreductionIN->Text = 58; // 58:1
		break;

		case 14:
			MreductionIN->Text = 64; // 64:1
		break;

		case 15:
			MreductionIN->Text = 69; // 69:1
		break;

		case 16:
			MreductionIN->Text = 81; // 81:1
		break;

		case 17:
			MreductionIN->Text = 87; // 87:1
		break;

		case 18:
			MreductionIN->Text = 104; // 104:1
		break;

		case 19:
			MreductionIN->Text = 129; // 129:1
		break;

		case 20:
			MreductionIN->Text = 132; // 132:1
		break;

		case 21:
			MreductionIN->Text = 153; // 153:1
		break;

		case 22:
			MreductionIN->Text = 182; // 182:1
		break;

		case 23:
			MreductionIN->Text = 195; // 195:1
		break;

		case 24:
			MreductionIN->Text = 216; // 216:1
		break;

		case 25:
			MreductionIN->Text = 231; // 231:1
		break;

		case 26:
			MreductionIN->Text = 256; // 256:1
		break;

		case 27:
			MreductionIN->Text = 274; // 247:1
		break;

		case 28:
			MreductionIN->Text = 294; // 294:1
		break;

		case 29:
			MreductionIN->Text = 326; // 326:1
		break;

		case 30:
			MreductionIN->Text = 349; // 349:1
		break;

		case 31:
			MreductionIN->Text = 415; // 415:1
		break;

		case 32:
			MreductionIN->Text = 444; //444:1
		break;

		case 33:
			MreductionIN->Text = 528; // 528:1
		break;

		case 34:
			MreductionIN->Text = 672; // 672:1
		break;

		default:
			MreductionIN->Text = 1; // reset the feald to a 1:1 reduction
	}
}
//---------------------------------------------------------------------------


