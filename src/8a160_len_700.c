#include "common.h"

#include "A2960.png.inc.c"

Vp D_801096B0 = {
    .vp = {
        .vscale = { 640, 480, 511, 0 },
        .vtrans = { 640, 480, 511, 0 }
    }
};

#include "A2B70.vtx.inc.c"

#include "A2BC0.gfx.inc.c"
#include "A2C88.gfx.inc.c"

u8 D_80109800[32] = {
    40, 90, 81, 72, 65, 59, 53, 47, 43, 38, 34, 31, 28, 25, 22, 20, 18, 16, 15, 13, 12, 10, 9, 8, 7, 7, 6, 5, 5, 4, 0, 0
};

Vec2b D_80109820[56] = {
    { 247, 105 }, { 239, 87 }, { 17, 87 }, { 9, 105 }, { 0, 122 }, { 230, 69 }, { 26, 69 }, { 221, 52 }, { 35, 52 },
    { 202, 49 }, { 186, 255 }, { 200, 241 }, { 0, 200 }, { 56, 241 }, { 70, 255 }, { 54, 49 }, { 196, 222 },
    { 239, 191 }, { 17, 191 }, { 60, 222 }, { 85, 13 }, { 74, 46 }, { 99, 27 }, { 93, 43 }, { 12, 33 }, { 12, 22 },
    { 24, 22 }, { 24, 33 }, { 12, 10 }, { 24, 10 }, { 24, 45 }, { 232, 33 }, { 232, 22 }, { 232, 45 }, { 113, 40 },
    { 193, 203 }, { 190, 183 }, { 182, 46 }, { 163, 43 }, { 35, 182 }, { 52, 173 }, { 12, 45 }, { 244, 22 },
    { 244, 33 }, { 232, 10 }, { 244, 10 }, { 244, 45 }, { 204, 173 }, { 221, 182 }, { 186, 164 }, { 171, 13 },
    { 157, 27 }, { 143, 40 }, { 63, 203 }, { 66, 183 }, { 70, 164 }
};

typedef struct Unk8a160 {
    /* 0x00 */ u8 unk_00;
    /* 0x01 */ s8 unk_01;
    /* 0x02 */ u8 unk_02;
    /* 0x03 */ Color_RGBA8 rgba;
    /* 0x07 */ s8 lodVal;
    /* 0x08 */ f32 x;
    /* 0x0C */ f32 y;
    /* 0x10 */ f32 unk_10;
    /* 0x14 */ f32 unk_14;
    /* 0x18 */ f32 scale;
} Unk8a160; // size = 0x1C

typedef struct Unk8a160Outer {
    /* 0x00 */ Unk8a160 subs[57]; // base + others?
} Unk8a160Outer;

extern Unk8a160Outer D_8010D000[1];

void func_800F0CB0(s32 arg0, f32 arg1, f32 arg2, f32 arg3) {
    Unk8a160Outer* outer = &D_8010D000[arg0];
    Unk8a160* sub = &outer->subs[0];
    s32 numSubstructs = ARRAY_COUNT(outer->subs);
    s32 i;

    if (arg0 <= 0) {
        sub->unk_00 = 1;
        sub->x = arg1;
        sub->y = arg2;
        sub->scale = arg3;
        sub->unk_01 = 40;
        sub->unk_02 = 0;
        sub = &outer->subs[1];

        for (i = 1; i < numSubstructs; i++, sub++) {
            sub->lodVal = (s32) (-((f32) i) * 0.0f) - 1;
        }
    }
}

void func_800F0D5C(void) {
    Unk8a160Outer* outer = &D_8010D000[0];
    s32 i;

    for (i = 0; i < 1; i++) {
        outer[i].subs[0].unk_00 = 0;
    }
}

void func_800F0D80(void) {
    Unk8a160Outer* outer;
    s32 temp_a0;
    s32 i;
    s32 j;

    for (i = 0; i < ARRAY_COUNT(D_8010D000); i++, outer++) {
        outer = &D_8010D000[i];

        if (outer->subs[0].unk_00 != 0) {
            outer->subs[0].unk_01--;
            outer->subs[0].unk_02++;

            if (outer->subs[0].unk_01 < 0) {
                outer->subs[0].unk_00 = 0;
            } else {
                Unk8a160* sub = &outer->subs[0];
                f32 temp_f26 = sub->x;
                f32 temp_f24 = sub->y;

                temp_a0 = outer->subs[0].unk_01;
                sub++;
                for (j = 1; j < ARRAY_COUNT(outer->subs); j++, sub++) {
                    sub->lodVal++;
                    if (sub->lodVal >= 30) {
                        if (temp_a0 < 30) {
                            sub->lodVal = -31;
                        } else {
                            sub->lodVal = 0;
                        }
                    }

                    if (sub->lodVal >= 0) {
                        if (sub->lodVal == 0) {
                            f32 tx = D_80109820[j - 1].x;
                            f32 ty = D_80109820[j - 1].y;
                            u8 t = 127;

                            sub->unk_10 = tx * 0.1;
                            sub->unk_14 = -ty * 0.1;
                            sub->x = temp_f26;
                            sub->y = temp_f24;
                            sub->scale = 1.0f;
                            sub->rgba.r = rand_int(t);
                            sub->rgba.g = rand_int(t - sub->rgba.r);
                            sub->rgba.b = rand_int(t - sub->rgba.g - sub->rgba.r);
                            sub->rgba.a = 255;
                            sub->rgba.r += 128;
                            sub->rgba.g += 128;
                            sub->rgba.b += 128;
                        }
                        sub->x += sub->unk_10;
                        sub->y += sub->unk_14;
                        sub->unk_10 *= 0.92;
                        sub->unk_14 *= 0.92;
                        sub->scale = (f32) D_80109800[sub->lodVal] * 0.04;
                    }
                }
            }
        }
    }
}

void func_800F102C(void) {
    Matrix4f sp20, sp60;
    f32 temp_f20;
    Unk8a160Outer* outer;
    s32 i;
    s32 j;

    gDPPipeSync(gMasterGfxPos++);
    gSPSegment(gMasterGfxPos++, 0x00, 0x00000000);
    gDPSetScissor(gMasterGfxPos++, G_SC_NON_INTERLACE, 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    gSPViewport(gMasterGfxPos++, &D_801096B0);

    guOrthoF(sp20, 0.0f, SCREEN_WIDTH, SCREEN_HEIGHT, 0.0f, -100.0f, 100.0f, 1.0f);
    guMtxF2L(sp20, &gDisplayContext->matrixStack[gMatrixListPos]);

    gSPMatrix(gMasterGfxPos++, &gDisplayContext->matrixStack[gMatrixListPos++], G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    gSPDisplayList(gMasterGfxPos++, D_80109710);
    gDPSetEnvColor(gMasterGfxPos++, 127, 127, 127, 127);

    for (i = 0; i < ARRAY_COUNT(D_8010D000); i++, outer++) {
        outer = &D_8010D000[i];

        if (outer->subs[0].unk_00 != 0) {
            Unk8a160* it = &outer->subs[0];
            f32 baseScale = it->scale;

            it++;
            for (j = 1; j < ARRAY_COUNT(outer->subs); j++, it++) {
                if (it->lodVal >= 0) {
                    guPositionF(sp60, 0.0f, 0.0f, gGameStatusPtr->frameCounter * 10, it->scale * baseScale,
                                it->x, it->y, 0.0f);
                    guMtxF2L(sp60, &gDisplayContext->matrixStack[gMatrixListPos]);

                    gSPMatrix(gMasterGfxPos++, &gDisplayContext->matrixStack[gMatrixListPos++],
                              G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
                    gDPSetPrimColor(gMasterGfxPos++, 0, 80 - it->lodVal, it->rgba.r, it->rgba.g, it->rgba.b, it->rgba.a);
                    gSPDisplayList(gMasterGfxPos++, D_801097D8);
                    gSPPopMatrix(gMasterGfxPos++, G_MTX_MODELVIEW);
                }
            }
        }
    }
}
