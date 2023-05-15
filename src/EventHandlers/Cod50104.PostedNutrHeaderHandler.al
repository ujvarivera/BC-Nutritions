codeunit 50104 "Posted Nutr. Header Handler"
{
    /*
        [EventSubscriber(ObjectType::Table, Database::"Posted Nutrition Header", 'OnBeforeInsertEvent', '', false, false)]
        local procedure OnBeforeInsertEvent(var Rec: Record "Posted Nutrition Header")
        var
            Mgt: Codeunit "Posted Nutrition No. Mgt.";
        begin
            Mgt.GetNoForPostedNutrHeader(Rec);
        end;
    */
}
