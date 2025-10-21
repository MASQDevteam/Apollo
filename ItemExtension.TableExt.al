tableextension 50112 ItemExtension extends Item
{
    fields
    {
        field(50113; ApolloItemNo; Integer)
        {
            Caption = 'Apollo Item No.';
        }
        field(50142; ItemCode; Text[2000])
        {
            Caption = 'Item Code';
        }
        field(50141; ApolloDescription; Text[2000])
        {
            Caption = 'ApolloDescription';
        }
        field(50140; Comments; Text[250])
        {
            Caption = 'Comments';
        }
        field(50119; ItemDimension; Text[250])
        {
            Caption = 'Item Dimension';
        }
        field(50120; LampIncluded; Boolean)
        {
            Caption = 'Lamp Included';
        }
        field(50114; Family; Text[250])
        {
            Caption = 'Family';
        }
        field(50115; HistoryId; Integer)
        {
            Caption = 'HistoryId';
        }
        field(50116; IsAccessory; Boolean)
        {
            Caption = 'IsAccessory';
        }
    }
}
