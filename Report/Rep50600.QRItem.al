report 50600 "QR Item"
{
    ApplicationArea = All;
    Caption = 'QR Item';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = 'QR item.rdl';

    dataset
    {
        dataitem(Item; Item)
        {
            column(No; "No.")
            {
            }
            column(Description; Description)
            {
            }
            column(Inventory; Inventory)
            {
            }
            column(EncodeStr; EncodeStr)
            {

            }


            trigger OnAfterGetRecord()
            var
                BarcodeSym: Enum "Barcode Symbology 2D";
                BarCodeProvider: Interface "Barcode Font Provider 2D";
            begin

                //  EncodeStr := Description;
                ENcodestr := 'Item No' + "No." + '  Name' + "Description";


                BarCodeProvider := Enum::"Barcode Font Provider 2D"::IDAutomation2D;
                BarcodeSym := Enum::"Barcode Symbology 2D"::"QR-Code";
                EncodeStr := BarCodeProvider.EncodeFont(ENcodestr, BarcodeSym)
            end;
        }
    }
    // requestpage
    // {
    //     layout
    //     {
    //         area(content)
    //         {
    //             group(GroupName)
    //             {
    //             }
    //         }
    //     }
    //     actions
    //     {
    //         area(processing)
    //         {
    //         }
    //     }
    // }
    var
        ENcodestr: Text;



}
