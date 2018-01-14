class dummy_settings_ace_medical {
	title = "---------------------- ACE Medical Settings ----------------------";
	values[] = {-99999};
	default = -99999;
	texts[] = {""};
};
class ace_medical_level
{
	title = "ACE Medical Level";
	ACE_setting = 1;
	values[] = {1, 2};
	default = 2;
	texts[] =  {"Basic", "Advanced"};
};
class ace_medical_consumeItem_PAK
{
	title = "ACE Medical Consume Item PAK";
	ACE_setting = 1;
	values[] = {0, 1};
	default = 0;
	texts[] =  {"Disabled", "Enabled"};
};
class ace_medical_enableAdvancedWounds
{
	title = "ACE Medical Enable Advanced Wounds";
	ACE_setting = 1;
	values[] = {0, 1};
	default = 1;
	texts[] =  {"Disabled", "Enabled"};
};
class ace_medical_preventInstaDeath
{
	title = "ACE Medical Prevent Instant Death";
	ACE_setting = 1;
	values[] = {0, 1};
	default = 1;
	texts[] =  {"Instant Death", "No Instant Death"};
};
class ace_medical_enableRevive
{
	title = "ACE Medical Enable Revive";
	ACE_setting = 1;
	values[] = {0, 1, 2};
	default = 1;
	texts[] =  {"Disabled", "Players only", "Players and AI"};
};
class ace_medical_maxReviveTime
{
	title = "ACE Medical Max Revive Time";
	ACE_setting = 1;
	values[] = {60, 180, 300, 600, 900, 1200, 1800, 2700, 3600};
	default = 600;
	texts[] =  {"1 Minute", "3 Minutes", "5 Minutes", "10 Minutes", "15 Minutes", "20 Minutes", "30 Minutes", "45 Minutes", "60 Minutes"};
};
class ace_medical_enableFor
{
	title = "ACE Medical Enable For";
	ACE_setting = 1;
	values[] = {0, 1};
	default = 0;
	texts[] =  {"Players only", "Players and AI"};
};
class ace_medical_enableUnconsciousnessAI
{
	title = "ACE Medical Enable Unconsciousness AI";
	ACE_setting = 1;
	values[] = {0, 1, 2};
	default = 0;
	texts[] =  {"Disabled", "50/50", "Enabled"};
};
class ace_medical_healHitPointAfterAdvBandage
{
	title = "ACE-Medical Heal Hitpoint After Advanced Bandage";
	ACE_setting = 1;
	values[] = {0, 1};
	default = 0;
	texts[] =  {"Disabled", "Enabled"};
};






class dummy_settings_ace_logistics {
	title = "---------------------- ACE Logistics Settings ----------------------";
	values[] = {-99999};
	default = -99999;
	texts[] = {""};
};
class ace_rearm_level
{
	title = "ACE Rearm Amount";
	ACE_setting = 1;
	values[] = {0, 1, 2};
	default = 1;
	texts[] =  {"Entire vehicle", "Entire Magazine", "Amount based on caliber"};
};
class ace_refuel_rate
{
	title = "ACE Refuel rate";
	ACE_setting = 1;
	values[] = {0.1, 0.5, 1, 10, 100};
	default = 1;
	texts[] =  {"Very slow", "Slow", "Normal", "Fast", "Very fast"};
};
class ace_repair_consumeItem_toolKit
{
	title = "ACE Consume ToolKit";
	ACE_setting = 1;
	values[] = {0, 1};
	default = 0;
	texts[] =  {"No", "Yes"};
};








class dummy_settings_ace_game {
	title = "---------------------- ACE Game Settings ----------------------";
	values[] = {-99999};
	default = -99999;
	texts[] = {""};
};
class ace_map_BFT_Enabled
{
	title = "ACE Blue Force Tracker on map";
	ACE_setting = 1;
	values[] = {0, 1};
	default = 0;
	texts[] =  {"Disabled", "Enabled"};
};
class ace_map_BFT_HideAiGroups
{
	title = "ACE Blue Force Tracker Hide AI";
	ACE_setting = 1;
	values[] = {0, 1};
	default = 1;
	texts[] =  {"No", "Yes"};
};
class ace_advanced_fatigue_loadFactor
{
	title = "ACE Fatigue influence of loadout";
	ACE_setting = 1;
	values[] = {0, 0.33, 0.66, 1, 1.33};
	default = 0.66;
	texts[] =  {"None", "Very little", "Less", "Normal", "Heavy"};
};