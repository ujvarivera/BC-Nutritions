table 50101 NutritionHeader
{
    Caption = 'Táplálkozási fej';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Nutritional No."; Code[20])
        {
            Caption = 'Táplálkozási szám';
            DataClassification = CustomerContent;
        }
        field(2; "Customer No."; Code[20])
        {
            Caption = 'Vevőkód';
            DataClassification = CustomerContent;
        }
        field(3; "Customer Name"; Text[200])
        {
            Caption = 'Vevőnév';
            DataClassification = CustomerContent;
        }
        field(4; Date; Date)
        {
            Caption = 'Dátum';
            DataClassification = CustomerContent;
        }
        field(5; Status; Enum Status)
        {
            Caption = 'Státusz';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "Nutritional No.")
        {
            Clustered = true;
        }
    }
}
