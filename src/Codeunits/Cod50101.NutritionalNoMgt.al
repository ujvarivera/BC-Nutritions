/// <summary>
/// Codeunit for Managing Nutrition Order's Nutritonal No. (ID 50101).
/// </summary>
codeunit 50101 "Nutritional No. Mgt."
{
    procedure GetNoForNutrHeader(var NutritionHeader: Record NutritionHeader)
    var
        NoSetup: Record NoSeriesSetup; // lekérjük a számozási kört
        NoSeriesMgt: Codeunit NoSeriesManagement;
    begin
        if NutritionHeader."Nutritional No." = '' then begin
            if NoSetup.Get() then;
            if NoSetup."Nutrient Nos." <> '' then
                NutritionHeader."Nutritional No." := NoSeriesMgt.GetNextNo(NoSetup."Nutrient Nos.", Today, true); // lekérjük a következő számozást
        end;

    end;

}
