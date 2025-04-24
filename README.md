![Jelestial Image](https://raw.githubusercontent.com/XenoUndefined/Jelestial-Reborn/refs/heads/main/JelestialNew.png)


## Usage

You can run the latest version of **Jelistial Rework** below here.

```lua
if not isfolder("JelestialRework") then
    makefolder("JelestialRework")
end

if not isfile("JelestialRework/setup.lua") then
    writefile("JelestialRework/setup.lua", game:HttpGet("https://raw.githubusercontent.com/XenoUndefined/Jelestial-Reborn/refs/heads/main/FullJelistialReworkSetup.lua", true))
end

if isfile("JelestialRework/setup.lua") then
    loadstring(readfile("JelestialRework/setup.lua"))()
end
```

## Version Releases
- 1.0 - nothing new
- 1.1 - some ui changes ( LATEST )
