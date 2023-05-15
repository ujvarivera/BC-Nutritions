codeunit 50103 "Posted Nutrition No. Mgt."
{
    procedure GetNoForPostedNutrHeader(var PostedNutritionHeader: Record "Posted Nutrition Header")

    var
        NoSetup: Record NoSeriesSetup;
        NoSeriesMgt: Codeunit NoSeriesManagement;
    begin
        if PostedNutritionHeader."Nutritional No." = '' then begin
            if NoSetup.Get() then;
            if NoSetup."Posted Nutrient Nos." <> '' then
                PostedNutritionHeader."Nutritional No." := NoSeriesMgt.GetNextNo(NoSetup."Posted Nutrient Nos.", Today, true);
        end;

    end;
}
