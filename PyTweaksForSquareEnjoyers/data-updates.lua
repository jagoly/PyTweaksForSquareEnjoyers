-- Py Tweaks by jagoly

--------------------------------------------------------------------------------

local rp_01 = data.raw["roboport"]["py-roboport-mk01"]
local rp_02 = data.raw["roboport"]["py-roboport-mk02"]
local rp_03 = data.raw["roboport"]["py-roboport-mk03"]

local ze_01 = data.raw["roboport"]["py-ze"]
local ze_02 = data.raw["roboport"]["py-ze-mk02"]
local ze_03 = data.raw["roboport"]["py-ze-mk03"]

rp_01.logistics_radius = 32
rp_02.logistics_radius = 56
rp_03.logistics_radius = 80

rp_01.construction_radius = 48
rp_02.construction_radius = 72
rp_03.construction_radius = 96

ze_01.construction_radius = 72
ze_01.logistics_connection_distance = 72
ze_02.construction_radius = 96
ze_02.logistics_connection_distance = 96
ze_03.construction_radius = 120
ze_03.logistics_connection_distance = 120

rp_01.energy_usage = "50kW"
rp_02.energy_usage = "150kW"
rp_03.energy_usage = "500kW"

ze_01.energy_usage = "50kW"
ze_02.energy_usage = "150kW"
ze_03.energy_usage = "500kW"

rp_01.energy_source.input_flow_limit = "2MW"
rp_01.energy_source.buffer_capacity = "200MJ"
rp_02.energy_source.input_flow_limit = "3MW"
rp_02.energy_source.buffer_capacity = "300MJ"
rp_03.energy_source.input_flow_limit = "6MW"
rp_03.energy_source.buffer_capacity = "600MJ"

ze_01.energy_source.input_flow_limit = "1MW"
ze_01.energy_source.buffer_capacity = "100MJ"
ze_02.energy_source.input_flow_limit = "2MW"
ze_02.energy_source.buffer_capacity = "200MJ"
ze_03.energy_source.input_flow_limit = "4MW"
ze_03.energy_source.buffer_capacity = "400MJ"

rp_01.recharge_minimum = "20MJ"
rp_02.recharge_minimum = "30MJ"
rp_03.recharge_minimum = "60MJ"

ze_01.recharge_minimum = "10MJ"
ze_02.recharge_minimum = "20MJ"
ze_03.recharge_minimum = "40MJ"

rp_01.charging_energy = "300kW"
rp_02.charging_energy = "400kW"
rp_03.charging_energy = "800kW"

ze_01.charging_energy = "600kW"
ze_02.charging_energy = "1200kW"
ze_03.charging_energy = "2400kW"

--------------------------------------------------------------------------------

local ze_04 = data.raw["roboport"]["py-ze-mk04"]

ze_02.base_animation.layers = table.deepcopy(ze_03.base_animation.layers)
ze_03.base_animation.layers = table.deepcopy(ze_04.base_animation.layers)

for _, layer in pairs(ze_01.base_animation.layers) do
    layer.shift[1] = layer.shift[1] * 0.7
    layer.shift[2] = layer.shift[2] * 0.7
    layer.scale = 0.7
end

for _, layer in pairs(ze_03.base_animation.layers) do
    layer.shift[1] = layer.shift[1] * 1.2
    layer.shift[2] = layer.shift[2] * 1.2
    layer.scale = 1.2
end

ze_01.collision_box = { { -0.9, -0.9 }, { 0.9, 0.9 } }
ze_01.selection_box = { { -1.0, -1.0 }, { 1.0, 1.0 } }

ze_02.collision_box = { { -1.9, -1.9 }, { 1.9, 1.9 } }
ze_02.selection_box = { { -2.0, -2.0 }, { 2.0, 2.0 } }

ze_03.collision_box = { { -2.9, -2.9 }, { 2.9, 2.9 } }
ze_03.selection_box = { { -3.0, -3.0 }, { 3.0, 3.0 } }

--------------------------------------------------------------------------------

local ze_04_item = data.raw["item"]["py-ze-mk04"]
local ze_04_recipe = data.raw["recipe"]["py-ze-mk04"]

ze_04.hidden = true
ze_04.hidden_in_factoriopedia = true
ze_04_item.hidden = true
ze_04_item.hidden_in_factoriopedia = true
ze_04_recipe.hidden = true
ze_04_recipe.hidden_in_factoriopedia = true

local rs_01 = data.raw["roboport"]["py-recharge-station-mk01"]
local rs_01_item = data.raw["item"]["py-recharge-station-mk01"]
local rs_01_recipe = data.raw["recipe"]["py-recharge-station-mk01"]

rs_01.hidden = true
rs_01.hidden_in_factoriopedia = true
rs_01_item.hidden = true
rs_01_item.hidden_in_factoriopedia = true
rs_01_recipe.hidden = true
rs_01_recipe.hidden_in_factoriopedia = true
