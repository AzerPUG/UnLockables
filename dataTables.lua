if AZP == nil then AZP = {} end
if AZP.UnLockables == nil then AZP.UnLockables = {} end

local StarterType = nil
local StarterID = nil
local StartLoc = nil
local LevelReq = 60

AZP.UnLockables.QLines =    --/dump C_QuestLog.IsQuestFlaggedCompleted(47186)
{
    Quests =
    {
                -- Come Sail Away
                [46727] = {QuestID = 46727, Type = "Q", QuestName = "Tides of War", Level = 10, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [46728] = {QuestID = 46728, Type = "Q", QuestName = "The Nation of Kul Tiras", Level = 10, QuestReqs = {46727}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [51341] = {QuestID = 51341, Type = "Q", QuestName = "Daughter of the Sea", Level = 10, QuestReqs = {46728}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [47098] = {QuestID = 47098, Type = "Q", QuestName = "Out Like Flynn", Level = 10, QuestReqs = {51341}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [47099] = {QuestID = 47099, Type = "Q", QuestName = "Get Your Bearings", Level = 10, QuestReqs = {47098}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [46729] = {QuestID = 46729, Type = "Q", QuestName = "The Old Knight", Level = 10, QuestReqs = {47099}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52128] = {QuestID = 52128, Type = "Q", QuestName = "Ferry Pass", Level = 10, QuestReqs = {46729}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [47186] = {QuestID = 47186, Type = "Q", QuestName = "Sanctum of the Sages", Level = 10, QuestReqs = {52128}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [47189] = {QuestID = 47189, Type = "Q", QuestName = "A Nation Divided", Level = 10, QuestReqs = {47186}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},

                -- Ready for War - Other
                [52654] = {QuestID = 52654, Type = "Q", QuestName = "The War Campaign", Level = 110, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52544] = {QuestID = 52544, Type = "Q", QuestName = "The War Cache", Level = 110, QuestReqs = {52654}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [53332] = {QuestID = 53332, Type = "Q", QuestName = "Time for War", Level = 110, QuestReqs = {52544}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [51714] = {QuestID = 51714, Type = "Q", QuestName = "Mission from the King", Level = 110, QuestReqs = {53332}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [51715] = {QuestID = 51715, Type = "Q", QuestName = "War of Shadows", Level = 110, QuestReqs = {51714}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [53074] = {QuestID = 53074, Type = "Q", QuestName = "Reinforcements", Level = 110, QuestReqs = {51715}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [51569] = {QuestID = 51569, Type = "Q", QuestName = "The Zandalar Campaign", Level = 110, QuestReqs = {53074}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [53061] = {QuestID = 53061, Type = "Q", QuestName = "The Azerite Advantage", Level = 110, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [51903] = {QuestID = 51903, Type = "Q", QuestName = "Island Expedition", Level = 110, QuestReqs = {53061}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [51904] = {QuestID = 51904, Type = "Q", QuestName = "Island Expedition", Level = 110, QuestReqs = {51903}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [53583] = {QuestID = 53583, Type = "Q", QuestName = "Adapting Our Tactics", Level = 110, QuestReqs = {51967 or 51968 or 51969}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [51961] = {QuestID = 51961, Type = "Q", QuestName = "The Ongoing Campaign", Level = 110, QuestReqs = {51967 or 51968 or 51969}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [51918] = {QuestID = 51918, Type = "Q", QuestName = "Uniting Kul Tiras", Level = 110, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52443] = {QuestID = 52443, Type = "Q", QuestName = "The Final Foothold", Level = 110, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},

                -- Nazmir FootHold
                [51571] = {QuestID = 51571, Type = "Q", QuestName = "Foothold: Nazmir", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [51088] = {QuestID = 51088, Type = "Q", QuestName = "Heart of Darkness", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [51129] = {QuestID = 51129, Type = "Q", QuestName = "Dubious Offering", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [51167] = {QuestID = 51167, Type = "Q", QuestName = "Blood of Hir'eek", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [51150] = {QuestID = 51150, Type = "Q", QuestName = "Honoring the Fallen", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [51168] = {QuestID = 51168, Type = "Q", QuestName = "Zealots of Zalamar", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [51169] = {QuestID = 51169, Type = "Q", QuestName = "Flight from the Fall", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [51281] = {QuestID = 51281, Type = "Q", QuestName = "Zul'Nazman", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [51279] = {QuestID = 51279, Type = "Q", QuestName = "Nazmani Cultists", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [51280] = {QuestID = 51280, Type = "Q", QuestName = "Offerings to G'huun", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [51282] = {QuestID = 51282, Type = "Q", QuestName = "Captain Conrad", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [51177] = {QuestID = 51177, Type = "Q", QuestName = "Lessons of the Damned", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52013] = {QuestID = 52013, Type = "Q", QuestName = "Champion: John J. Keeshan", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [51967] = {QuestID = 51967, Type = "Q", QuestName = "Return to Boralus", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},

                -- Vol'Dun Foothold
                [51572] = {QuestID = 51572, Type = "Q", QuestName = "Foothold: Vol'dun", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [51283] = {QuestID = 51283, Type = "Q", QuestName = "Voyage to the West", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [51170] = {QuestID = 51170, Type = "Q", QuestName = "Ooh Rah!", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [51229] = {QuestID = 51229, Type = "Q", QuestName = "Establish a Beachhead", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [51349] = {QuestID = 51349, Type = "Q", QuestName = "Honor Bound", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [51350] = {QuestID = 51350, Type = "Q", QuestName = "Unexpected Aid", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [51351] = {QuestID = 51351, Type = "Q", QuestName = "Poisoned Barbs", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [51366] = {QuestID = 51366, Type = "Q", QuestName = "Antidote Application", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [51369] = {QuestID = 51369, Type = "Q", QuestName = "Friends in Strange Places", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [51391] = {QuestID = 51391, Type = "Q", QuestName = "Defang the Faithless", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [51394] = {QuestID = 51394, Type = "Q", QuestName = "Break the Siege", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [51389] = {QuestID = 51389, Type = "Q", QuestName = "Breaking Free", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [51395] = {QuestID = 51395, Type = "Q", QuestName = "The Keepers' Keys", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [51402] = {QuestID = 51402, Type = "Q", QuestName = "Reporting In", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [51969] = {QuestID = 51969, Type = "Q", QuestName = "Return to Boralus", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},

                -- Zuldazar Foothold
                [51570] = {QuestID = 51308, Type = "Q", QuestName = "Foothold: Zuldazar", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [51308] = {QuestID = 51308, Type = "Q", QuestName = "Zuldazar Foothold", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [51190] = {QuestID = 51190, Type = "Q", QuestName = "Granting a Reprieve", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [51191] = {QuestID = 51191, Type = "Q", QuestName = "Save Them All", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [51192] = {QuestID = 51192, Type = "Q", QuestName = "A Lack of Surplus", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [51193] = {QuestID = 51193, Type = "Q", QuestName = "That One's Mine", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [51201] = {QuestID = 51201, Type = "Q", QuestName = "The Troll's Tale", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [51544] = {QuestID = 51544, Type = "Q", QuestName = "Disarming the Cannons", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [51418] = {QuestID = 51418, Type = "Q", QuestName = "Xibala", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [51331] = {QuestID = 51331, Type = "Q", QuestName = "Mole Machinations", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [51309] = {QuestID = 51309, Type = "Q", QuestName = "Rocks of Ragnaros", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [51359] = {QuestID = 51359, Type = "Q", QuestName = "Fragment of the Firelands", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52003] = {QuestID = 52003, Type = "Q", QuestName = "Champion: Kelsey Steelspark", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [51968] = {QuestID = 51968, Type = "Q", QuestName = "Return to Boralus", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},

                -- Blood on the Sand
                [52026] = {QuestID = 52026, Type = "Q", QuestName = "Overseas Assassination", Level = LevelReq, QuestReqs = {51918}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52027] = {QuestID = 52027, Type = "Q", QuestName = "The Vol'dun Plan", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52028] = {QuestID = 52028, Type = "Q", QuestName = "Comb the Desert", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52029] = {QuestID = 52029, Type = "Q", QuestName = "Dirty Work", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52030] = {QuestID = 52030, Type = "Q", QuestName = "Keep Combing", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52031] = {QuestID = 52031, Type = "Q", QuestName = "Classic Reliquary", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52032] = {QuestID = 52032, Type = "Q", QuestName = "Never Stop Combing", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52034] = {QuestID = 52034, Type = "Q", QuestName = "A Message to the Zandalari", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52035] = {QuestID = 52035, Type = "Q", QuestName = "Improvised Survival", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52036] = {QuestID = 52036, Type = "Q", QuestName = "They Have Alpacas Here", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52038] = {QuestID = 52038, Type = "Q", QuestName = "Splitting Up", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52039] = {QuestID = 52039, Type = "Q", QuestName = "Delayed Deathification", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52040] = {QuestID = 52040, Type = "Q", QuestName = "Full of Arrows", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52041] = {QuestID = 52041, Type = "Q", QuestName = "Report to Wyrmbane", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52042] = {QuestID = 52042, Type = "Q", QuestName = "The Big Boom", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52146] = {QuestID = 52146, Type = "Q", QuestName = "Blood on the Sand", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},

                -- Chasing Darkness
                [53069] = {QuestID = 53069, Type = "Q", QuestName = "Operation: Blood Arrow", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52147] = {QuestID = 52147, Type = "Q", QuestName = "Crippling the Horde", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52150] = {QuestID = 52150, Type = "Q", QuestName = "How to Kill a Dark Ranger", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52156] = {QuestID = 52156, Type = "Q", QuestName = "Tortollans in Distress", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52158] = {QuestID = 52158, Type = "Q", QuestName = "The Savage Hunt", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52170] = {QuestID = 52170, Type = "Q", QuestName = "Ending Areiel", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52171] = {QuestID = 52171, Type = "Q", QuestName = "One Option: Fire", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52172] = {QuestID = 52172, Type = "Q", QuestName = "They Can't Stay Here", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52208] = {QuestID = 52208, Type = "Q", QuestName = "Meeting of the Minds", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52219] = {QuestID = 52219, Type = "Q", QuestName = "Target: Blood Prince Dreven", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},

                -- A Golden Opportunity
                [53070] = {QuestID = 53070, Type = "Q", QuestName = "Operation: Cutpurse", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52154] = {QuestID = 52154, Type = "Q", QuestName = "Our Next Target", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52173] = {QuestID = 52173, Type = "Q", QuestName = "The Void Elves Stand Ready", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52203] = {QuestID = 52203, Type = "Q", QuestName = "Find the Paper Trail", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52204] = {QuestID = 52204, Type = "Q", QuestName = "The Void Solution", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52205] = {QuestID = 52205, Type = "Q", QuestName = "Bilgewater Bonanza Go Boom", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52241] = {QuestID = 52241, Type = "Q", QuestName = "A Greedy Goblin's Paradise", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52247] = {QuestID = 52247, Type = "Q", QuestName = "Chasing Gallywix", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52259] = {QuestID = 52259, Type = "Q", QuestName = "I Take No Pleasure In This", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52260] = {QuestID = 52260, Type = "Q", QuestName = "We Have Him Cornered", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52261] = {QuestID = 52261, Type = "Q", QuestName = "Gallywix Got Away", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},

                -- Blood in the Water
                [53071] = {QuestID = 53071, Type = "Q", QuestName = "Operation: Gryphon's Claw", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52308] = {QuestID = 52308, Type = "Q", QuestName = "Intercepted Orders", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52489] = {QuestID = 52489, Type = "Q", QuestName = "Hunting Blood Prince Dreven", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52490] = {QuestID = 52490, Type = "Q", QuestName = "Behind Enemy Boats", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52491] = {QuestID = 52491, Type = "Q", QuestName = "Broadside Bedlam", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52492] = {QuestID = 52492, Type = "Q", QuestName = "The Wildhammer Specialty", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52493] = {QuestID = 52493, Type = "Q", QuestName = "An Unnatural Crew", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52494] = {QuestID = 52494, Type = "Q", QuestName = "Foul Crystals for Foul People", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52495] = {QuestID = 52495, Type = "Q", QuestName = "Ending the San'layn Threat", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52496] = {QuestID = 52496, Type = "Q", QuestName = "A Clean Escape", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},

                -- The Strike on Zuldazar
                [53072] = {QuestID = 53072, Type = "Q", QuestName = "Operation: Heartstrike", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52473] = {QuestID = 52473, Type = "Q", QuestName = "Bringing Down the Fleet", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52282] = {QuestID = 52282, Type = "Q", QuestName = "How to Sink a Zandalari Battleship", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52281] = {QuestID = 52281, Type = "Q", QuestName = "Under the Cover of Swiftwing", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52283] = {QuestID = 52283, Type = "Q", QuestName = "Sabotaging the Pa'ku", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52284] = {QuestID = 52284, Type = "Q", QuestName = "Ship Logs", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52285] = {QuestID = 52285, Type = "Q", QuestName = "The Enlarged Miniaturized Submarine", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52290] = {QuestID = 52290, Type = "Q", QuestName = "My Enemy's Enemy is My Disguise", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52287] = {QuestID = 52287, Type = "Q", QuestName = "Intelligence Denial", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52288] = {QuestID = 52288, Type = "Q", QuestName = "Void Vacation", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52286] = {QuestID = 52286, Type = "Q", QuestName = "Right Beneath Their Nose", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52289] = {QuestID = 52289, Type = "Q", QuestName = "Victory is Assured", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52291] = {QuestID = 52291, Type = "Q", QuestName = "Victory Was Assured", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52788] = {QuestID = 52788, Type = "Q", QuestName = "Leave None Alive", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52789] = {QuestID = 52789, Type = "Q", QuestName = "Silencing the Advisor", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [52790] = {QuestID = 52790, Type = "Q", QuestName = "An End to the Killing", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
                [53098] = {QuestID = 53098, Type = "Q", QuestName = "Champion: Shandris Feathermoon", Level = LevelReq, QuestReqs = {}, StarterType = StarterType, StarterID = StarterID, StartLoc = StartLoc},
            },
    Achievements =
    {
        [12582] =
        {
            Type = "A",
            AchieID = 12582,
            AchieName = "Come Sail Away",
            AchieType = "Quests", --Quests for performing quests, Meta for more achievements.
            Quests = {46727, 46728, 51341, 47098, 47099, 46729, 52128, 47186, 47189},
        },
        [12510] =
        {
            Type = "A",
            AchieID = 12510,
            AchieName = "Ready for War",
            AchieType = "QuestLines", --Quests for performing quests, QuestLines for breadcrumming quest lines, Meta for more achievements.
            QuestLines = {1, 2, 3, 4, 5, 6, 7, 8},
        }
    },
    Lines =
    {
        [1] =
        {
            Type = "L",
            LineID = 1,
            LineName = "Nazmir Foothold",
            Quests = {51571, 51088, 51129, 51167, 51150, 51168, 51169, 51281, 51279, 51280, 51282, 51177, 52013, 51967}
        },

        [2] =
        {
            Type = "L",
            LineID = 2,
            LineName = "Vol'Dun Foothold",
            Quests = {51572, 51283, 51170, 51229, 51349, 51350, 51351, 51366, 51369, 51391, 51394, 51389, 51395, 51402, 51969}
        },

        [3] =
        {
            Type = "L",
            LineID = 3,
            LineName = "Zuldazar Foothold",
            Quests = {51308, 51308, 51190, 51191, 51192, 51193, 51201, 51544, 51418, 51331, 51309, 51359, 52003, 51968}
        },
        [4] =
        {
            Type = "L",
            LineID = 4,
            LineName = "Blood on the Sand",
            Quests = {52026, 52027, 52028, 52029, 52030, 52031, 52032, 52034, 52035, 52036, 52038, 52039, 52040, 52041, 52042, 52146}
        },
        [5] =
        {
            Type = "L",
            LineID = 5,
            LineName = "Chasing Darkness",
            Quests = {53069, 52147, 52150, 52156, 52158, 52170, 52171, 52172, 52208, 52219}
        },
        [6] =
        {
            Type = "L",
            LineID = 6,
            LineName = "A Golden Opportunity",
            Quests = {53070, 52154, 52173, 52203, 52204, 52205, 52241, 52247, 52259, 52260, 52261}
        },
        [7] =
        {
            Type = "L",
            LineID = 7,
            LineName = "Blood in the Water",
            Quests = {53071, 52308, 52489, 52490, 52491, 52492, 52493, 52494, 52495, 52496}
        },
        [8] =
        {
            Type = "L",
            LineID = 8,
            LineName = "The Strike on Zuldazar",
            Quests = {53072, 52473, 52282, 52281, 52283, 52284, 52285, 52290, 52287, 52288, 52286, 52289, 52291, 52788, 52789, 52790, 53098}
        },
    }
}