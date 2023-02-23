page 50601 "Sales Ord"
{
    APIGroup = 'apiGroup';
    APIPublisher = 'publisherName';
    APIVersion = 'v1.0';
    ApplicationArea = All;
    Caption = 'salesOrd';
    DelayedInsert = true;
    EntityName = 'entityName';
    EntitySetName = 'entitySales';
    PageType = API;
    SourceTable = "Sales Header";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(sellToCustomerNo; Rec."Sell-to Customer No.")
                {
                    Caption = 'Sell-to Customer No.';
                }
                field(sellToCustomerName; Rec."Sell-to Customer Name")
                {
                    Caption = 'Sell-to Customer Name';
                }
            }


        }
    }
}
