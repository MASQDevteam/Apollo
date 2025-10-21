page 50107 ApolloPoHeader
{
    Caption = 'PoHeader';
    APIGroup = 'MASQ';
    APIPublisher = 'MASQ';
    APIVersion = 'beta';
    DelayedInsert = true;
    EntityName = 'PoHeader';
    EntitySetName = 'PoHeader';
    PageType = API;
    SourceTable = "Purchase Header";

    layout
    {
        area(Content)
        {
            group(General)
            {
                field(no; Rec."No.")
                {
                    Caption = ' No.';
                    Editable = false;
                }
                field(documentType; Rec."Document Type")
                {
                    Caption = 'Document Type';
                }
                field(currencyCode; Rec."Currency Code")
                {
                    Caption = 'Currency Code';
                }
                field(amount; Rec.Amount)
                {
                    Caption = 'Amount';
                }
                field(buyFromCountryRegionCode; Rec."Buy-from Country/Region Code")
                {
                    Caption = 'Buy-from Country/Region Code';
                }
                field(buyFromVendorName; Rec."Buy-from Vendor Name")
                {
                    Caption = 'Buy-from Vendor Name';
                }
                field(buyFromAddress; Rec."Buy-from Address")
                {
                    Caption = 'Buy-from Address';
                }
                field(megSONo; Rec."Meg SO No.")
                {
                    Caption = 'SO No.';
                }
                // field(locationCode; Rec."Apollo Location Code")
                // {
                //     Caption = 'Apollo Location Code';
                // }
                field(locationCode; Rec."Location Code")
                {
                    Caption = 'Location Code';
                }
                field(apolloCustomsValue; Rec."Apollo Customs Value")
                {
                    Caption = 'Apollo Customs Value';
                }
                field(apolloFreightValue; Rec."Apollo Freight Value")
                {
                    Caption = 'Apollo Freight Value';
                }
                field(apolloClearanceValue; Rec."Apollo Clearance Value")
                {
                    Caption = 'Apollo Clearance Value';
                }
            }
        }
    }
}
