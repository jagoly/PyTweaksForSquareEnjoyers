-- Py Tweaks by jagoly

data:extend({
    ---@type data.ModIntSettingPrototype
    {
        type = "int-setting",
        name = "py-tfse-ze1-connection-distance",
        order = "aa",
        setting_type = "startup",
        default_value = 72,
        minimum_value = 8,
        maximum_value = 72,
    },
    ---@type data.ModIntSettingPrototype
    {
        type = "int-setting",
        name = "py-tfse-ze2-connection-distance",
        order = "ab",
        setting_type = "startup",
        default_value = 96,
        minimum_value = 8,
        maximum_value = 96,
    },
    ---@type data.ModIntSettingPrototype
    {
        type = "int-setting",
        name = "py-tfse-ze3-connection-distance",
        order = "ac",
        setting_type = "startup",
        default_value = 120,
        minimum_value = 8,
        maximum_value = 120,
    },
})
