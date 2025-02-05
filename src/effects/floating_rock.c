#include "common.h"
#include "effects_internal.h"

void floating_rock_init(EffectInstance* effect);
void floating_rock_update(EffectInstance* effect);
void floating_rock_render(EffectInstance* effect);
void floating_rock_appendGfx(void* effect);

EffectInstance* floating_rock_main(s32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, s32 arg8) {
    EffectBlueprint bp;
    EffectInstance* effect;
    FloatingRockFXData* data;
    s32 numParts = 1;

    bp.init = floating_rock_init;
    bp.update = floating_rock_update;
    bp.renderWorld = floating_rock_render;
    bp.unk_00 = 0;
    bp.unk_14 = NULL;
    bp.effectID = EFFECT_FLOATING_ROCK;

    effect = shim_create_effect_instance(&bp);
    effect->numParts = numParts;
    data = effect->data.floatingRock = shim_general_heap_malloc(numParts * sizeof(*data));
    ASSERT(effect->data.floatingRock != NULL);

    data->unk_00 = arg0;
    data->unk_04 = arg1;
    data->unk_08 = arg2;
    data->unk_0C = arg3;
    data->unk_10 = arg4;
    data->unk_18 = arg5;
    data->unk_20 = arg6;
    data->unk_48 = arg8;
    data->unk_4C = 0;
    data->unk_14 = 0;
    data->unk_1C = 0;
    data->unk_24 = 0;
    data->unk_28 = shim_rand_int(360);
    data->unk_2C = shim_rand_int(360);
    data->unk_30.x = 0;
    data->unk_44 = 255;
    data->unk_40 = 0;
    data->unk_30.z = 20.0f;
    data->unk_30.y = -20.0f;
    data->unk_3C = 2.0f * arg7;

    return effect;
}

void floating_rock_init(EffectInstance* effect) {
}

void floating_rock_update(EffectInstance* effect) {
    FloatingRockFXData* data = effect->data.floatingRock;
    s32 unk48;

    data->unk_48--;
    data->unk_4C++;
    if (data->unk_48 < 0) {
        shim_remove_effect(effect);
        return;
    }

    unk48 = data->unk_48;
    if (data->unk_08 != data->unk_10) {
        data->unk_18 += data->unk_20;
        data->unk_08 += data->unk_18;
        data->unk_24 += data->unk_30.x;
        data->unk_2C += data->unk_30.z;
        data->unk_28 += data->unk_30.y;
        if (data->unk_08 <= data->unk_10) {
            data->unk_08 = data->unk_10;
            shim_load_effect(EFFECT_DUST);
            dust_main(2, data->unk_04, data->unk_08, data->unk_0C, 20);
            data->unk_48 = 30;
        }
    }

    if (unk48 < 10) {
        data->unk_44 *= 0.8;
    }
}

void floating_rock_render(EffectInstance *effect) {
    FloatingRockFXData* effect76 = effect->data.floatingRock;
    RenderTask renderTask;
    RenderTask* retTask;

    renderTask.appendGfx = floating_rock_appendGfx;
    renderTask.appendGfxArg = effect;
    renderTask.distance = effect76->unk_0C;
    renderTask.renderMode = RENDER_MODE_2D;

    retTask = shim_queue_render_task(&renderTask);
    retTask->renderMode |= RENDER_TASK_FLAG_2;
}

INCLUDE_ASM(s32, "effects/floating_rock", floating_rock_appendGfx);
