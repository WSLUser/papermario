#include "kmr_03.h"

EvtScript N(80242340) = {
    EVT_CALL(UseSettingsFrom, 0, -270, 20, -80)
    EVT_CALL(SetPanTarget, 0, -270, 20, -80)
    EVT_CALL(SetCamDistance, 0, EVT_FLOAT(700.0))
    EVT_CALL(SetCamSpeed, 0, EVT_FLOAT(90.0))
    EVT_CALL(PanToTarget, 0, 0, 1)
    EVT_IF_GE(GB_StoryProgress, -119)
        EVT_CALL(SetPlayerPos, 0, -1000, 0)
        EVT_CALL(DisablePlayerInput, TRUE)
        EVT_CALL(SetPlayerPos, -224, 20, -80)
        EVT_CALL(SetNpcPos, NPC_PARTNER, -224, 20, -80)
        EVT_WAIT(20)
        EVT_CALL(SetCamSpeed, 0, EVT_FLOAT(3.0))
        EVT_CALL(GetPlayerPos, LVar0, LVar1, LVar2)
        EVT_CALL(UseSettingsFrom, 0, LVar0, LVar1, LVar2)
        EVT_CALL(SetPanTarget, 0, LVar0, LVar1, LVar2)
        EVT_CALL(PanToTarget, 0, 0, 1)
        EVT_CALL(WaitForCam, 0, EVT_FLOAT(1.0))
        EVT_CALL(PanToTarget, 0, 0, 0)
        EVT_CALL(DisablePlayerInput, FALSE)
        EVT_RETURN
    EVT_END_IF
    EVT_CALL(DisablePlayerInput, TRUE)
    EVT_CALL(DisablePlayerPhysics, TRUE)
    EVT_CALL(GetPlayerPos, LVar0, LVar1, LVar2)
    EVT_CALL(SetPlayerPos, LVar0, -1000, LVar2)
    EVT_WAIT(30)
    EVT_CALL(SetCamDistance, 0, 220)
    EVT_CALL(SetCamSpeed, 0, EVT_FLOAT(1.0))
    EVT_CALL(PanToTarget, 0, 0, 1)
    EVT_CALL(WaitForCam, 0, EVT_FLOAT(1.0))
    EVT_THREAD
        EVT_WAIT(18)
        EVT_CALL(PlaySoundAtPlayer, 373, 0)
        EVT_WAIT(30)
        EVT_CALL(PlaySoundAtPlayer, 374, 0)
        EVT_WAIT(28)
        EVT_CALL(PlaySoundAtPlayer, 373, 0)
    EVT_END_THREAD
    EVT_CALL(HidePlayerShadow, TRUE)
    EVT_CALL(SetPlayerAnimation, ANIM_Mario_10002)
    EVT_CALL(SetPlayerPos, -224, 120, -80)
    EVT_CALL(InterpPlayerYaw, 90, 0)
    EVT_LABEL(0)
    EVT_WAIT(1)
    EVT_CALL(GetPlayerPos, LVar0, LVar1, LVar2)
    EVT_ADD(LVar1, -2)
    EVT_CALL(SetPlayerPos, LVar0, LVar1, LVar2)
    EVT_IF_GT(LVar1, 86)
        EVT_GOTO(0)
    EVT_END_IF
    EVT_CALL(SetPlayerPos, -310, 20, -80)
    EVT_THREAD
        EVT_WAIT(20)
        EVT_CALL(SetPanTarget, 0, -310, 20, -80)
        EVT_CALL(SetCamSpeed, 0, EVT_FLOAT(0.2))
        EVT_CALL(PanToTarget, 0, 0, 1)
    EVT_END_THREAD
    EVT_CALL(func_802D286C, 10240)
    EVT_CALL(func_802D2520, ANIM_Mario_10002, 5, 5, 1, 1, 0)
    EVT_WAIT(100)
    EVT_CALL(WaitForCam, 0, EVT_FLOAT(1.0))
    EVT_CALL(func_802D2520, ANIM_Mario_10002, 0, 0, 0, 0, 0)
    EVT_CALL(HidePlayerShadow, FALSE)
    EVT_CALL(SetPlayerAnimation, ANIM_Mario_BeforeJump)
    EVT_WAIT(10)
    EVT_CALL(SetPlayerAnimation, ANIM_Mario_AnimMidairStill)
    EVT_CALL(GetPlayerPos, LVar0, LVar1, LVar2)
    EVT_CALL(SetPlayerJumpscale, EVT_FLOAT(1.0))
    EVT_CALL(PlayerJump, LVar0, LVar1, LVar2, 10)
    EVT_CALL(SetPlayerAnimation, ANIM_Mario_10002)
    EVT_THREAD
        EVT_CALL(SetCamSpeed, 0, EVT_FLOAT(3.0))
        EVT_CALL(GetPlayerPos, LVar0, LVar1, LVar2)
        EVT_CALL(UseSettingsFrom, 0, LVar0, LVar1, LVar2)
        EVT_CALL(SetPanTarget, 0, LVar0, LVar1, LVar2)
        EVT_CALL(PanToTarget, 0, 0, 1)
        EVT_CALL(WaitForCam, 0, EVT_FLOAT(1.0))
        EVT_CALL(PanToTarget, 0, 0, 0)
    EVT_END_THREAD
    EVT_WAIT(30)
    EVT_CALL(DisablePlayerPhysics, FALSE)
    EVT_CALL(DisablePlayerInput, FALSE)
    EVT_RETURN
    EVT_END
};
