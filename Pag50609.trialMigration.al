// page 50609 trialMigration
// {
//     ApplicationArea = All;
//     Caption = 'trialMigration';
//     PageType = NavigatePage;
//     SourceTable = "Data Migrator Registration";

//     layout
//     {
//         area(content)
//         {
//             group(Control56)
//             {
//                 ShowCaption = false;
//                 Visible = ChooseSourceVisible;
//                 group("Choose your data source")
//                 {
//                     Caption = 'Choose your data source';
//                     InstructionalText = 'Which finance app do you want to migrate data from?';
//                     field(Description; Description)
//                     {
//                         ApplicationArea = Basic, Suite;
//                         ShowCaption = false;
//                         TableRelation = "Data Migrator Registration".Description;

//                         trigger OnLookup(var Text: Text): Boolean
//                         begin
//                             if PAGE.RunModal(PAGE::"Data Migrators", Rec) = ACTION::LookupOK then begin
//                                 Text := Description;
//                                 Clear(DataMigrationSettingsVisible);
//                                 OnHasSettings(DataMigrationSettingsVisible);
//                                 exit;
//                             end;
//                         end;
//                     }
//                 }
//             }
//         }
//     }
// }
