#ifndef VARIABLES_H
#define VARIABLES_H

#include "z64.h"
#include "libc64/os_malloc.h"
#include "segment_symbols.h"

struct MapData;

extern OSPiHandle* gCartHandle;

extern const char gBuildCreator[];
extern const char gBuildDate[];
extern const char gBuildMakeOption[];

extern OSMesgQueue gPiMgrCmdQueue;
extern OSViMode gViConfigMode;
extern u8 gViConfigModeType;

extern s16 gSpoilingItems[3];
extern s16 gSpoilingItemReverts[3];

// 4 16-colors palettes
extern u64 gMojiFontTLUTs[4][4]; // original name: "moji_tlut"
extern u64 gMojiFontTex[]; // original name: "font_ff"

extern s16* gWaveSamples[9];
extern f32 gBendPitchOneOctaveFrequencies[256];
extern f32 gBendPitchTwoSemitonesFrequencies[256];
extern f32 gPitchFrequencies[];
extern u8 gDefaultShortNoteVelocityTable[16];
extern u8 gDefaultShortNoteGateTimeTable[16];
extern EnvelopePoint gDefaultEnvelope[4];
extern NoteSubEu gZeroNoteSub;
extern NoteSubEu gDefaultNoteSub;
extern u16 gHaasEffectDelaySizes[64];
extern s16 D_8012FBA8[];
extern f32 gHeadsetPanVolume[128];
extern f32 gStereoPanVolume[128];
extern f32 gDefaultPanVolume[128];
extern s16 gLowPassFilterData[16 * 8];
extern s16 gHighPassFilterData[15 * 8];
extern s32 gAudioContextInitialized;
extern u8 gIsLargeSfxBank[7];
extern u8 gChannelsPerBank[4][7];
extern u8 gUsedChannelsPerBank[4][7];
extern u8 gMorphaTransposeTable[16];
extern u8* gFrogsSongPtr;
extern OcarinaNote* gScarecrowLongSongPtr;
extern u8* gScarecrowSpawnSongPtr;
extern OcarinaSongButtons gOcarinaSongButtons[];
extern SfxParams* gSfxParams[7];
extern char D_80133390[];
extern char D_80133398[];
extern u8 gSfxRequestWriteIndex;
extern u8 gSfxRequestReadIndex;
extern SfxBankEntry* gSfxBanks[7];
extern u8 gSfxBankSizes[];
extern u8 gSfxChannelLayout;
extern u16 D_801333D0;
extern Vec3f gSfxDefaultPos;
extern f32 gSfxDefaultFreqAndVolScale;
extern s8 gSfxDefaultReverb;
#if DEBUG_FEATURES
extern u8 D_801333F0;
extern u8 gAudioSfxSwapOff;
extern u8 D_801333F8;
#endif
extern u8 gSeqCmdWritePos;
extern u8 gSeqCmdReadPos;
extern u8 gStartSeqDisabled;
#if DEBUG_FEATURES
extern u8 gAudioDebugPrintSeqCmd;
#endif
extern u8 gSoundOutputModes[];
extern u8 gAudioSpecId;
extern u8 D_80133418;
extern AudioSpec gAudioSpecs[18];
extern u8 __osPfsInodeCacheBank;
extern s32 __osPfsLastChannel;

extern TempoData gTempoData;
extern AudioHeapInitSizes gAudioHeapInitSizes;
extern s16 gOcarinaSongItemMap[];
extern AudioTable gSoundFontTable;
extern u8 gSequenceFontTable[];
extern u8 gSequenceTable[];
extern AudioTable gSampleBankTable;

extern struct MapData* gMapData;
extern u8 gBossMarkState;
extern f32 gBossMarkScale;
extern u32 D_8016139C;
extern PauseMapMarksData* gLoadedPauseMarkDataTable;

extern SfxBankEntry D_8016BAD0[9];
extern SfxBankEntry D_8016BC80[12];
extern SfxBankEntry D_8016BEC0[22];
extern SfxBankEntry D_8016C2E0[20];
extern SfxBankEntry D_8016C6A0[8];
extern SfxBankEntry D_8016C820[3];
extern SfxBankEntry D_8016C8B0[5];
extern ActiveSfx gActiveSfx[7][MAX_CHANNELS_PER_BANK]; // total size = 0xA8
extern u8 gSfxBankMuted[];
extern u16 gAudioSfxSwapSource[10];
extern u16 gAudioSfxSwapTarget[10];
extern u8 gAudioSfxSwapMode[10];
extern ActiveSequence gActiveSeqs[4];
extern AudioContext gAudioCtx;
extern AudioCustomUpdateFunction gAudioCustomUpdateFunction;

#endif
