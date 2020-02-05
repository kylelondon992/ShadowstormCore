UPDATE npc_spellclick_spells SET cast_flags = 1 WHERE npc_entry = 129540;
-- Skykiller Ballista SAI
SET @ENTRY := 129540;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,8,0,100,0,237548,0,0,0,33,129540,0,0,0,0,0,7,0,0,0,0,0,0,0,"Skykiller Ballista - On Spellhit - Quest Credit ''"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,51,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Skykiller Ballista - On Spellhit - Kill Target");
