page 50130 ApolloSoHeader
{
    Caption = 'SoHeader';
    APIGroup = 'MASQ';
    APIPublisher = 'MASQ';
    APIVersion = 'beta';
    DelayedInsert = true;
    EntityName = 'SoHeader';
    EntitySetName = 'SoHeader';
    PageType = API;
    SourceTable = "Sales Header";

    layout
    {
        area(Content)
        {
            group(General)
            {
                field(no; Rec."No.")
                {
                    Caption = 'No.';
                    Editable = false;
                }
                field(documentType; Rec."Document Type")
                {
                    Caption = 'Document Type';
                }
                field(sellToCustomerName; Rec."Sell-to Customer Name")
                {
                    Caption = 'Sell-to Customer Name';
                }
                // field(sellToAddress; Rec."Sell-to Address")
                // {
                //     Caption = 'Sell-to Address';
                // }
                // field(sellToCountryRegionCode; Rec."Sell-to Country/Region Code")
                // {
                //     Caption = 'Sell-to Country/Region Code';
                // }
                field(currencyCode; Rec."Currency Code")
                {
                    Caption = 'Currency Code';
                }
                field(megMASQOffer; Rec."Meg MASQ Offer #")
                {
                    Caption = 'MASQ Offer #';
                }
                field(salespersonCode; Rec."Salesperson Code")
                {
                    Caption = 'Salesperson Code';
                }
                field(locationCode; Rec."Location Code")
                {
                    Caption = 'Location Code';
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
