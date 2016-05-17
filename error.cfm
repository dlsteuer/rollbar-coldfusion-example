<cfdump var="#error#">

<cfset stFields ={
  "access_token": "POST_SERVER_ITEM_ACCESS_TOKEN",
  "data": {
    "environment": "coldfusion",
    "body": {
      "message": {
        "body": "Hello, world!"
      }
    }
  }
}>   

<cfhttp url="https://api.rollbar.com/api/1/item/" method="post" result="httpResp" timeout="60">
    <cfhttpparam type="header" name="Content-Type" value="application/json" />
    <cfhttpparam type="body" value="#serializeJSON(stFields)#">
</cfhttp>