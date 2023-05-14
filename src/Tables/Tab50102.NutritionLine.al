table 50102 NutritionLine
{
    Caption = 'Táplálkozási sorok';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Nutritional No."; Code[20])
        {
            Caption = 'Táplálkozási szám';
            DataClassification = CustomerContent;
            TableRelation = NutritionHeader."Nutritional No.";
        }
        field(2; "Serial No."; Integer) // Line number
        {
            AutoIncrement = true;
            Caption = 'Sorozatszám';
            DataClassification = CustomerContent;
        }
        field(3; "Nutrition Code"; Code[20])
        {
            Caption = 'Tápanyag kód';
            DataClassification = CustomerContent;
            TableRelation = Macronutrients.Code;
        }
        field(4; "Nutrition Name"; Text[200])
        {
            Caption = 'Megnevezés';
            DataClassification = CustomerContent;
        }
        field(5; "Quantity"; Integer)
        {
            Caption = 'Mennyiség';
            DataClassification = CustomerContent;
        }
        field(6; Protein; Decimal)
        {
            Caption = 'Fehérje';
            DataClassification = CustomerContent;
        }
        field(7; Fat; Decimal)
        {
            Caption = 'Zsír';
            DataClassification = CustomerContent;
        }
        field(8; Carbohydrate; Decimal)
        {
            Caption = 'Szénhidrát';
            DataClassification = CustomerContent;
        }
        field(9; "Measurement Unit Code"; Code[20])
        {
            Caption = 'Mértékegység';
            DataClassification = CustomerContent;
            TableRelation = Macronutrients."Measurement Unit Code";
        }
        field(10; KJ; Decimal)
        {
            Caption = 'KJ';
            DataClassification = CustomerContent;
        }
        field(11; Kcal; Decimal)
        {
            Caption = 'Kcal';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "Nutritional No.", "Serial No.")
        {
            Clustered = true;
        }
    }
}
