#include "arn_08.h"
#include "message_ids.h"

EntryList N(entryList) = {
    { -80.0f, 0.0f, 108.0f, 45.0f },
    {   0.0f, 0.0f,   0.0f,  0.0f },
    { -85.0f, 0.0f,  55.0f, 45.0f },
};

MapSettings N(settings) = {
    .main = &N(main),
    .entryList = &N(entryList),
    .entryCount = ENTRY_COUNT(N(entryList)),
    .tattle = { MSG_MapTattle_arn_08 },
};

EvtScript N(80240300) = {
    EVT_SWITCH(GB_StoryProgress)
        EVT_CASE_LT(-22)
            EVT_CALL(SetMusicTrack, 0, SONG_TUBBA_ESCAPE, 0, 8)
        EVT_CASE_LT(-16)
            EVT_CALL(SetMusicTrack, 0, SONG_TUBBA_BLUBBA_THEME, 0, 8)
        EVT_CASE_DEFAULT
            EVT_CALL(SetMusicTrack, 0, SONG_GUSTY_GULCH, 0, 8)
    EVT_END_SWITCH
    EVT_CALL(ClearAmbientSounds, 250)
    EVT_RETURN
    EVT_END
};
