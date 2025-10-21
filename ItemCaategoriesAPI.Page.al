page 50132 ItemCaategoriesAPI
{
    Caption = 'ItemCategoryAPI';
    APIGroup = 'MASQ';
    APIPublisher = 'MASQ';
    APIVersion = 'beta';
    DelayedInsert = true;
    EntityName = 'ItemCategoryAPI';
    EntitySetName = 'ItemCategoryAPI';
    PageType = API;
    SourceTable = "Item Category";

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
