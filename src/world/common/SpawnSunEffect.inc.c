#include "common.h"
#include "npc.h"
#include "effects.h"

ApiStatus N(SpawnSunEffect)(Evt* script, s32 isInitialCall) {
    fx_sun(0, 0.0f, 0.0f, 0.0f, 0.0f, 0);
    return ApiStatus_DONE2;
}
