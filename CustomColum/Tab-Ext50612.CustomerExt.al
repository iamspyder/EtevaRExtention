tableextension 50612 CustomerExt extends Item
{
    fields
    {
        field(50600; ItemCategory; Option)
        {
            Caption = 'Item Category';
            DataClassification = ToBeClassified;
            OptionMembers = " ","Raw Material","Semi Finished","Finished",Other;
        }
    }
}
