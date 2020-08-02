local function MyAddonCommands(msg, editbox)
    local playerName = UnitName("player")

    print("[".."|cffff0000"..playerName.."|r".."]".." says: "..msg)

    local msg = msg:gsub("(%a)","%1 ")
    local chatmsg = msg:gsub("%a", {["a"] = "Ÿ",["b"] = "€",["c"] = "À",["d"] = "€",["e"] = "2",["f"] = "ä",["g"] = "À",["h"] = "„",["i"] = "3",["j"] = "3",["k"] = "À",["l"] = "ž",["m"] = "Ä",["n"] = "Š",["o"] = "1",["p"] = "€",["q"] = "À",["r"] = "‡",["s"] = "ƒ",["t"] = "ÇÍ",["u"] = "p",["v"] = "ä",["w"] = "◒",["x"] = "À ƒ",["y"] = "3",["z"] = "ƒ"})
    local edited = msg:gsub("%a", {["c"] = "k", ["d"] = "b", ["f"] = "v", ["g"] = "k",["i"] = "y", ["j"] = "y", ["p"] = "b", ["q"] = "k", ["t"] = "th", ["x"] = "k s", ["z"] = "s"})
    
    print("[".."|cffff0000"..playerName.."|r".."]".." says: "..edited)
    SendChatMessage(chatmsg, "SAY", "Common", "")
end

local function MyAddonCommandTest(msg, editbox)
    local playerName = UnitName("player")

    print("[".."|cffff0000"..playerName.."|r".."]".." says: "..msg)

    local msg = msg:gsub("(%a)","%1 ")
    local edited = msg:gsub("%a", {["c"] = "k", ["d"] = "b", ["f"] = "v", ["g"] = "k",["i"] = "y", ["j"] = "y", ["p"] = "b", ["q"] = "k", ["t"] = "th", ["x"] = "k s", ["z"] = "s"})
    
    print("[".."|cffff0000"..playerName.."|r".."]".." says: "..edited)
end
SLASH_TALKIETALK1 = "/h"
SLASH_TALKIETALK_TEST1 = "/ht"
SlashCmdList["TALKIETALK"] = MyAddonCommands
SlashCmdList["TALKIETALK_TEST"] = MyAddonCommandTest