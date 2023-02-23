table 50600 FakeAPI
{
    Caption = 'FakeAPI';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; ID; Integer)
        {
            Caption = 'ID';
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                myInt: Integer;
                testcod: Codeunit APICall;
            begin
                testcod.JsonReadandWrite(Rec);
            end;
        }
        field(2; Name; Text[20])
        {
            Caption = 'Name';
            DataClassification = ToBeClassified;
        }
        field(3; UserName; Text[30])
        {
            Caption = 'UserName';
            DataClassification = ToBeClassified;
        }
        field(4; Email; Text[30])
        {
            Caption = 'Email';
            DataClassification = ToBeClassified;
        }
        field(5; Street; Text[30])
        {
            Caption = 'Street';
            DataClassification = ToBeClassified;
        }
        field(6; Suit; Text[30])
        {
            Caption = 'Suit';
            DataClassification = ToBeClassified;
        }
    }
    // keys
    // {
    //     key(PK; ID)
    //     {
    //         Clustered = true;
    //     }
    // }
}
