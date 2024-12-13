-- name: Cambia Nivel de agua
-- description: Usa /waterset y /waterget para manipular el agua.

local function on_get_command(msg)
    if not network_is_server() then
        djui_chat_message_create("Necesitas ser el Host!")
        return true
    end

    djui_chat_message_create(tostring(get_water_level(0)))
    djui_chat_message_create(tostring(get_water_level(1)))
    return true
end

local function on_set_command(msg)
    if not network_is_server() then
        djui_chat_message_create("Necesitas ser el Host!")
        return true
    end

    local num = tonumber(msg)
    if not num then
        djui_chat_message_create("No es Numero!")
        return true
    end

    set_water_level(0, num, true)
    set_water_level(1, num, true)
    return true
end

hook_chat_command("waterset", "Configurar los dos primeros niveles de agua", on_set_command)
hook_chat_command("waterget", "para obtener los dos primeros niveles de agua", on_get_command
