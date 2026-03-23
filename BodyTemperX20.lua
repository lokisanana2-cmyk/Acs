-- Body Tempering x20 Mod
-- Runs when the game starts

function OnGameStart()
    print("Body Tempering x20 mod loaded")

    local multiplier = 20

    local player = CS.XiaWorld.MainPlayer.Instance
    if player == nil then
        return
    end

    local roles = player.AllRoles
    if roles == nil then
        return
    end

    for i, role in pairs(roles) do
        if role.PropertyMgr ~= nil then
            role.PropertyMgr.BodyTemperingSpeed =
                role.PropertyMgr.BodyTemperingSpeed * multiplier
        end
    end
end