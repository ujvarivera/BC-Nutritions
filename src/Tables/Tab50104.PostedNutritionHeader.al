table 50104 "Posted Nutrition Header"
{
    Caption = 'Könyvelt Táplálkozás Fejléce';
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
        field(4; "Date"; Date)
        {
            Caption = 'Dátum';
            DataClassification = CustomerContent;
        }
        field(5; Status; Enum Status)
        {
            Caption = 'Státusz';
            DataClassification = CustomerContent;
        }
        field(6; "Total Protein"; Decimal)
        {
            Caption = 'Összes fehérje';
            FieldClass = FlowField;
            CalcFormula = Sum(NutritionLine.Protein Where("Nutritional No." = field("Nutritional No.")));
        }
        field(7; "Total Fat"; Decimal)
        {
            Caption = 'Összes zsír';
            FieldClass = FlowField;
            CalcFormula = Sum(NutritionLine.Fat Where("Nutritional No." = field("Nutritional No.")));
        }
        field(8; "Total Carbohydrate"; Decimal)
        {
            Caption = 'Összes szénhidrát';
            FieldClass = FlowField;
            CalcFormula = Sum(NutritionLine.Carbohydrate Where("Nutritional No." = field("Nutritional No.")));
        }
        field(9; "Total KJ"; Decimal)
        {
            Caption = 'Összes KJ';
            FieldClass = FlowField;
            CalcFormula = Sum(NutritionLine.KJ Where("Nutritional No." = field("Nutritional No.")));
        }
        field(10; "Total Kcal"; Decimal)
        {
            Caption = 'Összes Kcal';
            FieldClass = FlowField;
            CalcFormula = Sum(NutritionLine.Kcal Where("Nutritional No." = field("Nutritional No.")));
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
