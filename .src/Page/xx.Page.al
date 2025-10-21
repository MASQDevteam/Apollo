page 50162 xx
{
    PageType = API;
    Caption = 'xx';
    APIGroup = 'MASQ';
    APIPublisher = 'MASQ';
    APIVersion = 'beta';
    DelayedInsert = true;
    EntityName = 'xx';
    EntitySetName = 'xx';
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
                field(megItemType; Rec."Meg Item Type")
                {
                    Caption = 'Item Type';
                }
                field(megVendorItemCode; Rec."Meg Vendor Item Code")
                {
                    Caption = 'Vendor Item Code';
                }
                field(documentNo; Rec."Document No.")
                {
                    Caption = 'Document No.';
                }
                field(quantity; Rec.Quantity)
                {
                    Caption = 'Quantity';
                }
                field(directUnitCost; Rec."Direct Unit Cost")
                {
                    Caption = 'Direct Unit Cost';
                }
                field(locationCode; Rec."Location Code")
                {
                    Caption = 'Location Code';
                }
            }
        }
    }
}
