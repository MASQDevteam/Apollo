page 50116 OrganizationLevelAPI
{
    Caption = 'OrganizationLevelAPI';
    APIGroup = 'MASQ';
    APIPublisher = 'MASQ';
    APIVersion = 'beta';
    DelayedInsert = true;
    EntityName = 'OrganizationLevelAPI';
    EntitySetName = 'OrganizationLevelAPI';
    PageType = API;
    SourceTable = "Organizational Level";

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
