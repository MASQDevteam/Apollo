tableextension 50140 CustomerExtension extends Customer
{
    fields
    {
        // field(50141; SubType; Code[50])
        // {
        //     Caption = 'Sub-Type';
        //     TableRelation = "Option Lookup Buffer".;
        // }
        field(50142; Classification;Enum "Classifications")
        {
            Caption = 'Classification';
        }
        // field(50141; Classification; Option)
        // {
        //     OptionMembers = "Gold","Silver","Bronze";
        // }
        field(50143; "Area"; Text[250])
        {
            Caption = 'Area';
        }
        field(50144; Comments; Text[250])
        {
            Caption = 'Comments';
        }
        // field(50113; ApolloContactNo; Integer)
        // {
        //     Caption = 'Apollo Contact No.';
        // }
        field(50114; ApolloCustomerNo; Integer)
        {
            Caption = 'Apollo Customer No.';
        }
        field(50115; CompanySubType; Text[500])
        {
            Caption = 'CompanySubType';
            TableRelation = CompanySubType;
        }
    }
}
