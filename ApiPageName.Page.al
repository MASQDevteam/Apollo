page 50160 ApiPageName
{
    PageType = API;
    Caption = 'PoLinesapiPageName';
    APIGroup = 'MASQ';
    APIPublisher = 'MASQ';
    APIVersion = 'beta';
    DelayedInsert = true;
    EntityName = 'PoLinesapiPageName';
    EntitySetName = 'PoLinesapiPageName';
    SourceTable = "Purchase Line";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(lineNo; Rec."Line No.")
                {
                    Caption = 'Line No.';
                }
                field("type"; Rec."Type")
                {
                    Caption = 'Type';
                }
                field(documentType; Rec."Document Type")
                {
                    Caption = 'Document Type';
                }
                // field(no; Rec."No.")
                // {
                //     Caption = 'No.';
                // }
                field(megVendorItemCode; Rec."Meg Vendor Item Code")
                {
                    Caption = 'Vendor Item Code';
                }
                field(locationCode; Rec."Location Code")
                {
                    Caption = 'locationCode';
                }
                field(documentNo; Rec."Document No.")
                {
                    Caption = 'Document No.';
                }
                field(megItemType; Rec."Meg Item Type")
                {
                    Caption = 'megItemType';
                }
                field(quantity; Rec.Quantity)
                {
                    Caption = 'Quantity';
                }
                field(directUnitCost; Rec."Direct Unit Cost")
                {
                    Caption = 'directUnitCost';
                }
            }
        }
    }
    var purchHeader: Record "Purchase Header";
    trigger OnInsertRecord(BelowxRec: Boolean): Boolean var
        x: Codeunit EventsSubscriber;
    begin
        if purchHeader.Get(Rec."Document Type"::Order, rec."Document No.")then begin
            // if purchHeader."Location Code" = '' then begin
            //     purchHeader.Validate("Location Code", Rec."Location Code");
            //     purchHeader.Modify(true);
            //     x.InsertPOBranchDimensionWithoutEvent(purchHeader) //adding the Branch Dimension 
            // end;
            if purchHeader."Apollo Location Code" = '' then begin
                purchHeader.Validate("Apollo Location Code", Rec."Location Code");
                purchHeader.Modify(true);
                x.InsertPOBranchDimensionWithoutEvent(purchHeader) //adding the Branch Dimension 
            end;
        end;
    end;
}
