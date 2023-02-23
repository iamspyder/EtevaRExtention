codeunit 50600 APICall
{
    procedure APIConnect()
    var
        myInt: Integer;
        Client: HttpClient;
        Content: HttpContent;
        Response: HttpResponseMessage;
        Request: HttpRequestMessage;
        Result: text;
        Output: Text;
    begin


        // method 1
        Client.Get('https://jsonplaceholder.typicode.com/posts', Response);
        if Response.IsSuccessStatusCode then
            Content := Response.Content
        else
            Message('Negative %1 ,%2', Response.HttpStatusCode, Response.ReasonPhrase);
        Content.ReadAs(Result);
        Message(Result);


        // method 2


        Request.SetRequestUri('https://jsonplaceholder.typicode.com/users');
        Request.Method('Get');
        Client.Send(Request, Response);
        if Response.IsSuccessStatusCode then
            Content := Response.Content
        else
            Message('Negative %1 ,%2', Response.HttpStatusCode, Response.ReasonPhrase);
        Content.ReadAs(Output);
        Message(Output);
    end;


    procedure JsonReadandWrite(var API: Record FakeAPI)
    var
        myInt: Integer;
        Client: HttpClient;
        Content: HttpContent;
        Response: HttpResponseMessage;
        Request: HttpRequestMessage;
        Result: text;
        // token: 
        JObject: JsonObject;
        Newjobject: JsonObject;
        Output: Text;
        jtoken: JsonToken;
        NewJson: JsonToken;
    begin


        // method 1
        Client.Get('https://jsonplaceholder.typicode.com/users/' + Format(API.ID), Response);
        if Response.IsSuccessStatusCode then begin
            Content := Response.Content;
            Content.ReadAs(Result);
            JObject.ReadFrom(Result);
            JObject.Get('name', jtoken);
            API.Name := jtoken.AsValue().AsText();
            JObject.Get('username', jtoken);
            API.UserName := jtoken.AsValue().AsText();
            JObject.Get('email', jtoken);
            API.Email := jtoken.AsValue().AsText();
            JObject.Get('address', jtoken);
            if jtoken.IsObject then begin


                jtoken.WriteTo(Output);
                Newjobject.ReadFrom(Output);
                Newjobject.Get('street', NewJson);
                API.Street := NewJson.AsValue().AsText();
                Newjobject.Get('suite', NewJson);
                API.Suit := NewJson.AsValue().AsText();

            end

            else
                Error('Error Found');

        end
        else
            Message('Negative %1 ,%2', Response.HttpStatusCode, Response.ReasonPhrase);
        Content.ReadAs(Result);
        //    Message(Result);



    end;




}
