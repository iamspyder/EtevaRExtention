// page 50602 FakeAPI
// {
//     ApplicationArea = All;
//     Caption = 'FakeAPI';
//     PageType = Card;
//     UsageCategory = Administration;


//     layout
//     {
//         area(content)
//         {
//             group(General)
//             {
//                 field(IP; GetIP())
//                 {
//                     // DataClassification = ToBeClassified;
//                     Caption = 'FakeAPI';
//                 }

//             }
//         }
//     }

//     procedure GetIP(): Text
//     Var
//         Client: HttpClient;
//         Responce: HttpResponseMessage;
//         j: JsonObject;
//         Respontxt: Text;


//     begin

//         if Client.Get('https://jsonplaceholder.typicode.com/comments?id=1', Responce) then
//             if Responce.IsSuccessStatusCode() then begin
//                 Responce.Content().ReadAs(Respontxt);
//                 j.ReadFrom(Respontxt);
//                 exit(GetJsontextField(j, 'id'));

//             end;


//     end;


//     procedure GetJsontextField(O: JsonObject; Member: Text): Text
//     var
//         Result: JsonToken;
//     begin
//         if O.Get(Member, Result) then
//             exit(Result.AsValue().AsText());
//     end;

// }
