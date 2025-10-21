table 50100 CompanySubType
{
    DataClassification = CustomerContent;
    Caption = 'Company Sub Type';
    DataPerCompany = true;

    fields
    {
        field(1; CompanySubType; Code[20])
        {
            Caption = 'Company Sub Type';
            DataClassification = CustomerContent;
        }
        field(2; Title; Text[2000])
        {
            Caption = 'Title';
            DataClassification = CustomerContent;
        }
        field(3; ApolloCompanyType; Text[2000])
        {
            Caption = 'Apollo Company Type';
            DataClassification = CustomerContent;
        }
    }
}
