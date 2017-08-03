//---------------------------------------------------------------------------

#ifndef CalculatorH
#define CalculatorH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.FileCtrl.hpp>
#include <Vcl.TabNotBk.hpp>
#include <Vcl.Grids.hpp>
#include <Vcl.Outline.hpp>
#include <Vcl.ExtCtrls.hpp>
#include "Unit1.h"
//---------------------------------------------------------------------------
class TForm4 : public TForm
{
__published:	// IDE-managed Components
	TPageControl *calculator;
	TTabSheet *tab1;
	TTabSheet *Tab2;
	TGroupBox *GroupBox2;
	TLabel *Label1;
	TLabel *Label2;
	TLabel *Label3;
	TLabel *Label4;
	TLabel *Label5;
	TEdit *MpowerIN;
	TEdit *MrpmIN;
	TEdit *MreductionIN;
	TEdit *reductionIN;
	TEdit *WdIN;
	TGroupBox *output;
	TLabel *Label6;
	TLabel *Label7;
	TLabel *Label8;
	TLabel *Label9;
	TLabel *MrpmOUT;
	TLabel *WrpmOUT;
	TLabel *WfpsOUT;
	TLabel *powerOUT;
	TButton *Button1;
	TButton *run;
	TGroupBox *input;
	TLabel *current;
	TLabel *batt;
	TEdit *battIN;
	TEdit *loadIN;
	TGroupBox *GroupBox1;
	TLabel *runtime;
	TLabel *runtimeOUT;
	TComboBox *ComboBox1;
	TComboBox *ComboBox2;
	TEdit *voltsIN;
	TLabel *Label10;
	TLabel *watsOUT;
	TLabel *Label12;
	TComboBox *gearbox;
	TTabSheet *Tab3;
	Texplanation *explanation1;
	void __fastcall runClick(TObject *Sender);
	void __fastcall Button1Click(TObject *Sender);
	void __fastcall FormActivate(TObject *Sender);
	void __fastcall ComboBox2Change(TObject *Sender);
	void __fastcall ComboBox1Change(TObject *Sender);
	void __fastcall gearboxChange(TObject *Sender);

private:	// User declarations
public:		// User declarations
	__fastcall TForm4(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm4 *Form4;
//---------------------------------------------------------------------------
#endif
