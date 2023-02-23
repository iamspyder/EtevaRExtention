page 50604 FakeApiTestCard
{
    ApplicationArea = All;
    Caption = 'FakeApiTestCard';
    PageType = Card;
    SourceTable = FakeAPI;

    layout
    {
        area(content)
        {
            group(General)
            {
                field(ID; Rec.ID)
                {
                    ToolTip = 'Specifies the value of the ID field.';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field(UserName; Rec.UserName)
                {
                    ToolTip = 'Specifies the value of the UserName field.';
                }
                field(Email; Rec.Email)
                {
                    ToolTip = 'Specifies the value of the Email field.';
                }
                field(Street; Rec.Street)
                {
                    ToolTip = 'Specifies the value of the Street field.';
                }
                field(Suit; Rec.Suit)
                {
                    ToolTip = 'Specifies the value of the Suit field.';
                }
            }
        }


    }

    actions
    {
        area(Processing)
        {
            action(API)
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    jsonTesting: Codeunit APICall;
                begin
                    jsonTesting.APIConnect();
                end;
            }
        }
    }


}






