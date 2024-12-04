return {
    CommandName = 'slap',
    Keybind = 'Z',
    Cooldown = 10 * 1000, -- 10 seconds

    RequireClosePlayer = true,
    ClosePlayerDistance = 2.0,

    Sound = {
        enable = true,
        url = './sounds/slap.ogg',
        volume = 0.85
    },

    Animation = {
        dict = 'melee@unarmed@streamed_variations',
        name = 'plyr_takedown_front_slap'
    }
}