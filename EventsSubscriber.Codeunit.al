codeunit 50102 EventsSubscriber
{
    [EventSubscriber(ObjectType::Table, Database::"Salesperson/Purchaser", 'OnAfterInsertEvent', '', true, true)]
    local procedure CreateSalesPersonDimension(var Rec: Record "Salesperson/Purchaser"; RunTrigger: Boolean)
    begin
        InsertDimension(Database::"Salesperson/Purchaser", Rec.Code, Rec.Name);
    end;
    [EventSubscriber(ObjectType::Table, Database::"Salesperson/Purchaser", 'OnAfterModifyEvent', '', true, true)]
    local procedure ModifySalesPersonDimension(var Rec: Record "Salesperson/Purchaser"; RunTrigger: Boolean)
    begin
        ModifyDimension(Database::"Salesperson/Purchaser", Rec.Code, Rec.Name);
    end;
    [EventSubscriber(ObjectType::Table, Database::"Sales Header", 'OnAfterInsertEvent', '', true, true)]
    local procedure InsertBranchDimension(var Rec: Record "Sales Header"; RunTrigger: Boolean)
    // var
    //     dims: Record "Dimension Set Entry" temporary;
    //     branchValue: Text;
    begin
        // if CompanyName() = 'NEW MASQ-KSA' then begin
        //     branchValue := 'SA-02';
        // end
        // else begin
        //     branchValue := 'QR';
        // end;
        // dims.init();
        // dims.validate("Dimension Code", 'Branch');
        // dims.validate("Dimension Value Code", branchValue);
        // dims.Insert();
        // UpdateDimSetOnSalesHeader(Rec, Dims);
        // Rec.Modify();
        InsertSOBranchDimensionWithoutEvent(Rec);
    end;
    internal procedure InsertDimension(TableId: Integer; var DimensionValueCode: Code[20]; var DimensionValueName: Text)
    var
        DimensionL: Record Dimension;
        DimensionValueL: Record "Dimension Value";
        DefaultDimensionL: Record "Default Dimension";
    //  x: Codeunit "Meg Transfer Order Events";
    begin
        Clear(DimensionValueL);
        DimensionValueL.Init();
        case TableId of Database::"Salesperson/Purchaser": begin
            DimensionValueL."Dimension Code":='SALESPERSON';
            DimensionValueL.Code:=DimensionValueCode;
            DimensionValueL.Name:=DimensionValueName;
            DimensionValueL.Insert(true);
            Clear(DefaultDimensionL);
            DefaultDimensionL.Init();
            DefaultDimensionL."No.":=DimensionValueCode;
            DefaultDimensionL."Table ID":=TableId;
            DefaultDimensionL."Dimension Code":='SALESPERSON';
            DefaultDimensionL."Dimension Value Code":=DimensionValueCode;
            DefaultDimensionL.Insert(true);
            DefaultDimensionL."Value Posting":=DefaultDimensionL."Value Posting"::"Same Code";
            DefaultDimensionL.Modify(true);
        end;
        end;
    end;
    internal procedure ModifyDimension(TableId: Integer; var DimensionValueCode: Code[20]; var DimensionValueName: Text)
    var
        DimensionL: Record Dimension;
        DimensionValueL: Record "Dimension Value";
        DefaultDimensionL: Record "Default Dimension";
    begin
        Clear(DimensionValueL);
        case TableId of Database::"Salesperson/Purchaser": begin
            if DimensionValueL.Get('SALESPERSON', DimensionValueCode)then begin
                DimensionValueL.Name:=DimensionValueName;
                DimensionValueL.Modify(true);
            end;
        end;
        end;
    end;
    internal procedure UpdateDimSetOnSalesHeader(var SH: Record "Sales Header"; var ToAddDims: Record "Dimension Set Entry" temporary)
    var
        DimMgt: Codeunit DimensionManagement;
        NewDimSet: Record "Dimension Set Entry" temporary;
    begin
        DimMgt.GetDimensionSet(NewDimSet, SH."Dimension Set ID");
        if ToAddDims.FindSet()then repeat if NewDimSet.Get(SH."Dimension Set ID", ToAddDims."Dimension Code")then begin
                    NewDimSet.validate("Dimension Value Code", ToAddDims."Dimension Value Code");
                    NewDimSet.Modify();
                end
                else
                begin
                    NewDimSet:=ToAddDims;
                    NewDimSet."Dimension Set ID":=SH."Dimension Set ID";
                    NewDimSet.Insert();
                end;
            until ToAddDims.Next() = 0;
        SH."Dimension Set ID":=DimMgt.GetDimensionSetID(NewDimSet);
        DimMgt.UpdateGlobalDimFromDimSetID(SH."Dimension Set ID", SH."Shortcut Dimension 1 Code", SH."Shortcut Dimension 2 Code");
    end;
    internal procedure UpdateDimSetOnPurchaseHeader(var PO: Record "Purchase Header"; var ToAddDims: Record "Dimension Set Entry" temporary)
    var
        DimMgt: Codeunit DimensionManagement;
        NewDimSet: Record "Dimension Set Entry" temporary;
    begin
        DimMgt.GetDimensionSet(NewDimSet, PO."Dimension Set ID");
        if ToAddDims.FindSet()then repeat if NewDimSet.Get(PO."Dimension Set ID", ToAddDims."Dimension Code")then begin
                    NewDimSet.validate("Dimension Value Code", ToAddDims."Dimension Value Code");
                    NewDimSet.Modify();
                end
                else
                begin
                    NewDimSet:=ToAddDims;
                    NewDimSet."Dimension Set ID":=PO."Dimension Set ID";
                    NewDimSet.Insert();
                end;
            until ToAddDims.Next() = 0;
        PO."Dimension Set ID":=DimMgt.GetDimensionSetID(NewDimSet);
        DimMgt.UpdateGlobalDimFromDimSetID(PO."Dimension Set ID", PO."Shortcut Dimension 1 Code", PO."Shortcut Dimension 2 Code");
    end;
    internal procedure InsertSOBranchDimensionWithoutEvent(var Rec: Record "Sales Header")
    var
        dims: Record "Dimension Set Entry" temporary;
        dimsDepartment: Record "Dimension Set Entry" temporary;
        branchValue: Text;
    begin
        if CompanyName() = 'NEW MASQ-KSA' then begin
            branchValue:='SA-02';
        end
        else
        begin
            branchValue:='QR';
        end;
        dims.init();
        dims.validate("Dimension Code", 'Branch');
        dims.validate("Dimension Value Code", branchValue);
        dims.Insert();
        UpdateDimSetOnSalesHeader(Rec, Dims);
        Rec.Modify();
        //Department Dimension
        dimsDepartment.Init();
        dimsDepartment.validate("Dimension Code", 'Department');
        dimsDepartment.validate("Dimension Value Code", 'PROJ');
        dimsDepartment.Insert();
        UpdateDimSetOnSalesHeader(Rec, dimsDepartment);
        Rec.Modify();
    end;
    internal procedure InsertPOBranchDimensionWithoutEvent(var Rec: Record "Purchase Header")
    var
        dims: Record "Dimension Set Entry" temporary;
        dimsDepartment: Record "Dimension Set Entry" temporary;
        branchValue: Text;
    begin
        if CompanyName() = 'NEW MASQ-KSA' then begin
            branchValue:='SA-02';
        end
        else
        begin
            branchValue:='QR';
        end;
        dims.init();
        dims.validate("Dimension Code", 'Branch');
        dims.validate("Dimension Value Code", branchValue);
        dims.Insert();
        UpdateDimSetOnPurchaseHeader(Rec, Dims);
        Rec.Modify();
        //Department Dimension
        dimsDepartment.Init();
        dimsDepartment.validate("Dimension Code", 'Department');
        dimsDepartment.validate("Dimension Value Code", 'PROJ');
        dimsDepartment.Insert();
        UpdateDimSetOnPurchaseHeader(Rec, dimsDepartment);
        Rec.Modify();
        //new Location
        dimsDepartment.Init();
        dimsDepartment.validate("Dimension Code", 'Project');
        dimsDepartment.validate("Dimension Value Code", Rec."Apollo Location Code");
        dimsDepartment.Insert();
        UpdateDimSetOnPurchaseHeader(Rec, dimsDepartment);
        Rec.Modify();
    end;
}
