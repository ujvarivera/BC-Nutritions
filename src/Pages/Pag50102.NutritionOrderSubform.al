page 50102 "Nutrition Order Subform"
{
    Caption = 'Nutrition Order Subform';
    PageType = ListPart;
    SourceTable = NutritionLine;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Nutritional No."; Rec."Nutritional No.")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                }
                field("Serial No."; Rec."Serial No.")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    Editable = false;
                }
                field("Nutrition Code"; Rec."Nutrition Code")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                }
                field(Description; Rec."Nutrition Name")
                {
                    ApplicationArea = All;
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                }
                field(Protein; Rec.Protein)
                {
                    ApplicationArea = All;
                }
                field(Fat; Rec.Fat)
                {
                    ApplicationArea = All;
                }
                field(Carbohydrate; Rec.Carbohydrate)
                {
                    ApplicationArea = All;
                }
                field(KJ; Rec.KJ)
                {
                    ApplicationArea = All;
                }
                field(Kcal; Rec.Kcal)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
