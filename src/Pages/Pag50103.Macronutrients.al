page 50103 Macronutrients
{
    ApplicationArea = All;
    Caption = 'Macronutrients';
    PageType = List;
    SourceTable = Macronutrients;
    UsageCategory = Lists;
    Editable = false;
    CardPageId = "Macronutrient";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Code"; Rec."Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Code field.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description / Macronutrient Name field.';
                }
                field(Protein; Rec.Protein)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Protein field.';
                }
                field(Fat; Rec.Fat)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Fat field.';
                }
                field(Carbohydrate; Rec.Carbohydrate)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Carbohydrate field.';
                }
                field("Measurement Unit Code"; Rec."Measurement Unit Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Measurement Unit Code field.';
                }
                field(KJ; Rec.KJ)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the KJ field.';
                }
                field(Kcal; Rec.Kcal)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Kcal field.';
                }
            }
        }
    }
}
