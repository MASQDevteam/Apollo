page 50110 CompanySubTypeListAPI
{
    Caption = 'CompanySubTypeListAPI';
    APIGroup = 'MASQ';
    APIPublisher = 'MASQ';
    APIVersion = 'beta';
    DelayedInsert = true;
    EntityName = 'CompanySubTypeListAPI';
    EntitySetName = 'CompanySubTypeListAPI';
    PageType = API;
    SourceTable = "CompanySubType";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(CompanySubType; Rec.CompanySubType)
                {
                    ApplicationArea = All;
                    Caption = 'Company Sub Type ';
                }
                field(Title; Rec."Title")
                {
                    ApplicationArea = All;
                    Caption = 'Title';
                }
                field(ApolloCompanyType; Rec."ApolloCompanyType")
                {
                    ApplicationArea = All;
                    Caption = 'Apollo Company Type';
                }
            }
        }
    }
}
