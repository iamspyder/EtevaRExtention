page 50603 FakeApiTest
{
    ApplicationArea = All;
    Caption = 'FakeApiTest';
    PageType = List;
    SourceTable = FakeAPI;
    UsageCategory = Lists;
    CardPageId = FakeApiTestCard;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(ID; Rec.ID)
                {
                    ToolTip = 'Specifies the value of the ID field.';
                }
                field(Email; Rec.Email)
                {
                    ToolTip = 'Specifies the value of the Email field.';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field(Street; Rec.Street)
                {
                    ToolTip = 'Specifies the value of the Street field.';
                }
                field(Suit; Rec.Suit)
                {
                    ToolTip = 'Specifies the value of the Suit field.';
                }
                field(UserName; Rec.UserName)
                {
                    ToolTip = 'Specifies the value of the UserName field.';
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
