<div align=center>
  <div width=500px>
    <img width=400px src="https://raw.githubusercontent.com/XenoUndefined/Jelestial-Reborn/refs/heads/main/JelestialNew.png">
  </div>
  <h1>Defeat your opponents with just a single click.</h1>
</div>
<h2>Usage</h2>
<pre><code class="language-lua">
if not isfolder("JelestialRework") then
    makefolder("JelestialRework")
end

if not isfile("JelestialRework/setup.lua") then
    writefile("JelestialRework/setup.lua", game:HttpGet("https://raw.githubusercontent.com/XenoUndefined/Jelestial-Reborn/refs/heads/main/FullJelistialReworkSetup.lua", true))
end

if isfile("JelestialRework/setup.lua") then
    loadstring(readfile("JelestialRework/setup.lua"))()
end
</code></pre>
