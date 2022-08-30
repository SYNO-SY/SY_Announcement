local _break = "<br>"
local linestrike = "<hr>"

function color(color, text) return "<font color="..color..">"..text.."</font>" end
function underlined(text) return "<u>"..text.."</u>" end
function bold(text) return "<strong>"..text.."</strong>" end
function small(text) return "<small>"..text.."</small>" end
function strikethrough(text) return "<del>"..text.."</del>" end
function italic(text) return "<i>"..text.."</i>" end
function big(text) return "<big>"..text.."</big>" end

RegisterCommand("annu", function(source, args)
    local argString = table.concat(args, " ")
    if argString ~= nil then
        TriggerClientEvent('sy_announce:display', -1, 'ANNOUNCEMENT',  argString, 10000)
    end
end, true)

Citizen.CreateThread(function()
	if (GetCurrentResourceName() ~= "SY_Announcement") then 
		print("[" .. GetCurrentResourceName() .. "] " .. "IMPORTANT: This resource must be named SY_Announcement for it to work properly!");
	end
end)
