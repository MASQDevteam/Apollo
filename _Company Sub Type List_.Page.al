page 50145 "Company Sub Type List"
{
    Caption = 'Company Sub Type List';
    PageType = List;
    SourceTable = CompanySubType;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field(CompanySubTypeId; Rec.CompanySubType)
                {
                    ApplicationArea = All;
                    Caption = 'Company Sub Type';
                    Width = 10;
                }
                field(Title; Rec."Title")
                {
                    ApplicationArea = All;
                    Caption = 'Title';
                    Width = 50;
                }
                field(ApolloCompanyType; Rec."ApolloCompanyType")
                {
                    ApplicationArea = All;
                    Caption = 'Apollo Company Type';
                    Width = 40;
                }
            }
        }
    }
}
