# hsselite
api for hsselite.com ip info site
# Example
```nim
import asyncdispatch, hsselite, json

let data = waitFor my_ip()
echo data["city"].getStr()
echo data["continent_code"].getStr()
echo data["country_name"].getStr()
echo data["ip"].getStr()
echo data["isp"].getStr()
echo data["latitude"]
echo data["longitude"]
echo data["region"].getStr()
```

# Launch (your script)
```
nim c -d:ssl -r  your_app.nim
```
