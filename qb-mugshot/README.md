# qb-mugshot

qb-mugshot is a mugshot system for use with QB servers to allow players to take pictures of suspects and then have them uploaded to a webhook.
<br>
<h1>INSTALLATION GUIDE</h1>

1. Add the qb-mugshot folder into your resources folder
2. Add The Following Line to qb-target>config.lua change the location etc as needed

```lua
-- qb-mugshot
['CQCMugshot'] = {
		name = 'CQCMugshot',
		coords = vector3(-556.26, -132.99, 33.75),
		debugPoly = false,
		length = 0.50,
		width = 0.65,
		heading = 131.24,
		maxZ = 34.30,
		minZ = 33.75,
		options = {
			{
				icon = 'fas fa-camera',
				label = 'Take Suspects Mugshots',
				job = {
					['police'] = 0,
					['sast'] = 0,
				},
				action = function()
					local player, distance = QBCore.Functions.GetClosestPlayer(GetEntityCoords(PlayerPedId()))
                    if player ~= -1 and distance < 2.0 then
                        local playerId = GetPlayerServerId(player)
						TriggerServerEvent('qb-mugshot:server:triggerSuspect', playerId)
					end
				end,
			},
		},
		distance = 2.0,
	},
```
