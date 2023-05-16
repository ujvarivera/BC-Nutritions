/// <summary>
/// Document Page for Posted Nutrition Order. Shows one Posted Nutrition Order. Uses the Posted Nutrition Header Table.
/// </summary>
page 50107 "Posted Nutrition Order"
{
    Caption = 'Posted Nutrition Order';
    PageType = Document;
    SourceTable = "Posted Nutrition Header";
    Editable = false;

    layout
    {
        area(content)
        {
            /// <summary>
            /// Header for Posted Nutrition Order.
            /// </summary> 
            group(General)
            {
                field("Nutritional No."; Rec."Nutritional No.")
                {
                    ApplicationArea = All;
                }
                field("Customer No."; Rec."Customer No.")
                {
                    ApplicationArea = All;
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;
                }
                field("Date"; Rec."Date")
                {
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                }
                field("Total Protein"; Rec."Total Protein")
                {
                    ApplicationArea = All;
                }
                field("Total Fat"; Rec."Total Fat")
                {
                    ApplicationArea = All;
                }
                field("Total Carbohydrate"; Rec."Total Carbohydrate")
                {
                    ApplicationArea = All;
                }
                field("Total KJ"; Rec."Total KJ")
                {
                    ApplicationArea = All;
                }
                field("Total Kcal"; Rec."Total Kcal")
                {
                    ApplicationArea = All;
                }
            }

            /// <summary>
            /// ListPart for Posted Nutrition Order.
            /// </summary> 
            part(Lines; "Posted Nutrition Order Subform")
            {
                SubPageLink = "Nutritional No." = field("Nutritional No.");
                ApplicationArea = All;
            }
        }


    }
}
