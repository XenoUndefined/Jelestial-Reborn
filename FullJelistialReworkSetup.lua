local function fullProccess()
    
    -- IF YOU ENCOUNTER AN ERROR OR JELESTIAL HAS DONE SOMETHING BAD. PLEASE DELETE THE "JelestialRework" FOLDER IN YOUR EXECUTORS WORKSPACE AND THEN RUN JELESTIAL REWORK AGAIN.

    if isfolder("JelestialRework/LibrarySetup.lua") then
        delfolder("JelestialRework/LibrarySetup.lua")
    end
    
    if not isfolder("JelestialRework/log") then
        makefolder("JelestialRework/log")
    end
    
    local folderchoose = math.random(1,100000000)
    
    makefolder("JelestialRework/log/" .. folderchoose)
    
    writefile("JelestialRework/log/" .. folderchoose .. "/game.txt", "username: " .. game.Players.LocalPlayer.Name .. ", game id: " .. game.PlaceId)
    
    writefile("JelestialRework/log/" .. folderchoose .. "/jelestialversion.txt", "Unknown") -- not implemented yet

end

local function InitiateSetup(trueorfalse)
    if trueorfalse == true then
        if not isfolder("JelestialRework") then
            makefolder("JelestialRework")
        end
        
        if not isfile("JelestialRework/LibrarySetup.lua") then
            writefile("JelestialRework/LibrarySetup.lua", game:HttpGet("https://raw.githubusercontent.com/XenoUndefined/Jelestial-Reborn/refs/heads/main/UILibrarySetup.lua", true))
        end
        
        repeat
            wait(0.01)
        until(isfile("JelestialRework/LibrarySetup.lua"))
        
        loadstring(readfile("JelestialRework/LibrarySetup.lua"))()
    end
end

InitiateSetup(true)

wait(0.1)

local PROCCESS_SUC, PROCCESS_RES = pcall(fullProccess)

if PROCCESS_SUC then
    print("Done proccess with absolutely zero errors")
else
    error("Couldn't initiate proccess: " .. PROCCESS_RES)
end
