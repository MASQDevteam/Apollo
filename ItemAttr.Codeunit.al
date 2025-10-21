codeunit 50122 ItemAttr
{
    trigger OnRun()
    var
        itemNo: Code[20];
        attributeName: Text[250];
        attributeValue: Text[250];
        item: Record Item;
    begin
        item.Get(itemNo);
        InsertItemAttr(attributeName, attributeValue, item);
    end;
    procedure InsertItemAttr(attributeName: Text[250]; attributeValue: Text[250]; item: Record Item)
    var
        itemAttribute: Record "Item Attribute";
        itemAttributeValueMap: Record "Item Attribute Value Mapping";
        itemAttributeValue: Record "Item Attribute Value";
    begin
        itemAttribute.SetRange("Name", attributeName);
        if itemAttribute.FindFirst()then begin
            itemAttributeValue.SetRange("Attribute Name", attributeName);
            itemAttributeValue.SetRange("Value", attributeValue);
            if not itemAttributeValue.FindFirst()then begin
                itemAttributeValue.Init();
                itemAttributeValue."Attribute ID":=itemAttribute.ID;
                itemAttributeValue."Attribute Name":=itemAttribute.Name;
                itemAttributeValue.Value:=attributeValue;
                itemAttributeValue.Insert(true);
            end;
            itemAttributeValueMap.Init();
            itemAttributeValueMap."Table ID":=27;
            itemAttributeValueMap."No.":=item."No.";
            itemAttributeValueMap."Item Attribute ID":=itemAttribute.ID;
            itemAttributeValueMap."Item Attribute Value ID":=itemAttributeValue.ID;
            itemAttributeValueMap.Insert(true);
        end;
    end;
    procedure RunItemAttr(ItemNo: Code[20]; AttributeName: Text[250]; AttributeValue: Text[250])
    var
        itemAttr: Codeunit "ItemAttr";
    begin
        itemAttr.RunItemAttr(ItemNo, AttributeName, AttributeValue);
    end;
}
