local _break = "<br>"
local linestrike = "<hr>"

function color(color, text) return "<font color="..color..">"..text.."</font>" end
function underlined(text) return "<u>"..text.."</u>" end
function bold(text) return "<strong>"..text.."</strong>" end
function small(text) return "<small>"..text.."</small>" end
function strikethrough(text) return "<del>"..text.."</del>" end
function italic(text) return "<i>"..text.."</i>" end
function big(text) return "<big>"..text.."</big>" end

RegisterNetEvent("sy_announce:display")
AddEventHandler("sy_announce:display", function(title, msg, time)
	PlaySoundFrontend(-1, "CHALLENGE_UNLOCKED", "HUD_AWARDS", 1)
	ShowNotify(title, msg, time)
end)


function ShowNotify(title, msg, time)
	if msg ~= nil and msg ~= "" then
		if time == nil then
			time = Config.DefaultFadeOut
		end
	
		if title == nil then
			title = "Notification"
		end

		TriggerEvent('message:show', title, msg)
		Wait(time)
		TriggerEvent('message:hide')
	else
		print("message should not be null")
	end
end	
	

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		if IsControlPressed(0, 177) then --key used to close the announcement
			TriggerEvent('message:hide')
		end
	end
end)	

-- UI Events --

RegisterNetEvent('message:show')
AddEventHandler('message:show', function(title, msg)
	SendNUIMessage({
      type = "message",
      display = true,
	  title = title,
	  message = msg
    })
end)

RegisterNetEvent('message:hide')
AddEventHandler('message:hide', function()
	SendNUIMessage({
      type = "message",
      display = false,
	  title = nil,
	  message = nil
    })
end)
  
AddEventHandler("onResourceStart", function(resource)
	if resource == GetCurrentResourceName() then
		TriggerEvent("message:hide", true)
	end
end)

AddEventHandler("onClientResourceStart", function(resource)
	if (resource == GetCurrentResourceName()) then
		TriggerEvent("message:hide", true)
	else
		return
	end
end)
