page 50122 CountryRegionAPI
{
    Caption = 'CountryRegionAPI';
    APIGroup = 'MASQ';
    APIPublisher = 'MASQ';
    APIVersion = 'beta';
    DelayedInsert = true;
    EntityName = 'CountryRegionAPI';
    EntitySetName = 'CountryRegionAPI';
    PageType = API;
    SourceTable = "Country/Region";

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
                field(Name; Rec."Name")
                {
                    ApplicationArea = All;
                    Caption = 'Name';
                }
            }
        }
    }
}
