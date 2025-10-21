tableextension 50145 ApolloPurchaseHeaderExtension extends "Purchase Header"
{
    fields
    {
        field(50003; "Apollo Freight Value"; Decimal)
        {
            Caption = 'Apollo Freight Value';
        }
        field(50004; "Apollo Customs Value"; Decimal)
        {
            Caption = 'Apollo Customs Value';
        }
        field(50005; "Apollo Clearance Value"; Decimal)
        {
            Caption = 'Apollo Clearance Value';
        }
        field(50006; "Apollo Location Code"; Code[50])
        {
            Caption = 'Apollo Location Code';
            TableRelation = Location.Code;
        }
    }
}
