page 50105 ApolloPoLines
{
    Caption = 'PoLines';
    APIGroup = 'MASQ';
    APIPublisher = 'MASQ';
    APIVersion = 'beta';
    DelayedInsert = true;
    EntityName = 'PoLines';
    EntitySetName = 'PoLines';
    PageType = API;
    SourceTable = "Purchase Line";

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
                field(quantity; Rec.Quantity)
                {
                    Caption = 'Quantity';
                }
                field(megVendorItemCode; Rec."Meg Vendor Item Code")
                {
                    Caption = 'Vendor Item Code';
                }
                // field(description; Rec.Description)
                // {
                //     Caption = 'Description';
                // }
                field(directUnitCost; Rec."Direct Unit Cost")
                {
                    Caption = 'directUnitCost';
                }
            //     field(qtyAssigned; Rec."Qty. Assigned")
            //     {
            //         Caption = 'Qty. Assigned';
            //     }
            //     field(unitOfMeasureCode; Rec."Unit of Measure Code")
            //     {
            //         Caption = 'Unit of Measure Code';
            //     }
            }
        }
    }
    var ItemL: Record Item;
    ItemNo: code[20];
// trigger OnNewRecord(BelowxRec: Boolean)
// begin
//     if ItemNo = '' then begin
//         ItemL.SetRange("Meg Vendor Item Code", Rec."Meg Vendor Item Code");
//         if ItemL.FindFirst() then begin
//             Rec.Type := Rec.Type::Item;
//             Rec."No." := ItemL."No.";
//             Rec."Document Type" := Rec."Document Type"::Order;
//             Rec."Document No." := Rec."Document No.";
//             Rec.Insert(true);
//         end;
//     end
// end;
}
