# Assignment for ERP II. in Uni Sopron
####(2022/2023 Spring Semester)

The project is an extension for Business Central written in C/AL language.

## Tables
- Macronutrients

| Code | Description | Protein | Fat | Carbohydrate | Unit | KJ | Kcal
| ----------- | ----------- | ----------- | ----------- | ----------- | ----------- | ----------- | ----------- |
| AZab | Apró szemű zab | 50 | 5 | 55 | Gram | 200 | 30 |
| NZab | Nagy szemű zab | 10 | 3 | 4 | Gram | 20 | 30 |

- Nutrition Header
- Nutrition Line
- Posted Nutrition Header
- Posted Nutrition Line
- No Series Setup (for adding Nutritional No.-s to (Posted) Nutrition Orders automatically)

## Pages
- Macronutrients (List Page, which shows all macronutrients)
- Macronutrient (Card Page for showing and editing only one macronutrient)
- Nutrition Orders (List Page, shows all Nutrition Orders)
- Nutrition Order (Document Page, show only one nutrition order)
- Nutrition Order Subform (List Part page, for showing the Nutrition Lines in Nutrition Order Document Page)
- Posted Nutrition Orders (List Page, shows all Posted Nutrition Orders)
- Posted Nutrition Order (Document Page, show only one Posted Nutrition Order)
- Posted Nutrition Order Subform (List Part page, for showing the Posted Nutrition Lines in Posted Nutrition Order Document Page)
- No Series Setup (Card Page for choosing the code for (Posted) Nutritional Orders. This code should be added to No. Series Page)

Also, Codeunits, Enum, Report and XmlPort were used.