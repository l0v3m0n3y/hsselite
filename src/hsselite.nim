import asyncdispatch, httpclient, json, strutils

const api = "https://www.hsselite.com"
var headers = newHttpHeaders({"Connection": "keep-alive",  "Host": "hsselite.com",  "Content-Type": "application/json",  "accept": "application/json, text/plain, */*", "user-agent":"Mozilla/5.0 (Linux; Android 12; K) Telegram-Android/12.1.1 (Samsung SM-S9210; Android 12; SDK 32; AVERAGE)"})

proc my_ip*(): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  try:
    client.headers = headers
    let response = await client.get(api & "/ipinfo")
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()
