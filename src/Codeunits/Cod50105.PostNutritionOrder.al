codeunit 50105 "Post Nutrition Order"
{
    procedure Post(var NutritionHeader: Record NutritionHeader)
    var
        NutritionLine: Record NutritionLine;
        PostedNutritionHeader: Record "Posted Nutrition Header";
        PostedNutritionLine: Record "Posted Nutrition Line";
        NoSetup: Record NoSeriesSetup;
        NoSeriesMgt: Codeunit NoSeriesManagement;
        DeleteQuestion: Label 'Törli a rendelést a könyvelés végeztével?';
        ExitMessage: Label 'Sikeresen könyvelve';
        ShouldBeDeleted: Boolean;

    begin
        NutritionHeader.TestField(Status, NutritionHeader.Status::Closed);

        if Confirm(DeleteQuestion) then
            ShouldBeDeleted := true
        else
            ShouldBeDeleted := false;

        PostedNutritionHeader.Init();
        PostedNutritionHeader.TransferFields(NutritionHeader);
        NoSetup.Get();
        PostedNutritionHeader."Nutritional No." := NoSeriesMgt.GetNextNo(NoSetup."Posted Nutrient Nos.", Today, true);
        PostedNutritionHeader.Insert(true);

        NutritionLine.Reset();
        NutritionLine.SetRange("Nutritional No.", NutritionHeader."Nutritional No.");

        if NutritionLine.findSet() then
            repeat
                PostedNutritionLine.Init();
                PostedNutritionLine.TransferFields(NutritionLine);
                PostedNutritionLine."Nutritional No." := PostedNutritionHeader."Nutritional No.";
                PostedNutritionLine.Insert(true);

                if ShouldBeDeleted then
                    NutritionLine.Delete();
            until NutritionLine.Next() = 0;

        if ShouldBeDeleted then
            NutritionHeader.Delete();

        Commit();
        Message(ExitMessage);
        Page.RunModal(Page::"Posted Nutrition Order", PostedNutritionHeader);
    end;
}
