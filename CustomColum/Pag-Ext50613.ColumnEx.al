pageextension 50613 ColumnEx extends "Item Card"
{
    layout
    {
        // Adding a new control field 'ShoeSize' in the group 'General'
        addlast(Item)
        {
            field("Item Categoty"; Rec.ItemCategory)
            {
                Caption = 'Item Category';
                Visible = true;
                ApplicationArea = All;
            }
        }

    }
}
