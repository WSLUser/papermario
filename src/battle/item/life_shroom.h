#ifndef BATTLE_ITEM_LIFE_SHROOM
#define BATTLE_ITEM_LIFE_SHROOM

#include "common.h"
#include "script_api/battle.h"

#undef NAMESPACE
#define NAMESPACE battle_item_life_shroom

ApiStatus N(func_802A123C_72E76C)(Evt* script, s32 isInitialCall);
ApiStatus N(func_802A12EC_72E81C)(Evt* script, s32 isInitialCall);
ApiStatus N(func_802A1484_72E9B4)(Evt* script, s32 isInitialCall);
ApiStatus N(func_802A1438_72E968)(Evt* script, s32 isInitialCall);
ApiStatus N(func_802A1378_72E8A8)(Evt* script, s32 isInitialCall);

extern EvtScript N(UseItemWithEffect);
extern EvtScript N(PlayerGoHome);
extern EvtScript N(UseItem);
extern EvtScript N(EatItem);

#endif
