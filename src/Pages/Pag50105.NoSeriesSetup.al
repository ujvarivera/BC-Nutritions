page 50105 "No. Series Setup"
{
    Caption = 'No. Series Setup';
    PageType = Card;
    SourceTable = NoSeriesSetup;
    UsageCategory = "Administration";
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Nutritional Nos."; Rec."Nutrient Nos.")
                {
                    ApplicationArea = All;
                }

            }
        }
    }

    // Hogy ki lehessen választani a No. Series List -ből, és módosítható legyen
    // Ehhez a No. Series List-ben fel kell venni új kódot, kezdő és utolsó értékekkel
    trigger OnOpenPage()
    begin
        if Rec.IsEmpty() then
            Rec.Insert();
    end;
}
