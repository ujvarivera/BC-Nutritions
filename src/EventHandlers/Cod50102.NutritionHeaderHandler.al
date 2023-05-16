/// <summary>
/// Event Handler - Uses Codeunit for adding new Nutritional No. to Nutrition Order (ID 50102).
/// </summary>
codeunit 50102 "Nutrition Header Handler"
{

    [EventSubscriber(ObjectType::Table, Database::NutritionHeader, 'OnBeforeInsertEvent', '', false, false)]
    local procedure OnBeforeInsertEvent(var Rec: Record NutritionHeader)
    var
        Mgt: Codeunit "Nutritional No. Mgt.";
    begin
        Mgt.GetNoForNutrHeader(Rec);
        Rec.Date := System.Today();
    end;

}
