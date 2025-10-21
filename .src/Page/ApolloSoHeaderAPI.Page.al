page 50129 ApolloSoHeaderAPI
{
    Caption = 'SoHeaderAPI';
    APIGroup = 'MASQ';
    APIPublisher = 'MASQ';
    APIVersion = 'beta';
    DelayedInsert = true;
    EntityName = 'SoHeaderAPI';
    EntitySetName = 'SoHeaderAPI';
    PageType = API;
    SourceTable = "Sales Header";

    layout
    {
        area(Content)
        {
            group(General)
            {
                field(documentType; Rec."Document Type")
                {
                    Caption = 'Document Type';
                }
                field(sellToCustomerName; Rec."Sell-to Customer Name")
                {
                    Caption = 'Sell-to Customer Name';
                }
                field(salespersonCode; Rec."Salesperson Code")
                {
                    Caption = 'Salesperson Code';
                }
                field(megMASQOffer; Rec."Meg MASQ Offer #")
                {
                    Caption = 'MASQ Offer #';
                }
                field(locationCode; Rec."Location Code")
                {
                    Caption = 'Location Code';
                }
                field(currencyCode; Rec."Currency Code")
                {
                    Caption = 'Currency Code';
                }
            }
        }
    }
    trigger OnInsertRecord(BelowxRec: Boolean): Boolean //only works from API call because delayed insert = true
 begin
        Rec."Requested Delivery Date":=Today;
        Rec."Promised Delivery Date":=Today;
    end;
}
