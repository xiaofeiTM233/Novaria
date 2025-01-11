
Ö
ServerAgent.proto"a
ServerAgent
name (	Rname
addr (	Raddr
status (Rstatus
zone (RzoneB™Pbbproto3
à
ServerListMeta.protoServerAgent.proto"Õ
ServerListMeta
version (Rversion"
agent (2.ServerAgentRagent
status (Rstatus
message (	Rmessage"
announcement (	Rannouncement'
report_endpoint (	RreportEndpointB™Pbbproto3
v
FileDiff.proto"U
FileDiff
	file_name (	RfileName
hash (	Rhash
version (RversionB™Pbbproto3
^
ClientDiff.protoFileDiff.proto"+

ClientDiff
diff (2	.FileDiffRdiffB™Pbbproto3
ì
Achievement.proto"Â
Achievement
id (Rid

achieve_id (R	achieveId
title (	Rtitle
desc (	Rdesc
rarity (Rrarity
type (Rtype
hide (Rhide
jump_to (RjumpTo#
complete_cond	 (RcompleteCond0
complete_cond_client
 (RcompleteCondClient 
aim_num_show (R
aimNumShow$
prerequisites (Rprerequisites

level_type (R	levelType6
client_complete_params1 (RclientCompleteParams16
client_complete_params2 (RclientCompleteParams2
tid1 (Rtid1
qty1 (Rqty1
tid2 (Rtid2
qty2 (Rqty2
tid3 (Rtid3
qty3 (Rqty3B™Nova.Clientbproto3
{
table_Achievement.protoAchievement.proto"5
table_Achievement 
list (2.AchievementRlistB™Nova.Clientbproto3
õ
Activity.proto"
Activity
id (Rid
sort_id (RsortId#
activity_type (RactivityType
name (	Rname
	pre_limit (RpreLimit
limit_param (	R
limitParam

start_type (R	startType

start_time (	R	startTime&
start_cond_type	 (RstartCondType*
start_cond_params
 (RstartCondParams
end_type (RendType
end_time (	RendTime!
end_duration (RendDuration

banner_res (	R	bannerRes

pop_up_res (	RpopUpRes

tab_bg_res (	RtabBgResB™Nova.Clientbproto3
o
table_Activity.protoActivity.proto"/
table_Activity
list (2	.ActivityRlistB™Nova.Clientbproto3
£
AddBuffAction.proto"t
AddBuffAction
id (Rid
group_id (RgroupId
target_type (R
targetType
buff_id (RbuffIdB™Nova.Clientbproto3
É
table_AddBuffAction.protoAddBuffAction.proto"9
table_AddBuffAction"
list (2.AddBuffActionRlistB™Nova.Clientbproto3
Ö
AffinityGift.proto"W
AffinityGift
id (Rid#
base_affinity (RbaseAffinity
tags (RtagsB™Nova.Clientbproto3

table_AffinityGift.protoAffinityGift.proto"7
table_AffinityGift!
list (2.AffinityGiftRlistB™Nova.Clientbproto3
‡
AffinityLevel.proto"∞
AffinityLevel
id (Rid&
affinity_level_ (RaffinityLevel
need_exp (RneedExp
template_id (R
templateId.
affinity_level_name (	RaffinityLevelName.
affinity_level_icon (	RaffinityLevelIcon;
affinity_level_reward_icon (	RaffinityLevelRewardIconD
affinity_level_reward_lock_icon (	RaffinityLevelRewardLockIcon
effect	 (Reffect0
affinity_level_stage
 (RaffinityLevelStageB™Nova.Clientbproto3
É
table_AffinityLevel.protoAffinityLevel.proto"9
table_AffinityLevel"
list (2.AffinityLevelRlistB™Nova.Clientbproto3
ß
AffinityQuest.proto"˜
AffinityQuest
id (Rid
desc (	Rdesc
sort_id (RsortId
char_id (RcharId#
complete_cond (RcompleteCond0
complete_cond_params (	RcompleteCondParams
reward (Rreward!
affinity_exp (RaffinityExpB™Nova.Clientbproto3
É
table_AffinityQuest.protoAffinityQuest.proto"9
table_AffinityQuest"
list (2.AffinityQuestRlistB™Nova.Clientbproto3
•
AffinityUpReward.proto"Ú
AffinityUpReward
id (Rid
char_id (RcharId!
reward_level (RrewardLevel
reward1 (Rreward1
reward2 (Rreward2
reward3 (Rreward3
desc_front1 (	R
descFront1
desc_front2 (	R
descFront2
desc_front3	 (	R
descFront3
desc_after1
 (	R
descAfter1
desc_after2 (	R
descAfter2
desc_after3 (	R
descAfter3B™Nova.Clientbproto3
è
table_AffinityUpReward.protoAffinityUpReward.proto"?
table_AffinityUpReward%
list (2.AffinityUpRewardRlistB™Nova.Clientbproto3
’
Agent.proto"≠
Agent
id (Rid
tab (Rtab
note (	Rnote
name (	Rname
desc (	Rdesc
	consignor (	R	consignor!
refresh_type (RrefreshType
member_type (R
memberType
level	 (Rlevel
build_score
 (R
buildScore!
member_limit (RmemberLimit
tags (Rtags

extra_tags (R	extraTags+
unlock_conditions (	RunlockConditions
sort (Rsort
time1 (Rtime1'
reward_preview1 (	RrewardPreview1%
bonus_preview1 (	RbonusPreview1
time2 (Rtime2'
reward_preview2 (	RrewardPreview2%
bonus_preview2 (	RbonusPreview2
time3 (Rtime3'
reward_preview3 (	RrewardPreview3%
bonus_preview3 (	RbonusPreview3
time4 (Rtime4'
reward_preview4 (	RrewardPreview4%
bonus_preview4 (	RbonusPreview4B™Nova.Clientbproto3
c
table_Agent.protoAgent.proto")
table_Agent
list (2.AgentRlistB™Nova.Clientbproto3
 
AgentSpecialPerformance.proto"ê
AgentSpecialPerformance
id (Rid
char_id (RcharId
weight (Rweight
avg (	Ravg"
a_v_g_group_id (	R
aVGGroupIdB™Nova.Clientbproto3
´
#table_AgentSpecialPerformance.protoAgentSpecialPerformance.proto"M
table_AgentSpecialPerformance,
list (2.AgentSpecialPerformanceRlistB™Nova.Clientbproto3

AgentTab.proto"U
AgentTab
id (Rid
name (	Rname
bg (	Rbg
sp_tag (RspTagB™Nova.Clientbproto3
o
table_AgentTab.protoAgentTab.proto"/
table_AgentTab
list (2	.AgentTabRlistB™Nova.Clientbproto3
ó
AI.proto"Ú
AI
id (Rid
	f_c_spawn (	RfCSpawn
f_c_idle (	RfCIdle

f_c_action (	RfCAction'
f_c_lost_control (	RfCLostControl
	f_c_death (	RfCDeath

f_c_global (	RfCGlobal%
f_c_combo_group (	RfCComboGroupB™Nova.Clientbproto3
W
table_AI.protoAI.proto"#
table_AI
list (2.AIRlistB™Nova.Clientbproto3
ò
AreaEffect.proto"l

AreaEffect
area_tag (RareaTag
	max_count (RmaxCount&
over_limit_type (RoverLimitTypeB™Nova.Clientbproto3
w
table_AreaEffect.protoAreaEffect.proto"3
table_AreaEffect
list (2.AreaEffectRlistB™Nova.Clientbproto3
Ò
Attribute.proto"≈
	Attribute
id (	Rid
group_id (RgroupId
break (Rbreak
lvl (Rlvl
atk (Ratk
hp (Rhp
def (Rdef
	crit_rate (RcritRate(
normal_crit_rate	 (RnormalCritRate&
skill_crit_rate
 (RskillCritRate&
ultra_crit_rate (RultraCritRate$
mark_crit_rate (RmarkCritRate(
summon_crit_rate (RsummonCritRate0
projectile_crit_rate (RprojectileCritRate&
other_crit_rate (RotherCritRate'
crit_resistance (RcritResistance

crit_power (R	critPower*
normal_crit_power (RnormalCritPower(
skill_crit_power (RskillCritPower(
ultra_crit_power (RultraCritPower&
mark_crit_power (RmarkCritPower*
summon_crit_power (RsummonCritPower2
projectile_crit_power (RprojectileCritPower(
other_crit_power (RotherCritPower
hit_rate (RhitRate
evd (Revd

def_pierce (R	defPierce

def_ignore (R	defIgnore
w_e_p (RwEP
f_e_p (RfEP
s_e_p (RsEP
a_e_p  (RaEP
l_e_p! (RlEP
d_e_p" (RdEP
w_e_i# (RwEI
f_e_i$ (RfEI
s_e_i% (RsEI
a_e_i& (RaEI
l_e_i' (RlEI
d_e_i( (RdEI
w_e_e) (RwEE
f_e_e* (RfEE
s_e_e+ (RsEE
a_e_e, (RaEE
l_e_e- (RlEE
d_e_e. (RdEE
w_e_r/ (RwER
f_e_r0 (RfER
s_e_r1 (RsER
a_e_r2 (RaER
l_e_r3 (RlER
d_e_r4 (RdER6
toughness_damage_adjust5 (RtoughnessDamageAdjust
	toughness6 (R	toughness
suppress7 (Rsuppress$
n_o_r_m_a_l_d_m_g8 (R	nORMALDMG!
s_k_i_l_l_d_m_g9 (RsKILLDMG!
u_l_t_r_a_d_m_g: (RuLTRADMG!
o_t_h_e_r_d_m_g; (RoTHERDMG-
r_c_d_n_o_r_m_a_l_d_m_g< (RrCDNORMALDMG 
RCDSKILLDMG= (RRCDSKILLDMG 
RCDULTRADMG> (RRCDULTRADMG 
RCDOTHERDMG? (RRCDOTHERDMG
m_a_r_k_d_m_g@ (RmARKDMG'
r_c_d_m_a_r_k_d_m_gA (R
rCDMARKDMG$
s_u_m_m_o_n_d_m_gB (R	sUMMONDMG-
r_c_d_s_u_m_m_o_n_d_m_gC (RrCDSUMMONDMG0
p_r_o_j_e_c_t_i_l_e_d_m_gD (RpROJECTILEDMG9
r_c_d_p_r_o_j_e_c_t_i_l_e_d_m_gE (RrCDPROJECTILEDMG
g_e_n_d_m_gF (RgENDMG
d_m_g_p_l_u_sG (RdMGPLUS!
f_i_n_a_l_d_m_gH (RfINALDMG-
f_i_n_a_l_d_m_g_p_l_u_sI (RfINALDMGPLUS
w_e_e_r_c_dJ (RwEERCD
f_e_e_r_c_dK (RfEERCD
s_e_e_r_c_dL (RsEERCD
a_e_e_r_c_dM (RaEERCD
l_e_e_r_c_dN (RlEERCD
d_e_e_r_c_dO (RdEERCD$
g_e_n_d_m_g_r_c_dP (R	gENDMGRCD'
d_m_g_p_l_u_s_r_c_dQ (R
dMGPLUSRCDB™Nova.Clientbproto3
s
table_Attribute.protoAttribute.proto"1
table_Attribute
list (2
.AttributeRlistB™Nova.Clientbproto3
õ
AttributeLimit.proto"k
AttributeLimit
id (Rid
lower (Rlower
upper (Rupper

is_limited (R	isLimitedB™Nova.Clientbproto3
á
table_AttributeLimit.protoAttributeLimit.proto";
table_AttributeLimit#
list (2.AttributeLimitRlistB™Nova.Clientbproto3
÷
BattlePass.proto"©

BattlePass
i_d (RiD
name (	Rname

start_time (	R	startTime
end_time (	RendTime*
luxury_product_id (	RluxuryProductId!
luxury_price (RluxuryPrice,
luxury_bonus_level (RluxuryBonusLevel

luxury_tid (R	luxuryTid

luxury_qty	 (R	luxuryQty,
premium_product_id
 (	RpremiumProductId#
premium_price (RpremiumPrice
premium_tid (R
premiumTid
premium_qty (R
premiumQty8
complementary_product_id (	RcomplementaryProductId/
complementary_price (RcomplementaryPrice+
complementary_tid (RcomplementaryTid+
complementary_qty (RcomplementaryQty
cover (	Rcover,
premium_show_items (RpremiumShowItems*
luxury_show_items (RluxuryShowItems7
outfit_package_show_item (RoutfitPackageShowItemB™Nova.Clientbproto3
w
table_BattlePass.protoBattlePass.proto"3
table_BattlePass
list (2.BattlePassRlistB™Nova.Clientbproto3
â
BattlePassLevel.proto"X
BattlePassLevel
i_d (RiD
exp (Rexp
tid (Rtid
qty (RqtyB™Nova.Clientbproto3
ã
table_BattlePassLevel.protoBattlePassLevel.proto"=
table_BattlePassLevel$
list (2.BattlePassLevelRlistB™Nova.Clientbproto3
ß
BattlePassQuest.proto"v
BattlePassQuest
id (Rid
type (Rtype
title (	Rtitle
jump_to (RjumpTo
exp (RexpB™Nova.Clientbproto3
ã
table_BattlePassQuest.protoBattlePassQuest.proto"=
table_BattlePassQuest$
list (2.BattlePassQuestRlistB™Nova.Clientbproto3
˙
BattlePassReward.proto"«
BattlePassReward
i_d (RiD
level (Rlevel
tid1 (Rtid1
qty1 (Rqty1
tid2 (Rtid2
qty2 (Rqty2
tid3 (Rtid3
qty3 (Rqty3
focus	 (RfocusB™Nova.Clientbproto3
è
table_BattlePassReward.protoBattlePassReward.proto"?
table_BattlePassReward%
list (2.BattlePassRewardRlistB™Nova.Clientbproto3
§
BattleThreshold.proto"Ú
BattleThreshold

mission_id (R	missionId
version (Rversion 
from_src_atk (R
fromSrcAtk9
from_perk_intensity_ratio (RfromPerkIntensityRatio-
from_slot_dmg_ratio (RfromSlotDmgRatio
from_e_e (RfromEE+
from_gen_dmg_ratio (RfromGenDmgRatio"
from_dmg_plus (RfromDmgPlus&
from_crit_ratio	 (RfromCritRatio/
from_final_dmg_ratio
 (RfromFinalDmgRatio-
from_final_dmg_plus (RfromFinalDmgPlus
to_er_amend (R	toErAmend 
to_def_amend (R
toDefAmend0
to_rcd_slot_dmg_ratio (RtoRcdSlotDmgRatio
to_e_e_r_c_d (RtoEERCD.
to_gen_dmg_rcd_ratio (RtoGenDmgRcdRatio%
to_dmg_plus_rcd (RtoDmgPlusRcd
dmg (Rdmg
	crit_rate (RcritRate
hp (RhpB™Nova.Clientbproto3
ã
table_BattleThreshold.protoBattleThreshold.proto"=
table_BattleThreshold$
list (2.BattleThresholdRlistB™Nova.Clientbproto3
ñ
BoardNPC.proto"l
BoardNPC
id (Rid
name (	Rname
alias (	Ralias&
default_skin_id (RdefaultSkinIdB™Nova.Clientbproto3
o
table_BoardNPC.protoBoardNPC.proto"/
table_BoardNPC
list (2	.BoardNPCRlistB™Nova.Clientbproto3
Ÿ

Buff.proto"≤
Buff
id (Rid
name (	Rname&
level_type_data (RlevelTypeData

level_data (R	levelData&
main_or_support (RmainOrSupport
group_id (RgroupId
reduce_time (R
reduceTime
	buff_tag1 (RbuffTag1
	buff_tag2	 (RbuffTag2
	buff_tag3
 (RbuffTag3
	buff_tag4 (RbuffTag4
	buff_tag5 (RbuffTag5
bind_effect (	R
bindEffect
icon (	Ricon
is_show (RisShow*
topof_head_effect (	RtopofHeadEffect1
buff_num_effect_level (RbuffNumEffectLevel

not_remove (R	notRemoveB™Nova.Clientbproto3
_
table_Buff.proto
Buff.proto"'

table_Buff
list (2.BuffRlistB™Nova.Clientbproto3
Ã
BuffValue.proto"†
	BuffValue
id (Rid
name (	Rname
sort (Rsort!
buff_effects (RbuffEffects
time (Rtime#
laminated_num (RlaminatedNum
num (Rnum-
time_superposition (RtimeSuperposition
timing	 (Rtiming!
replace_type
 (RreplaceType!
attack_clear (RattackClear
	hit_clear (RhitClear

is_inherit (R	isInherit$
is_exit_delete (RisExitDeleteB™Nova.Clientbproto3
s
table_BuffValue.protoBuffValue.proto"1
table_BuffValue
list (2
.BuffValueRlistB™Nova.Clientbproto3
≈
Chapter.proto"õ
Chapter
id (Rid
name (	Rname
desc (	Rdesc!
chapter_type (RchapterType
world_class (R
worldClass%
prev_mainlines (RprevMainlines)
complete_rewards (	RcompleteRewards
chapter_img (	R
chapterImg!
chapter_icon	 (	RchapterIconB™Nova.Clientbproto3
k
table_Chapter.protoChapter.proto"-
table_Chapter
list (2.ChapterRlistB™Nova.Clientbproto3
∏
Character.proto"å
	Character
id (Rid
name (	Rname
visible (Rvisible
	available (R	available
grade (Rgrade&
default_skin_id (RdefaultSkinId&
advance_skin_id (RadvanceSkinId#
advance_group (RadvanceGroup9
advance_skin_unlock_level	 (RadvanceSkinUnlockLevel
faction
 (Rfaction
weight (Rweight
e_e_t (ReET
class (Rclass2
character_attack_type (RcharacterAttackType,
search_target_type (RsearchTargetType
atk_spd (RatkSpd
mov_type (RmovType
walk_spd (RwalkSpd
run_spd (RrunSpd

sp_run_spd (RspRunSpd
	trans_spd (RtransSpd/
walk_to_run_duration (RwalkToRunDurationE
 dodge_to_run_acceleration_or_not (RdodgeToRunAccelerationOrNot
mov_acc (RmovAcc
rot_spd (RrotSpd
rot_acc (RrotAcc

vision_deg (R	visionDeg

vision_rng (R	visionRng*
vision_attack_rng (RvisionAttackRng
hear_rng (RhearRng&
hear_attack_rng (RhearAttackRng"
raise_gun_rng  (RraiseGunRng
bullet_type! (R
bulletType
ammo" (Rammo
a_i_id# (RaIId"
normal_atk_id$ (RnormalAtkId
dodge_id% (RdodgeId
skill_id& (RskillId(
special_skill_id' (RspecialSkillId
ultimate_id( (R
ultimateId!
assist_a_i_id) (R
assistAIId/
assist_normal_atk_id* (RassistNormalAtkId&
assist_dodge_id+ (RassistDodgeId&
assist_skill_id, (RassistSkillId5
assist_special_skill_id- (RassistSpecialSkillId,
assist_ultimate_id. (RassistUltimateId&
talent_skill_id/ (RtalentSkillId:
assist_skill_on_stage_type0 (RassistSkillOnStageType,
assist_skill_angle1 (RassistSkillAngle.
assist_skill_radius2 (RassistSkillRadiusH
!assist_skill_on_stage_orientation3 (RassistSkillOnStageOrientation@
assist_ultimate_on_stage_type4 (RassistUltimateOnStageType2
assist_ultimate_angle5 (RassistUltimateAngle4
assist_ultimate_radius6 (RassistUltimateRadiusN
$assist_ultimate_on_stage_orientation7 (R assistUltimateOnStageOrientation

switch_c_d8 (RswitchCD*
energy_conv_ratio9 (RenergyConvRatio+
energy_efficiency: (RenergyEfficiency!
fragments_id; (RfragmentsId#
transform_qty< (RtransformQty'
recruitment_qty= (RrecruitmentQty!
attribute_id> (	RattributeId*
presents_trait_id? (RpresentsTraitId0
skills_upgrade_group@ (RskillsUpgradeGroupB™Nova.Clientbproto3
s
table_Character.protoCharacter.proto"1
table_Character
list (2
.CharacterRlistB™Nova.Clientbproto3
°
CharacterAdvance.proto"Ó
CharacterAdvance
id (Rid
group (Rgroup
advance_lvl (R
advanceLvl
tid1 (Rtid1
qty1 (Rqty1
tid2 (Rtid2
qty2 (Rqty2
tid3 (Rtid3
qty3	 (Rqty3
tid4
 (Rtid4
qty4 (Rqty4
gold_qty (RgoldQty

award_tid1 (R	awardTid1

award_qty1 (R	awardQty1

award_tid2 (R	awardTid2

award_qty2 (R	awardQty2

award_tid3 (R	awardTid3

award_qty3 (R	awardQty3.
advance_desc_front1 (	RadvanceDescFront1.
advance_desc_after1 (	RadvanceDescAfter1.
advance_desc_front2 (	RadvanceDescFront2.
advance_desc_after2 (	RadvanceDescAfter2.
advance_desc_front3 (	RadvanceDescFront3.
advance_desc_after3 (	RadvanceDescAfter3B™Nova.Clientbproto3
è
table_CharacterAdvance.protoCharacterAdvance.proto"?
table_CharacterAdvance%
list (2.CharacterAdvanceRlistB™Nova.Clientbproto3
˙
CharacterArchive.proto"«
CharacterArchive
id (Rid
	arch_type (RarchType!
character_id (RcharacterId2
unlock_affinity_level (RunlockAffinityLevel
	record_id (RrecordId
sort (RsortB™Nova.Clientbproto3
è
table_CharacterArchive.protoCharacterArchive.proto"?
table_CharacterArchive%
list (2.CharacterArchiveRlistB™Nova.Clientbproto3
Ã
CharacterArchiveBaseInfo.proto"ë
CharacterArchiveBaseInfo
id (Rid!
character_id (RcharacterId
title (	Rtitle
content (	Rcontent
sort (RsortB™Nova.Clientbproto3
Ø
$table_CharacterArchiveBaseInfo.protoCharacterArchiveBaseInfo.proto"O
table_CharacterArchiveBaseInfo-
list (2.CharacterArchiveBaseInfoRlistB™Nova.Clientbproto3
í
CharacterArchiveContent.proto"Y
CharacterArchiveContent
id (Rid
title (	Rtitle
content (	RcontentB™Nova.Clientbproto3
´
#table_CharacterArchiveContent.protoCharacterArchiveContent.proto"M
table_CharacterArchiveContent,
list (2.CharacterArchiveContentRlistB™Nova.Clientbproto3
¡
CharacterArchiveVoice.proto"â
CharacterArchiveVoice
id (Rid!
character_id (RcharacterId2
unlock_affinity_level (RunlockAffinityLevel
unlock_plot (R
unlockPlot
title (	Rtitle
source (	Rsource&
arch_voice_type (RarchVoiceType
sort (RsortB™Nova.Clientbproto3
£
!table_CharacterArchiveVoice.protoCharacterArchiveVoice.proto"I
table_CharacterArchiveVoice*
list (2.CharacterArchiveVoiceRlistB™Nova.Clientbproto3
€
CharacterCG.proto"≠
CharacterCG
id (Rid0
full_screen_portrait (	RfullScreenPortrait'
full_screen_l2_d (	RfullScreenL2D
unlock_plot (R
unlockPlot
name (	RnameB™Nova.Clientbproto3
{
table_CharacterCG.protoCharacterCG.proto"5
table_CharacterCG 
list (2.CharacterCGRlistB™Nova.Clientbproto3
◊
CharacterDes.proto"®
CharacterDes
id (Rid
alias (	Ralias
cn_cv (	RcnCv
jp_cv (	RjpCv

char_color (	R	charColor(
char_skill_color (	RcharSkillColor
char_des (	RcharDes
tag (Rtag
force	 (Rforce
prefer_tags
 (R
preferTags
	hate_tags (RhateTagsB™Nova.Clientbproto3

table_CharacterDes.protoCharacterDes.proto"7
table_CharacterDes!
list (2.CharacterDesRlistB™Nova.Clientbproto3
—
CharacterSkillUpgrade.proto"ô
CharacterSkillUpgrade
id (Rid
group (Rgroup
advance_num (R
advanceNum
tid1 (Rtid1
qty1 (Rqty1
tid2 (Rtid2
qty2 (Rqty2
tid3 (Rtid3
qty3	 (Rqty3
tid4
 (Rtid4
qty4 (Rqty4
gold_qty (RgoldQtyB™Nova.Clientbproto3
£
!table_CharacterSkillUpgrade.protoCharacterSkillUpgrade.proto"I
table_CharacterSkillUpgrade*
list (2.CharacterSkillUpgradeRlistB™Nova.Clientbproto3
“
CharacterSkin.proto"¢
CharacterSkin
id (Rid
name (	Rname
desc (	Rdesc
is_show (RisShow
char_id (RcharId
type (Rtype
source_desc (R
sourceDesc
	transform (	R	transform,
walk_animation_spd	 (RwalkAnimationSpd*
run_animation_spd
 (RrunAnimationSpd/
sp_run_animation_spd (RspRunAnimationSpd
model_scale (R
modelScale%
collider_scale (RcolliderScale(
model_show_scale (RmodelShowScale&
model_end_scale (RmodelEndScale.
forbidden_behit_rot (RforbiddenBehitRot
icon (	Ricon
portrait (	Rportrait
bg (	Rbg
offset (	Roffset
l2_d (	Rl2D"
character_c_g (RcharacterCG
model (	Rmodel

model_show (	R	modelShow
	model_end (	RmodelEnd

gacha_l2_d (	RgachaL2D

skin_theme (R	skinTheme,
effect_scale_value (ReffectScaleValue3
tag_effect_scale_value (RtagEffectScaleValueB™Nova.Clientbproto3
É
table_CharacterSkin.protoCharacterSkin.proto"9
table_CharacterSkin"
list (2.CharacterSkinRlistB™Nova.Clientbproto3
€
CharacterSkinPanelFace.proto"¢
CharacterSkinPanelFace
id (Rid
	main_view (	RmainView
	char_info (	RcharInfo

battel_win (	R	battelWin
battle_lose (	R
battleLoseB™Nova.Clientbproto3
ß
"table_CharacterSkinPanelFace.protoCharacterSkinPanelFace.proto"K
table_CharacterSkinPanelFace+
list (2.CharacterSkinPanelFaceRlistB™Nova.Clientbproto3
î
CharacterSkinTheme.proto"`
CharacterSkinTheme
id (Rid
name (	Rname
desc (	Rdesc
icon (	RiconB™Nova.Clientbproto3
ó
table_CharacterSkinTheme.protoCharacterSkinTheme.proto"C
table_CharacterSkinTheme'
list (2.CharacterSkinThemeRlistB™Nova.Clientbproto3
}
CharacterTag.proto"O
CharacterTag
id (Rid
title (	Rtitle
tag_type (RtagTypeB™Nova.Clientbproto3

table_CharacterTag.protoCharacterTag.proto"7
table_CharacterTag!
list (2.CharacterTagRlistB™Nova.Clientbproto3
î
CharacterUpgrade.proto"b
CharacterUpgrade
id (Rid
rarity (Rrarity
level (Rlevel
exp (RexpB™Nova.Clientbproto3
è
table_CharacterUpgrade.protoCharacterUpgrade.proto"?
table_CharacterUpgrade%
list (2.CharacterUpgradeRlistB™Nova.Clientbproto3
 
CharacterVoiceControl.proto"í
CharacterVoiceControl
id (	Rid 
probability (Rprobability
res_type (RresType
combat_only (R
combatOnly*
world_level_types (RworldLevelTypes
bubble (Rbubble
cd (Rcd
	vo_player (RvoPlayer
priority	 (RpriorityB™Nova.Clientbproto3
£
!table_CharacterVoiceControl.protoCharacterVoiceControl.proto"I
table_CharacterVoiceControl*
list (2.CharacterVoiceControlRlistB™Nova.Clientbproto3
}
CharAffinityTemplate.proto"G
CharAffinityTemplate
id (Rid
template_id (R
templateIdB™Nova.Clientbproto3
ü
 table_CharAffinityTemplate.protoCharAffinityTemplate.proto"G
table_CharAffinityTemplate)
list (2.CharAffinityTemplateRlistB™Nova.Clientbproto3
Ä
CharGrade.proto"‘
	CharGrade
grade (Rgrade#
fragments_qty (RfragmentsQty.
general_fragment_id (RgeneralFragmentId,
substitute_item_id (RsubstituteItemId.
substitute_item_qty (RsubstituteItemQtyB™Nova.Clientbproto3
s
table_CharGrade.protoCharGrade.proto"1
table_CharGrade
list (2
.CharGradeRlistB™Nova.Clientbproto3
Ä
CharItemExp.proto"S
CharItemExp
id (Rid
item_id (RitemId
	exp_value (RexpValueB™Nova.Clientbproto3
{
table_CharItemExp.protoCharItemExp.proto"5
table_CharItemExp 
list (2.CharItemExpRlistB™Nova.Clientbproto3
Ö
CharPotential.proto"’
CharPotential
id (RidA
master_specific_potential_ids (RmasterSpecificPotentialIdsA
assist_specific_potential_ids (RassistSpecificPotentialIds0
common_potential_ids (RcommonPotentialIds=
master_normal_potential_ids (RmasterNormalPotentialIds=
assist_normal_potential_ids (RassistNormalPotentialIdsB™Nova.Clientbproto3
É
table_CharPotential.protoCharPotential.proto"9
table_CharPotential"
list (2.CharPotentialRlistB™Nova.Clientbproto3
◊
CharRaritySequence.proto"¢
CharRaritySequence
id (Rid
grade (Rgrade
advance_lvl (R
advanceLvl
lv_limit (RlvLimit*
world_class_limit (RworldClassLimitB™Nova.Clientbproto3
ó
table_CharRaritySequence.protoCharRaritySequence.proto"C
table_CharRaritySequence'
list (2.CharRaritySequenceRlistB™Nova.Clientbproto3
£

Chat.proto"¸
Chat
id (Rid&
address_book_id (RaddressBookId
a_v_g_id (	RaVGId"
a_v_g_group_id (	R
aVGGroupId
pre_chat_id (R	preChatId
priority (Rpriority!
trigger_type (RtriggerType
auto_pop_up (R	autoPopUp!
trigger_cond	 (RtriggerCond,
trigger_cond_param
 (	RtriggerCondParam
reward1 (Rreward1
reward_qty1 (R
rewardQty1
reward2 (Rreward2
reward_qty2 (R
rewardQty2
reward3 (Rreward3
reward_qty3 (R
rewardQty3B™Nova.Clientbproto3
_
table_Chat.proto
Chat.proto"'

table_Chat
list (2.ChatRlistB™Nova.Clientbproto3
Œ
Chest.proto"¶
Chest
id (Rid
group (Rgroup
label (Rlabel
	low_floor (RlowFloor

high_floor (R	highFloor)
tnteraction_type (RtnteractionType
	auto_open (RautoOpen

model_path (	R	modelPath
item1	 (Ritem1
number1
 (Rnumber1
item2 (Ritem2
number2 (Rnumber2
item3 (Ritem3
number3 (Rnumber3
item4 (Ritem4
number4 (Rnumber4B™Nova.Clientbproto3
c
table_Chest.protoChest.proto")
table_Chest
list (2.ChestRlistB™Nova.Clientbproto3
V
Config.proto".
Config
id (	Rid
value (	RvalueB™Nova.Clientbproto3
g
table_Config.protoConfig.proto"+
table_Config
list (2.ConfigRlistB™Nova.Clientbproto3
Å
ContentWord.proto"T
ContentWord
id (Rid!
preset_color (	RpresetColor
word (	RwordB™Nova.Clientbproto3
{
table_ContentWord.protoContentWord.proto"5
table_ContentWord 
list (2.ContentWordRlistB™Nova.Clientbproto3
®
DailyInstance.proto"¯
DailyInstance
id (Rid

daily_type (R	dailyType

difficulty (R
difficulty
name (	Rname
desc (	Rdesc'
suggested_power (RsuggestedPower 
pre_level_id (R
preLevelId$
pre_level_star (RpreLevelStar(
need_world_class	 (RneedWorldClass
floor_id
 (RfloorId"
one_star_desc (	RoneStarDesc"
two_star_desc (	RtwoStarDesc&
three_star_desc (	RthreeStarDesc5
one_star_energy_consume (RoneStarEnergyConsume5
two_star_energy_consume (RtwoStarEnergyConsume9
three_star_energy_consume (RthreeStarEnergyConsume"
award_drop_id (RawardDropId7
preview_monster_group_id (RpreviewMonsterGroupId
icon (	Ricon0
first_reward_preview (RfirstRewardPreviewB™Nova.Clientbproto3
É
table_DailyInstance.protoDailyInstance.proto"9
table_DailyInstance"
list (2.DailyInstanceRlistB™Nova.Clientbproto3
”
DailyInstanceFloor.proto"û
DailyInstanceFloor
id (Rid

scene_name (	R	sceneName,
config_prefab_name (	RconfigPrefabName
theme (Rtheme
b_g_m (	RbGM.
leave_trigger_event (	RleaveTriggerEvent

monster_id (R	monsterId,
one_star_condition (RoneStarCondition,
two_star_condition	 (RtwoStarCondition0
three_star_condition
 (RthreeStarCondition(
level_total_time (RlevelTotalTime.
time_end_settlement (RtimeEndSettlement.
star_condition_type (RstarConditionType

monster_lv (R	monsterLv/
drop_entity_group_id (RdropEntityGroupId(
drop_entity_rate (RdropEntityRate 
drop_max_num (R
dropMaxNumB™Nova.Clientbproto3
ó
table_DailyInstanceFloor.protoDailyInstanceFloor.proto"C
table_DailyInstanceFloor'
list (2.DailyInstanceFloorRlistB™Nova.Clientbproto3
‘
DailyInstanceRewardGroup.proto"ô
DailyInstanceRewardGroup
id (Rid
group_id (RgroupId*
daily_reward_type (RdailyRewardType
reward_name (	R
rewardName

reward_des (	R	rewardDes
reward_icon (	R
rewardIcon
drop_id (RdropId,
base_award_preview (	RbaseAwardPreviewB™Nova.Clientbproto3
Ø
$table_DailyInstanceRewardGroup.protoDailyInstanceRewardGroup.proto"O
table_DailyInstanceRewardGroup-
list (2.DailyInstanceRewardGroupRlistB™Nova.Clientbproto3
ú
DailyInstanceType.proto"Ë
DailyInstanceType
id (Rid
name (	Rname 
main_line_id (R
mainLineId*
world_class_level (RworldClassLevel
episode (	Repisode
image (	Rimage
sort (Rsort

how_reward (R	howRewardB™Nova.Clientbproto3
ì
table_DailyInstanceType.protoDailyInstanceType.proto"A
table_DailyInstanceType&
list (2.DailyInstanceTypeRlistB™Nova.Clientbproto3
¶
DailyQuest.proto"˘

DailyQuest
id (Rid
title (	Rtitle
desc (	Rdesc
jump_to (RjumpTo
order (Rorder
active (Ractive
apear (Rapear%
accept_params2 (	RacceptParams2#
complete_cond	 (RcompleteCond0
complete_cond_params
 (	RcompleteCondParams0
complete_cond_client (RcompleteCondClient6
client_complete_params1 (RclientCompleteParams16
client_complete_params2 (RclientCompleteParams2
item_tid (RitemTid
item_qty (RitemQtyB™Nova.Clientbproto3
w
table_DailyQuest.protoDailyQuest.proto"3
table_DailyQuest
list (2.DailyQuestRlistB™Nova.Clientbproto3
€
DailyQuestActive.proto"®
DailyQuestActive
id (Rid
active (Ractive
	item_tid1 (RitemTid1
number1 (Rnumber1
	item_tid2 (RitemTid2
number2 (Rnumber2B™Nova.Clientbproto3
è
table_DailyQuestActive.protoDailyQuestActive.proto"?
table_DailyQuestActive%
list (2.DailyQuestActiveRlistB™Nova.Clientbproto3
ë
DailyQuestAward.proto"ﬂ
DailyQuestAward
id (Rid
title (	Rtitle

need_point (R	needPoint
num_show (RnumShow
	item_tid1 (RitemTid1
number1 (Rnumber1
	item_tid2 (RitemTid2
number2 (Rnumber2B™Nova.Clientbproto3
ã
table_DailyQuestAward.protoDailyQuestAward.proto"=
table_DailyQuestAward$
list (2.DailyQuestAwardRlistB™Nova.Clientbproto3
Ù
DatingCharResponse.proto"ø
DatingCharResponse
id (Rid
char_id (RcharId
type (	Rtype
	voice_key (	RvoiceKey
action (	Raction
words (	Rwords!
bubble_emoji (	RbubbleEmojiB™Nova.Clientbproto3
ó
table_DatingCharResponse.protoDatingCharResponse.proto"C
table_DatingCharResponse'
list (2.DatingCharResponseRlistB™Nova.Clientbproto3
±
DatingEvent.proto"É
DatingEvent
id (Rid*
dating_event_type (RdatingEventType.
dating_event_params (RdatingEventParams
	mutex_tag (RmutexTag
sort_tag (RsortTag
affinity (Raffinity
reward (Rreward
desc1 (	Rdesc1
desc2	 (	Rdesc2
desc3
 (	Rdesc3
response (	Rresponse
name (	Rname
clue (	Rclue
memory (	RmemoryB™Nova.Clientbproto3
{
table_DatingEvent.protoDatingEvent.proto"5
table_DatingEvent 
list (2.DatingEventRlistB™Nova.Clientbproto3
ú
DatingLandmark.proto"l
DatingLandmark
id (Rid
name (	Rname
desc (	Rdesc
icon (	Ricon
bg (	RbgB™Nova.Clientbproto3
á
table_DatingLandmark.protoDatingLandmark.proto";
table_DatingLandmark#
list (2.DatingLandmarkRlistB™Nova.Clientbproto3
Ã
DestroyObject.proto"ú
DestroyObject
id (Rid
name (	Rname
lv (Rlv!
attribute_id (	RattributeId
templete (Rtemplete
faction (RfactionB™Nova.Clientbproto3
É
table_DestroyObject.protoDestroyObject.proto"9
table_DestroyObject"
list (2.DestroyObjectRlistB™Nova.Clientbproto3
î
DictionaryDiagram.proto"a
DictionaryDiagram
id (Rid
title (	Rtitle
desc (	Rdesc
icon (	RiconB™Nova.Clientbproto3
ì
table_DictionaryDiagram.protoDictionaryDiagram.proto"A
table_DictionaryDiagram&
list (2.DictionaryDiagramRlistB™Nova.Clientbproto3
â
DictionaryEntry.proto"◊
DictionaryEntry
id (Rid
index (Rindex
title (	Rtitle
tab (Rtab
item_id (RitemId
qty (Rqty!
diagram_list (RdiagramList
sort (Rsort
popup	 (RpopupB™Nova.Clientbproto3
ã
table_DictionaryEntry.protoDictionaryEntry.proto"=
table_DictionaryEntry$
list (2.DictionaryEntryRlistB™Nova.Clientbproto3
º
DictionaryTab.proto"å
DictionaryTab
tab_id (RtabId
icon (	Ricon
icon2 (	Ricon2
title (	Rtitle$
hide_in_battle (RhideInBattleB™Nova.Clientbproto3
É
table_DictionaryTab.protoDictionaryTab.proto"9
table_DictionaryTab"
list (2.DictionaryTabRlistB™Nova.Clientbproto3
ó
DictionaryTopBarEntry.proto"`
DictionaryTopBarEntry
id (Rid
title (	Rtitle!
diagram_list (RdiagramListB™Nova.Clientbproto3
£
!table_DictionaryTopBarEntry.protoDictionaryTopBarEntry.proto"I
table_DictionaryTopBarEntry*
list (2.DictionaryTopBarEntryRlistB™Nova.Clientbproto3
˜

Disc.proto"–
Disc
id (Rid
e_e_t (ReET
tags (Rtags
visible (Rvisible
	available (R	available
image (	Rimage
note (Rnote
disc_bg (	RdiscBg
card	 (	Rcard
gacha_bg
 (	RgachaBg.
strengthen_group_id (RstrengthenGroupId+
attr_base_group_id (RattrBaseGroupId(
promote_group_id (RpromoteGroupId*
transform_item_id (RtransformItemId5
max_star_transform_item (RmaxStarTransformItem3
passive_skill_group_id (RpassiveSkillGroupId(
common_skill_id1 (RcommonSkillId1(
common_skill_id2 (RcommonSkillId2
read_reward (R
readReward
vo_file (	RvoFile
	vo_begin1 (RvoBegin1
vo_loop1 (RvoLoop1
vo_name1 (	RvoName1
	vo_begin2 (RvoBegin2
vo_loop2 (RvoLoop2
vo_name2 (	RvoName2
vo_story (	RvoStory

story_name (	R	storyName

story_desc (	R	storyDesc
char_id (RcharId!
skill_script (	RskillScriptB™Nova.Clientbproto3
_
table_Disc.proto
Disc.proto"'

table_Disc
list (2.DiscRlistB™Nova.Clientbproto3
„
DiscCommonSkill.proto"±
DiscCommonSkill
id (Rid(
active_note_type (RactiveNoteType&
active_note_num (RactiveNoteNum

effect_id1 (R	effectId1

effect_id2 (R	effectId2

effect_id3 (R	effectId3

effect_id4 (R	effectId4

effect_id5 (R	effectId5

effect_id6	 (R	effectId6

effect_id7
 (R	effectId7

effect_id8 (R	effectId8

effect_id9 (R	effectId9
effect_id10 (R
effectId10
layer_score (R
layerScore
name (	Rname
icon (	Ricon
icon_bg (	RiconBg
desc (	Rdesc
param1 (	Rparam1
param2 (	Rparam2
param3 (	Rparam3
param4 (	Rparam4
param5 (	Rparam5
param6 (	Rparam6B™Nova.Clientbproto3
ã
table_DiscCommonSkill.protoDiscCommonSkill.proto"=
table_DiscCommonSkill$
list (2.DiscCommonSkillRlistB™Nova.Clientbproto3
u
DiscItemExp.proto"H
DiscItemExp
id (Rid
item_id (RitemId
exp (RexpB™Nova.Clientbproto3
{
table_DiscItemExp.protoDiscItemExp.proto"5
table_DiscItemExp 
list (2.DiscItemExpRlistB™Nova.Clientbproto3
Ì
DiscPassiveSkill.proto"∫
DiscPassiveSkill
id (Rid
group_id (RgroupId
level (Rlevel
break (Rbreak
	main_note (RmainNote#
active_param1 (	RactiveParam1

effect_id1 (R	effectId1#
active_param2 (	RactiveParam2

effect_id2	 (R	effectId2#
active_param3
 (	RactiveParam3

effect_id3 (R	effectId3#
active_param4 (	RactiveParam4

effect_id4 (R	effectId4#
active_param5 (	RactiveParam5

effect_id5 (R	effectId5
layer_score (R
layerScore
name (	Rname
icon (	Ricon
icon_bg (	RiconBg
desc1 (	Rdesc1
desc2 (	Rdesc2
desc3 (	Rdesc3
desc4 (	Rdesc4
desc5 (	Rdesc5
param1 (	Rparam1
param2 (	Rparam2
param3 (	Rparam3
param4 (	Rparam4
param5 (	Rparam5
param6 (	Rparam6B™Nova.Clientbproto3
è
table_DiscPassiveSkill.protoDiscPassiveSkill.proto"?
table_DiscPassiveSkill%
list (2.DiscPassiveSkillRlistB™Nova.Clientbproto3
™
DiscPromote.proto"¸
DiscPromote
id (Rid
item_id1 (RitemId1
num1 (Rnum1
item_id2 (RitemId2
num2 (Rnum2
item_id3 (RitemId3
num3 (Rnum3
item_id4 (RitemId4
num4	 (Rnum4!
expense_gold
 (RexpenseGoldB™Nova.Clientbproto3
{
table_DiscPromote.protoDiscPromote.proto"5
table_DiscPromote 
list (2.DiscPromoteRlistB™Nova.Clientbproto3
ü
DiscPromoteLimit.proto"m
DiscPromoteLimit
id (Rid
rarity (Rrarity
phase (	Rphase
	max_level (	RmaxLevelB™Nova.Clientbproto3
è
table_DiscPromoteLimit.protoDiscPromoteLimit.proto"?
table_DiscPromoteLimit%
list (2.DiscPromoteLimitRlistB™Nova.Clientbproto3
b
DiscStrengthen.proto"2
DiscStrengthen
id (Rid
exp (RexpB™Nova.Clientbproto3
á
table_DiscStrengthen.protoDiscStrengthen.proto";
table_DiscStrengthen#
list (2.DiscStrengthenRlistB™Nova.Clientbproto3
X
DiscTag.proto"/
DiscTag
id (Rid
title (	RtitleB™Nova.Clientbproto3
k
table_DiscTag.protoDiscTag.proto"-
table_DiscTag
list (2.DiscTagRlistB™Nova.Clientbproto3
\

Drop.proto"6
Drop
drop_id (RdropId
pkg_id (RpkgIdB™Nova.Clientbproto3
_
table_Drop.proto
Drop.proto"'

table_Drop
list (2.DropRlistB™Nova.Clientbproto3
â
DropItemShow.proto"[
DropItemShow
drop_id (RdropId
item_id (RitemId
item_qty (RitemQtyB™Nova.Clientbproto3

table_DropItemShow.protoDropItemShow.proto"7
table_DropItemShow!
list (2.DropItemShowRlistB™Nova.Clientbproto3
p
DropObject.proto"D

DropObject
id (Rid&
drop_object_res (	RdropObjectResB™Nova.Clientbproto3
w
table_DropObject.protoDropObject.proto"3
table_DropObject
list (2.DropObjectRlistB™Nova.Clientbproto3
≤
DropObjectGroup.proto"Ä
DropObjectGroup/
drop_object_group_id (RdropObjectGroupId$
drop_object_id (RdropObjectId
weight (RweightB™Nova.Clientbproto3
ã
table_DropObjectGroup.protoDropObjectGroup.proto"=
table_DropObjectGroup$
list (2.DropObjectGroupRlistB™Nova.Clientbproto3
b
DropPkg.proto"9
DropPkg
pkg_id (RpkgId
item_id (RitemIdB™Nova.Clientbproto3
k
table_DropPkg.protoDropPkg.proto"-
table_DropPkg
list (2.DropPkgRlistB™Nova.Clientbproto3
√
Effect.proto"ö
Effect
id (Rid
name (	Rname&
level_type_data (RlevelTypeData

level_data (R	levelData&
main_or_support (RmainOrSupport
trigger (Rtrigger%
trigger_target (RtriggerTarget-
trigger_condition1 (RtriggerCondition1%
trigger_param1	 (	RtriggerParam1%
trigger_param2
 (	RtriggerParam2%
trigger_param3 (	RtriggerParam3%
trigger_param4 (	RtriggerParam4'
trigger_target2 (RtriggerTarget2-
trigger_condition2 (RtriggerCondition2'
trigger2_param1 (	Rtrigger2Param1'
trigger2_param2 (	Rtrigger2Param2'
trigger2_param3 (	Rtrigger2Param3'
trigger2_param4 (	Rtrigger2Param4,
trigger_logic_type (RtriggerLogicType.
take_effect_target1 (RtakeEffectTarget14
take_effect_condition1 (RtakeEffectCondition1,
take_effect_param1 (	RtakeEffectParam1,
take_effect_param2 (	RtakeEffectParam2,
take_effect_param3 (	RtakeEffectParam3,
take_effect_param4 (	RtakeEffectParam4.
take_effect_target2 (RtakeEffectTarget24
take_effect_condition2 (RtakeEffectCondition2.
take_effect2_param1 (	RtakeEffect2Param1.
take_effect2_param2 (	RtakeEffect2Param2.
take_effect2_param3 (	RtakeEffect2Param3.
take_effect2_param4 (	RtakeEffect2Param43
take_effect_logic_type  (RtakeEffectLogicType
target1! (Rtarget1+
target_condition1" (RtargetCondition1#
target_param1# (	RtargetParam1#
target_param2$ (	RtargetParam2#
target_param3% (	RtargetParam3#
target_param4& (	RtargetParam4+
target_condition2' (RtargetCondition2%
target2_param1( (	Rtarget2Param1%
target2_param2) (	Rtarget2Param2%
target2_param3* (	Rtarget2Param3%
target2_param4+ (	Rtarget2Param4*
filter_logic_type, (RfilterLogicTypeB™Nova.Clientbproto3
g
table_Effect.protoEffect.proto"+
table_Effect
list (2.EffectRlistB™Nova.Clientbproto3
¿
EffectDesc.proto"ì

EffectDesc
id (Rid
type_i_d (RtypeID
	type2_i_d (Rtype2ID
desc (	Rdesc(
random_attr_desc (	RrandomAttrDesc
	attribute (	R	attribute
word_i_d (RwordID

is_percent (R	isPercent
icon	 (	Ricon
format
 (RformatB™Nova.Clientbproto3
w
table_EffectDesc.protoEffectDesc.proto"3
table_EffectDesc
list (2.EffectDescRlistB™Nova.Clientbproto3
¬
EffectValue.proto"î
EffectValue
id (Rid
name (	Rname
tag (	Rtag*
take_effect_limit (RtakeEffectLimit
remove (Rremove
c_d (RcD
effect_rate (R
effectRate
effect_type (R
effectType9
effect_type_first_subtype	 (ReffectTypeFirstSubtype;
effect_type_second_subtype
 (ReffectTypeSecondSubtype,
effect_type_param1 (	ReffectTypeParam1,
effect_type_param2 (	ReffectTypeParam2,
effect_type_param3 (	ReffectTypeParam3,
effect_type_param4 (	ReffectTypeParam4,
effect_type_param5 (	ReffectTypeParam5,
effect_type_param6 (	ReffectTypeParam6,
effect_type_param7 (	ReffectTypeParam7B™Nova.Clientbproto3
{
table_EffectValue.protoEffectValue.proto"5
table_EffectValue 
list (2.EffectValueRlistB™Nova.Clientbproto3
ú
EndSceneType.proto"n
EndSceneType
id (Rid
theme (Rtheme$
end_scene_name (	RendSceneName
b_g_m (	RbGMB™Nova.Clientbproto3

table_EndSceneType.protoEndSceneType.proto"7
table_EndSceneType!
list (2.EndSceneTypeRlistB™Nova.Clientbproto3
¿
EnergyBuy.proto"î
	EnergyBuy
id (Rid(
currency_item_id (RcurrencyItemId*
currency_item_qty (RcurrencyItemQty!
energy_value (RenergyValueB™Nova.Clientbproto3
s
table_EnergyBuy.protoEnergyBuy.proto"1
table_EnergyBuy
list (2
.EnergyBuyRlistB™Nova.Clientbproto3
y
EnumDesc.proto"O
EnumDesc
	enum_name (	RenumName
value (Rvalue
key (	RkeyB™Nova.Clientbproto3
o
table_EnumDesc.protoEnumDesc.proto"/
table_EnumDesc
list (2	.EnumDescRlistB™Nova.Clientbproto3
˛
Equipment.proto"“
	Equipment
id (Rid
name (	Rname%
equipment_type (RequipmentType"
attr_group_id (RattrGroupId 
exp_group_id (R
expGroupId
	max_level (RmaxLevel*
random_attr_count (RrandomAttrCount,
attr1_unlock_level (Rattr1UnlockLevel,
attr2_unlock_level	 (Rattr2UnlockLevel,
attr3_unlock_level
 (Rattr3UnlockLevel,
attr4_unlock_level (Rattr4UnlockLevel
provide_exp (R
provideExp
icon (	RiconB™Nova.Clientbproto3
s
table_Equipment.protoEquipment.proto"1
table_Equipment
list (2
.EquipmentRlistB™Nova.Clientbproto3
¿
EquipmentGroupExp.proto"å
EquipmentGroupExp
id (Rid
group_id (RgroupId
level (Rlevel
need_exp (RneedExp
	total_exp (RtotalExpB™Nova.Clientbproto3
ì
table_EquipmentGroupExp.protoEquipmentGroupExp.proto"A
table_EquipmentGroupExp&
list (2.EquipmentGroupExpRlistB™Nova.Clientbproto3
ê
EquipmentInstance.proto"‹
EquipmentInstance
id (Rid%
equipment_type (RequipmentType

difficulty (R
difficulty
name (	Rname
desc (	Rdesc'
suggested_power (RsuggestedPower 
pre_level_id (R
preLevelId$
pre_level_star (RpreLevelStar(
need_world_class	 (RneedWorldClass
floor_id
 (RfloorId"
one_star_desc (	RoneStarDesc"
two_star_desc (	RtwoStarDesc&
three_star_desc (	RthreeStarDesc5
one_star_energy_consume (RoneStarEnergyConsume5
two_star_energy_consume (RtwoStarEnergyConsume9
three_star_energy_consume (RthreeStarEnergyConsume,
base_award_preview (	RbaseAwardPreview7
preview_monster_group_id (RpreviewMonsterGroupId
icon (	RiconB™Nova.Clientbproto3
ì
table_EquipmentInstance.protoEquipmentInstance.proto"A
table_EquipmentInstance&
list (2.EquipmentInstanceRlistB™Nova.Clientbproto3
€
EquipmentInstanceFloor.proto"¢
EquipmentInstanceFloor
id (Rid

scene_name (	R	sceneName,
config_prefab_name (	RconfigPrefabName
theme (Rtheme
b_g_m (	RbGM.
leave_trigger_event (	RleaveTriggerEvent

monster_id (R	monsterId,
one_star_condition (RoneStarCondition,
two_star_condition	 (RtwoStarCondition0
three_star_condition
 (RthreeStarCondition(
level_total_time (RlevelTotalTime.
time_end_settlement (RtimeEndSettlement.
star_condition_type (RstarConditionType

monster_lv (R	monsterLv/
drop_object_group_id (RdropObjectGroupId(
drop_object_rate (RdropObjectRate 
drop_max_num (R
dropMaxNumB™Nova.Clientbproto3
ß
"table_EquipmentInstanceFloor.protoEquipmentInstanceFloor.proto"K
table_EquipmentInstanceFloor+
list (2.EquipmentInstanceFloorRlistB™Nova.Clientbproto3
˜
EquipmentInstanceType.proto"ø
EquipmentInstanceType
id (Rid
name (	Rname 
main_line_id (R
mainLineId*
world_class_level (RworldClassLevel
open_day (RopenDay"
open_day_desc (	RopenDayDesc
episode (	Repisode
image (	Rimage
sort	 (Rsort

how_reward
 (R	howReward
e_e_t (ReETB™Nova.Clientbproto3
£
!table_EquipmentInstanceType.protoEquipmentInstanceType.proto"I
table_EquipmentInstanceType*
list (2.EquipmentInstanceTypeRlistB™Nova.Clientbproto3

EquipmentItemExp.proto"M
EquipmentItemExp
id (Rid
item_id (RitemId
exp (RexpB™Nova.Clientbproto3
è
table_EquipmentItemExp.protoEquipmentItemExp.proto"?
table_EquipmentItemExp%
list (2.EquipmentItemExpRlistB™Nova.Clientbproto3
·
EquipmentRandomAttribute.proto"¶
EquipmentRandomAttribute
id (Rid!
element_type (RelementType&
attr_group_type (RattrGroupType"
attr_value_id (RattrValueId
	attr_type (RattrType5
attr_type_first_subtype (RattrTypeFirstSubtype7
attr_type_second_subtype (RattrTypeSecondSubtypeB™Nova.Clientbproto3
Ø
$table_EquipmentRandomAttribute.protoEquipmentRandomAttribute.proto"O
table_EquipmentRandomAttribute-
list (2.EquipmentRandomAttributeRlistB™Nova.Clientbproto3
ï
ErrorCode.proto"j
	ErrorCode
id (Rid
title (	Rtitle
template (	Rtemplate
	show_type (RshowTypeB™Nova.Clientbproto3
s
table_ErrorCode.protoErrorCode.proto"1
table_ErrorCode
list (2
.ErrorCodeRlistB™Nova.Clientbproto3
ê
EventOptions.proto"b
EventOptions
id (Rid
desc (	Rdesc.
ignore_inter_active (RignoreInterActiveB™Nova.Clientbproto3

table_EventOptions.protoEventOptions.proto"7
table_EventOptions!
list (2.EventOptionsRlistB™Nova.Clientbproto3
~
EventOptionsRules.proto"K
EventOptionsRules
id (Rid
name (	Rname
desc (	RdescB™Nova.Clientbproto3
ì
table_EventOptionsRules.protoEventOptionsRules.proto"A
table_EventOptionsRules&
list (2.EventOptionsRulesRlistB™Nova.Clientbproto3
˘
EventResult.proto"À
EventResult
id (Rid
effect1 (Reffect1

parameter1 (R
parameter1
effect2 (Reffect2

parameter2 (R
parameter2
effect3 (Reffect3

parameter3 (R
parameter3B™Nova.Clientbproto3
{
table_EventResult.protoEventResult.proto"5
table_EventResult 
list (2.EventResultRlistB™Nova.Clientbproto3
Ü
FactionRelation.proto"U
FactionRelation
id (Rid2
faction_relation_ship (RfactionRelationShipB™Nova.Clientbproto3
ã
table_FactionRelation.protoFactionRelation.proto"=
table_FactionRelation$
list (2.FactionRelationRlistB™Nova.Clientbproto3
ö
FateCard.proto"Ô
FateCard
id (Rid
name (	Rname
desc (	Rdesc
desc2 (	Rdesc2
is_tower (RisTower

is_vampire (R	isVampire,
is_vampire_special (RisVampireSpecial#
active_number (RactiveNumber
duration	 (Rduration*
active_room_types
 (RactiveRoomTypes#
active_action (RactiveAction
method_mode (R
methodMode#
client_effect (RclientEffect
count (Rcount

theme_type (R	themeType
theme_value (R
themeValue,
theme_trigger_type (RthemeTriggerType3
effective_immediately (ReffectiveImmediately
	removable (R	removableB™Nova.Clientbproto3
o
table_FateCard.protoFateCard.proto"/
table_FateCard
list (2	.FateCardRlistB™Nova.Clientbproto3
µ
FloorBuff.proto"â
	FloorBuff
id (Rid
add_camp (RaddCamp
	add_class (RaddClass
	effect_id (ReffectId
buff_id (RbuffIdB™Nova.Clientbproto3
s
table_FloorBuff.protoFloorBuff.proto"1
table_FloorBuff
list (2
.FloorBuffRlistB™Nova.Clientbproto3
ü
Force.proto"x
Force
id (Rid
title (	Rtitle
icon1 (	Ricon1
icon2 (	Ricon2

talent_pos (R	talentPosB™Nova.Clientbproto3
c
table_Force.protoForce.proto")
table_Force
list (2.ForceRlistB™Nova.Clientbproto3
s
FormationScene.proto"C
FormationScene

scene_name (	R	sceneName
path (	RpathB™Nova.Clientbproto3
á
table_FormationScene.protoFormationScene.proto";
table_FormationScene#
list (2.FormationSceneRlistB™Nova.Clientbproto3
æ
Gacha.proto"ñ
Gacha
id (Rid

default_id (R	defaultId
default_qty (R
defaultQty
cost_id (RcostId
cost_qty (RcostQty%
once_preferred (	RoncePreferred.
ten_times_preferred (	RtenTimesPreferred
limit_times (R
limitTimes,
a_type_up_show_prob	 (RaTypeUpShowProb,
b_type_up_show_prob
 (RbTypeUpShowProb

storage_id (R	storageId

start_time (	R	startTime
end_time (	RendTime
sort (Rsort
icon (	Ricon
image (	Rimage"
u_p_character (RuPCharacter

u_p_outfit (RuPOutfit
	character (R	character
outfit (Routfit
tag (	Rtag
voice (	RvoiceB™Nova.Clientbproto3
c
table_Gacha.protoGacha.proto")
table_Gacha
list (2.GachaRlistB™Nova.Clientbproto3
Ú
GachaAcquireReward.proto"Ω
GachaAcquireReward
id (Rid

item_stype (R	itemStype
item_rarity (R
itemRarity#
acquire_times (RacquireTimes
item_id (RitemId
item_num (RitemNumB™Nova.Clientbproto3
ó
table_GachaAcquireReward.protoGachaAcquireReward.proto"C
table_GachaAcquireReward'
list (2.GachaAcquireRewardRlistB™Nova.Clientbproto3
†
GachaType.proto"Ù
	GachaType
id (Rid
name (	Rname
	coin_item (RcoinItem
title1 (	Rtitle1
desc1 (	Rdesc1
title2 (	Rtitle2
desc2 (	Rdesc2
title3 (	Rtitle3
desc3	 (	Rdesc3
title4
 (	Rtitle4
desc4 (	Rdesc4
desc5 (	Rdesc5
title5 (	Rtitle5
desc6 (	Rdesc6
desc7 (	Rdesc7
desc8 (	Rdesc8B™Nova.Clientbproto3
s
table_GachaType.protoGachaType.proto"1
table_GachaType
list (2
.GachaTypeRlistB™Nova.Clientbproto3
ó
GamepadButton.proto"h
GamepadButton
id (	Rid
	xbox_icon (	RxboxIcon*
play_station_icon (	RplayStationIconB™Nova.Clientbproto3
É
table_GamepadButton.protoGamepadButton.proto"9
table_GamepadButton"
list (2.GamepadButtonRlistB™Nova.Clientbproto3
a
GMBuild.proto"8
GMBuild
id (Rid

build_data (	R	buildDataB™Nova.Clientbproto3
k
table_GMBuild.protoGMBuild.proto"-
table_GMBuild
list (2.GMBuildRlistB™Nova.Clientbproto3
Ç
GMOrder.proto"ÿ
GMOrder
order (	Rorder
desc (	Rdesc
param_count (R
paramCount
param_name1 (	R
paramName1
param_name2 (	R
paramName2
param_name3 (	R
paramName3
param_name4 (	R
paramName4B™Nova.Clientbproto3
k
table_GMOrder.protoGMOrder.proto"-
table_GMOrder
list (2.GMOrderRlistB™Nova.Clientbproto3
ò
GMTeam.proto"p
GMTeam
id (Rid
name (	Rname%
team_character (RteamCharacter
	team_disc (RteamDiscB™Nova.Clientbproto3
g
table_GMTeam.protoGMTeam.proto"+
table_GMTeam
list (2.GMTeamRlistB™Nova.Clientbproto3
·
Guide.proto"π
Guide
id (Rid
group_id (RgroupId
step (Rstep
type (Rtype#
guide_prepose (RguidePrepose%
prepose_params (	RpreposeParams#
guide_trigger (RguideTrigger%
trigger_params (	RtriggerParams
end_type	 (RendType#
center_offset
 (RcenterOffset
	bind_icon (	RbindIcon1
bind_icon_child_count (RbindIconChildCount
size (Rsize
	deviation (R	deviation
delay (Rdelay
head (	Rhead
desc (	Rdesc%
desc_deviation (RdescDeviation%
hand_deviation (RhandDeviation#
hand_rotation (RhandRotation

dictionary (R
dictionary
avg_id (	RavgId
	is_active (RisActiveB™Nova.Clientbproto3
c
table_Guide.protoGuide.proto")
table_Guide
list (2.GuideRlistB™Nova.Clientbproto3
£
GuideGroup.proto"ˆ

GuideGroup
id (Rid0
guide_detection_type (RguideDetectionType
passive_msg (	R
passiveMsg#
guide_prepose (RguidePrepose%
prepose_params (	RpreposeParams%
guide_prepose2 (RguidePrepose2'
prepose_params2 (	RpreposeParams2

guide_post (R	guidePost
post_params	 (	R
postParams#
guide_trigger
 (RguideTrigger%
trigger_params (	RtriggerParams
tower_state (R
towerState
script_path (	R
scriptPath
	is_active (RisActiveB™Nova.Clientbproto3
w
table_GuideGroup.protoGuideGroup.proto"3
table_GuideGroup
list (2.GuideGroupRlistB™Nova.Clientbproto3
µ
Handbook.proto"ä
Handbook
id (Rid
index (Rindex
type (Rtype
char_id (RcharId
skin_id (RskinId
cond (RcondB™Nova.Clientbproto3
o
table_Handbook.protoHandbook.proto"/
table_Handbook
list (2	.HandbookRlistB™Nova.Clientbproto3
ÿ
HitDamage.proto"¨
	HitDamage
id (Rid&
level_type_data (RlevelTypeData

level_data (R	levelData&
main_or_support (RmainOrSupport%
hitdamage_info (	RhitdamageInfo#
distance_type (RdistanceType
source_type (R
sourceType
damage_type (R
damageType
effect_type	 (R
effectType!
element_type
 (RelementType

damage_tag (R	damageTag*
damage_bonus_type (RdamageBonusType.
skill_percent_amend (RskillPercentAmend&
skill_abs_amend (RskillAbsAmend+
additional_source (RadditionalSource'
additional_type (RadditionalType-
additional_percent (RadditionalPercent#
energy_charge (RenergyCharge0
talent_percent_amend (RtalentPercentAmend(
talent_abs_amend (RtalentAbsAmend"
is_dense_type (RisDenseType%
perk_intensity (RperkIntensity
skill_id (RskillId&
skill_slot_type (RskillSlotType
perk_id (RperkIdB™Nova.Clientbproto3
s
table_HitDamage.protoHitDamage.proto"1
table_HitDamage
list (2
.HitDamageRlistB™Nova.Clientbproto3
µ
Honor.proto"ç
Honor
id (Rid
name (	Rname
	is_unlock (RisUnlock
type (Rtype
tab_type (RtabType
params (Rparams
priotity (Rpriotity
main_res (	RmainRes
sub_res	 (	RsubRes
sort
 (Rsort
b_g_type (RbGTypeB™Nova.Clientbproto3
c
table_Honor.protoHonor.proto")
table_Honor
list (2.HonorRlistB™Nova.Clientbproto3
ë
HonorCharacter.proto"‡
HonorCharacter
id (Rid
char_id (RcharId
level (Rlevel
big_bg_path (	R	bigBgPath"
small_bg_path (	RsmallBgPath

star_group (R	starGroup
sort (Rsort
b_g_type (RbGTypeB™Nova.Clientbproto3
á
table_HonorCharacter.protoHonorCharacter.proto";
table_HonorCharacter#
list (2.HonorCharacterRlistB™Nova.Clientbproto3
¥
InfinityTower.proto"Ñ
InfinityTower
id (Rid
name (	Rname!
element_type (RelementType0
formation_scene_name (	RformationSceneName
bg (	Rbg+
pre_tower_level_id (RpreTowerLevelId
open_day (RopenDay"
open_day_desc (	RopenDayDescB™Nova.Clientbproto3
É
table_InfinityTower.protoInfinityTower.proto"9
table_InfinityTower"
list (2.InfinityTowerRlistB™Nova.Clientbproto3
Ó
InfinityTowerAffix.proto"π
InfinityTowerAffix
id (Rid
name (	Rname
desc (	Rdesc
add_camp (RaddCamp+
trigger_condition (RtriggerCondition#
trigger_param (	RtriggerParamB™Nova.Clientbproto3
ó
table_InfinityTowerAffix.protoInfinityTowerAffix.proto"C
table_InfinityTowerAffix'
list (2.InfinityTowerAffixRlistB™Nova.Clientbproto3
Ï
InfinityTowerBountyLevel.proto"±
InfinityTowerBountyLevel
id (Rid
level (Rlevel
name (	Rname
icon (	Ricon$
reward_drop_id (RrewardDropId
reward_show (	R
rewardShow
cond1 (Rcond1
cond_param1 (R
condParam1

cond_desc1	 (	R	condDesc1
cond2
 (Rcond2
cond_param2 (R
condParam2

cond_desc2 (	R	condDesc2
cond3 (Rcond3
cond_param3 (R
condParam3

cond_desc3 (	R	condDesc3B™Nova.Clientbproto3
Ø
$table_InfinityTowerBountyLevel.protoInfinityTowerBountyLevel.proto"O
table_InfinityTowerBountyLevel-
list (2.InfinityTowerBountyLevelRlistB™Nova.Clientbproto3
¡
InfinityTowerDifficulty.proto"á
InfinityTowerDifficulty
id (Rid
name (	Rname
tower_id (RtowerId,
unlock_world_class (RunlockWorldClass
unlock_tips (	R
unlockTips!
is_challenge (RisChallenge'
recommend_level (RrecommendLevel
sort (RsortB™Nova.Clientbproto3
´
#table_InfinityTowerDifficulty.protoInfinityTowerDifficulty.proto"M
table_InfinityTowerDifficulty,
list (2.InfinityTowerDifficultyRlistB™Nova.Clientbproto3
‘
InfinityTowerEnemySet.proto"ú
InfinityTowerEnemySet
set_id (RsetId
wave_num (RwaveNum
	group_num (RgroupNum
max_num (RmaxNum'
max_num_per_wave (RmaxNumPerWave

monster_id (R	monsterId!
level_change (RlevelChange0
common_gameplay_type (RcommonGameplayTypeB™Nova.Clientbproto3
£
!table_InfinityTowerEnemySet.protoInfinityTowerEnemySet.proto"I
table_InfinityTowerEnemySet*
list (2.InfinityTowerEnemySetRlistB™Nova.Clientbproto3
Ä
InfinityTowerFloor.proto"À
InfinityTowerFloor
id (Rid
lv_id (RlvId
map_id (RmapId
	battle_lv (RbattleLv

floor_func (R	floorFunc

monster_lv (R	monsterLv
stage (Rstage
set_id (RsetId

limit_time	 (R	limitTime7
preview_monster_group_id
 (RpreviewMonsterGroupId
affix_id (RaffixIdB™Nova.Clientbproto3
ó
table_InfinityTowerFloor.protoInfinityTowerFloor.proto"C
table_InfinityTowerFloor'
list (2.InfinityTowerFloorRlistB™Nova.Clientbproto3
Ù
InfinityTowerLevel.proto"ø
InfinityTowerLevel
id (Rid
name (	Rname#
difficulty_id (RdifficultyId

level_type (R	levelType
floor (Rfloor
floor_id (RfloorId 
pre_level_id (R
preLevelId

entry_cond (R	entryCond(
entry_cond_param	 (RentryCondParam"
award_drop_id
 (RawardDropId!
recommend_lv (RrecommendLv0
recommend_build_rank (RrecommendBuildRank,
base_award_preview (	RbaseAwardPreviewB™Nova.Clientbproto3
ó
table_InfinityTowerLevel.protoInfinityTowerLevel.proto"C
table_InfinityTowerLevel'
list (2.InfinityTowerLevelRlistB™Nova.Clientbproto3
¸
InfinityTowerMap.proto"…
InfinityTowerMap
id (Rid

scene_name (	R	sceneName,
config_prefab_name (	RconfigPrefabName
theme (Rtheme
b_g_m (	RbGM.
leave_trigger_event (	RleaveTriggerEventB™Nova.Clientbproto3
è
table_InfinityTowerMap.protoInfinityTowerMap.proto"?
table_InfinityTowerMap%
list (2.InfinityTowerMapRlistB™Nova.Clientbproto3
Ô
InfinityTowerMsg.proto"º
InfinityTowerMsg
id (Rid
title (	Rtitle
content (	Rcontent
type (Rtype
day_of_week (R	dayOfWeek
	condition (R	condition
params (	RparamsB™Nova.Clientbproto3
è
table_InfinityTowerMsg.protoInfinityTowerMsg.proto"?
table_InfinityTowerMsg%
list (2.InfinityTowerMsgRlistB™Nova.Clientbproto3
ÿ
InfinityTowerPlot.proto"§
InfinityTowerPlot
id (Rid
name (	Rname
desc (	Rdesc
plot_sum (	RplotSum
plot_id (RplotId
avg_id (	RavgId
unlock_cond (R
unlockCond

cond_param (R	condParam$
reward_item_id	 (RrewardItemId&
reward_item_qty
 (RrewardItemQtyB™Nova.Clientbproto3
ì
table_InfinityTowerPlot.protoInfinityTowerPlot.proto"A
table_InfinityTowerPlot&
list (2.InfinityTowerPlotRlistB™Nova.Clientbproto3
“
InteractiveAction.proto"û
InteractiveAction
id (Rid

player_ani (R	playerAni
icon0 (	Ricon0
title0 (	Rtitle0
icon1 (	Ricon1
title1 (	Rtitle1B™Nova.Clientbproto3
ì
table_InteractiveAction.protoInteractiveAction.proto"A
table_InteractiveAction&
list (2.InteractiveActionRlistB™Nova.Clientbproto3
ˆ

Item.proto"œ
Item
id (Rid
title (	Rtitle
desc (	Rdesc
literary (	Rliterary
type (Rtype
stype (Rstype
rarity (Rrarity
stack (Rstack%
position_limit	 (RpositionLimit
expire_type
 (R
expireType
use_mode (RuseMode

use_action (R	useAction
use_args (	RuseArgs
display (Rdisplay
obtain_ways (	R
obtainWays
jump_to (RjumpTo
icon (	Ricon
icon2 (	Ricon2B™Nova.Clientbproto3
_
table_Item.proto
Item.proto"'

table_Item
list (2.ItemRlistB™Nova.Clientbproto3
±
ItemPackMark.proto"Ç
ItemPackMark
id (Rid
	pack_mark (RpackMark

item_stype (R	itemStype
name (	Rname
sort (RsortB™Nova.Clientbproto3

table_ItemPackMark.protoItemPackMark.proto"7
table_ItemPackMark!
list (2.ItemPackMarkRlistB™Nova.Clientbproto3
í
JumpTo.proto"j
JumpTo
id (Rid
type (Rtype
param (Rparam
desc (	Rdesc
icon (	RiconB™Nova.Clientbproto3
g
table_JumpTo.protoJumpTo.proto"+
table_JumpTo
list (2.JumpToRlistB™Nova.Clientbproto3
·
LoginRewardControl.proto"¨
LoginRewardControl
id (Rid#
rewards_group (RrewardsGroup
des_text (	RdesText

u_i_assets (	RuIAssets(
pop_up_u_i_assets (	RpopUpUIAssetsB™Nova.Clientbproto3
ó
table_LoginRewardControl.protoLoginRewardControl.proto"C
table_LoginRewardControl'
list (2.LoginRewardControlRlistB™Nova.Clientbproto3
Å
LoginRewardGroup.proto"Œ
LoginRewardGroup&
reward_group_id (RrewardGroupId
order (Rorder

reward_id1 (R	rewardId1
qty1 (Rqty1

reward_id2 (R	rewardId2
qty2 (Rqty2

reward_id3 (R	rewardId3
qty3 (Rqty3
reward_icon	 (	R
rewardIcon!
reward_count
 (RrewardCount
reward_desc (	R
rewardDescB™Nova.Clientbproto3
è
table_LoginRewardGroup.protoLoginRewardGroup.proto"?
table_LoginRewardGroup%
list (2.LoginRewardGroupRlistB™Nova.Clientbproto3
‚
MailTemplate.proto"≥
MailTemplate
id (Rid 
explanation (	Rexplanation
icon (	Ricon
author (	Rauthor!
letter_paper (	RletterPaper
subject (	Rsubject
desc (	Rdesc
type (Rtype
props1	 (Rprops1!
props_count1
 (RpropsCount1
props2 (Rprops2!
props_count2 (RpropsCount2
props3 (Rprops3!
props_count3 (RpropsCount3
props4 (Rprops4!
props_count4 (RpropsCount4
props5 (Rprops5!
props_count5 (RpropsCount5
props6 (Rprops6!
props_count6 (RpropsCount6B™Nova.Clientbproto3

table_MailTemplate.protoMailTemplate.proto"7
table_MailTemplate!
list (2.MailTemplateRlistB™Nova.Clientbproto3
ä
Mainline.proto"ﬂ
Mainline
id (Rid
num (	Rnum
name (	Rname
desc (	Rdesc
type (Rtype
energy (Renergy

chapter_id (R	chapterId
prev (Rprev
form	 (Rform
avg_id
 (	RavgId'
trial_character (RtrialCharacter"
before_avg_id (	RbeforeAvgId 
after_avg_id (	R
afterAvgId%
energy_consume (RenergyConsume
unlock_item (R
unlockItem

unlock_qty (R	unlockQty
glob_reward (R
globReward%
reward_preview (	RrewardPreview
item_reward (R
itemReward*
first_item_reward (RfirstItemReward%
diamond_reward (RdiamondReward(
min_chest_reward (	RminChestReward(
max_chest_reward (	RmaxChestReward
char_banned (R
charBanned
floor_id (RfloorId
icon (	Ricon
pos_id (RposId7
preview_monster_group_id (RpreviewMonsterGroupId
	recommend (R	recommend
repeat (Rrepeat 
sub_map_name (R
subMapName!
mainline_img  (	RmainlineImgB™Nova.Clientbproto3
o
table_Mainline.protoMainline.proto"/
table_Mainline
list (2	.MainlineRlistB™Nova.Clientbproto3
ï
MainlineFloor.proto"Â
MainlineFloor
id (Rid

scene_name (	R	sceneName,
config_prefab_name (	RconfigPrefabName
theme (Rtheme
b_g_m (	RbGM.
leave_trigger_event (	RleaveTriggerEvent

monster_lv (R	monsterLvB™Nova.Clientbproto3
É
table_MainlineFloor.protoMainlineFloor.proto"9
table_MainlineFloor"
list (2.MainlineFloorRlistB™Nova.Clientbproto3
∫
MallGem.proto"ê
MallGem
id (	Rid
name (	Rname
order (Rorder 
base_item_id (R
baseItemId"
base_item_qty (RbaseItemQty9
experienced_bonus_item_id (RexperiencedBonusItemId;
experienced_bonus_item_qty (RexperiencedBonusItemQty0
maiden_bonus_item_i_d (RmaidenBonusItemID1
maiden_bonus_item_qty	 (RmaidenBonusItemQty
price
 (Rprice
icon (	RiconB™Nova.Clientbproto3
k
table_MallGem.protoMallGem.proto"-
table_MallGem
list (2.MallGemRlistB™Nova.Clientbproto3
ö
MallMonthlyCard.proto"Ë
MallMonthlyCard
id (	Rid
name (	Rname&
monthly_card_id (RmonthlyCardId
price (Rprice 
base_item_id (R
baseItemId"
base_item_qty (RbaseItemQty
max_days (RmaxDays
icon (	RiconB™Nova.Clientbproto3
ã
table_MallMonthlyCard.protoMallMonthlyCard.proto"=
table_MallMonthlyCard$
list (2.MallMonthlyCardRlistB™Nova.Clientbproto3
Ú
MallPackage.proto"ƒ
MallPackage
id (	Rid
name (	Rname
group_id (RgroupId
sort (Rsort#
currency_type (RcurrencyType(
currency_item_id (RcurrencyItemId*
currency_item_qty (RcurrencyItemQty
stock (Rstock!
refresh_type	 (RrefreshType
items
 (	Ritems$
list_cond_type (RlistCondType(
list_cond_params (	RlistCondParams&
order_cond_type (RorderCondType*
order_cond_params (	RorderCondParams
	list_time (	RlistTime 
de_list_time (	R
deListTime!
display_mode (RdisplayMode
icon (	RiconB™Nova.Clientbproto3
{
table_MallPackage.protoMallPackage.proto"5
table_MallPackage 
list (2.MallPackageRlistB™Nova.Clientbproto3
z
MallPackagePage.proto"I
MallPackagePage
id (Rid
name (	Rname
sort (RsortB™Nova.Clientbproto3
ã
table_MallPackagePage.protoMallPackagePage.proto"=
table_MallPackagePage$
list (2.MallPackagePageRlistB™Nova.Clientbproto3
Â
MallShop.proto"∫
MallShop
id (	Rid
name (	Rname
desc (	Rdesc
group_id (RgroupId
sort (Rsort(
exchange_item_id (RexchangeItemId*
exchange_item_qty (RexchangeItemQty
stock (Rstock!
refresh_type	 (RrefreshType
item_id
 (RitemId
item_qty (RitemQty$
list_cond_type (RlistCondType(
list_cond_params (	RlistCondParams&
order_cond_type (RorderCondType*
order_cond_params (	RorderCondParams
	list_time (	RlistTime 
de_list_time (	R
deListTime!
display_mode (RdisplayModeB™Nova.Clientbproto3
o
table_MallShop.protoMallShop.proto"/
table_MallShop
list (2	.MallShopRlistB™Nova.Clientbproto3
˝
MallShopPage.proto"Œ
MallShopPage
id (Rid
sort (Rsort
name (	Rname*
refresh_time_type (RrefreshTimeType
	shop_coin (RshopCoin
	list_time (	RlistTime 
de_list_time (	R
deListTimeB™Nova.Clientbproto3

table_MallShopPage.protoMallShopPage.proto"7
table_MallShopPage!
list (2.MallShopPageRlistB™Nova.Clientbproto3
‹	
Monster.proto"≤	
Monster
id (Rid
name (	Rname$
formal_name_id (RformalNameId
epic_lv (RepicLv)
monster_position (RmonsterPosition

blood_type (R	bloodType
force (	Rforce
f_c_id (RfCId
f_a_id	 (RfAId
mov_type
 (RmovType
run_spd (RrunSpd&
trans_spd_scale (RtransSpdScale
walk_spd (RwalkSpd
mov_acc (RmovAcc

vision_rng (R	visionRng

vision_deg (R	visionDeg
hear_rng (RhearRng
ref_rng (RrefRng
act_rng (RactRng
dis_act_rng (R	disActRng

search_rng (R	searchRng
rot_spd (RrotSpd'
rot_spd_in_skill (RrotSpdInSkill
templete (Rtemplete
buff_ids (RbuffIds
sub_type (RsubType
faction (Rfaction 
trap_tag_ids (R
trapTagIds

sup_charge (R	supCharge
is_show_rng (R	isShowRng
weight (Rweight2
toughness_broken_time  (RtoughnessBrokenTime
tag1! (	Rtag1
tag2" (	Rtag2
tag3# (	Rtag3
tag4$ (	Rtag4
tag5% (	Rtag5(
attack_hint_type& (RattackHintType%
block_priority' (RblockPriority&
way_point_shift( (RwayPointShift&
monster_team_id) (RmonsterTeamIdB™Nova.Clientbproto3
k
table_Monster.protoMonster.proto"-
table_Monster
list (2.MonsterRlistB™Nova.Clientbproto3
ﬁ
MonsterActionBranch.proto"®
MonsterActionBranch
id (Rid
group_id (RgroupId
skill_id (RskillId
priority (Rpriority
weight (Rweight
rate (Rrate
c_d (RcD'
initial_c_d_pool (RinitialCDPool%
min_initial_c_d	 (RminInitialCD%
max_initial_c_d
 (RmaxInitialCD#
start_c_d_time (RstartCDTime
	fixed_c_d (RfixedCD)
release_distance (RreleaseDistance#
release_angle (RreleaseAngle%
trace_duration (RtraceDuration
activate (Ractivate4
active_condition_type1 (RactiveConditionType1#
active_param1 (	RactiveParam1#
active_param2 (	RactiveParam29
de_active_condition_type1 (RdeActiveConditionType1(
de_active_param1 (	RdeActiveParam1(
de_active_param2 (	RdeActiveParam2,
follow_event_type1 (RfollowEventType1.
follow_event_param1 (	RfollowEventParam1,
follow_event_type2 (RfollowEventType2.
follow_event_param2 (	RfollowEventParam2,
follow_event_type3 (RfollowEventType3.
follow_event_param3 (	RfollowEventParam3B™Nova.Clientbproto3
õ
table_MonsterActionBranch.protoMonsterActionBranch.proto"E
table_MonsterActionBranch(
list (2.MonsterActionBranchRlistB™Nova.Clientbproto3
ˆ
MonsterAI.proto" 
	MonsterAI
id (Rid(
combo_group_path (	RcomboGroupPath-
spawn_show_skill_id (RspawnShowSkillId+
idle_show_skill_id (RidleShowSkillId 
die_skill_id (R
dieSkillId%
action_a_i_path (	RactionAIPath*
action_branch_ids (RactionBranchIds%
think_interval (RthinkInterval!
idle_a_i_path	 (	R
idleAIPath#
spawn_a_i_path
 (	RspawnAIPath)
parallel_a_i_path (	RparallelAIPath+
check_achievement (RcheckAchievement!
wander_range (RwanderRange'
wander_interval (RwanderInterval
wander_rate (R
wanderRateB™Nova.Clientbproto3
s
table_MonsterAI.protoMonsterAI.proto"1
table_MonsterAI
list (2
.MonsterAIRlistB™Nova.Clientbproto3
Ÿ
MonsterBornGroup.proto"¶
MonsterBornGroup
group_id (RgroupId

monster_id (R	monsterId

difficulty (R
difficulty
	min_floor (RminFloor
	max_floor (RmaxFloorB™Nova.Clientbproto3
è
table_MonsterBornGroup.protoMonsterBornGroup.proto"?
table_MonsterBornGroup%
list (2.MonsterBornGroupRlistB™Nova.Clientbproto3
h
MonsterGroup.proto":
MonsterGroup
id (Rid
monsters (	RmonstersB™Nova.Clientbproto3

table_MonsterGroup.protoMonsterGroup.proto"7
table_MonsterGroup!
list (2.MonsterGroupRlistB™Nova.Clientbproto3
≥
MonsterSkin.proto"Ö
MonsterSkin
id (Rid
name (	Rname
desc (	Rdesc
icon (	Ricon
	hint_icon (	RhintIcon
model (	Rmodel*
run_animation_spd (RrunAnimationSpd,
walk_animation_spd (RwalkAnimationSpd

bar_height	 (R	barHeight
model_scale
 (R
modelScale#
buff_f_x_scale (RbuffFXScale%
collider_scale (RcolliderScale.
forbidden_behit_rot (RforbiddenBehitRot,
effect_scale_value (ReffectScaleValue3
tag_effect_scale_value (RtagEffectScaleValueB™Nova.Clientbproto3
{
table_MonsterSkin.protoMonsterSkin.proto"5
table_MonsterSkin 
list (2.MonsterSkinRlistB™Nova.Clientbproto3
£
MonsterTeam.proto"ı
MonsterTeam
id (Rid
mate0_id (Rmate0Id
mate1_id (Rmate1Id
mate2_id (Rmate2Id
mate3_id (Rmate3Id
mate4_id (Rmate4Id
mate5_id (Rmate5Id
mate6_id (Rmate6Id
mate7_id	 (Rmate7IdB™Nova.Clientbproto3
{
table_MonsterTeam.protoMonsterTeam.proto"5
table_MonsterTeam 
list (2.MonsterTeamRlistB™Nova.Clientbproto3
ÿ
MonsterValueTemplete.proto"°
MonsterValueTemplete
id (Rid
template_id (R
templateId
name (	Rname
lv (Rlv
hp (Rhp
atk (Ratk
def (Rdef
	crit_rate (RcritRate(
normal_crit_rate	 (RnormalCritRate&
skill_crit_rate
 (RskillCritRate&
ultra_crit_rate (RultraCritRate$
mark_crit_rate (RmarkCritRate(
summon_crit_rate (RsummonCritRate0
projectile_crit_rate (RprojectileCritRate&
other_crit_rate (RotherCritRate'
crit_resistance (RcritResistance

crit_power (R	critPower*
normal_crit_power (RnormalCritPower(
skill_crit_power (RskillCritPower(
ultra_crit_power (RultraCritPower&
mark_crit_power (RmarkCritPower*
summon_crit_power (RsummonCritPower2
projectile_crit_power (RprojectileCritPower(
other_crit_power (RotherCritPower
hit_rate (RhitRate
evd (Revd
atk_spd (RatkSpd

def_pierce (R	defPierce

def_ignore (R	defIgnore
w_e_p (RwEP
f_e_p (RfEP
s_e_p  (RsEP
a_e_p! (RaEP
l_e_p" (RlEP
d_e_p# (RdEP
w_e_i$ (RwEI
f_e_i% (RfEI
s_e_i& (RsEI
a_e_i' (RaEI
l_e_i( (RlEI
d_e_i) (RdEI
w_e_e* (RwEE
f_e_e+ (RfEE
s_e_e, (RsEE
a_e_e- (RaEE
l_e_e. (RlEE
d_e_e/ (RdEE
w_e_r0 (RwER
f_e_r1 (RfER
s_e_r2 (RsER
a_e_r3 (RaER
l_e_r4 (RlER
d_e_r5 (RdER
	toughness6 (R	toughness
suppress7 (Rsuppress'
r_c_d_m_a_r_k_d_m_g8 (R
rCDMARKDMGB™Nova.Clientbproto3
ü
 table_MonsterValueTemplete.protoMonsterValueTemplete.proto"G
table_MonsterValueTemplete)
list (2.MonsterValueTempleteRlistB™Nova.Clientbproto3
´
 MonsterValueTempleteAdjust.proto"Ó
MonsterValueTempleteAdjust
id (Rid
template_id (R
templateId
name (	Rname
e_e_t (ReET

weak_e_e_t (RweakEET
hp_ratio (RhpRatio
hp_fix (RhpFix
	atk_ratio (RatkRatio
atk_fix	 (RatkFix
w_e_r_ratio
 (RwERRatio
	w_e_r_fix (RwERFix
f_e_r_ratio (RfERRatio
	f_e_r_fix (RfERFix
s_e_r_ratio (RsERRatio
	s_e_r_fix (RsERFix
a_e_r_ratio (RaERRatio
	a_e_r_fix (RaERFix
l_e_r_ratio (RlERRatio
	l_e_r_fix (RlERFix
d_e_r_ratio (RdERRatio
	d_e_r_fix (RdERFix'
toughness_ratio (RtoughnessRatio#
toughness_fix (RtoughnessFix%
suppress_ratio (RsuppressRatio!
suppress_fix (RsuppressFixB™Nova.Clientbproto3
∑
&table_MonsterValueTempleteAdjust.proto MonsterValueTempleteAdjust.proto"S
 table_MonsterValueTempleteAdjust/
list (2.MonsterValueTempleteAdjustRlistB™Nova.Clientbproto3
‰
MonthlyCard.proto"∂
MonthlyCard
id (Rid
card_id (RcardId

reward_id1 (R	rewardId1
reward_num1 (R
rewardNum1

reward_id2 (R	rewardId2
reward_num2 (R
rewardNum2B™Nova.Clientbproto3
{
table_MonthlyCard.protoMonthlyCard.proto"5
table_MonthlyCard 
list (2.MonthlyCardRlistB™Nova.Clientbproto3
‘

Note.proto"≠
Note
id (Rid
note_ (Rnote
style1 (	Rstyle1
style2 (	Rstyle2
style3 (	Rstyle3
style4 (	Rstyle4
style5 (	Rstyle5
style6 (	Rstyle6
style7	 (	Rstyle7
style8
 (	Rstyle8
color (	Rcolor
name1 (	Rname1
name2 (	Rname2B™Nova.Clientbproto3
_
table_Note.proto
Note.proto"'

table_Note
list (2.NoteRlistB™Nova.Clientbproto3
⁄
NoteDropGroup.proto"™
NoteDropGroup
index (Rindex
group_id (RgroupId*
random_note_range (RrandomNoteRange 
a_note_range (R
aNoteRange 
b_note_range (R
bNoteRange 
c_note_range (R
cNoteRange 
d_note_range (R
dNoteRange 
e_note_range (R
eNoteRange
icon	 (	RiconB™Nova.Clientbproto3
É
table_NoteDropGroup.protoNoteDropGroup.proto"9
table_NoteDropGroup"
list (2.NoteDropGroupRlistB™Nova.Clientbproto3
‚
NPCConfig.proto"∂
	NPCConfig
id (Rid
type (Rtype
name (	Rname
desc (	Rdesc
literary (	Rliterary#
refresh_point (RrefreshPoint
first_lines (R
firstLines
lines (Rlines
chat	 (Rchat
	chat_prop
 (RchatProp
	chat_time (RchatTime
n_p_c_id (RnPCIdB™Nova.Clientbproto3
s
table_NPCConfig.protoNPCConfig.proto"1
table_NPCConfig
list (2
.NPCConfigRlistB™Nova.Clientbproto3
œ
NPCSkin.proto"•
NPCSkin
id (Rid
name (	Rname
desc (	Rdesc
is_show (RisShow
char_id (RcharId
type (Rtype
source_desc (R
sourceDesc
icon (	Ricon%
small_portrait	 (	RsmallPortrait
model_scale
 (R
modelScale
model (	Rmodel
portrait (	Rportrait
bg (	Rbg
offset (	Roffset
l2_d (	Rl2D0
full_screen_portrait (	RfullScreenPortrait

skin_theme (R	skinTheme-
interactive_action (RinteractiveAction2
interactive_action_id (RinteractiveActionIdB™Nova.Clientbproto3
k
table_NPCSkin.protoNPCSkin.proto"-
table_NPCSkin
list (2.NPCSkinRlistB™Nova.Clientbproto3
“
OnceAdditionalAttribute.proto"ò
OnceAdditionalAttribute
id (Rid&
level_type_data (RlevelTypeData

level_data (R	levelData&
main_or_support (RmainOrSupportB™Nova.Clientbproto3
´
#table_OnceAdditionalAttribute.protoOnceAdditionalAttribute.proto"M
table_OnceAdditionalAttribute,
list (2.OnceAdditionalAttributeRlistB™Nova.Clientbproto3
´
"OnceAdditionalAttributeValue.proto"Ï
OnceAdditionalAttributeValue
id (Rid'
attribute_type1 (RattributeType1'
parameter_type1 (RparameterType1
value1 (Rvalue1'
attribute_type2 (RattributeType2'
parameter_type2 (RparameterType2
value2 (Rvalue2'
attribute_type3 (RattributeType3'
parameter_type3	 (RparameterType3
value3
 (Rvalue3B™Nova.Clientbproto3
ø
(table_OnceAdditionalAttributeValue.proto"OnceAdditionalAttributeValue.proto"W
"table_OnceAdditionalAttributeValue1
list (2.OnceAdditionalAttributeValueRlistB™Nova.Clientbproto3
∞
OpenFunc.proto"Ö
OpenFunc
id (Rid
name (	Rname(
need_world_class (RneedWorldClass'
need_conditions (RneedConditions%
need_roguelike (RneedRoguelike
pop_windows (R
popWindows
desc (	Rdesc
icon (	Ricon
tips	 (	RtipsB™Nova.Clientbproto3
o
table_OpenFunc.protoOpenFunc.proto"/
table_OpenFunc
list (2	.OpenFuncRlistB™Nova.Clientbproto3
Á
PeriodicQuest.proto"∑
PeriodicQuest
id (Rid
belong (Rbelong
groupid (Rgroupid
title (	Rtitle
jump_to (RjumpTo
reward (Rreward

reward_qty (R	rewardQtyB™Nova.Clientbproto3
É
table_PeriodicQuest.protoPeriodicQuest.proto"9
table_PeriodicQuest"
list (2.PeriodicQuestRlistB™Nova.Clientbproto3
…
PeriodicQuestControl.proto"í
PeriodicQuestControl
id (Rid#
final_reward1 (RfinalReward1*
final_reward_qty1 (RfinalRewardQty1#
final_reward2 (RfinalReward2*
final_reward_qty2 (RfinalRewardQty2#
final_reward3 (RfinalReward3*
final_reward_qty3 (RfinalRewardQty3
des_text (	RdesText

u_i_assets	 (	RuIAssets
	ctrl_name
 (	RctrlName!
preview_type (RpreviewTypeB™Nova.Clientbproto3
ü
 table_PeriodicQuestControl.protoPeriodicQuestControl.proto"G
table_PeriodicQuestControl)
list (2.PeriodicQuestControlRlistB™Nova.Clientbproto3
ú
PeriodicQuestGroup.proto"h
PeriodicQuestGroup
belong (Rbelong
group_id (RgroupId
unlock_time (R
unlockTimeB™Nova.Clientbproto3
ó
table_PeriodicQuestGroup.protoPeriodicQuestGroup.proto"C
table_PeriodicQuestGroup'
list (2.PeriodicQuestGroupRlistB™Nova.Clientbproto3
Ô

Perk.proto"»
Perk
id (Rid
	max_level (RmaxLevel)
additional_level (RadditionalLevel
e_e_t (ReET$
score_group_id (RscoreGroupId%
strength_score (RstrengthScore
	perk_type (RperkType
char_id (RcharId$
char_perk_type	 (RcharPerkType
theme
 (Rtheme 
game_book_id (R
gameBookId0
operating_floor_type (RoperatingFloorType)
operating_number (RoperatingNumber
price (Rprice
slot (Rslot
tags (Rtags 
pre_perk_ids (R
prePerkIds 
pre_tag_pkgs (	R
preTagPkgs

need_floor (R	needFloor&
effect_group_id (ReffectGroupId!
is_effective (RisEffective
	perk_tag1 (	RperkTag1
	perk_tag2 (	RperkTag2
	perk_tag3 (	RperkTag3
	perk_tag4 (	RperkTag4
	logo_icon (	RlogoIcon
slot_tag (	RslotTagB™Nova.Clientbproto3
_
table_Perk.proto
Perk.proto"'

table_Perk
list (2.PerkRlistB™Nova.Clientbproto3
Ó
PerkPassiveSkill.proto"ª
PerkPassiveSkill
id (Rid
	share_c_d (RshareCD
share_times (R
shareTimes

effect_id1 (R	effectId1

effect_id2 (R	effectId2

effect_id3 (R	effectId3

effect_id4 (R	effectId4
name (	Rname
desc	 (	Rdesc
desc1
 (	Rdesc1
param1 (	Rparam1
desc2 (	Rdesc2
param2 (	Rparam2
desc3 (	Rdesc3
param3 (	Rparam3
desc4 (	Rdesc4
param4 (	Rparam4B™Nova.Clientbproto3
è
table_PerkPassiveSkill.protoPerkPassiveSkill.proto"?
table_PerkPassiveSkill%
list (2.PerkPassiveSkillRlistB™Nova.Clientbproto3
\
PlayerHead.proto"0

PlayerHead
id (Rid
icon (	RiconB™Nova.Clientbproto3
w
table_PlayerHead.protoPlayerHead.proto"3
table_PlayerHead
list (2.PlayerHeadRlistB™Nova.Clientbproto3
Ô

Plot.proto"»
Plot
id (Rid
char (Rchar
name (	Rname
desc (	Rdesc
avg_id (	RavgId
	mainlines (R	mainlines2
unlock_affinity_level (RunlockAffinityLevel&
connect_chat_id (RconnectChatId*
char_advance_cond	 (	RcharAdvanceCond
rewards
 (	Rrewards

pic_source (	R	picSourceB™Nova.Clientbproto3
_
table_Plot.proto
Plot.proto"'

table_Plot
list (2.PlotRlistB™Nova.Clientbproto3
’
Potential.proto"©
	Potential
id (Rid
char_id (RcharId
branch_type (R
branchType
	max_level (RmaxLevel$
score_group_id (RscoreGroupId
build_score (R
buildScore 
game_book_id (R
gameBookId&
effect_group_id (ReffectGroupId!
is_effective	 (RisEffective%
potential_tag1
 (	RpotentialTag1%
potential_tag2 (	RpotentialTag2%
potential_tag3 (	RpotentialTag3%
potential_tag4 (	RpotentialTag4
corner (Rcorner
sp_bg (	RspBg
sp_face (	RspFace

effect_id1 (R	effectId1

effect_id2 (R	effectId2

effect_id3 (R	effectId3

effect_id4 (R	effectId4

brief_desc (	R	briefDesc
desc (	Rdesc
param1 (	Rparam1
param2 (	Rparam2
param3 (	Rparam3
param4 (	Rparam4
param5 (	Rparam5
param6 (	Rparam6
param7 (	Rparam7
param8 (	Rparam8
param9 (	Rparam9
param10  (	Rparam10B™Nova.Clientbproto3
s
table_Potential.protoPotential.proto"1
table_Potential
list (2
.PotentialRlistB™Nova.Clientbproto3
´
PotentialPassiveSkill.proto"Û
PotentialPassiveSkill
id (Rid
	share_c_d (RshareCD
share_times (R
shareTimes

effect_id1 (R	effectId1

effect_id2 (R	effectId2

effect_id3 (R	effectId3

effect_id4 (R	effectId4

brief_desc (	R	briefDesc
desc	 (	Rdesc
param1
 (	Rparam1
param2 (	Rparam2
param3 (	Rparam3
param4 (	Rparam4B™Nova.Clientbproto3
£
!table_PotentialPassiveSkill.protoPotentialPassiveSkill.proto"I
table_PotentialPassiveSkill*
list (2.PotentialPassiveSkillRlistB™Nova.Clientbproto3
€
PreviewMonsterGroup.proto"•
PreviewMonsterGroup
id (Rid
group_id (RgroupId5
preview_monster_list_id (RpreviewMonsterListId
min_lv (	RminLv
max_lv (	RmaxLvB™Nova.Clientbproto3
õ
table_PreviewMonsterGroup.protoPreviewMonsterGroup.proto"E
table_PreviewMonsterGroup(
list (2.PreviewMonsterGroupRlistB™Nova.Clientbproto3
≈
PreviewMonsterList.proto"ê
PreviewMonsterList
id (Rid
icon (	Ricon
name (	Rname
resist_e_e_t (R	resistEET
e_e_t (ReET
desc (	Rdesc

skill_desc (	R	skillDesc
epic_lv (RepicLv
h_p	 (RhP
a_t_k
 (RaTK
d_e_f (RdEF$
t_o_u_g_h_n_e_s_s (R	tOUGHNESS%
ability_title1 (	RabilityTitle1#
ability_desc1 (	RabilityDesc1%
ability_title2 (	RabilityTitle2#
ability_desc2 (	RabilityDesc2%
ability_title3 (	RabilityTitle3#
ability_desc3 (	RabilityDesc3B™Nova.Clientbproto3
ó
table_PreviewMonsterList.protoPreviewMonsterList.proto"C
table_PreviewMonsterList'
list (2.PreviewMonsterListRlistB™Nova.Clientbproto3
ı
Production.proto"»

Production
id (Rid
name (	Rname
desc (	Rdesc#
production_id (RproductionId0
production_per_batch (RproductionPerBatch,
show_production_id (RshowProductionId9
show_production_per_batch (RshowProductionPerBatch
group (Rgroup
tag	 (Rtag(
raw_material_id1
 (RrawMaterialId1.
raw_material_count1 (RrawMaterialCount1(
raw_material_id2 (RrawMaterialId2.
raw_material_count2 (RrawMaterialCount2(
raw_material_id3 (RrawMaterialId3.
raw_material_count3 (RrawMaterialCount3(
raw_material_id4 (RrawMaterialId4.
raw_material_count4 (RrawMaterialCount4-
is_show_world_level (RisShowWorldLevel,
unlock_world_level (RunlockWorldLevel

unlock_tip (	R	unlockTip
sort_id (RsortId

is_actived (R	isActivedB™Nova.Clientbproto3
w
table_Production.protoProduction.proto"3
table_Production
list (2.ProductionRlistB™Nova.Clientbproto3
Ü
ProductionType.proto"V
ProductionType
id (Rid
	type_name (	RtypeName
sort_id (RsortIdB™Nova.Clientbproto3
á
table_ProductionType.protoProductionType.proto";
table_ProductionType#
list (2.ProductionTypeRlistB™Nova.Clientbproto3
Ò	
RandomLevelMonster.proto"º	
RandomLevelMonster
id (Rid
name (	Rname
epic_lv (RepicLv

blood_type (R	bloodType
e_e_t (ReET
f_c_id (RfCId
f_a_id (RfAId
mov_type (RmovType
run_spd	 (RrunSpd&
trans_spd_scale
 (RtransSpdScale
walk_spd (RwalkSpd
mov_acc (RmovAcc

vision_rng (R	visionRng

vision_deg (R	visionDeg
hear_rng (RhearRng
ref_rng (RrefRng
act_rng (RactRng
dis_act_rng (R	disActRng
rot_spd (RrotSpd
templete (Rtemplete
w_e_p (RwEP
f_e_p (RfEP
s_e_p (RsEP
a_e_p (RaEP
l_e_p (RlEP
d_e_p (RdEP
w_e_e (RwEE
f_e_e (RfEE
s_e_e (RsEE
a_e_e (RaEE
l_e_e (RlEE
d_e_e  (RdEE
w_e_r! (RwER
f_e_r" (RfER
s_e_r# (RsER
a_e_r$ (RaER
l_e_r% (RlER
d_e_r& (RdER
buff_ids' (RbuffIds
weight( (Rweight 
trap_tag_ids) (R
trapTagIds
faction* (Rfaction

sup_charge+ (R	supCharge
is_show_rng, (R	isShowRng 
trap_attr_id- (R
trapAttrId
tag1. (	Rtag1
tag2/ (	Rtag2
tag30 (	Rtag3
tag41 (	Rtag4
tag52 (	Rtag5B™Nova.Clientbproto3
ó
table_RandomLevelMonster.protoRandomLevelMonster.proto"C
table_RandomLevelMonster'
list (2.RandomLevelMonsterRlistB™Nova.Clientbproto3
S

Rank.proto"-
Rank
rank_ (Rrank
exp (RexpB™Nova.Clientbproto3
_
table_Rank.proto
Rank.proto"'

table_Rank
list (2.RankRlistB™Nova.Clientbproto3
∑
RegionBoss.proto"ä

RegionBoss
id (Rid

monster_id (R	monsterId
region_type (R
regionType
name (	Rname
icon (	Ricon)
unlock_condition (	RunlockCondition%
need_roguelike (RneedRoguelike
sort (Rsort
open_day	 (RopenDay"
open_day_desc
 (	RopenDayDesc
e_e_t (ReET
episode (	Repisode
image (	Rimage
	drop_item (RdropItemB™Nova.Clientbproto3
w
table_RegionBoss.protoRegionBoss.proto"3
table_RegionBoss
list (2.RegionBossRlistB™Nova.Clientbproto3
≠
RegionBossAffix.proto"˚
RegionBossAffix
id (Rid
group_id (RgroupId
level (Rlevel
name (	Rname
desc (	Rdesc
icon (	Ricon
element (Relement
add_camp (RaddCamp
	add_class	 (RaddClass
skill_id
 (RskillIdB™Nova.Clientbproto3
ã
table_RegionBossAffix.protoRegionBossAffix.proto"=
table_RegionBossAffix$
list (2.RegionBossAffixRlistB™Nova.Clientbproto3
æ
RegionBossFloor.proto"å
RegionBossFloor
id (Rid

scene_name (	R	sceneName,
config_prefab_name (	RconfigPrefabName
theme (Rtheme
b_g_m (	RbGM.
leave_trigger_event (	RleaveTriggerEvent

monster_lv (R	monsterLv#
dungeon_delay (RdungeonDelayB™Nova.Clientbproto3
ã
table_RegionBossFloor.protoRegionBossFloor.proto"=
table_RegionBossFloor$
list (2.RegionBossFloorRlistB™Nova.Clientbproto3
—	
RegionBossLevel.proto"ü	
RegionBossLevel
id (Rid$
region_boss_id (RregionBossId

difficulty (R
difficulty
region_type (R
regionType
name (	Rname
desc (	Rdesc
icon (	Ricon'
suggested_power (RsuggestedPower 
pre_level_id	 (R
preLevelId$
boss_show_time
 (RbossShowTime$
pre_level_star (RpreLevelStar(
need_world_class (RneedWorldClass%
need_roguelike (RneedRoguelike
floor_id (RfloorId,
one_star_condition (	RoneStarCondition,
two_star_condition (	RtwoStarCondition0
three_star_condition (	RthreeStarCondition
drop_id (RdropId%
energy_consume (RenergyConsume,
base_award_preview (	RbaseAwardPreview&
entry_group_id1 (RentryGroupId1,
entry_group_level1 (RentryGroupLevel1&
entry_group_id2 (RentryGroupId2,
entry_group_level2 (RentryGroupLevel2&
entry_group_id3 (RentryGroupId3,
entry_group_level3 (RentryGroupLevel3&
entry_group_id4 (RentryGroupId4,
entry_group_level4 (RentryGroupLevel4&
entry_group_id5 (RentryGroupId5,
entry_group_level5 (RentryGroupLevel5,
extra_drop_preview (RextraDropPreviewB™Nova.Clientbproto3
ã
table_RegionBossLevel.protoRegionBossLevel.proto"=
table_RegionBossLevel$
list (2.RegionBossLevelRlistB™Nova.Clientbproto3

ResidentGoods.proto"¿
ResidentGoods
id (Rid
name (	Rname
desc (	Rdesc
shop_id (RshopId
sale_number (R
saleNumber
item_id (RitemId#
item_quantity (RitemQuantity#
maximum_limit (RmaximumLimit(
currency_item_id	 (RcurrencyItemId
price
 (Rprice%
original_price (RoriginalPrice
discount (Rdiscount(
appear_cond_type (RappearCondType,
appear_cond_params (	RappearCondParams,
purchase_cond_type (RpurchaseCondType0
purchase_cond_params (	RpurchaseCondParams"
up_shelf_time (	RupShelfTime&
down_shelf_time (	RdownShelfTime0
unlock_purchase_time (	RunlockPurchaseTime!
display_mode (RdisplayModeB™Nova.Clientbproto3
É
table_ResidentGoods.protoResidentGoods.proto"9
table_ResidentGoods"
list (2.ResidentGoodsRlistB™Nova.Clientbproto3
ô
ResidentShop.proto"Í
ResidentShop
id (Rid
	shop_coin (RshopCoin
type (Rtype
name (	Rname
sequence (Rsequence*
refresh_time_type (RrefreshTimeType)
refresh_interval (RrefreshInterval(
unlock_cond_type (RunlockCondType,
unlock_cond_params	 (	RunlockCondParams
	open_time
 (	RopenTime

close_time (	R	closeTimeB™Nova.Clientbproto3

table_ResidentShop.protoResidentShop.proto"7
table_ResidentShop!
list (2.ResidentShopRlistB™Nova.Clientbproto3
¬
ScriptParameter.proto"ê
ScriptParameter
id (Rid&
level_type_data (RlevelTypeData

level_data (R	levelData&
main_or_support (RmainOrSupportB™Nova.Clientbproto3
ã
table_ScriptParameter.protoScriptParameter.proto"=
table_ScriptParameter$
list (2.ScriptParameterRlistB™Nova.Clientbproto3
}
ScriptParameterValue.proto"G
ScriptParameterValue
id (Rid
common_data (R
commonDataB™Nova.Clientbproto3
ü
 table_ScriptParameterValue.protoScriptParameterValue.proto"G
table_ScriptParameterValue)
list (2.ScriptParameterValueRlistB™Nova.Clientbproto3
ñ
Shield.proto"Ì
Shield
id (Rid
name (	Rname&
level_type_data (RlevelTypeData

level_data (R	levelData&
main_or_support (RmainOrSupport
bind_effect (	R
bindEffect
shield_tag1 (R
shieldTag1
shield_tag2 (R
shieldTag2
shield_tag3	 (R
shieldTag3-
time_superposition
 (RtimeSuperposition

not_remove (R	notRemoveB™Nova.Clientbproto3
g
table_Shield.protoShield.proto"+
table_Shield
list (2.ShieldRlistB™Nova.Clientbproto3
õ
ShieldValue.proto"Ì
ShieldValue
id (Rid
name (	Rname'
absorption_base (RabsorptionBase)
reference_target (RreferenceTarget)
reference_attrib (RreferenceAttrib'
reference_scale (RreferenceScale
time (Rtime0
shield_laminated_num (RshieldLaminatedNum-
time_superposition	 (RtimeSuperposition

not_remove
 (R	notRemoveB™Nova.Clientbproto3
{
table_ShieldValue.protoShieldValue.proto"5
table_ShieldValue 
list (2.ShieldValueRlistB™Nova.Clientbproto3
ù
SignIn.proto"u
SignIn
i_d (RiD
group (Rgroup
day (Rday
item_id (RitemId
item_qty (RitemQtyB™Nova.Clientbproto3
g
table_SignIn.protoSignIn.proto"+
table_SignIn
list (2.SignInRlistB™Nova.Clientbproto3
∑
Skill.proto"è
Skill
id (Rid
title (	Rtitle
f_c_path (	RfCPath
type (Rtype
desc (	Rdesc
icon (	Ricon
	skill_c_d (RskillCD
	max_level (RmaxLevel#
related_skill	 (	RrelatedSkill%
section_amount
 (RsectionAmount!
use_interval (RuseInterval"
use_time_hint (RuseTimeHint!
ultra_energy (RultraEnergy)
check_c_d_restore (RcheckCDRestore(
force_run_finish (RforceRunFinish(
get_energy_limit (RgetEnergyLimit
param1 (	Rparam1
param2 (	Rparam2
param3 (	Rparam3
param4 (	Rparam4
param5 (	Rparam5
param6 (	Rparam6
param7 (	Rparam7
param8 (	Rparam8
param9 (	Rparam9
param10 (	Rparam10*
is_clean_skill_c_d (RisCleanSkillCDB™Nova.Clientbproto3
c
table_Skill.protoSkill.proto")
table_Skill
list (2.SkillRlistB™Nova.Clientbproto3
h
SkillDamage.proto";
SkillDamage
id (Rid

l_v_damage (RlVDamageB™Nova.Clientbproto3
{
table_SkillDamage.protoSkillDamage.proto"5
table_SkillDamage 
list (2.SkillDamageRlistB™Nova.Clientbproto3
–
StarTower.proto"§
	StarTower
id (Rid
name (	Rname
desc (	Rdesc
group_id (RgroupId%
pre_conditions (	RpreConditions7
preview_monster_group_id (RpreviewMonsterGroupId

difficulty (R
difficulty)
value_difficulty (RvalueDifficulty
	recommend	 (R	recommend
currency_id
 (R
currencyId&
stage_group_ids (RstageGroupIds
	floor_num (RfloorNum)
team_exp_group_id (RteamExpGroupId
e_e_t (ReET
	not_e_e_t (RnotEET
episode (	Repisode
image (	Rimage
n_p_c_id (RnPCId%
reward_preview (	RrewardPreview
shop_npc (RshopNpc$
stand_shop_npc (RstandShopNpc
upgrade_npc (R
upgradeNpc

resque_npc (R	resqueNpc

danger_npc (R	dangerNpc

horror_npc (R	horrorNpc(
danger_end_event (RdangerEndEvent(
horror_end_event (RhorrorEndEvent8
destructible_object_type (RdestructibleObjectTypeB™Nova.Clientbproto3
s
table_StarTower.protoStarTower.proto"1
table_StarTower
list (2
.StarTowerRlistB™Nova.Clientbproto3
∂
StarTowerBattleThreshold.proto"˚
StarTowerBattleThreshold

mission_id (R	missionId
version (Rversion 
from_src_atk (R
fromSrcAtk9
from_perk_intensity_ratio (RfromPerkIntensityRatio-
from_slot_dmg_ratio (RfromSlotDmgRatio
from_e_e (RfromEE+
from_gen_dmg_ratio (RfromGenDmgRatio"
from_dmg_plus (RfromDmgPlus&
from_crit_ratio	 (RfromCritRatio/
from_final_dmg_ratio
 (RfromFinalDmgRatio-
from_final_dmg_plus (RfromFinalDmgPlus
to_er_amend (R	toErAmend 
to_def_amend (R
toDefAmend0
to_rcd_slot_dmg_ratio (RtoRcdSlotDmgRatio
to_e_e_r_c_d (RtoEERCD.
to_gen_dmg_rcd_ratio (RtoGenDmgRcdRatio%
to_dmg_plus_rcd (RtoDmgPlusRcd
dmg (Rdmg
	crit_rate (RcritRate
hp (RhpB™Nova.Clientbproto3
Ø
$table_StarTowerBattleThreshold.protoStarTowerBattleThreshold.proto"O
table_StarTowerBattleThreshold-
list (2.StarTowerBattleThresholdRlistB™Nova.Clientbproto3
¢
StarTowerBookEntrance.proto"k
StarTowerBookEntrance
id (Rid
icon (	Ricon
position (	Rposition
desc (	RdescB™Nova.Clientbproto3
£
!table_StarTowerBookEntrance.protoStarTowerBookEntrance.proto"I
table_StarTowerBookEntrance*
list (2.StarTowerBookEntranceRlistB™Nova.Clientbproto3
•
StarTowerBookEventReward.proto"Í
StarTowerBookEventReward
id (Rid
name (	Rname
story (	Rstory
n_p_c_id (RnPCId
sort (Rsort
source (	Rsource
item_id (RitemId
item_qty (RitemQty
	is_banned	 (RisBannedB™Nova.Clientbproto3
Ø
$table_StarTowerBookEventReward.protoStarTowerBookEventReward.proto"O
table_StarTowerBookEventReward-
list (2.StarTowerBookEventRewardRlistB™Nova.Clientbproto3
ä
StarTowerBookFateCard.proto"“
StarTowerBookFateCard
id (Rid
	bundle_id (RbundleId
icon (	Ricon
sort_id (RsortId
source (	Rsource

unlock_tip (	R	unlockTip
world_class (R
worldClass"
star_tower_id (RstarTowerId#
collect_cards	 (RcollectCards!
unlock_cards
 (RunlockCards
	is_banned (RisBannedB™Nova.Clientbproto3
£
!table_StarTowerBookFateCard.protoStarTowerBookFateCard.proto"I
table_StarTowerBookFateCard*
list (2.StarTowerBookFateCardRlistB™Nova.Clientbproto3
™
!StarTowerBookFateCardBundle.proto"Ï
StarTowerBookFateCardBundle
id (Rid
name (	Rname

short_name (	R	shortName
sort_id (RsortId
tag (	Rtag

small_icon (	R	smallIcon
bundle_icon (	R
bundleIcon
icon (	Ricon
world_class	 (R
worldClass"
star_tower_id
 (RstarTowerId#
collect_cards (RcollectCards!
unlock_cards (RunlockCardsB™Nova.Clientbproto3
ª
'table_StarTowerBookFateCardBundle.proto!StarTowerBookFateCardBundle.proto"U
!table_StarTowerBookFateCardBundle0
list (2.StarTowerBookFateCardBundleRlistB™Nova.Clientbproto3
ÿ
 StarTowerBookFateCardQuest.proto"õ
StarTowerBookFateCardQuest
id (Rid
	bundle_id (RbundleId
desc (	Rdesc
finish_type (R
finishType#
finish_params (	RfinishParams
tid1 (Rtid1
qty1 (Rqty1
tid2 (Rtid2
qty2	 (Rqty2
tid3
 (Rtid3
qty3 (Rqty3B™Nova.Clientbproto3
∑
&table_StarTowerBookFateCardQuest.proto StarTowerBookFateCardQuest.proto"S
 table_StarTowerBookFateCardQuest/
list (2.StarTowerBookFateCardQuestRlistB™Nova.Clientbproto3
é
"StarTowerBookPotentialReward.proto"œ
StarTowerBookPotentialReward
id (Rid
char_id (RcharId
desc (	Rdesc
sort (Rsort
cond (Rcond
params (	Rparams
item_id (RitemId
item_qty (RitemQtyB™Nova.Clientbproto3
ø
(table_StarTowerBookPotentialReward.proto"StarTowerBookPotentialReward.proto"W
"table_StarTowerBookPotentialReward1
list (2.StarTowerBookPotentialRewardRlistB™Nova.Clientbproto3
ç
StarTowerBuildRank.proto"Y
StarTowerBuildRank
id (Rid
	min_grade (RminGrade
rarity (RrarityB™Nova.Clientbproto3
ó
table_StarTowerBuildRank.protoStarTowerBuildRank.proto"C
table_StarTowerBuildRank'
list (2.StarTowerBuildRankRlistB™Nova.Clientbproto3
Á
StarTowerCombatEvent.proto"∞
StarTowerCombatEvent
id (Rid
name (	Rname
type (Rtype
params (	Rparams
active (Ractive
start (Rstart
interact (RinteractB™Nova.Clientbproto3
ü
 table_StarTowerCombatEvent.protoStarTowerCombatEvent.proto"G
table_StarTowerCombatEvent)
list (2.StarTowerCombatEventRlistB™Nova.Clientbproto3
o
StarTowerCombo.proto"?
StarTowerCombo
id (Rid

battle_lvs (R	battleLvsB™Nova.Clientbproto3
á
table_StarTowerCombo.protoStarTowerCombo.proto";
table_StarTowerCombo#
list (2.StarTowerComboRlistB™Nova.Clientbproto3
ø
StarTowerDropItem.proto"ã
StarTowerDropItem
id (Rid
type (Rtype(
drop_split_range (RdropSplitRange
rate (Rrate
model (	RmodelB™Nova.Clientbproto3
ì
table_StarTowerDropItem.protoStarTowerDropItem.proto"A
table_StarTowerDropItem&
list (2.StarTowerDropItemRlistB™Nova.Clientbproto3
˝
StarTowerEnemySet.proto"…
StarTowerEnemySet
set_id (RsetId
wave_num (RwaveNum
max_num (RmaxNum'
max_num_per_wave (RmaxNumPerWave

monster_id (R	monsterId!
ref_interval (RrefIntervalB™Nova.Clientbproto3
ì
table_StarTowerEnemySet.protoStarTowerEnemySet.proto"A
table_StarTowerEnemySet&
list (2.StarTowerEnemySetRlistB™Nova.Clientbproto3
¥
StarTowerEvent.proto"É
StarTowerEvent
id (Rid
group_id (RgroupId(
options_rules_id (RoptionsRulesId
desc (	Rdesc

event_type (R	eventType*
guaranteed_map_id (RguaranteedMapId
npc (Rnpc+
related_character (RrelatedCharacterB™Nova.Clientbproto3
á
table_StarTowerEvent.protoStarTowerEvent.proto";
table_StarTowerEvent#
list (2.StarTowerEventRlistB™Nova.Clientbproto3
¡
StarTowerEventAction.proto"ä
StarTowerEventAction
id (Rid
event_id (ReventId

trig_voice (	R	trigVoice
desc (	Rdesc
group (RgroupB™Nova.Clientbproto3
ü
 table_StarTowerEventAction.protoStarTowerEventAction.proto"G
table_StarTowerEventAction)
list (2.StarTowerEventActionRlistB™Nova.Clientbproto3
Ø
 StarTowerEventOptionAction.proto"s
StarTowerEventOptionAction
id (Rid
	option_id (RoptionId
desc (	Rdesc
group (RgroupB™Nova.Clientbproto3
∑
&table_StarTowerEventOptionAction.proto StarTowerEventOptionAction.proto"S
 table_StarTowerEventOptionAction/
list (2.StarTowerEventOptionActionRlistB™Nova.Clientbproto3
˝
StarTowerFloor.proto"Ã
StarTowerFloor
id (Rid0
common_gameplay_type (RcommonGameplayType,
common_monster_set (	RcommonMonsterSet

limit_time (R	limitTime/
drop_object_group_id (RdropObjectGroupId(
drop_object_rate (RdropObjectRate 
drop_max_num (R
dropMaxNum.
monster_surplus_num (RmonsterSurplusNumB™Nova.Clientbproto3
á
table_StarTowerFloor.protoStarTowerFloor.proto";
table_StarTowerFloor#
list (2.StarTowerFloorRlistB™Nova.Clientbproto3
ú
StarTowerFloorAward.proto"Ê
StarTowerFloorAward
id (Rid!
roguelike_id (RroguelikeId!
combat_floor (RcombatFloor<
interior_currency_quantity (RinteriorCurrencyQuantity
need_energy (R
needEnergy
affinity (RaffinityB™Nova.Clientbproto3
õ
table_StarTowerFloorAward.protoStarTowerFloorAward.proto"E
table_StarTowerFloorAward(
list (2.StarTowerFloorAwardRlistB™Nova.Clientbproto3
Ã
StarTowerFloorExp.proto"ò
StarTowerFloorExp
id (Rid"
star_tower_id (RstarTowerId
stage (Rstage

normal_exp (R	normalExp
	elite_exp (ReliteExp
boss_exp (RbossExp$
final_boss_exp (RfinalBossExp

danger_exp (R	dangerExp

horror_exp	 (R	horrorExpB™Nova.Clientbproto3
ì
table_StarTowerFloorExp.protoStarTowerFloorExp.proto"A
table_StarTowerFloorExp&
list (2.StarTowerFloorExpRlistB™Nova.Clientbproto3
ª
StarTowerFloorSet.proto"á
StarTowerFloorSet
id (Rid

battle_lvs (R	battleLvs
stage (Rstage
	room_type (RroomType
map_i_d (RmapID
	floor_i_d (RfloorID

monster_lv (R	monsterLv$
theme_skill_lv (RthemeSkillLv
weight	 (Rweight
mutex_group
 (R
mutexGroup&
special_mode_id (RspecialModeId6
monster_group_blacklist (RmonsterGroupBlacklistB™Nova.Clientbproto3
ì
table_StarTowerFloorSet.protoStarTowerFloorSet.proto"A
table_StarTowerFloorSet&
list (2.StarTowerFloorSetRlistB™Nova.Clientbproto3
Á
StarTowerGroup.proto"∂
StarTowerGroup
id (Rid
name (	Rname
e_e_t (ReET
episode (	Repisode
sort (Rsort

group_type (R	groupType
group_theme (R
groupThemeB™Nova.Clientbproto3
á
table_StarTowerGroup.protoStarTowerGroup.proto";
table_StarTowerGroup#
list (2.StarTowerGroupRlistB™Nova.Clientbproto3
Æ
StarTowerGrowthGroup.proto"x
StarTowerGrowthGroup
id (Rid
	pre_group (RpreGroup
world_class (R
worldClass
name (	RnameB™Nova.Clientbproto3
ü
 table_StarTowerGrowthGroup.protoStarTowerGrowthGroup.proto"G
table_StarTowerGrowthGroup)
list (2.StarTowerGrowthGroupRlistB™Nova.Clientbproto3
Ò
StarTowerGrowthNode.proto"ª
StarTowerGrowthNode
id (Rid
node_id (RnodeId
group (Rgroup
name (	Rname
	is_server (RisServer
	is_client (RisClient
type (Rtype
color (Rcolor
	pre_nodes	 (RpreNodes#
effect_client
 (ReffectClient#
client_params (	RclientParams
priority (Rpriority
icon (	Ricon
position (Rposition
desc (	Rdesc
item_id1 (RitemId1
	item_qty1 (RitemQty1
item_id2 (RitemId2
	item_qty2 (RitemQty2
item_id3 (RitemId3
	item_qty3 (RitemQty3B™Nova.Clientbproto3
õ
table_StarTowerGrowthNode.protoStarTowerGrowthNode.proto"E
table_StarTowerGrowthNode(
list (2.StarTowerGrowthNodeRlistB™Nova.Clientbproto3
≤
StarTowerHarmonySkill.proto"˙
StarTowerHarmonySkill
id (Rid
rarity (Rrarity
name (	Rname
tag (Rtag
score (Rscore
	effect_id (ReffectId
desc (	Rdesc
icon (	Ricon
icon_bg	 (	RiconBg
icon_corner
 (	R
iconCornerB™Nova.Clientbproto3
£
!table_StarTowerHarmonySkill.protoStarTowerHarmonySkill.proto"I
table_StarTowerHarmonySkill*
list (2.StarTowerHarmonySkillRlistB™Nova.Clientbproto3
”
StarTowerLimitReward.proto"ú
StarTowerLimitReward
id (Rid
stage (Rstage"
star_tower_id (RstarTowerId
	room_type (RroomType

time_limit (R	timeLimitB™Nova.Clientbproto3
ü
 table_StarTowerLimitReward.protoStarTowerLimitReward.proto"G
table_StarTowerLimitReward)
list (2.StarTowerLimitRewardRlistB™Nova.Clientbproto3

StarTowerMap.proto"¡
StarTowerMap
id (Rid
	scene_res (	RsceneRes!
b_g_scene_res (	R
bGSceneRes
theme (Rtheme

prefab_num (R	prefabNum
mir (Rmir 
out_port_num (R
outPortNum"
out_port_hint (RoutPortHint
	b_g_m_res	 (	RbGMRes9
complete_sound_effect_res
 (	RcompleteSoundEffectResB™Nova.Clientbproto3

table_StarTowerMap.protoStarTowerMap.proto"7
table_StarTowerMap!
list (2.StarTowerMapRlistB™Nova.Clientbproto3
ì
 StarTowerMapMaxNumPerStage.proto"W
StarTowerMapMaxNumPerStage
id (Rid)
max_num_per_stage (RmaxNumPerStageB™Nova.Clientbproto3
∑
&table_StarTowerMapMaxNumPerStage.proto StarTowerMapMaxNumPerStage.proto"S
 table_StarTowerMapMaxNumPerStage/
list (2.StarTowerMapMaxNumPerStageRlistB™Nova.Clientbproto3
Î
StarTowerMonsterBornGroup.proto"Ø
StarTowerMonsterBornGroup
group_id (RgroupId

monster_id (R	monsterId

difficulty (R
difficulty
	min_floor (RminFloor
	max_floor (RmaxFloorB™Nova.Clientbproto3
≥
%table_StarTowerMonsterBornGroup.protoStarTowerMonsterBornGroup.proto"Q
table_StarTowerMonsterBornGroup.
list (2.StarTowerMonsterBornGroupRlistB™Nova.Clientbproto3
ì
StarTowerMonsterSpAttr.proto"⁄
StarTowerMonsterSpAttr
id (Rid)
monster_position (RmonsterPosition!
theme_skills (	RthemeSkills6
continuous_killing_time (RcontinuousKillingTime3
rouge_money_drop_range (RrougeMoneyDropRange/
rouge_exp_drop_range (RrougeExpDropRange!
ref_distance (RrefDistance!
ref_interval (RrefIntervalB™Nova.Clientbproto3
ß
"table_StarTowerMonsterSpAttr.protoStarTowerMonsterSpAttr.proto"K
table_StarTowerMonsterSpAttr+
list (2.StarTowerMonsterSpAttrRlistB™Nova.Clientbproto3
ä
StarTowerQuest.proto"Ÿ
StarTowerQuest
id (Rid
title (	Rtitle
jump_to (RjumpTo(
tower_quest_type (RtowerQuestType-
pre_tower_quest_ids (RpreTowerQuestIds
reward1 (Rreward1
reward_qty1 (R
rewardQty1
reward2 (Rreward2
reward_qty2	 (R
rewardQty2
reward3
 (Rreward3
reward_qty3 (R
rewardQty3B™Nova.Clientbproto3
á
table_StarTowerQuest.protoStarTowerQuest.proto";
table_StarTowerQuest#
list (2.StarTowerQuestRlistB™Nova.Clientbproto3
∞
StarTowerRankAffix.proto"|
StarTowerRankAffix
id (Rid
name (	Rname
desc (	Rdesc
rarity (Rrarity
effect (ReffectB™Nova.Clientbproto3
ó
table_StarTowerRankAffix.protoStarTowerRankAffix.proto"C
table_StarTowerRankAffix'
list (2.StarTowerRankAffixRlistB™Nova.Clientbproto3
ö
StarTowerRankReward.proto"‰
StarTowerRankReward
id (Rid

rank_lower (R	rankLower&
award_item_tid1 (RawardItemTid1&
award_item_num1 (RawardItemNum1&
award_item_tid2 (RawardItemTid2&
award_item_num2 (RawardItemNum2B™Nova.Clientbproto3
õ
table_StarTowerRankReward.protoStarTowerRankReward.proto"E
table_StarTowerRankReward(
list (2.StarTowerRankRewardRlistB™Nova.Clientbproto3
¨
StarTowerRankScore.proto"x
StarTowerRankScore

difficulty (R
difficulty

base_score (R	baseScore#
maximum_score (RmaximumScoreB™Nova.Clientbproto3
ó
table_StarTowerRankScore.protoStarTowerRankScore.proto"C
table_StarTowerRankScore'
list (2.StarTowerRankScoreRlistB™Nova.Clientbproto3
ä
StarTowerRankSeason.proto"‘
StarTowerRankSeason
id (Rid
group_id (RgroupId
	open_time (	RopenTime
end_time (	RendTime
affix1 (Raffix1

affix_add1 (R	affixAdd1
affix2 (Raffix2

affix_add2 (R	affixAdd2
affix3	 (Raffix3

affix_add3
 (R	affixAdd3
affix4 (Raffix4

affix_add4 (R	affixAdd4B™Nova.Clientbproto3
õ
table_StarTowerRankSeason.protoStarTowerRankSeason.proto"E
table_StarTowerRankSeason(
list (2.StarTowerRankSeasonRlistB™Nova.Clientbproto3
¿
StarTowerScenePrefab.proto"â
StarTowerScenePrefab
id (Rid

config_res (	R	configRes
	bian_quan (	RbianQuan%
gameplay_types (RgameplayTypesB™Nova.Clientbproto3
ü
 table_StarTowerScenePrefab.protoStarTowerScenePrefab.proto"G
table_StarTowerScenePrefab)
list (2.StarTowerScenePrefabRlistB™Nova.Clientbproto3

StarTowerShopGoodsGroup.proto"F
StarTowerShopGoodsGroup
id (Rid
	show_item (RshowItemB™Nova.Clientbproto3
´
#table_StarTowerShopGoodsGroup.protoStarTowerShopGoodsGroup.proto"M
table_StarTowerShopGoodsGroup,
list (2.StarTowerShopGoodsGroupRlistB™Nova.Clientbproto3
∫
StarTowerSpecificCombat.proto"Ä
StarTowerSpecificCombat
id (Rid
name (	Rname
desc (	Rdesc
type (Rtype
event_id (ReventIdB™Nova.Clientbproto3
´
#table_StarTowerSpecificCombat.protoStarTowerSpecificCombat.proto"M
table_StarTowerSpecificCombat,
list (2.StarTowerSpecificCombatRlistB™Nova.Clientbproto3
ê
StarTowerSpMode.proto"ﬁ
StarTowerSpMode
id (Rid*
limit_time_weight (RlimitTimeWeight.
limit_killed_weight (RlimitKilledWeight#
goblin_weight (RgoblinWeight:
continuous_killing_weight (RcontinuousKillingWeightB™Nova.Clientbproto3
ã
table_StarTowerSpMode.protoStarTowerSpMode.proto"=
table_StarTowerSpMode$
list (2.StarTowerSpModeRlistB™Nova.Clientbproto3
‹
StarTowerStage.proto"´
StarTowerStage
id (Rid
stage (Rstage
group_id (RgroupId
floor (Rfloor
	room_type (RroomType<
interior_currency_quantity (RinteriorCurrencyQuantity*
guaranteed_map_id (RguaranteedMapId;
guaranteed_monster_plan_id (RguaranteedMonsterPlanIdB™Nova.Clientbproto3
á
table_StarTowerStage.protoStarTowerStage.proto";
table_StarTowerStage#
list (2.StarTowerStageRlistB™Nova.Clientbproto3
Ω
StarTowerTalk.proto"ç
StarTowerTalk
id (Rid
name (	Rname
content (	Rcontent
color (	Rcolor
face (	Rface
voice (	RvoiceB™Nova.Clientbproto3
É
table_StarTowerTalk.protoStarTowerTalk.proto"9
table_StarTowerTalk"
list (2.StarTowerTalkRlistB™Nova.Clientbproto3
†
StarTowerTeamExp.proto"n
StarTowerTeamExp
id (Rid
group_id (RgroupId
level (Rlevel
need_exp (RneedExpB™Nova.Clientbproto3
è
table_StarTowerTeamExp.protoStarTowerTeamExp.proto"?
table_StarTowerTeamExp%
list (2.StarTowerTeamExpRlistB™Nova.Clientbproto3
¸
Story.proto"‘
Story
id (Rid
story_id (	RstoryId
comment (	Rcomment
chapter (Rchapter
index (	Rindex
title (	Rtitle
desc (	Rdesc
trial_build (R
trialBuild!
condition_id	 (	RconditionId
	is_branch
 (RisBranch
	is_battle (RisBattle
reward (Rreward%
reward_display (	RrewardDisplay&
parent_story_id (	RparentStoryId!
has_evidence (RhasEvidence 
avg_lua_name (	R
avgLuaName
floor_id (RfloorId7
preview_monster_group_id (RpreviewMonsterGroupId
	recommend (	R	recommend
aim (	RaimB™Nova.Clientbproto3
c
table_Story.protoStory.proto")
table_Story
list (2.StoryRlistB™Nova.Clientbproto3
˘
StoryChapter.proto" 
StoryChapter
id (Rid
type (Rtype
world_class (R
worldClass!
prev_stories (	RprevStories
index (	Rindex
name (	Rname
desc (	Rdesc!
chapter_icon (	RchapterIcon

time_stamp	 (	R	timeStamp!
chapter_year
 (	RchapterYear/
unlock_show_story_id (RunlockShowStoryIdB™Nova.Clientbproto3

table_StoryChapter.protoStoryChapter.proto"7
table_StoryChapter!
list (2.StoryChapterRlistB™Nova.Clientbproto3
¨
StoryCondition.proto"˚
StoryCondition
id (Rid!
condition_id (	RconditionId
comment (	Rcomment
ev_ids_a (	RevIdsA
ev_ids_b (	RevIdsB

story_id_a (	RstoryIdA

story_id_b (	RstoryIdB,
player_world_level (RplayerWorldLevelB™Nova.Clientbproto3
á
table_StoryCondition.protoStoryCondition.proto";
table_StoryCondition#
list (2.StoryConditionRlistB™Nova.Clientbproto3
”
StoryEvidence.proto"£
StoryEvidence
id (Rid
ev_id (	RevId
comment (	Rcomment
name (	Rname
desc (	Rdesc
icon (	Ricon
icon_bg (	RiconBgB™Nova.Clientbproto3
É
table_StoryEvidence.protoStoryEvidence.proto"9
table_StoryEvidence"
list (2.StoryEvidenceRlistB™Nova.Clientbproto3
¢
StoryPersonality.proto"p
StoryPersonality
id (Rid
name (	Rname
db (	Rdb
icon (	Ricon
color (	RcolorB™Nova.Clientbproto3
è
table_StoryPersonality.protoStoryPersonality.proto"?
table_StoryPersonality%
list (2.StoryPersonalityRlistB™Nova.Clientbproto3
¶
StoryRolePersonality.proto"Ô
StoryRolePersonality
id (Rid
avg_char_id (	R	avgCharId"
personalitys (Rpersonalitys

base_value (R	baseValue
amax (	Ramax
	amax_face (	RamaxFace
bmax (	Rbmax
	bmax_face (	RbmaxFace
cmax	 (	Rcmax
	cmax_face
 (	RcmaxFace
aplus (	Raplus

aplus_face (	R	aplusFace
bplus (	Rbplus

bplus_face (	R	bplusFace
cplus (	Rcplus

cplus_face (	R	cplusFace
ab (	Rab
ab_face (	RabFace
ac (	Rac
ac_face (	RacFace
bc (	Rbc
bc_face (	RbcFace
normal (	Rnormal
normal_face (	R
normalFaceB™Nova.Clientbproto3
ü
 table_StoryRolePersonality.protoStoryRolePersonality.proto"G
table_StoryRolePersonality)
list (2.StoryRolePersonalityRlistB™Nova.Clientbproto3
‹
Talent.proto"≥
Talent
id (Rid
index (Rindex
title (	Rtitle
group_id (RgroupId
type (Rtype
sub_type (RsubType
sort (Rsort
nodes (Rnodes
	effect_id	 (ReffectId(
enhance_skill_id
 (RenhanceSkillId.
enhance_skill_level (RenhanceSkillLevel0
enhance_potential_id (RenhancePotentialId6
enhance_potential_level (RenhancePotentialLevel
desc (	Rdesc
icon (	Ricon
param1 (	Rparam1
param2 (	Rparam2
param3 (	Rparam3
param4 (	Rparam4
param5 (	Rparam5
param6 (	Rparam6
param7 (	Rparam7
param8 (	Rparam8
param9 (	Rparam9
param10 (	Rparam10B™Nova.Clientbproto3
g
table_Talent.protoTalent.proto"+
table_Talent
list (2.TalentRlistB™Nova.Clientbproto3
∂
TalentGroup.proto"à
TalentGroup
id (Rid
char_id (RcharId
	pre_group (RpreGroup

node_limit (R	nodeLimit
title (	RtitleB™Nova.Clientbproto3
{
table_TalentGroup.protoTalentGroup.proto"5
table_TalentGroup 
list (2.TalentGroupRlistB™Nova.Clientbproto3
û
Title.proto"w
Title
id (Rid
item_id (RitemId

title_type (R	titleType
desc (	Rdesc
sort (RsortB™Nova.Clientbproto3
c
table_Title.protoTitle.proto")
table_Title
list (2.TitleRlistB™Nova.Clientbproto3
˙
TopBar.proto"—
TopBar
id (	Rid
title (	Rtitle
entry_id (RentryId
	hide_back (RhideBack
energy (Renergy
coin (Rcoin
coin_ids (RcoinIds"
hide_coin_add (RhideCoinAddB™Nova.Clientbproto3
g
table_TopBar.protoTopBar.proto"+
table_TopBar
list (2.TopBarRlistB™Nova.Clientbproto3
«
TourGuideQuest.proto"ñ
TourGuideQuest
id (Rid
order (Rorder
title (	Rtitle
jump_to (RjumpTo
reward1 (Rreward1
reward_qty1 (R
rewardQty1
reward2 (Rreward2
reward_qty2 (R
rewardQty2
reward3	 (Rreward3
reward_qty3
 (R
rewardQty3B™Nova.Clientbproto3
á
table_TourGuideQuest.protoTourGuideQuest.proto";
table_TourGuideQuest#
list (2.TourGuideQuestRlistB™Nova.Clientbproto3
”
TourGuideQuestGroup.proto"ù
TourGuideQuestGroup
id (Rid
order (Rorder
reward1 (Rreward1
reward_qty1 (R
rewardQty1
reward2 (Rreward2
reward_qty2 (R
rewardQty2
reward3 (Rreward3
reward_qty3 (R
rewardQty3
reward4	 (Rreward4
reward_qty4
 (R
rewardQty4
reward5 (Rreward5
reward_qty5 (R
rewardQty5
reward6 (Rreward6
reward_qty6 (R
rewardQty6B™Nova.Clientbproto3
õ
table_TourGuideQuestGroup.protoTourGuideQuestGroup.proto"E
table_TourGuideQuestGroup(
list (2.TourGuideQuestGroupRlistB™Nova.Clientbproto3
´

Trap.proto"Ñ
Trap
id (Rid
name (	Rname
f_c_id (RfCId
model (	Rmodel
model_scale (R
modelScale#
buff_f_x_scale (RbuffFXScale%
collider_scale (RcolliderScale!
attribute_id (	RattributeId
templete	 (Rtemplete
buff_ids
 (RbuffIds)
turn_off_buff_ids (RturnOffBuffIds'
turn_on_buff_ids (RturnOnBuffIds'
interrupt_skill (RinterruptSkill
sub_type (RsubType
faction (Rfaction
filter (Rfilter)
ignore_collision (RignoreCollision

active_eff (	R	activeEff

shape_type (R	shapeType
width (Rwidth
length (Rlength
radius (Rradius!
inner_radius (RinnerRadius
angle (Rangle
offset (Roffset
rotation (Rrotation
is_move (RisMove
is_block (RisBlock
mov_acc (RmovAcc
rot_spd (RrotSpd
move_spd (RmoveSpdB™Nova.Clientbproto3
_
table_Trap.proto
Trap.proto"'

table_Trap
list (2.TrapRlistB™Nova.Clientbproto3
¢
TrapAttribute.proto"s
TrapAttribute
id (Rid
trigger (Rtrigger 
trigger_i_ds (R
triggerIDs
filter (RfilterB™Nova.Clientbproto3
É
table_TrapAttribute.protoTrapAttribute.proto"9
table_TrapAttribute"
list (2.TrapAttributeRlistB™Nova.Clientbproto3
á
TravelerDuelBoss.proto"‘
TravelerDuelBoss
id (Rid
name (	Rname5
traveler_duel_boss_type (RtravelerDuelBossType
episode (	Repisode
image (	Rimage
cover (	Rcover
show_reward (R
showRewardB™Nova.Clientbproto3
è
table_TravelerDuelBoss.protoTravelerDuelBoss.proto"?
table_TravelerDuelBoss%
list (2.TravelerDuelBossRlistB™Nova.Clientbproto3
∏
TravelerDuelBossLevel.proto"Ä
TravelerDuelBossLevel
id (Rid
boss_id (RbossId

difficulty (R
difficulty
name (	Rname
desc (	Rdesc'
suggested_power (RsuggestedPower0
recommend_build_rank (RrecommendBuildRank
e_e_t (ReET
	timelimit	 (R	timelimit7
preview_monster_group_id
 (RpreviewMonsterGroupId
floor_id (RfloorId 
pre_level_id (R
preLevelId$
pre_level_star (RpreLevelStar,
unlock_world_class (RunlockWorldClass*
unlock_duel_level (RunlockDuelLevel
duel_exp (RduelExp,
base_award_preview (	RbaseAwardPreview
affinity (Raffinity
icon (	Ricon

skill_show (R	skillShow
cover (	Rcover
skin_id (RskinId,
extra_drop_preview (RextraDropPreviewB™Nova.Clientbproto3
£
!table_TravelerDuelBossLevel.protoTravelerDuelBossLevel.proto"I
table_TravelerDuelBossLevel*
list (2.TravelerDuelBossLevelRlistB™Nova.Clientbproto3
Ò
 TravelerDuelChallengeAffix.proto"¥
TravelerDuelChallengeAffix
id (Rid
group_id (RgroupId

difficulty (R
difficulty,
unlock_world_class (RunlockWorldClass*
unlock_duel_level (RunlockDuelLevel+
unlock_difficulty (RunlockDifficulty
name (	Rname
desc (	Rdesc
icon	 (	Ricon
element
 (Relement
add_camp (RaddCamp
	add_class (RaddClass
skill_id (RskillId
	branch_id (RbranchIdB™Nova.Clientbproto3
∑
&table_TravelerDuelChallengeAffix.proto TravelerDuelChallengeAffix.proto"S
 table_TravelerDuelChallengeAffix/
list (2.TravelerDuelChallengeAffixRlistB™Nova.Clientbproto3
ˇ
%TravelerDuelChallengeDifficulty.proto"Ω
TravelerDuelChallengeDifficulty
id (Rid
attr (Rattr
	effect_id (ReffectId'
recommend_score (RrecommendScore0
recommend_build_rank (RrecommendBuildRankB™Nova.Clientbproto3
À
+table_TravelerDuelChallengeDifficulty.proto%TravelerDuelChallengeDifficulty.proto"]
%table_TravelerDuelChallengeDifficulty4
list (2 .TravelerDuelChallengeDifficultyRlistB™Nova.Clientbproto3
À
 TravelerDuelChallengeQuest.proto"é
TravelerDuelChallengeQuest
id (Rid
group_id (RgroupId
title (	Rtitle
desc (	Rdesc
jump_to (RjumpTo
order (Rorder%
accept_params2 (	RacceptParams2#
complete_cond (RcompleteCond0
complete_cond_params	 (	RcompleteCondParams&
award_item_tid1
 (RawardItemTid1&
award_item_num1 (RawardItemNum1&
award_item_tid2 (RawardItemTid2&
award_item_num2 (RawardItemNum2&
award_item_tid3 (RawardItemTid3&
award_item_num3 (RawardItemNum3B™Nova.Clientbproto3
∑
&table_TravelerDuelChallengeQuest.proto TravelerDuelChallengeQuest.proto"S
 table_TravelerDuelChallengeQuest/
list (2.TravelerDuelChallengeQuestRlistB™Nova.Clientbproto3
≤
%TravelerDuelChallengeRankReward.proto"
TravelerDuelChallengeRankReward
id (Rid

rank_lower (R	rankLower&
award_item_tid1 (RawardItemTid1&
award_item_num1 (RawardItemNum1&
award_item_tid2 (RawardItemTid2&
award_item_num2 (RawardItemNum2B™Nova.Clientbproto3
À
+table_TravelerDuelChallengeRankReward.proto%TravelerDuelChallengeRankReward.proto"]
%table_TravelerDuelChallengeRankReward4
list (2 .TravelerDuelChallengeRankRewardRlistB™Nova.Clientbproto3
∏
!TravelerDuelChallengeSeason.proto"˙
TravelerDuelChallengeSeason
id (Rid
boss_id (RbossId&
affix_group_ids (	RaffixGroupIds$
quest_group_id (RquestGroupId,
back_ground_source (	RbackGroundSource
	open_time (	RopenTime
end_time (	RendTimeB™Nova.Clientbproto3
ª
'table_TravelerDuelChallengeSeason.proto!TravelerDuelChallengeSeason.proto"U
!table_TravelerDuelChallengeSeason0
list (2.TravelerDuelChallengeSeasonRlistB™Nova.Clientbproto3
ƒ
TravelerDuelFloor.proto"ê
TravelerDuelFloor
id (Rid

scene_name (	R	sceneName,
config_prefab_name (	RconfigPrefabName
theme (Rtheme
b_g_m (	RbGM.
leave_trigger_event (	RleaveTriggerEvent

monster_lv (R	monsterLv%
intro_cutscene (	RintroCutsceneB™Nova.Clientbproto3
ì
table_TravelerDuelFloor.protoTravelerDuelFloor.proto"A
table_TravelerDuelFloor&
list (2.TravelerDuelFloorRlistB™Nova.Clientbproto3
¶
TravelerDuelLevel.proto"s
TravelerDuelLevel
id (Rid 
level_up_exp (R
levelUpExp,
coin_addition_prob (RcoinAdditionProbB™Nova.Clientbproto3
ì
table_TravelerDuelLevel.protoTravelerDuelLevel.proto"A
table_TravelerDuelLevel&
list (2.TravelerDuelLevelRlistB™Nova.Clientbproto3
û
TravelerDuelQuest.proto"Í
TravelerDuelQuest
id (Rid
title (	Rtitle
desc (	Rdesc
jump_to (RjumpTo
order (Rorder%
accept_params2 (	RacceptParams2#
complete_cond (RcompleteCond0
complete_cond_params (	RcompleteCondParams&
award_item_tid1	 (RawardItemTid1&
award_item_num1
 (RawardItemNum1&
award_item_tid2 (RawardItemTid2&
award_item_num2 (RawardItemNum2&
award_item_tid3 (RawardItemTid3&
award_item_num3 (RawardItemNum3B™Nova.Clientbproto3
ì
table_TravelerDuelQuest.protoTravelerDuelQuest.proto"A
table_TravelerDuelQuest&
list (2.TravelerDuelQuestRlistB™Nova.Clientbproto3
å
TrialBuild.proto"ﬂ

TrialBuild
id (Rid
name (	Rname
score (Rscore
char (Rchar
disc (Rdisc
	potential (	R	potential,
disc_common_skill1 (	RdiscCommonSkill1,
disc_common_skill2 (	RdiscCommonSkill2,
disc_common_skill3	 (	RdiscCommonSkill3.
disc_passive_skill1
 (	RdiscPassiveSkill1.
disc_passive_skill2 (	RdiscPassiveSkill2.
disc_passive_skill3 (	RdiscPassiveSkill3#
harmony_skill (	RharmonySkill
note (	RnoteB™Nova.Clientbproto3
w
table_TrialBuild.protoTrialBuild.proto"3
table_TrialBuild
list (2.TrialBuildRlistB™Nova.Clientbproto3
ä
TrialCharacter.proto"Ÿ
TrialCharacter
id (Rid
name (	Rname
char_id (RcharId%
character_skin (RcharacterSkin
break (Rbreak
level (Rlevel
skill_level (R
skillLevel
talent (RtalentB™Nova.Clientbproto3
á
table_TrialCharacter.protoTrialCharacter.proto";
table_TrialCharacter#
list (2.TrialCharacterRlistB™Nova.Clientbproto3
ü
TrialDisc.proto"t
	TrialDisc
id (Rid
disc_id (RdiscId
phase (Rphase
level (Rlevel
star (RstarB™Nova.Clientbproto3
s
table_TrialDisc.protoTrialDisc.proto"1
table_TrialDisc
list (2
.TrialDiscRlistB™Nova.Clientbproto3
T
UIText.proto",
UIText
id (	Rid
text (	RtextB™Nova.Clientbproto3
g
table_UIText.protoUIText.proto"+
table_UIText
list (2.UITextRlistB™Nova.Clientbproto3
≤
VampireBattleThreshold.proto"˘
VampireBattleThreshold

mission_id (R	missionId
version (Rversion 
from_src_atk (R
fromSrcAtk9
from_perk_intensity_ratio (RfromPerkIntensityRatio-
from_slot_dmg_ratio (RfromSlotDmgRatio
from_e_e (RfromEE+
from_gen_dmg_ratio (RfromGenDmgRatio"
from_dmg_plus (RfromDmgPlus&
from_crit_ratio	 (RfromCritRatio/
from_final_dmg_ratio
 (RfromFinalDmgRatio-
from_final_dmg_plus (RfromFinalDmgPlus
to_er_amend (R	toErAmend 
to_def_amend (R
toDefAmend0
to_rcd_slot_dmg_ratio (RtoRcdSlotDmgRatio
to_e_e_r_c_d (RtoEERCD.
to_gen_dmg_rcd_ratio (RtoGenDmgRcdRatio%
to_dmg_plus_rcd (RtoDmgPlusRcd
dmg (Rdmg
	crit_rate (RcritRate
hp (RhpB™Nova.Clientbproto3
ß
"table_VampireBattleThreshold.protoVampireBattleThreshold.proto"K
table_VampireBattleThreshold+
list (2.VampireBattleThresholdRlistB™Nova.Clientbproto3
Ñ
VampireEnemyPool.proto"—
VampireEnemyPool
pool_id (RpoolId
wave_num (RwaveNum#
monster_level (RmonsterLevel!
enemy_set_i_d (R
enemySetID$
wave_keep_time (RwaveKeepTime
	pool_type (RpoolTypeB™Nova.Clientbproto3
è
table_VampireEnemyPool.protoVampireEnemyPool.proto"?
table_VampireEnemyPool%
list (2.VampireEnemyPoolRlistB™Nova.Clientbproto3
Û
VampireEnemySet.proto"¡
VampireEnemySet
set_id (RsetId
	group_num (RgroupNum

monster_id (R	monsterId!
level_change (RlevelChange

delay_time (R	delayTime
max_num (RmaxNum
add_data (RaddData/
max_num_improve_data (RmaxNumImproveData,
monster_spawn_type	 (RmonsterSpawnType#
monster_point
 (RmonsterPoint
drop_exp (RdropExp

drop_chest (R	dropChest'
monster_warning (RmonsterWarningB™Nova.Clientbproto3
ã
table_VampireEnemySet.protoVampireEnemySet.proto"=
table_VampireEnemySet$
list (2.VampireEnemySetRlistB™Nova.Clientbproto3
û
VampireEnemySpAttr.proto"j
VampireEnemySpAttr
id (Rid!
ref_distance (RrefDistance!
ref_interval (RrefIntervalB™Nova.Clientbproto3
ó
table_VampireEnemySpAttr.protoVampireEnemySpAttr.proto"C
table_VampireEnemySpAttr'
list (2.VampireEnemySpAttrRlistB™Nova.Clientbproto3
∏
VampireFloor.proto"â
VampireFloor
id (Rid
map_id (RmapId

wave_count (R	waveCount+
first_half_pool_id (RfirstHalfPoolId
f_h_affix_id (R	fHAffixId
f_h_boss_id (RfHBossId-
second_half_pool_id (RsecondHalfPoolId
s_h_affix_id (R	sHAffixId
s_h_boss_id	 (RsHBossId/
special_enemy_set_id
 (	RspecialEnemySetId&
treasure_set_id (	RtreasureSetIdB™Nova.Clientbproto3

table_VampireFloor.protoVampireFloor.proto"7
table_VampireFloor!
list (2.VampireFloorRlistB™Nova.Clientbproto3

VampireMap.proto"√

VampireMap
id (Rid

scene_name (	R	sceneName,
config_prefab_name (	RconfigPrefabName
theme (Rtheme
b_g_m (	RbGM.
leave_trigger_event (	RleaveTriggerEventB™Nova.Clientbproto3
w
table_VampireMap.protoVampireMap.proto"3
table_VampireMap
list (2.VampireMapRlistB™Nova.Clientbproto3
ñ
VampireRankReward.proto"‚
VampireRankReward
id (Rid

rank_lower (R	rankLower&
award_item_tid1 (RawardItemTid1&
award_item_num1 (RawardItemNum1&
award_item_tid2 (RawardItemTid2&
award_item_num2 (RawardItemNum2B™Nova.Clientbproto3
ì
table_VampireRankReward.protoVampireRankReward.proto"A
table_VampireRankReward&
list (2.VampireRankRewardRlistB™Nova.Clientbproto3
œ
VampireRankSeason.proto"õ
VampireRankSeason
id (Rid

mission_id (R	missionId
	open_time (	RopenTime
end_time (	RendTime
quest_group (R
questGroupB™Nova.Clientbproto3
ì
table_VampireRankSeason.protoVampireRankSeason.proto"A
table_VampireRankSeason&
list (2.VampireRankSeasonRlistB™Nova.Clientbproto3
—	
VampireSurvivor.proto"ü	
VampireSurvivor
id (Rid
name (	Rname
desc (	Rdesc
e_e_t (ReET
	not_e_e_t (RnotEET'
suggested_power (RsuggestedPower0
recommend_build_rank (RrecommendBuildRank
type (Rtype 
pre_level_id	 (R
preLevelId(
need_world_class
 (RneedWorldClass/
first_quest_group_id (RfirstQuestGroupId$
level_group_id (RlevelGroupId
floor_id (RfloorId#
normal_score1 (RnormalScore1!
elite_score1 (ReliteScore1
boss_score1 (R
bossScore1
time_score1 (R
timeScore1
time_limit1 (R
timeLimit1#
normal_score2 (RnormalScore2!
elite_score2 (ReliteScore2
boss_score2 (R
bossScore2
time_score2 (R
timeScore2
time_limit2 (R
timeLimit2
e_e_t_score1 (R	eETScore1
e_e_t_score2 (R	eETScore2=
f_h_preview_monster_group_id (RfHPreviewMonsterGroupId=
s_h_preview_monster_group_id (RsHPreviewMonsterGroupId#
cover_episode (	RcoverEpisode
episode (	Repisode
episode2 (	Repisode2(
fate_card_bundle (RfateCardBundle(
specia_fate_card  (	RspeciaFateCard3
specia_fate_card_param! (	RspeciaFateCardParamB™Nova.Clientbproto3
ã
table_VampireSurvivor.protoVampireSurvivor.proto"=
table_VampireSurvivor$
list (2.VampireSurvivorRlistB™Nova.Clientbproto3
ê
VampireSurvivorLevel.proto"Z
VampireSurvivorLevel
	group_i_d (RgroupID
level (Rlevel
exp (RexpB™Nova.Clientbproto3
ü
 table_VampireSurvivorLevel.protoVampireSurvivorLevel.proto"G
table_VampireSurvivorLevel)
list (2.VampireSurvivorLevelRlistB™Nova.Clientbproto3
¨
VampireSurvivorQuest.proto"ı
VampireSurvivorQuest
id (Rid
group_id (RgroupId
title (	Rtitle
desc (	Rdesc
jump_to (RjumpTo
order (Rorder
type (Rtype#
complete_cond (RcompleteCond0
complete_cond_params	 (	RcompleteCondParams&
award_item_tid1
 (RawardItemTid1&
award_item_num1 (RawardItemNum1&
award_item_tid2 (RawardItemTid2&
award_item_num2 (RawardItemNum2&
award_item_tid3 (RawardItemTid3&
award_item_num3 (RawardItemNum3B™Nova.Clientbproto3
ü
 table_VampireSurvivorQuest.protoVampireSurvivorQuest.proto"G
table_VampireSurvivorQuest)
list (2.VampireSurvivorQuestRlistB™Nova.Clientbproto3
Ÿ
VampireTalent.proto"©
VampireTalent
id (Rid
name (	Rname
desc_tag (RdescTag
param (Rparam
prev (Rprev
	is_server (RisServer
	is_client (RisClient
effect (Reffect
params	 (	Rparams
point
 (Rpoint
icon (	Ricon
	effect_id (ReffectIdB™Nova.Clientbproto3
É
table_VampireTalent.protoVampireTalent.proto"9
table_VampireTalent"
list (2.VampireTalentRlistB™Nova.Clientbproto3
h
VampireTalentDesc.proto"5
VampireTalentDesc
id (Rid
num (	RnumB™Nova.Clientbproto3
ì
table_VampireTalentDesc.protoVampireTalentDesc.proto"A
table_VampireTalentDesc&
list (2.VampireTalentDescRlistB™Nova.Clientbproto3
á
VampireTalentFloor.proto"S
VampireTalentFloor
id (Rid
num (Rnum
	talent_id (RtalentIdB™Nova.Clientbproto3
ó
table_VampireTalentFloor.protoVampireTalentFloor.proto"C
table_VampireTalentFloor'
list (2.VampireTalentFloorRlistB™Nova.Clientbproto3
’
VoDirectory.proto"ß
VoDirectory
id (Rid
vo_resource (	R
voResource!
character_id (RcharacterId
votype (	Rvotype
lines (	Rlines
motion (	RmotionB™Nova.Clientbproto3
{
table_VoDirectory.protoVoDirectory.proto"5
table_VoDirectory 
list (2.VoDirectoryRlistB™Nova.Clientbproto3
ä
WeightParameter.proto"Y
WeightParameter
id (Rid

proportion (R
proportion
effect (ReffectB™Nova.Clientbproto3
ã
table_WeightParameter.protoWeightParameter.proto"=
table_WeightParameter$
list (2.WeightParameterRlistB™Nova.Clientbproto3
É

Word.proto"‹
Word
id (Rid
title (	Rtitle
desc (	Rdesc
color (	Rcolor
icon (	Ricon
param1 (	Rparam1
param2 (	Rparam2
param3 (	Rparam3
param4	 (	Rparam4
param5
 (	Rparam5
param6 (	Rparam6
param7 (	Rparam7
param8 (	Rparam8
param9 (	Rparam9
param10 (	Rparam10B™Nova.Clientbproto3
_
table_Word.proto
Word.proto"'

table_Word
list (2.WordRlistB™Nova.Clientbproto3
ç
WordSuper.proto"·
	WordSuper
id (Rid
title (	Rtitle
color (	Rcolor
icon (	Ricon
desc (	Rdesc
param1 (	Rparam1
param2 (	Rparam2
param3 (	Rparam3
param4	 (	Rparam4
param5
 (	Rparam5
param6 (	Rparam6
param7 (	Rparam7
param8 (	Rparam8
param9 (	Rparam9
param10 (	Rparam10B™Nova.Clientbproto3
s
table_WordSuper.protoWordSuper.proto"1
table_WordSuper
list (2
.WordSuperRlistB™Nova.Clientbproto3
È
WorldClass.proto"º

WorldClass
rank (Rrank
exp (Rexp
limit (Rlimit
added (Radded!
double_count (RdoubleCount
reward (	Rreward!
reward_limit (RrewardLimitB™Nova.Clientbproto3
w
table_WorldClass.protoWorldClass.proto"3
table_WorldClass
list (2.WorldClassRlistB™Nova.Clientbproto3
©
Recorder.proto"˛
Recorder
	max_frame (RmaxFrame
floor_id (RfloorId+
spawners (2.Recorder.SpawnRspawners*
damages (2.Recorder.DamageRdamages'
deaths (2.Recorder.DeathRdeathsè
Spawn
frame_id (RframeId/
ent_type (2.Recorder.EntityTypeRentType
id (Rid
proto_id (RprotoId
h_p (RhPÜ
Damage
id (Rid
frame_id (RframeId/
dmg_type (2.Recorder.DamageTypeRdmgType
value (Rvalue#
hit_damage_i_d (RhitDamageID
is_crite (RisCrite&
from (2.Recorder.AttackerRfrom"
to (2.Recorder.DefenderRtoñ
Attacker
id (Rid
proto_id (RprotoId2
	ent_class (2.Recorder.EntityClassRentClass
atk (Ratk.
skill_percent_amend (RskillPercentAmend;
talent_group_percent_amend (RtalentGroupPercentAmend&
skill_abs_amend (RskillAbsAmend3
talent_group_abs_amend (RtalentGroupAbsAmend0
perk_intensity_ratio	 (RperkIntensityRatio$
slot_dmg_ratio
 (RslotDmgRatio
e_e (ReE"
gen_dmg_ratio (RgenDmgRatio
dmg_plus (RdmgPlus

crit_ratio (R	critRatio&
final_dmg_ratio (RfinalDmgRatio$
final_dmg_plus (RfinalDmgPlus
	crit_rate (RcritRate

def_pierce (R	defPierce

def_ignore (R	defIgnore
w_e_p (RwEP
f_e_p (RfEP
s_e_p (RsEP
a_e_p (RaEP
l_e_p (RlEP
d_e_p (RdEP
w_e_i (RwEI
f_e_i (RfEI
s_e_i (RsEI
a_e_i (RaEI
l_e_i (RlEI
d_e_i (RdEI
	buff_i_ds  (RbuffIDs
effect_i_ds" (R	effectIDs3

attributes# (2.Recorder.AttributeR
attributesÑ
	Attribute
origin (Rorigin

base_amend (R	baseAmend#
percent_amend (RpercentAmend
	abs_amend (RabsAmend•
Defender
id (Rid
proto_id (RprotoId2
	ent_class (2.Recorder.EntityClassRentClass
h_p (RhP
max_h_p (RmaxHP
er_amend (RerAmend
	def_amend (RdefAmend+
rcd_slot_dmg_ratio (RrcdSlotDmgRatio
	e_e_r_c_d	 (ReERCD)
gen_dmg_rcd_ratio
 (RgenDmgRcdRatio 
dmg_plus_rcd (R
dmgPlusRcd
src_def (RsrcDef'
crit_resistance (RcritResistance
w_e_r (RwER
f_e_r (RfER
s_e_r (RsER
a_e_r (RaER
l_e_r (RlER
d_e_r (RdER
suppress (Rsuppress
	buff_i_ds (RbuffIDs
effect_i_ds (R	effectIDs3

attributes (2.Recorder.AttributeR
attributes2
Death
frame_id (RframeId
id (Rid"9

EntityType

PLAYER 
BOSS

LEADER	
ELITE"ø

DamageType

NORMAL 
HEAL
REAL

DIRECT
DIRECT_HEAL
DOT
DOT_HEAL
	HP_ABSORB
	HP_REDUCE

HP_RECOVER	
	HP_REVERT

DAMAGE_DELAY

HEAL_DELAY"$
EntityClass
ROLE 
MONSTERB™Nova.Clientbproto3
◊
Recorders.protoRecorder.proto"õ
	Recorders/
lvl_type (2.Recorders.LevelTypeRlvlType
u_id (RuId
tower_id (RtowerId,
	role_list (2.Recorders.RoleRroleList,
	disc_list (2.Recorders.DiscRdiscList.
recorder_list (2	.RecorderRrecorderList∆
Role
id (Rid
level (Rlevel
break_count (R
breakCount
hp (Rhp
atk (Ratk
def (Rdef
m_def (RmDef
	crit_rate (RcritRate'
crit_resistance	 (RcritResistance

crit_power
 (R	critPower
hit_rate (RhitRate
evd (Revd

def_pierce (R	defPierce

def_ignore (R	defIgnore
w_e_p (RwEP
f_e_p (RfEP
s_e_p (RsEP
a_e_p (RaEP
l_e_p (RlEP
d_e_p (RdEP
w_e_e (RwEE
f_e_e (RfEE
s_e_e (RsEE
a_e_e (RaEE
l_e_e (RlEE
d_e_e (RdEE
w_e_r (RwER
f_e_r (RfER
s_e_r (RsER
a_e_r (RaER
l_e_r (RlER
d_e_r  (RdER
w_e_i! (RwEI
f_e_i" (RfEI
s_e_i# (RsEI
a_e_i$ (RaEI
l_e_i% (RlEI
d_e_i& (RdEI!
shield_bonus' (RshieldBonus2
incoming_shield_bonus( (RincomingShieldBonus
skin_id) (RskinId
suppress* (Rsuppress(
normal_dmg_ratio+ (RnormalDmgRatio&
skill_dmg_ratio, (RskillDmgRatio&
ultra_dmg_ratio- (RultraDmgRatio&
other_dmg_ratio. (RotherDmgRatio/
rcd_normal_dmg_ratio/ (RrcdNormalDmgRatio-
rcd_skill_dmg_ratio0 (RrcdSkillDmgRatio-
rcd_ultra_dmg_ratio1 (RrcdUltraDmgRatio-
rcd_other_dmg_ratio2 (RrcdOtherDmgRatio$
mark_dmg_ratio3 (RmarkDmgRatio(
summon_dmg_ratio4 (RsummonDmgRatio/
rcd_summon_dmg_ratio5 (RrcdSummonDmgRatio0
projectile_dmg_ratio6 (RprojectileDmgRatio7
rcd_projectile_dmg_ratio7 (RrcdProjectileDmgRatio
g_e_n_d_m_g8 (RgENDMG
d_m_g_p_l_u_s9 (RdMGPLUS!
f_i_n_a_l_d_m_g: (RfINALDMG-
f_i_n_a_l_d_m_g_p_l_u_s; (RfINALDMGPLUS
w_e_e_r_c_d< (RwEERCD
f_e_e_r_c_d= (RfEERCD
s_e_e_r_c_d> (RsEERCD
a_e_e_r_c_d? (RaEERCD
l_e_e_r_c_d@ (RlEERCD
d_e_e_r_c_dA (RdEERCD$
g_e_n_d_m_g_r_c_dB (R	gENDMGRCD'
d_m_g_p_l_u_s_r_c_dC (R
dMGPLUSRCD*
energy_conv_ratioD (RenergyConvRatio+
energy_efficiencyE (RenergyEfficiency(
normal_crit_rateF (RnormalCritRate&
skill_crit_rateG (RskillCritRate&
ultra_crit_rateH (RultraCritRate$
mark_crit_rateI (RmarkCritRate(
summon_crit_rateJ (RsummonCritRate0
projectile_crit_rateK (RprojectileCritRate&
other_crit_rateL (RotherCritRate*
normal_crit_powerM (RnormalCritPower(
skill_crit_powerN (RskillCritPower(
ultra_crit_powerO (RultraCritPower&
mark_crit_powerP (RmarkCritPower*
summon_crit_powerQ (RsummonCritPower2
projectile_crit_powerR (RprojectileCritPower(
other_crit_powerS (RotherCritPower
attr_idT (	RattrId(
skill_level_listU (RskillLevelList(
talent_info_listV (RtalentInfoListj
Disc
id (Rid
level (Rlevel<
disc_skill_list (2.Recorders.DiscSkillRdiscSkillList1
	DiscSkill
id (Rid
level (Rlevel";
	LevelType

STAR_TOWER 
TRAVELER_DUEL
VAMPIREB™Nova.Clientbproto3