local L = BigWigs:NewBossLocale("Siege of Boralus Trash", "deDE")
if not L then return end
if L then
	L.cannoneer = "Aschenwindkanonier"
	L.commander = "Aschenwindkommandant"
	L.spotter = "Aschenwindkundschafter"
	L.demolisher = "Verwüster der Bilgeratten"
	L.pillager = "Brandschatzer der Bilgeratten"
	L.tempest = "Orkan der Bilgeratten"
	L.wavetender = "Wellenzähmer von Kul Tiras"
	L.halberd = "Hellebardier von Kul Tiras"
	L.raider = "Eisenfluträuber"
	L.vanguard = "Vorhut von Kul Tiras"
	L.marksman = "Schütze von Kul Tiras"
end

L = BigWigs:NewBossLocale("Sergeant Bainbridge", "deDE")
if L then
	L.remaining = "%s auf %s, %d verbleibend"
	L.remaining_boss = "%s auf BOSS, %d verbleibend"
end

L = BigWigs:NewBossLocale("Chopper Redhook", "deDE")
if L then
	L.remaining = "%s auf %s, %d verbleibend"
	L.remaining_boss = "%s auf BOSS, %d verbleibend"
end

L = BigWigs:NewBossLocale("Viq'Goth", "deDE")
if L then
	L.demolishing_desc = "Warnungen und Timer für das Erscheinen des Verwüstenden Schreckens."
end
