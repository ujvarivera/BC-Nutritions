page 50101 "Nutrition Order"
{
    Caption = 'Nutrition Order';
    PageType = Document;
    SourceTable = NutritionHeader;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Nutritional No."; Rec."Nutritional No.")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                }
                field("Customer No."; Rec."Customer No.")
                {
                    ApplicationArea = All;
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Date"; Rec."Date")
                {
                    ApplicationArea = All;
                    // Editable = false;
                }
                field("Total Protein"; Rec."Total Protein")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Total Fat"; Rec."Total Fat")
                {
                    ApplicationArea = All;
                    Editable = false;

                }
                field("Total Carbohydrate"; Rec."Total Carbohydrate")
                {
                    ApplicationArea = All;
                    Editable = false;

                }
                field("Total KJ"; Rec."Total KJ")
                {
                    ApplicationArea = All;
                    Editable = false;

                }
                field("Total Kcal"; Rec."Total Kcal")
                {
                    ApplicationArea = All;
                    Editable = false;

                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    Editable = false;
                }

            }
        }
    }
}
