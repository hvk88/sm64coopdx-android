-- name: Mario Veloz!
-- description: Mario corre constantemente.

local marioSinFrenos = 50

local function mario_update(m)
    --Evita que Mario se agache o se quede inactivo
    if m.action == ACT_IDLE or m.action == ACT_CROUCHING then
        set_mario_action(m, ACT_WALKING, 0)
    end

    -- Asegura que Mario se mueva a una velocidad mayor o igual a marioSinFrenos
    m.forwardVel = math.max(m.forwardVel,marioSinFrenos)
end

-- hooks --
hook_event(HOOK_MARIO_UPDATE, mario_update
