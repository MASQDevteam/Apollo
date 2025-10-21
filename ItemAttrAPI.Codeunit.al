codeunit 50121 ItemAttrAPI
{
    [ServiceEnabled]
    local procedure InsertItemAttrAPI(itemNo: Code[20]; attributeName: Text[250]; attributeValue: Text[250])
    var
        item: Record Item;
        itemAttr: Codeunit "ItemAttr";
    begin
        item.Get(itemNo);
        itemAttr.InsertItemAttr(attributeName, attributeValue, item);
    end;
}
