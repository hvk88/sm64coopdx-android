-- name: Salto Lunar
-- description: Pulsa el boton un rato

local function mario_update(m)
    if (m.controller.buttonDown & A_BUTTON) ~= 0 then --Si el botón A es pulsado
        m.vel.y = 25 --Ajusta la Velocidad de salto
    end
end

-- hooks --
hook_event(HOOK_MARIO_UPDATE, mario_update)
