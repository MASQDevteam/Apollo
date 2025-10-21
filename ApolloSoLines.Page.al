page 50109 ApolloSoLines
{
    Caption = 'SoLines';
    APIGroup = 'MASQ';
    APIPublisher = 'MASQ';
    APIVersion = 'beta';
    DelayedInsert = true;
    EntityName = 'SoLines';
    EntitySetName = 'SoLines';
    PageType = API;
    SourceTable = "Sales Line";

    layout
    {
        area(Content)
        {
            group(General)
            {
                field(lineNo; Rec."Line No.")
                {
                    Caption = 'Line No.';
                }
                field(documentType; Rec."Document Type")
                {
                    Caption = 'Document Type';
                }
                field("documentNo"; Rec."Document No.")
                {
                    Caption = 'Document No.';
                }
                field("type"; Rec."Type")
                {
                    Caption = 'Type';
                }
                field(megVendorItemCode; Rec."Meg Vendor Item Code")
                {
                    Caption = 'Vendor Item Code';
                }
                field(megItemType; Rec."Meg Item Type")
                {
                    Caption = 'Quantity';
                }
                field(quantity; Rec.Quantity)
                {
                    Caption = 'Quantity';
                }
                field(unitPrice; Rec."Unit Price")
                {
                    Caption = 'Unit Price';
                }
                field(locationCode; Rec."Location Code")
                {
                    Caption = 'Unit Price';
                }
            }
        }
    }
    var SalesHeader: Record "Sales Header";
    trigger OnInsertRecord(BelowxRec: Boolean): Boolean var
        x: Codeunit EventsSubscriber;
    begin
        // SalesHeader.SetRange("Document Type", Rec."Document Type"::Order);
        // SalesHeader.SetRange("No.", rec."Document No.");
        if SalesHeader.get(Rec."Document Type"::Order, rec."Document No.")then begin
            // Rec."Location Code" := SalesHeader."Location Code";
            if SalesHeader."Location Code" = '' then begin
                SalesHeader.Validate("Location Code", Rec."Location Code");
                SalesHeader.Modify(true);
                x.InsertSOBranchDimensionWithoutEvent(SalesHeader); //readding the bracnh dimension if it was overriden by the location one
            end;
        end;
    end;
}
