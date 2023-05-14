table 50103 NoSeriesSetup
{
    Caption = 'Nutritional No. Series Setup';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Kód';
            DataClassification = CustomerContent;
        }
        field(2; "Nutrient Nos."; Code[20])
        {
            Caption = 'Tápanyagok számozása';
            DataClassification = CustomerContent;
            TableRelation = "No. Series".Code;
        }
    }
    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
    }
}
