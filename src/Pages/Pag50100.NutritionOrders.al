page 50100 "Nutrition Orders"
{
    Caption = 'Nutrition Orders';
    PageType = List;
    UsageCategory = Lists;
    SourceTable = NutritionHeader;
    Editable = false;
    CardPageId = "Nutrition Order";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Nutritional No."; Rec."Nutritional No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Code field.';
                }
                field("Customer No."; Rec."Customer No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer Number field.';
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer Name field.';
                }
                field("Date"; Rec."Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Date field.';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Status field.';
                }
            }
        }
    }
}
