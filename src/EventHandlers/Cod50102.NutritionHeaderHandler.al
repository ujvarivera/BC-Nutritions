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
