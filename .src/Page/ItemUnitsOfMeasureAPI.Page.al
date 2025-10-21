page 50120 ItemUnitsOfMeasureAPI
{
    Caption = 'ItemUnitsOfMeasureAPI';
    APIGroup = 'MASQ';
    APIPublisher = 'MASQ';
    APIVersion = 'beta';
    DelayedInsert = true;
    EntityName = 'ItemUnitsOfMeasureAPI';
    EntitySetName = 'ItemUnitsOfMeasureAPI';
    PageType = API;
    SourceTable = "Item Unit of Measure";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(ItemNo; Rec."Item No.")
                {
                    ApplicationArea = All;
                    Caption = 'ItemNo';
                }
                field(UOMCode; Rec.Code)
                {
                    ApplicationArea = All;
                    Caption = 'UOMCode';
                }
            //this should be >0 and <1 between 0 and 1
            // field(Quantity; Rec."Qty. per Unit of Measure")
            // {
            //     ApplicationArea = All;
            //     Caption = 'Quantity';
            // }
            }
        }
    }
}
