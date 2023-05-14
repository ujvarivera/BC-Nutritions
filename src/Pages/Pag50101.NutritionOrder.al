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

            part(Lines; "Nutrition Order Subform")
            {
                SubPageLink = "Nutritional No." = field("Nutritional No.");
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(PostAction)
            {
                Caption = 'Könyvelés';
                Image = "Invoicing-Send";
                ApplicationArea = All;
                ToolTip = 'Executes the Post Action';
                Promoted = true;
                PromotedOnly = true;

                trigger OnAction()
                begin

                end;

            }

            action(CloseAction)
            {
                Caption = 'Lezárás';
                Image = CloseDocument;
                ApplicationArea = All;
                ToolTip = 'Executes the Close Action';
                Promoted = true;
                PromotedOnly = true;

                trigger OnAction()
                begin
                    if Rec."Date" <> 0D then
                        Rec.Status := Rec.Status::Closed;
                end;
            }

            action(OpenAction)
            {
                Caption = 'Újranyitás';
                Image = ReOpen;
                ApplicationArea = All;
                ToolTip = 'Executes the Open Action';
                Promoted = true;
                PromotedOnly = true;

                trigger OnAction()
                begin
                    Rec.Status := Rec.Status::Open;
                end;
            }

            action(ExportAction)
            {
                Caption = 'Exportálás';
                Image = Export;
                ApplicationArea = All;
                ToolTip = 'Executes the Export Action';
                Promoted = true;
                PromotedOnly = true;

                trigger OnAction()
                begin

                end;
            }

        }
    }
}
