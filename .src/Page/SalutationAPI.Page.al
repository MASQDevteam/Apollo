page 50115 SalutationAPI
{
    Caption = 'SalutationAPI';
    APIGroup = 'MASQ';
    APIPublisher = 'MASQ';
    APIVersion = 'beta';
    DelayedInsert = true;
    EntityName = 'SalutationAPI';
    EntitySetName = 'SalutationAPI';
    PageType = API;
    SourceTable = "Salutation";

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
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    Caption = 'Description';
                }
            }
        }
    }
}
