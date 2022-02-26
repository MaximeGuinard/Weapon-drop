dropweps = 1

dontdrop = {}
dontdrop[1] = "weapon_physgun"
dontdrop[2] = "weapon_physcannon"
dontdrop[3] = "gmod_tool"
dontdrop[4] = "gmod_camera"
dontdrop[5] = "arrest_stick"
dontdrop[6] = "door_ram"
dontdrop[7] = "keys"
dontdrop[8] = "med_kit"
dontdrop[9] = "weaponchecker"
dontdrop[10] = "stunstick"
dontdrop[11] = "unarrest_stick"
dontdrop[12] = "pocket"


function droptheweapon(ply)

	if dropweps == 1 then
	
	droppos = ply:GetPos() + Vector(0, 0, 30)
	
		for k, v in pairs (ply:GetWeapons()) do
		
			loopwep = v:GetClass()
		
			if not table.HasValue(dontdrop, loopwep) then
		
				local dropthiswep = ents.Create(loopwep)
				dropthiswep:SetPos(droppos)
				dropthiswep:Spawn()
		
			end
		
		end
	
	end

end

hook.Add("DoPlayerDeath", "pldrophook", droptheweapon)