/// <summary>
/// Page for Managing Series Numbers (Nutritional No.-s). Here you can add a Code for them from No. Series.
/// (You have to add these codes to "No. Series." Page with Starting No. and Ending No., and also
/// Default No.-s should be checked.)
/// </summary>
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
                field("Posted Nutrient Nos."; Rec."Posted Nutrient Nos.")
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
