local assets = {
    Asset("ATLAS", "images/loyd_plush.xml"),
    Asset("IMAGE", "images/loyd_plush.tex"),
    Asset("ANIM", "anim/loyd_plush.zip")
}

local function create_loyd_plush_entity(...)
    local instance = CreateEntity()

    instance.entity:AddTransform()
    instance.entity:AddAnimState()

    instance.AnimState:SetBank("loyd_plush")
    instance.AnimState:SetBuild("loyd_plush")
    instance.AnimState:PlayAnimation("idle")

    instance:AddComponent("inspectable")
    instance:AddComponent("inventoryitem")
    instance.components.inventoryitem.imagename = "loyd_plush"
    instance.components.inventoryitem.atlasname = "images/loyd_plush.xml"

    instance:AddComponent("stackable")
    instance.components.stackable.maxsize = 1

    return instance
end

return Prefab("loyd_plush", create_loyd_plush_entity, assets)