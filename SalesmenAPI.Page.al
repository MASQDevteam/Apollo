page 50114 SalesmenAPI
{
    Caption = 'SalesmenAPI';
    APIGroup = 'MASQ';
    APIPublisher = 'MASQ';
    APIVersion = 'beta';
    DelayedInsert = true;
    EntityName = 'SalesmenAPI';
    EntitySetName = 'SalesmenAPI';
    PageType = API;
    SourceTable = "Salesperson/Purchaser";

    // ProfilePicture
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
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    Caption = 'Name';
                }
                field("Commission"; Rec."Commission %")
                {
                    ApplicationArea = All;
                    Caption = 'Commission %';
                }
                field("PhoneNo"; Rec."Phone No.")
                {
                    ApplicationArea = All;
                    Caption = 'Phone No.';
                }
            }
        }
    }
}
