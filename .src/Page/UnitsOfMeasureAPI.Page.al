page 50111 UnitsOfMeasureAPI
{
    Caption = 'UnitsOfMeasureAPI';
    APIGroup = 'MASQ';
    APIPublisher = 'MASQ';
    APIVersion = 'beta';
    DelayedInsert = true;
    EntityName = 'UnitsOfMeasureAPI';
    EntitySetName = 'UnitsOfMeasureAPI';
    PageType = API;
    SourceTable = "Unit of Measure";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Code; Rec.Code)
                {
                    ApplicationArea = All;
                    Caption = 'Code';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    Caption = 'Description';
                }
            }
        }
    }
}
