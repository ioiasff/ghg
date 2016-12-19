function run(msg, matches)
local url , res = http.request('http://api.khabarfarsi.net/api/news/latest/1?tid=*&output=json')
if res ~= 200 then return "No connection" end
local jdat = json:decode(url)
local text = '📰عنوان : '..jdat.items[1].title..'\n🔗لینک : '..jdat.items[1].link..'\n\n📰عنوان : '..jdat.items[2].title..'\n🔗لینک : '..jdat.items[2].link
return text
end
return {
  patterns = {"^[/!](news)$"},
run = run 
}
