RegisterCommand("emote", function(source, args, rawCommand)
    if args[1] ~= nil then
        TriggerClientEvent("emote:invoke", source, args[1])
    else
        TriggerClientEvent("chatMessage", source, "ERROR", {255,0,0}, "^7Use \"^3/emotes^7\" to display all of the emotes")
    end
end, false)
RegisterCommand("emotes", function(source, args, rawCommand)
    TriggerClientEvent("emote:display", source)
end)
RegisterCommand("cancelemote", function(source, args, rawCommand)
    TriggerClientEvent("emote:cancelnow", source)
end)