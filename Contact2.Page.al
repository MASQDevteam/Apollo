page 50100 Contact2
{
    Caption = 'Contact';
    APIGroup = 'MASQ';
    APIPublisher = 'MASQ';
    APIVersion = 'beta';
    DelayedInsert = true;
    EntityName = 'Contact';
    EntitySetName = 'Contact';
    PageType = API;
    SourceTable = "Contact";
    ODataKeyFields = SystemId;

    // ProfilePicture 
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("ID"; Rec.SystemId)
                {
                    ApplicationArea = All;
                    Caption = 'ID';

                    trigger OnValidate()
                    begin
                    end;
                }
                field("ContactType"; Rec.Type)
                {
                    ApplicationArea = All;
                    Caption = 'ContactType';

                    trigger OnValidate()
                    begin
                    end;
                }
                field("CompanyContactNo"; Rec."Company No.")
                {
                    ApplicationArea = All;
                    Caption = 'CompanyContactNo';
                }
                field("No"; Rec."No.")
                {
                    ApplicationArea = All;
                    Caption = 'No.';
                }
                field("Name"; Rec."Name")
                {
                    ApplicationArea = All;
                    Caption = 'Name';
                }
                field("FirstName"; Rec."First Name")
                {
                    ApplicationArea = All;
                    Caption = 'First Name';
                }
                field("MiddleName"; Rec."Middle Name")
                {
                    ApplicationArea = All;
                    Caption = 'Middle Name';
                }
                field("Surname"; Rec."Surname")
                {
                    ApplicationArea = All;
                    Caption = 'Surname';
                }
                field("PhoneNo"; Rec."Phone No.")
                {
                    ApplicationArea = All;
                    Caption = 'Phone No.';
                }
                field("ExtensionNo"; Rec."Extension No.")
                {
                    ApplicationArea = All;
                    Caption = 'Extension No.';
                }
                field("MobilePhoneNo"; Rec."Mobile Phone No.")
                {
                    ApplicationArea = All;
                    Caption = 'Mobile Phone No.';
                }
                field("Email"; Rec."E-mail")
                {
                    ApplicationArea = All;
                    Caption = 'Email';
                }
                field("Comment"; Rec.Comment)
                {
                    ApplicationArea = All;
                    Caption = 'Comment';
                }
                field("SalutationCode"; Rec."Salutation Code")
                {
                    ApplicationArea = All;
                    Caption = 'Salutation Code';
                }
                field("CountryRegionCode"; Rec."Country/Region Code")
                {
                    ApplicationArea = All;
                    Caption = 'Country/Region Code';
                }
                field("SalespersonCode"; Rec."Salesperson Code")
                {
                    ApplicationArea = All;
                    Caption = 'Salesperson Code';
                }
                field("OrganizationalLevelCode"; Rec."Organizational Level Code")
                {
                    ApplicationArea = All;
                    Caption = 'Organizational Level Code';
                }
                field("Zoom"; Rec.Zoom)
                {
                    ApplicationArea = All;
                    Caption = 'Zoom';
                }
                field("Linkedin"; Rec.Linkedin)
                {
                    ApplicationArea = All;
                    Caption = 'Linkedin';
                }
                field("Facebook"; Rec.Facebook)
                {
                    ApplicationArea = All;
                    Caption = 'Facebook';
                }
                field("Twitter"; Rec.Twitter)
                {
                    ApplicationArea = All;
                    Caption = 'Twitter';
                }
                field("Instagram"; Rec.Instagram)
                {
                    ApplicationArea = All;
                    Caption = 'Instagram';
                }
                field("SkypeName"; Rec.SkypeName)
                {
                    ApplicationArea = All;
                    Caption = 'SkypeName';
                }
                field("Teams"; Rec.Teams)
                {
                    ApplicationArea = All;
                    Caption = 'Teams';
                }
                field("Comments"; Rec."Comments")
                {
                    ApplicationArea = All;
                    Caption = 'Comments';
                }
                field("ApolloContactNo"; Rec.ApolloContactNo)
                {
                    ApplicationArea = All;
                    Caption = 'ApolloContactNo';
                }
            }
        }
    }
}
