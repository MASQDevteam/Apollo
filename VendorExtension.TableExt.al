tableextension 50144 VendorExtension extends Vendor
{
    fields
    {
        field(50145; Classification;Enum "Classifications")
        {
            Caption = 'Classification';
        }
        field(50146; "Area"; Text[250])
        {
            Caption = 'Area';
        }
        field(50147; Comments; Text[250])
        {
            Caption = 'Comments';
        }
        // field(50113; ApolloContactNo; Integer)
        // {
        //     Caption = 'Apollo Contact No.';
        // }
        field(50114; ApolloVendorNo; Integer)
        {
            Caption = 'Apollo Vendor No.';
        }
        field(50115; CompanySubType; Text[500])
        {
            Caption = 'CompanySubType';
            TableRelation = CompanySubType;
        }
    }
}
