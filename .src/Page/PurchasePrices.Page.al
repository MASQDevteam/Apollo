page 50143 PurchasePrices
{
    Caption = 'PurchasePricesAPI';
    APIGroup = 'MASQ';
    APIPublisher = 'MASQ';
    APIVersion = 'beta';
    DelayedInsert = true;
    EntityName = 'PurchasePricesAPI';
    EntitySetName = 'PurchasePricesAPI';
    PageType = API;
    SourceTable = "Purchase Price";
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
                field("DirectUnitCost"; Rec."Direct Unit Cost")
                {
                    ApplicationArea = All;
                    Caption = 'Direct Unit Cost';
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
            //  ItemNo = dynamicsItem.No,
            //             VendorNo = dynamicsItem.VendorNo,
            //             DirectUnitCost = number,
            //             MinimumQuantity = quantity,
            //             UnitOfMeasureCode =UOM,
            //             StartingDate= DateTime.Now,
            //             EndingDate= DateTime.Now
            }
        }
    }
}
