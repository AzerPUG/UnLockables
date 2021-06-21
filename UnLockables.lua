if AZP == nil then AZP = {} end
if AZP.VersionControl == nil then AZP.VersionControl = {} end

AZP.VersionControl["UnLockables"] = 5
if AZP.UnLockables == nil then AZP.UnLockables = {} end
if AZP.UnLockables.Events == nil then AZP.UnLockables.Events = {} end

local QLines = AGU.QLines
local Tabs = {}

local QuestsProgressFrame

function AZP.UnLockables:OnLoadBoth()
end

function AZP.UnLockables:OnLoadCore()
end

function AZP.UnLockables:OnLoadSelf()
    local defaultCompleteButtonBehaviour = QuestFrameCompleteQuestButton:GetScript("OnClick")
    QuestFrameCompleteQuestButton:SetScript("OnClick", function(...)
        defaultCompleteButtonBehaviour(...)
        --AZPAddonHelper:DelayedExecution(1, function() AZP.UnLockables:UpdateQuests() end)
    end)

    local defaultAcceptButtonBehaviour = QuestFrameAcceptButton:GetScript("OnClick")
    QuestFrameAcceptButton:SetScript("OnClick", function(...)
        defaultAcceptButtonBehaviour(...)
        --AZPAddonHelper:DelayedExecution(1, function() AZP.UnLockables:UpdateQuests() end)
    end)

    Tabs["Achievements"] = CreateFrame("Button", nil, AZP.Core.AddOns.UL.MainFrame, "BackdropTemplate")
    Tabs["Achievements"].contentText = Tabs["Achievements"]:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    Tabs["Achievements"].contentText:SetText("Achies")
    Tabs["Achievements"].contentText:SetTextColor(0.75, 0.75, 0.75, 1)
    Tabs["Achievements"]:SetWidth("40")
    Tabs["Achievements"]:SetHeight("20")
    Tabs["Achievements"].contentText:SetWidth(Tabs["Achievements"]:GetWidth())
    Tabs["Achievements"].contentText:SetHeight(Tabs["Achievements"]:GetHeight())
    Tabs["Achievements"]:SetPoint("TOPLEFT", AZP.Core.AddOns.UL.MainFrame, "TOPLEFT", 2, 2);
    Tabs["Achievements"].contentText:SetPoint("CENTER", 0, -1)
    Tabs["Achievements"]:SetBackdrop({
        bgFile = "Interface/Tooltips/UI-Tooltip-Background",
        edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
        edgeSize = 8,
        insets = { left = 1, right = 1, top = 1, bottom = 1 },
    })
    Tabs["Achievements"]:SetBackdropColor(0.75, 0.75, 0.75, 1)
    Tabs["Achievements"]:SetScript("OnClick", function() AZP.UnLockables:ShowContent(AGU.QLines.Achievements) end )
    AZP.UnLockables:ShowContent(AGU.QLines.Achievements)
end

function AZP.UnLockables:ShowContent(Content)
    if QuestsProgressFrame ~= nil then
        QuestsProgressFrame:Hide()
        QuestsProgressFrame:SetParent(nil)
        QuestsProgressFrame = nil
    end
    QuestsProgressFrame = CreateFrame("FRAME", "QuestsProgressFrame", AZP.Core.AddOns.UL.MainFrame)
    QuestsProgressFrame:SetPoint("TOP", 0, 0)
    QuestsProgressFrame:SetSize(AZP.Core.AddOns.UL.MainFrame:GetWidth(), AZP.Core.AddOns.UL.MainFrame:GetHeight())
    local Index = 1
    for ID, Quest in pairs(Content) do
        AZP.UnLockables:CreateQuestFrame(Index, Quest)
        Index = Index + 1
        AZP.Core.AddOns.UL.MainFrame:SetSize(AZP.Core.AddOns.UL.MainFrame:GetWidth(), 20 * Index + 25)
        GameUtilityAddonFrame:SetSize(AZP.Core.AddOns.UL.MainFrame:GetWidth(), AZP.Core.AddOns.UL.MainFrame:GetHeight() + 36)
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

function AZP.OnEvent:UnLockables(self, event, ...)
    if event == "CHAT_MSG_ADDON" then
        local prefix, payload, _, sender = ...
        if prefix == "AZPVERSIONS" then
            local version = AZP.UnLockables:GetSpecificAddonVersion(payload, "UL")
            if version ~= nil then
                AZP.UnLockables:ReceiveVersion(version)
            end
        end
    end
end