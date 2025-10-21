page 50144 PurchaseDiscounts
{
    Caption = 'PurchaseLineDiscountAPI';
    APIGroup = 'MASQ';
    APIPublisher = 'MASQ';
    APIVersion = 'beta';
    DelayedInsert = true;
    EntityName = 'PurchaseLineDiscountAPI';
    EntitySetName = 'PurchaseLineDiscountAPI';
    PageType = API;
    SourceTable = "Purchase Line Discount";
    ODataKeyFields = SystemId;

    // ProfilePicture
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Id"; Rec.SystemId)
                {
                    ApplicationArea = All;
                    Caption = 'Id';
                }
                field("VendorNo"; Rec."Vendor No.")
                {
                    ApplicationArea = All;
                    Caption = 'Vendor No.';
                }
                field("ItemNo"; Rec."Item No.")
                {
                    ApplicationArea = All;
                    Caption = 'Item No.';
                }
                field("UnitOfMeasureCode"; Rec."Unit of Measure Code")
                {
                    ApplicationArea = All;
                    Caption = 'Unit of Measure Code';
                }
                field("MinimumQuantity"; Rec."Minimum Quantity")
                {
                    ApplicationArea = All;
                    Caption = 'Minimum Quantity';
                }
                field("LineDiscount"; Rec."Line Discount %")
                {
                    ApplicationArea = All;
                    Caption = 'LineDiscount';
                }
            // field("StartingDate"; Rec."Starting Date")
            // {
            //     ApplicationArea = All;
            //     Caption = 'Starting Date';
            // }
            // field("EndingDate"; Rec."Ending Date")
            // {
            //     ApplicationArea = All;
            //     Caption = 'Ending Date';
            // }
            }
        }
    }
}
