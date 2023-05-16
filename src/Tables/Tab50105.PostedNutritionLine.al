/// <summary>
/// Lines Table for Posted Nutrition Order.
/// </summary>
table 50105 "Posted Nutrition Line"
{
    Caption = 'Könyvelt táplálkozás sorai';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Nutritional No."; Code[20])
        {
            Caption = 'Táplálkozási kód';
            TableRelation = NutritionHeader."Nutritional No.";
            DataClassification = CustomerContent;
        }
        field(2; "Serial No."; Integer)
        {
            AutoIncrement = true;
            Caption = 'Sorszám';
            DataClassification = CustomerContent;
        }
        field(3; "Nutrition Code"; Code[20])
        {
            Caption = 'Tápanyag kód';
            DataClassification = CustomerContent;
            TableRelation = Macronutrients."Code";
            ValidateTableRelation = true;

            trigger OnValidate()
            var
                MacroNutrient: Record Macronutrients;
            begin
                if MacroNutrient.Get(Rec."Nutrition Code") then
                    Rec."Nutrition Name" := MacroNutrient.Description
                else
                    Rec."Nutrition Name" := '';
            end;
        }
        field(4; "Nutrition Name"; Text[100])
        {
            Caption = 'Megnevezés';
            DataClassification = CustomerContent;
        }
        field(5; Quantity; Integer)
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
