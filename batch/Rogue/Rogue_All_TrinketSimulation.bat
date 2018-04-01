setlocal enabledelayedexpansion
cd %~dp0\..\..

set fightstyle=%~1
@if "%~1"=="" set fightstyle="1T"

REM T21
TrinketSimulation.rb Rogue T21_Rogue_Assassination-Mantle+Bracers Melee_Agility %fightstyle% q
TrinketSimulation.rb Rogue T21_Rogue_Assassination-Boots+Bracers Melee_Agility %fightstyle% q
TrinketSimulation.rb Rogue T21_Rogue_Assassination-T21_4+T20_2_Bracers+Boots Melee_Agility %fightstyle% q
TrinketSimulation.rb Rogue T21_Rogue_Assassination_Exsg Melee_Agility %fightstyle% q
TrinketSimulation.rb Rogue T21_Rogue_Outlaw Melee_Agility %fightstyle% q
TrinketSimulation.rb Rogue T21_Rogue_Outlaw_SnD Melee_Agility %fightstyle% q
TrinketSimulation.rb Rogue T21_Rogue_Subtlety Melee_Agility %fightstyle% q
TrinketSimulation.rb Rogue T21_Rogue_Subtlety_DfA-Mantle+Hands Melee_Agility %fightstyle% q
TrinketSimulation.rb Rogue T21_Rogue_Subtlety_DfA-Soul+Insignia Melee_Agility %fightstyle% q

REM T20
TrinketSimulation.rb Rogue T20_Rogue_Assassination Melee_Agility %fightstyle% q
TrinketSimulation.rb Rogue T20_Rogue_Assassination_Exsg Melee_Agility %fightstyle% q
TrinketSimulation.rb Rogue T20_Rogue_Outlaw Melee_Agility %fightstyle% q
TrinketSimulation.rb Rogue T20_Rogue_Outlaw_SnD Melee_Agility %fightstyle% q
TrinketSimulation.rb Rogue T20_Rogue_Subtlety Melee_Agility %fightstyle% q
TrinketSimulation.rb Rogue T20_Rogue_Subtlety_DfA Melee_Agility %fightstyle% q

REM T19
TrinketSimulation.rb Rogue T19_Rogue_Assassination Melee_Agility %fightstyle% q
TrinketSimulation.rb Rogue T19_Rogue_Outlaw Melee_Agility %fightstyle% q
TrinketSimulation.rb Rogue T19_Rogue_Subtlety Melee_Agility %fightstyle% q

@if "%~2"=="nopause" goto finish
@pause
:finish
