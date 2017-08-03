//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
//---------------------------------------------------------------------------
class Texplanation : public TFrame
{
__published:	// IDE-managed Components
	TMemo *Memo1;
private:	// User declarations
public:		// User declarations
	__fastcall Texplanation(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE Texplanation *explanation;
//---------------------------------------------------------------------------
#endif
