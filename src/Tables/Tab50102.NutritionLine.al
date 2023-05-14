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

            trigger OnValidate()
            var
                Nutrient: Record Macronutrients;
            begin
                if Nutrient.Get(Rec."Nutrition Code") then
                    Rec."Nutrition Name" := Nutrient.Description
                else
                    Rec."Nutrition Name" := '';
            end;

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

            trigger OnValidate()
            var
                MacroNutrient: Record Macronutrients;

            begin
                if MacroNutrient.Get(Rec."Nutrition Code") then begin
                    Rec.Protein := MacroNutrient.Protein * Quantity;
                    Rec.Fat := MacroNutrient.Fat * Quantity;
                    Rec.Carbohydrate := MacroNutrient.Carbohydrate * Quantity;
                    Rec.KJ := MacroNutrient.KJ * Quantity;
                    Rec.Kcal := MacroNutrient.Kcal * Quantity;
                end
                else begin
                    Rec.Protein := 0;
                    Rec.Fat := 0;
                    Rec.Carbohydrate := 0;
                    Rec.KJ := 0;
                    Rec.Kcal := 0;
                end
            end;

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
