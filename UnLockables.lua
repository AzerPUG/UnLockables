if AZP == nil then AZP = {} end
if AZP.VersionControl == nil then AZP.VersionControl = {} end

AZP.VersionControl["UnLockables"] = 5
if AZP.UnLockables == nil then AZP.UnLockables = {} end

local QLines = AZP.UnLockables.QLines
local Tabs = {}

local QuestsProgressFrame
local UnLockablesMainFrame, UpdateFrame

function AZP.UnLockables:OnLoadBoth()
    QuestFrameCompleteQuestButton:HookScript("OnClick", function(...)
        C_Timer.After(1, function() AZP.UnLockables:UpdateQuests() end)
    end)

    QuestFrameAcceptButton:HookScript("OnClick", function(...)
        C_Timer.After(1, function() AZP.UnLockables:UpdateQuests() end)
    end)

    Tabs["Achievements"] = CreateFrame("Button", nil, UnLockablesMainFrame, "BackdropTemplate")
    Tabs["Achievements"].contentText = Tabs["Achievements"]:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    Tabs["Achievements"].contentText:SetText("Achies")
    Tabs["Achievements"].contentText:SetTextColor(0.75, 0.75, 0.75, 1)
    Tabs["Achievements"]:SetWidth("40")
    Tabs["Achievements"]:SetHeight("20")
    Tabs["Achievements"].contentText:SetWidth(Tabs["Achievements"]:GetWidth())
    Tabs["Achievements"].contentText:SetHeight(Tabs["Achievements"]:GetHeight())
    Tabs["Achievements"]:SetPoint("TOPLEFT", UnLockablesMainFrame, "TOPLEFT", 2, 2);
    Tabs["Achievements"].contentText:SetPoint("CENTER", 0, -1)
    Tabs["Achievements"]:SetBackdrop({
        bgFile = "Interface/Tooltips/UI-Tooltip-Background",
        edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
        edgeSize = 8,
        insets = { left = 1, right = 1, top = 1, bottom = 1 },
    })
    Tabs["Achievements"]:SetBackdropColor(0.75, 0.75, 0.75, 1)
    Tabs["Achievements"]:SetScript("OnClick", function() AZP.UnLockables:ShowContent(AZP.UnLockables.QLines.Achievements) end )
    AZP.UnLockables:ShowContent(AZP.UnLockables.QLines.Achievements)
end

function AZP.UnLockables:OnLoadCore()
    UnLockablesMainFrame = AZP.Core.AddOns.UL.MainFrame
    AZP.UnLockables:OnLoadBoth()

    local EventFrame = CreateFrame("Frame")
    EventFrame:SetScript("OnEvent", function(...) AZP.UnLockables:OnEvent(...) end)
    EventFrame:RegisterEvent("GROUP_ROSTER_UPDATE")
    EventFrame:RegisterEvent("CHAT_MSG_ADDON")
    EventFrame:RegisterEvent("VARIABLES_LOADED")

    UpdateFrame = CreateFrame("Frame", nil, UIParent, "BackdropTemplate")
    UpdateFrame:SetPoint("CENTER", 0, 250)
    UpdateFrame:SetSize(400, 200)
    UpdateFrame:SetBackdrop({
        bgFile = "Interface/Tooltips/UI-Tooltip-Background",
        edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
        edgeSize = 12,
        insets = { left = 1, right = 1, top = 1, bottom = 1 },
    })
    UpdateFrame:SetBackdropColor(0.25, 0.25, 0.25, 0.80)
    UpdateFrame.header = UpdateFrame:CreateFontString("UpdateFrame", "ARTWORK", "GameFontNormalHuge")
    UpdateFrame.header:SetPoint("TOP", 0, -10)
    UpdateFrame.header:SetText("|cFFFF0000AzerPUG Mana Management is out of date!|r")

    UpdateFrame.text = UpdateFrame:CreateFontString("UpdateFrame", "ARTWORK", "GameFontNormalLarge")
    UpdateFrame.text:SetPoint("TOP", 0, -40)
    UpdateFrame.text:SetText("Error!")

    UpdateFrame:Hide()

    local UpdateFrameCloseButton = CreateFrame("Button", nil, UpdateFrame, "UIPanelCloseButton")
    UpdateFrameCloseButton:SetWidth(25)
    UpdateFrameCloseButton:SetHeight(25)
    UpdateFrameCloseButton:SetPoint("TOPRIGHT", UpdateFrame, "TOPRIGHT", 2, 2)
    UpdateFrameCloseButton:SetScript("OnClick", function() UpdateFrame:Hide() end )
end

function AZP.UnLockables:OnLoadSelf()
    UnLockablesMainFrame = AZP.UnLockables:CreateSelfMainFrame()
    AZP.UnLockables:OnLoadBoth()
end

function AZP.UnLockables:CreateSelfMainFrame()
    local UnLockablesSelfFrame = CreateFrame("Button", nil, UIParent, "BackdropTemplate")
    UnLockablesSelfFrame:SetSize(110, 65)
    UnLockablesSelfFrame:SetPoint("CENTER", 0, 0)
    UnLockablesSelfFrame:SetScript("OnDragStart", UnLockablesSelfFrame.StartMoving)
    UnLockablesSelfFrame:SetScript("OnDragStop", function()
        UnLockablesSelfFrame:StopMovingOrSizing()
        AZP.UnLockables:SaveMainFrameLocation()
    end)
    UnLockablesSelfFrame:RegisterForDrag("LeftButton")
    UnLockablesSelfFrame:EnableMouse(true)
    UnLockablesSelfFrame:SetMovable(true)
    UnLockablesSelfFrame:SetBackdrop({
        bgFile = "Interface/Tooltips/UI-Tooltip-Background",
        edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
        edgeSize = 12,
        insets = { left = 1, right = 1, top = 1, bottom = 1 },
    })
    UnLockablesSelfFrame:SetBackdropColor(0.5, 0.5, 0.5, 0.75)

    local IUAddonFrameCloseButton = CreateFrame("Button", nil, UnLockablesSelfFrame, "UIPanelCloseButton")
    IUAddonFrameCloseButton:SetSize(20, 21)
    IUAddonFrameCloseButton:SetPoint("TOPRIGHT", UnLockablesSelfFrame, "TOPRIGHT", 2, 2)
    IUAddonFrameCloseButton:SetScript("OnClick", function() AZP.UnLockables:ShowHideFrame() end )
    return UnLockablesSelfFrame
end

function AZP.UnLockables:ShowContent(Content)
    if QuestsProgressFrame ~= nil then
        QuestsProgressFrame:Hide()
        QuestsProgressFrame:SetParent(nil)
        QuestsProgressFrame = nil
    end
    QuestsProgressFrame = CreateFrame("FRAME", "QuestsProgressFrame", UnLockablesMainFrame)
    QuestsProgressFrame:SetPoint("TOP", 0, 0)
    QuestsProgressFrame:SetSize(UnLockablesMainFrame:GetWidth(), UnLockablesMainFrame:GetHeight())
    local Index = 1
    for ID, Quest in pairs(Content) do
        AZP.UnLockables:CreateQuestFrame(Index, Quest)
        Index = Index + 1
        UnLockablesMainFrame:SetSize(UnLockablesMainFrame:GetWidth(), 20 * Index + 25)
        GameUtilityAddonFrame:SetSize(UnLockablesMainFrame:GetWidth(), UnLockablesMainFrame:GetHeight() + 36)
    end
end

function AZP.UnLockables:CreateQuestFrame(Index, Item)
    local QuestFrame = CreateFrame("Button", nil, QuestsProgressFrame)
    QuestFrame:SetPoint("TOP", 10, -20 * Index)
    QuestFrame:SetSize(QuestsProgressFrame:GetWidth(), 20)
    QuestFrame.contentText = QuestFrame:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
    QuestFrame.contentText:SetPoint("LEFT", 0, 0)
    QuestFrame.contentText:SetSize(QuestFrame:GetWidth(), QuestFrame:GetHeight())
    QuestFrame.contentText:SetJustifyH("LEFT")
    local Color
    local ItemName
    if Item.Type == "Q" then
        ItemName = Item.QuestName
        if C_QuestLog.IsQuestFlaggedCompleted(Item.QuestID) == true then
            Color = "FF00FF00"
        elseif C_QuestLog.IsOnQuest(Item.QuestID) == true then
            Color = "FFFFFF00"
        else
            Color = "FFFF0000"
        end
    elseif Item.Type == "L" then
        ItemName = Item.LineName
        QuestFrame:SetScript("OnClick", function ()
            AZP.UnLockables:ShowContent(AZP.UnLockables:GetSubsetFromCollection(Item.Quests, QLines.Quests))
        end)
    elseif Item.Type == "A" then
        ItemName = Item.AchieName
        _, _, _, AchieCompleted = GetAchievementInfo(Item.AchieID)
        if AchieCompleted == true then
            Color = "FF00FF00"
        else
            Color = "FFFF0000"
        end
        QuestFrame:SetScript("OnClick", function ()
            if Item.AchieType == "Quests" then
                AZP.UnLockables:ShowContent(AZP.UnLockables:GetSubsetFromCollection(Item.Quests, QLines.Quests))
            elseif Item.AchieType == "QuestLines" then
                AZP.UnLockables:ShowContent(AZP.UnLockables:GetSubsetFromCollection(Item.QuestLines, QLines.Lines))
            end
        end)
    end
    QuestFrame.contentText:SetText("\124c" .. Color .. ItemName .. "\124r\n")
end

function AZP.UnLockables:GetSubsetFromCollection(IDs, Collection)
    local Results = {}
    for _,ID in ipairs(IDs) do
        table.insert(Results, Collection[ID])
    end
    return Results
end

function AZP.UnLockables:ShareVersion()
    local versionString = string.format("|UL:%d|", AZP.VersionControl["UnLockables"])
    if UnitInBattleground("player") ~= nil then
        -- BG stuff?
    else
        if IsInGroup() then
            if IsInRaid() then
                C_ChatInfo.SendAddonMessage("AZPVERSIONS", versionString ,"RAID", 1)
            else
                C_ChatInfo.SendAddonMessage("AZPVERSIONS", versionString ,"PARTY", 1)
            end
        end
        if IsInGuild() then
            C_ChatInfo.SendAddonMessage("AZPVERSIONS", versionString ,"GUILD", 1)
        end
    end
end

function AZP.UnLockables:eventChatMsgAddon(...)
    local prefix, payload, _, sender = ...
    if prefix == "AZPVERSIONS" then
        local version = AZP.UnLockables:GetSpecificAddonVersion(payload, "UL")
        if version ~= nil then
            AZP.UnLockables:ReceiveVersion(version)
        end
    end
end

function AZP.UnLockables:eventGroupRosterUpdate(...)
    AZP.UnLockables:ShareVersion()
end


function AZP.UnLockables:ReceiveVersion()

end

function AZP.UnLockables:OnEvent(self, event, ...)
    if event == "GROUP_ROSTER_UPDATE" then
        AZP.ManaManagement:eventGroupRosterUpdate(...)
    elseif event == "CHAT_MSG_ADDON" then
        AZP.ManaManagement:eventChatMsgAddon(...)
    end
end