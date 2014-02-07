.class public Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
.super Ljava/lang/Object;
.source "WakeUpCmdRecognizer.java"


# static fields
.field public static final AL_Enroll:I = 0x65

.field public static final CHECK_Enroll_END:I = 0x67

.field public static final CHECK_Enroll_START:I = 0x66

.field static final ENROLL_CNT:I = 0x4

.field static final ERROR_CONFLICT_COMMAND:I = -0x4

.field static final ERROR_MIC_BUSY:I = -0x5

.field public static final Enroll_ConflictCommand:I = 0x68

.field public static final MODEL_STATUS_ENROLLED:I = 0x3

.field public static final MODEL_STATUS_NONE:I = 0x0

.field public static final MODEL_STATUS_NOTENROLLED:I = 0x2

.field public static final MODEL_STATUS_NOUSERS:I = 0x1

.field static final NUM_MODELS:I = 0x6

.field public static ROOT:Ljava/lang/String; = null

.field public static final Recording_Fail:I = 0x69

.field public static UDTAlwaysAPrecog:Ljava/lang/String; = null

.field public static UDTAlwaysAPsearch:Ljava/lang/String; = null

.field public static UDTMultiAPrecog:Ljava/lang/String; = null

.field public static UDTMultiAPsearch:Ljava/lang/String; = null

.field static final UDTSID_ENROLL_CNT:I = 0x4

.field static final UDTSID_NUM_USERS:I = 0x5

.field public static customVoiceTalkEnablePath:Ljava/lang/String; = null

.field private static isEnrollReady:Z = false

.field public static mExist:[I = null

.field public static m_lastEnroll_0:Ljava/lang/String; = null

.field public static m_lastEnroll_1:Ljava/lang/String; = null

.field public static m_lastEnroll_2:Ljava/lang/String; = null

.field public static m_lastEnroll_3:Ljava/lang/String; = null

.field public static m_lastEnroll_4:Ljava/lang/String; = null

.field public static m_lastEnroll_5:Ljava/lang/String; = null

.field public static final m_strModelX86:Ljava/lang/String; = "/system/wakeupdata/samsung/models_x86.bin"

.field public static m_strSensoryCustomModelPath:Ljava/lang/String;

.field private static sVoiceLanguageFilePath:Ljava/lang/String;

.field public static typeDefine:Ljava/lang/String;


# instance fields
.field public CommandNumber:S

.field private final PACKAGENAME:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field public WType:I

.field private absBeam:F

.field private acousticModelPathname:Ljava/lang/String;

.field private aoffset:F

.field private background_enroll:Ljava/lang/Thread;

.field private beam:F

.field private final brNewAcousticModelPathname:Ljava/lang/String;

.field private final brNewSearchGrammarPathname:Ljava/lang/String;

.field private final chAcousticModelPathname:Ljava/lang/String;

.field private final chNewAcousticModelPathname:Ljava/lang/String;

.field private final chNewSearchGrammarPathname:Ljava/lang/String;

.field private final chSearchGrammarPathname:Ljava/lang/String;

.field conflictCommandType:[S

.field public consoleInitReturn:J

.field private final deAcousticModelPathname:Ljava/lang/String;

.field private final deNewAcousticModelPathname:Ljava/lang/String;

.field private final deNewSearchGrammarPathname:Ljava/lang/String;

.field private final deSearchGrammarPathname:Ljava/lang/String;

.field private debugSessionPathname:Ljava/lang/String;

.field private delay:F

.field private doLoggingParam:I

.field private final elNewAcousticModelPathname:Ljava/lang/String;

.field private final elNewSearchGrammarPathname:Ljava/lang/String;

.field private final esAcousticModelPathname:Ljava/lang/String;

.field private final esNewAcousticModelPathname:Ljava/lang/String;

.field private final esNewSearchGrammarPathname:Ljava/lang/String;

.field private final esSearchGrammarPathname:Ljava/lang/String;

.field private final frAcousticModelPathname:Ljava/lang/String;

.field private final frNewAcousticModelPathname:Ljava/lang/String;

.field private final frNewSearchGrammarPathname:Ljava/lang/String;

.field private final frSearchGrammarPathname:Ljava/lang/String;

.field public handler:Landroid/os/Handler;

.field protected isAudioFocus:Z

.field private isCustomVoiceTalkEnable:Z

.field public isEnableChineseWakeUp:Z

.field public isEnableJapaneseWakeUp:Z

.field public isEnableRussianWakeUp:Z

.field private isMultipleWakeUpEnable:Z

.field public isNewVersionSensoryWakeUpLibExist:Z

.field private isRecording:Z

.field private isRunning_all:Z

.field private isRunning_enroll:Z

.field private isSamsungWakeUpLibExist:Z

.field private isSensoryInitialize:Z

.field public isSensoryUDTSIDExist:Z

.field private isSensoryWakeUpLibExist:Z

.field private final itAcousticModelPathname:Ljava/lang/String;

.field private final itNewAcousticModelPathname:Ljava/lang/String;

.field private final itNewSearchGrammarPathname:Ljava/lang/String;

.field private final itSearchGrammarPathname:Ljava/lang/String;

.field private final jpAcousticModelPathname:Ljava/lang/String;

.field private final jpNewAcousticModelPathname:Ljava/lang/String;

.field private final jpNewSearchGrammarPathname:Ljava/lang/String;

.field private final jpSearchGrammarPathname:Ljava/lang/String;

.field private final koAcousticModelPathname:Ljava/lang/String;

.field private final koNewAcousticModelPathname:Ljava/lang/String;

.field private final koNewSearchGrammarPathname:Ljava/lang/String;

.field private final koSearchGrammarPathname:Ljava/lang/String;

.field private final mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field protected mAudioManager:Landroid/media/AudioManager;

.field protected mContext:Landroid/content/Context;

.field public mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

.field private mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

.field public mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

.field public mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

.field public mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

.field public mVElib:Lcom/samsung/voiceshell/VoiceEngine;

.field private final m_UBMpath:Ljava/lang/String;

.field private final newVersionSensorySoFilePath:Ljava/lang/String;

.field public returnLoadUser:I

.field private final ruAcousticModelPathname:Ljava/lang/String;

.field private final ruNewAcousticModelPathname:Ljava/lang/String;

.field private final ruNewSearchGrammarPathname:Ljava/lang/String;

.field private final ruSearchGrammarPathname:Ljava/lang/String;

.field private searchGrammarPathname:Ljava/lang/String;

.field private final sensorySoFilePath:Ljava/lang/String;

.field private final sensoryUDTSIDSoFilePath:Ljava/lang/String;

.field public sensoryUDTSIDThreadEnable:Z

.field private final ukAcousticModelPathname:Ljava/lang/String;

.field private final ukNewAcousticModelPathname:Ljava/lang/String;

.field private final ukNewSearchGrammarPathname:Ljava/lang/String;

.field private final ukSearchGrammarPathname:Ljava/lang/String;

.field private final usAcousticModelPathname:Ljava/lang/String;

.field private final usNewAcousticModelPathname:Ljava/lang/String;

.field private final usNewSearchGrammarPathname:Ljava/lang/String;

.field private final usSearchGrammarPathname:Ljava/lang/String;

.field private final voiceEngineSoFilePath:Ljava/lang/String;

.field private weHaveNoModel:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-string v0, "/data/data/com.vlingo.midas/lastEnrollUtt_0.pcm"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_0:Ljava/lang/String;

    .line 33
    const-string v0, "/data/data/com.vlingo.midas/lastEnrollUtt_1.pcm"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_1:Ljava/lang/String;

    .line 34
    const-string v0, "/data/data/com.vlingo.midas/lastEnrollUtt_2.pcm"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_2:Ljava/lang/String;

    .line 35
    const-string v0, "/data/data/com.vlingo.midas/lastEnrollUtt_3.pcm"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_3:Ljava/lang/String;

    .line 36
    const-string v0, "/data/data/com.vlingo.midas/lastEnrollUtt_4.pcm"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_4:Ljava/lang/String;

    .line 37
    const-string v0, "/data/data/com.vlingo.midas/lastEnrollUtt_5.pcm"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_5:Ljava/lang/String;

    .line 39
    const-string v0, "/data/data/com.vlingo.midas/"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    .line 40
    const-string v0, "/data/data/com.vlingo.midas/typeDefine.bin"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->typeDefine:Ljava/lang/String;

    .line 41
    const-string v0, "/data/data/com.vlingo.midas/kwd_1.bin"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->customVoiceTalkEnablePath:Ljava/lang/String;

    .line 42
    const-string v0, "/data/data/com.vlingo.midas/UDT_Always_Deep_search.bin"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_strSensoryCustomModelPath:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnrollReady:Z

    .line 83
    const/4 v0, 0x6

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mExist:[I

    .line 170
    const-string v0, "/data/data/com.vlingo.midas/files/language.bin"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sVoiceLanguageFilePath:Ljava/lang/String;

    .line 182
    const-string v0, "/data/data/com.vlingo.midas/UDT_Always_AP_recog.raw"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTAlwaysAPrecog:Ljava/lang/String;

    .line 183
    const-string v0, "/data/data/com.vlingo.midas/UDT_Always_AP_search.raw"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTAlwaysAPsearch:Ljava/lang/String;

    .line 185
    const-string v0, "/data/data/com.vlingo.midas/UDT_Multi_AP_recog.raw"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTMultiAPrecog:Ljava/lang/String;

    .line 186
    const-string v0, "/data/data/com.vlingo.midas/UDT_Multi_AP_search.raw"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTMultiAPsearch:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/voiceshell/VoiceEngineResultListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/samsung/voiceshell/VoiceEngineResultListener;

    .prologue
    .line 192
    sget-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;-><init>(Lcom/samsung/voiceshell/VoiceEngineResultListener;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public constructor <init>(Lcom/samsung/voiceshell/VoiceEngineResultListener;Ljava/lang/String;)V
    .registers 7
    .param p1, "listener"    # Lcom/samsung/voiceshell/VoiceEngineResultListener;
    .param p2, "strRootPath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 196
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "/system/wakeupdata/samsung/models_16k_NoE.bin"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_UBMpath:Ljava/lang/String;

    .line 43
    const-string v0, "com.vlingo.midas"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->PACKAGENAME:Ljava/lang/String;

    .line 47
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    .line 48
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    .line 49
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    .line 51
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    .line 53
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->consoleInitReturn:J

    .line 55
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    .line 56
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    .line 58
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->background_enroll:Ljava/lang/Thread;

    .line 60
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_all:Z

    .line 61
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z

    .line 76
    iput v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->returnLoadUser:I

    .line 78
    iput-short v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    .line 80
    iput v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->conflictCommandType:[S

    .line 86
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    .line 87
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryWakeUpLibExist:Z

    .line 89
    const-string v0, "WakeUpCmdRecognizer"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    .line 91
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioManager:Landroid/media/AudioManager;

    .line 92
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    .line 93
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isAudioFocus:Z

    .line 95
    const-string v0, "/system/wakeupdata/sensory/nn_en_uk_mfcc_16k_15_big_250_v2_0.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 96
    const-string v0, "/system/wakeupdata/sensory/en_gb_hg_tuned1_endsil_cg.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    .line 98
    const/high16 v0, 0x41a00000

    iput v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->beam:F

    .line 99
    const/high16 v0, 0x42200000

    iput v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->absBeam:F

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->aoffset:F

    .line 101
    const/high16 v0, 0x42c80000

    iput v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->delay:F

    .line 102
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->debugSessionPathname:Ljava/lang/String;

    .line 103
    iput v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->doLoggingParam:I

    .line 105
    const-string v0, "/system/lib/libSamsungVoiceEngine.so"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->voiceEngineSoFilePath:Ljava/lang/String;

    .line 106
    const-string v0, "/system/lib/libWakeUpSensory.so"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensorySoFilePath:Ljava/lang/String;

    .line 107
    const-string v0, "/system/lib/libSensoryWakeUpEngine.so"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->newVersionSensorySoFilePath:Ljava/lang/String;

    .line 108
    const-string v0, "/system/lib/libSensoryUDTSIDEngine.so"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryUDTSIDSoFilePath:Ljava/lang/String;

    .line 113
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryInitialize:Z

    .line 114
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isCustomVoiceTalkEnable:Z

    .line 115
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isMultipleWakeUpEnable:Z

    .line 117
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->weHaveNoModel:Z

    .line 120
    const-string v0, "/system/wakeupdata/sensory/nn_ko_mfcc_16k_15_big_250_v2_1.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->koAcousticModelPathname:Ljava/lang/String;

    .line 121
    const-string v0, "/system/wakeupdata/sensory/nn_en_us_mfcc_16k_15_big_250_v4_5.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->usAcousticModelPathname:Ljava/lang/String;

    .line 122
    const-string v0, "/system/wakeupdata/sensory/nn_en_uk_mfcc_16k_15_big_250_v2_0.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ukAcousticModelPathname:Ljava/lang/String;

    .line 123
    const-string v0, "/system/wakeupdata/sensory/nn_es_mfcc_16k_15_big_250_v1_1.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->esAcousticModelPathname:Ljava/lang/String;

    .line 124
    const-string v0, "/system/wakeupdata/sensory/nn_fr_mfcc_16k_15_big_250_v2_2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->frAcousticModelPathname:Ljava/lang/String;

    .line 125
    const-string v0, "/system/wakeupdata/sensory/nn_de_mfcc_16k_15_big_250_v3_0.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->deAcousticModelPathname:Ljava/lang/String;

    .line 126
    const-string v0, "/system/wakeupdata/sensory/nn_it_mfcc_16k_15_big_250_v3_2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->itAcousticModelPathname:Ljava/lang/String;

    .line 127
    const-string v0, "/system/wakeupdata/sensory/nn_zh_mfcc_16k_15_big_250_v2_2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->chAcousticModelPathname:Ljava/lang/String;

    .line 128
    const-string v0, "/system/wakeupdata/sensory/nn_ja_mfcc_16k_15_big_250_v4_2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->jpAcousticModelPathname:Ljava/lang/String;

    .line 129
    const-string v0, "/system/wakeupdata/sensory/nn_en_us_mfcc_16k_15_big_250_v4_5.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ruAcousticModelPathname:Ljava/lang/String;

    .line 131
    const-string v0, "/system/wakeupdata/sensory/ko_hi_galaxy_endsil_cg.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->koSearchGrammarPathname:Ljava/lang/String;

    .line 132
    const-string v0, "/system/wakeupdata/sensory/en_us_hg_tuned3_endsil_cg.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->usSearchGrammarPathname:Ljava/lang/String;

    .line 133
    const-string v0, "/system/wakeupdata/sensory/en_gb_hg_tuned1_endsil_cg.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ukSearchGrammarPathname:Ljava/lang/String;

    .line 134
    const-string v0, "/system/wakeupdata/sensory/es_galaxy_endsil_cg.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->esSearchGrammarPathname:Ljava/lang/String;

    .line 135
    const-string v0, "/system/wakeupdata/sensory/fr_galaxy_tuned8_endsil_cg.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->frSearchGrammarPathname:Ljava/lang/String;

    .line 136
    const-string v0, "/system/wakeupdata/sensory/de_galaxy_tuned_endsil_cg.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->deSearchGrammarPathname:Ljava/lang/String;

    .line 137
    const-string v0, "/system/wakeupdata/sensory/it_galaxy_tuned_endsil_cg.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->itSearchGrammarPathname:Ljava/lang/String;

    .line 138
    const-string v0, "/system/wakeupdata/sensory/zh_galaxy_9_endsil_cg.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->chSearchGrammarPathname:Ljava/lang/String;

    .line 139
    const-string v0, "/system/wakeupdata/sensory/ja_haroo_galaxy_endsil_cg.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->jpSearchGrammarPathname:Ljava/lang/String;

    .line 140
    const-string v0, "/system/wakeupdata/sensory/ru_en_galaxy_en3_endsil_cg.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ruSearchGrammarPathname:Ljava/lang/String;

    .line 143
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_ko_kr_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->koNewAcousticModelPathname:Ljava/lang/String;

    .line 144
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_en_us_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->usNewAcousticModelPathname:Ljava/lang/String;

    .line 145
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_en_gb_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ukNewAcousticModelPathname:Ljava/lang/String;

    .line 146
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_es_es_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->esNewAcousticModelPathname:Ljava/lang/String;

    .line 147
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_es_la_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->elNewAcousticModelPathname:Ljava/lang/String;

    .line 148
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_fr_fr_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->frNewAcousticModelPathname:Ljava/lang/String;

    .line 149
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_de_de_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->deNewAcousticModelPathname:Ljava/lang/String;

    .line 150
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_it_it_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->itNewAcousticModelPathname:Ljava/lang/String;

    .line 151
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_zh_cn_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->chNewAcousticModelPathname:Ljava/lang/String;

    .line 152
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_ja_jp_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->jpNewAcousticModelPathname:Ljava/lang/String;

    .line 153
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_ru_ru_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ruNewAcousticModelPathname:Ljava/lang/String;

    .line 154
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_pt_br_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->brNewAcousticModelPathname:Ljava/lang/String;

    .line 156
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_ko_kr_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->koNewSearchGrammarPathname:Ljava/lang/String;

    .line 157
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_en_us_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->usNewSearchGrammarPathname:Ljava/lang/String;

    .line 158
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_en_gb_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ukNewSearchGrammarPathname:Ljava/lang/String;

    .line 159
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_es_es_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->esNewSearchGrammarPathname:Ljava/lang/String;

    .line 160
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_es_la_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->elNewSearchGrammarPathname:Ljava/lang/String;

    .line 161
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_fr_fr_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->frNewSearchGrammarPathname:Ljava/lang/String;

    .line 162
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_de_de_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->deNewSearchGrammarPathname:Ljava/lang/String;

    .line 163
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_it_it_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->itNewSearchGrammarPathname:Ljava/lang/String;

    .line 164
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_zh_cn_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->chNewSearchGrammarPathname:Ljava/lang/String;

    .line 165
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_ja_jp_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->jpNewSearchGrammarPathname:Ljava/lang/String;

    .line 166
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_ru_ru_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ruNewSearchGrammarPathname:Ljava/lang/String;

    .line 167
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_pt_br_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->brNewSearchGrammarPathname:Ljava/lang/String;

    .line 171
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRecording:Z

    .line 173
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    .line 174
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    .line 176
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnableChineseWakeUp:Z

    .line 177
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnableJapaneseWakeUp:Z

    .line 178
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnableRussianWakeUp:Z

    .line 180
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryUDTSIDThreadEnable:Z

    .line 324
    new-instance v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$1;

    invoke-direct {v0, p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$1;-><init>(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)V

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->handler:Landroid/os/Handler;

    .line 1422
    new-instance v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$3;

    invoke-direct {v0, p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$3;-><init>(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)V

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 197
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "secMM: WakeUpCmdRecognizer Create, Set data"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: WakeUpCmdRecognizer, strRootPath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {p0, p2}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SetDataPath(Ljava/lang/String;)V

    .line 203
    invoke-static {p2}, Lcom/samsung/voiceshell/MultipleWakeUp;->SetDataPath(Ljava/lang/String;)V

    .line 204
    invoke-static {p2}, Lcom/samsung/voiceshell/VoiceEngine;->SetDataPath(Ljava/lang/String;)V

    .line 206
    invoke-direct {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryLib()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    .line 207
    const-string v0, "/system/lib/libSensoryUDTSIDEngine.so"

    invoke-virtual {p0, v0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isWakeUpFile(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    .line 209
    const-string v0, "/system/wakeupdata/sensory/zh_galaxy_9_endsil_cg.raw"

    invoke-virtual {p0, v0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isWakeUpFile(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnableChineseWakeUp:Z

    .line 210
    const-string v0, "/system/wakeupdata/sensory/ja_haroo_galaxy_endsil_cg.raw"

    invoke-virtual {p0, v0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isWakeUpFile(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnableJapaneseWakeUp:Z

    .line 211
    const-string v0, "/system/wakeupdata/sensory/ru_en_galaxy_en3_endsil_cg.raw"

    invoke-virtual {p0, v0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isWakeUpFile(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnableRussianWakeUp:Z

    .line 213
    invoke-virtual {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->setLanguage()V

    .line 215
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    if-eqz v0, :cond_193

    .line 217
    invoke-virtual {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->setNewVersionLanguage()V

    .line 220
    :cond_193
    iput-object p1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    .line 221
    invoke-direct {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungVoiceLib()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    .line 222
    invoke-direct {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryLib()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryWakeUpLibExist:Z

    .line 224
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acousticModelPathname : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchGrammarPathname : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSamsungWakeUpLibExist : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSensoryWakeUpLibExist : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryWakeUpLibExist:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNewVersionSensoryWakeUpLibExist : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSensoryUDTSIDExist : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void
.end method

.method private InitializeVerify()I
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 1176
    const/4 v1, 0x0

    .line 1177
    .local v1, "iResult":I
    const/4 v0, 0x0

    .line 1179
    .local v0, "NumSets":I
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v2, :cond_c

    .line 1212
    :goto_7
    invoke-static {v6}, Lcom/samsung/voiceshell/AudioRecordHaydn;->SetRecordingMode(I)V

    move v2, v1

    .line 1214
    :goto_b
    return v2

    .line 1184
    :cond_c
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    sget-object v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    sget-object v5, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mExist:[I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/voiceshell/VoiceEngine;->checkFileExistence(Ljava/lang/String;I[I)I

    move-result v0

    .line 1186
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number of complete sets: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    if-nez v0, :cond_35

    .line 1190
    const/16 v2, -0xa

    goto :goto_b

    .line 1193
    :cond_35
    iget v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-nez v2, :cond_53

    .line 1195
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SECURE LOCK-SCREEN with WType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    :cond_53
    iget v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-ne v2, v6, :cond_71

    .line 1199
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NORMAL LOCK-SCREEN with WType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    :cond_71
    iget v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_90

    .line 1203
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VOICE-TALK with Wtype: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    :cond_90
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v2}, Lcom/samsung/voiceshell/VoiceEngine;->terminateVerify()I

    .line 1207
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    const-string v3, "/system/wakeupdata/samsung/models_16k_NoE.bin"

    sget-object v4, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    iget v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/voiceshell/VoiceEngine;->initializeVerify(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 1209
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v2, v6}, Lcom/samsung/voiceshell/VoiceEngine;->setMode(I)V

    goto/16 :goto_7
.end method

.method private StartVerify()I
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 1219
    const/4 v0, 0x0

    .line 1221
    .local v0, "iResult":I
    invoke-static {v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->SetRecordingMode(I)V

    .line 1223
    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTMultiAPrecog:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isWakeUpFile(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isMultipleWakeUpEnable:Z

    .line 1225
    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v1, :cond_55

    .line 1227
    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isMultipleWakeUpEnable:Z

    if-eqz v1, :cond_24

    iget v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-ne v1, v2, :cond_24

    .line 1229
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    sget-object v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->loadModels(Ljava/lang/String;S)I

    move-result v1

    iput v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->returnLoadUser:I

    .line 1231
    :cond_24
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: StartVerify, loadUsers returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->returnLoadUser:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    iget v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->returnLoadUser:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_47

    .line 1236
    const/4 v1, -0x1

    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->SetRecordingMode(I)V

    .line 1245
    :cond_47
    :goto_47
    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->weHaveNoModel:Z

    if-nez v1, :cond_4f

    .line 1247
    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v1, :cond_62

    .line 1257
    :cond_4f
    :goto_4f
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->startRecord()Z

    .line 1259
    return v0

    .line 1241
    :cond_55
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v1, v2}, Lcom/samsung/voiceshell/VoiceEngine;->setMode(I)V

    .line 1242
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    const-string v2, "/system/wakeupdata/samsung/models_16k_NoE.bin"

    invoke-virtual {v1, v2}, Lcom/samsung/voiceshell/VoiceEngine;->setAdaptationModelPath(Ljava/lang/String;)V

    goto :goto_47

    .line 1252
    :cond_62
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v1}, Lcom/samsung/voiceshell/VoiceEngine;->startVerify()I

    move-result v0

    .line 1253
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: startVerify result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f
.end method

.method private TerminateVerify()I
    .registers 3

    .prologue
    .line 1263
    const/4 v0, 0x0

    .line 1265
    .local v0, "iResult":I
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    if-eqz v1, :cond_a

    .line 1267
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->closeRecord()V

    .line 1270
    :cond_a
    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v1, :cond_f

    .line 1278
    :cond_e
    :goto_e
    return v0

    .line 1273
    :cond_f
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    if-eqz v1, :cond_e

    .line 1275
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v1}, Lcom/samsung/voiceshell/VoiceEngine;->terminateVerify()I

    move-result v0

    goto :goto_e
.end method

.method static synthetic access$000(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Lcom/samsung/voiceshell/VoiceEngineResultListener;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_all:Z

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private checkFile(Ljava/lang/String;)Z
    .registers 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1351
    if-nez p1, :cond_4

    .line 1363
    :cond_3
    :goto_3
    return v1

    .line 1355
    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1357
    .local v0, "mFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1363
    const/4 v1, 0x1

    goto :goto_3
.end method

.method private isNewVersionSensoryLib()Z
    .registers 4

    .prologue
    .line 1410
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/lib/libSensoryWakeUpEngine.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1411
    .local v0, "mFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_16

    .line 1413
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "Error : Could not find libSensoryWakeUpEngine.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    const/4 v1, 0x0

    .line 1418
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x1

    goto :goto_15
.end method

.method private isSamsungVoiceLib()Z
    .registers 4

    .prologue
    .line 1369
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/lib/libSamsungVoiceEngine.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1370
    .local v0, "mFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_16

    .line 1372
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "Error : Could not find libSamsungVoiceEngine.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    const/4 v1, 0x0

    .line 1377
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x1

    goto :goto_15
.end method

.method private isSensoryLib()Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 1383
    new-instance v0, Ljava/io/File;

    const-string v4, "/system/lib/libWakeUpSensory.so"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1384
    .local v0, "mFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1385
    .local v1, "sensoryAcousticModelFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1387
    .local v2, "sensorySearchGrammarFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_28

    iget-boolean v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    if-nez v4, :cond_28

    .line 1389
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v5, "Error : Could not find libWakeUpSensory.so or libSensoryWakeUpEngine.so"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    :goto_27
    return v3

    .line 1392
    :cond_28
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_36

    .line 1394
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v5, "Error : Could not find sensoryAcousticModelFile"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 1397
    :cond_36
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_44

    .line 1399
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v5, "Error : Could not find sensorySearchGrammarFile"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 1404
    :cond_44
    const/4 v3, 0x1

    goto :goto_27
.end method

.method private readString(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1737
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1738
    .local v3, "mFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 1739
    .local v4, "mFileInputStream":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 1741
    .local v0, "data":[B
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_36

    .line 1744
    :try_start_e
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_26

    .line 1745
    .end local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    .local v5, "mFileInputStream":Ljava/io/FileInputStream;
    :try_start_13
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v6

    new-array v0, v6, [B

    .line 1746
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 1747
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 1749
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_24} :catch_38

    move-object v4, v5

    .line 1768
    .end local v5    # "mFileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    :goto_25
    return-object v6

    .line 1751
    :catch_26
    move-exception v1

    .line 1753
    .local v1, "e":Ljava/io/IOException;
    :goto_27
    if-eqz v4, :cond_2c

    .line 1756
    :try_start_29
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_31

    .line 1762
    :cond_2c
    :goto_2c
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    .line 1764
    goto :goto_25

    .line 1757
    :catch_31
    move-exception v2

    .line 1759
    .local v2, "e1":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2c

    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e1":Ljava/io/IOException;
    :cond_36
    move-object v6, v7

    .line 1768
    goto :goto_25

    .line 1751
    .end local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "mFileInputStream":Ljava/io/FileInputStream;
    :catch_38
    move-exception v1

    move-object v4, v5

    .end local v5    # "mFileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    goto :goto_27
.end method

.method private waitForBackgroundEnroll()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 964
    iput-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z

    .line 965
    iput-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_all:Z

    .line 967
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->background_enroll:Ljava/lang/Thread;

    if-eqz v1, :cond_17

    .line 969
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "waitForBackgroundEnroll"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    :try_start_10
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->background_enroll:Ljava/lang/Thread;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_17} :catch_18

    .line 978
    :cond_17
    :goto_17
    return-void

    .line 973
    :catch_18
    move-exception v0

    .line 975
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_17
.end method


# virtual methods
.method protected InitializeEnroll()I
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1054
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "secMM: InitializeEnroll"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    const/4 v0, 0x0

    .line 1058
    .local v0, "iResult":I
    invoke-static {v5}, Lcom/samsung/voiceshell/AudioRecordHaydn;->SetRecordingMode(I)V

    .line 1060
    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v1, :cond_3c

    .line 1063
    sput-boolean v6, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnrollReady:Z

    .line 1065
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    sget-object v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    iget-short v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    invoke-virtual {v1, v2, v3}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->loadModels(Ljava/lang/String;S)I

    move-result v1

    iput v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->returnLoadUser:I

    .line 1066
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: loadUsers returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->returnLoadUser:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    :goto_39
    sput-boolean v6, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnrollReady:Z

    .line 1079
    return v0

    .line 1070
    :cond_3c
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    sget-object v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    iget v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    sget-object v4, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mExist:[I

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/voiceshell/VoiceEngine;->checkFileExistence(Ljava/lang/String;I[I)I

    .line 1072
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v1, v5}, Lcom/samsung/voiceshell/VoiceEngine;->setMode(I)V

    .line 1073
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    const-string v2, "/system/wakeupdata/samsung/models_16k_NoE.bin"

    invoke-virtual {v1, v2}, Lcom/samsung/voiceshell/VoiceEngine;->initializeEnroll(Ljava/lang/String;)I

    move-result v0

    goto :goto_39
.end method

.method protected ProcessEnroll()I
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1084
    const/4 v0, -0x3

    .line 1086
    .local v0, "iResult":I
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    if-eqz v1, :cond_f

    .line 1088
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->startRecord()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1090
    const/4 v0, -0x5

    .line 1094
    :cond_f
    sget-boolean v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnrollReady:Z

    if-eqz v1, :cond_35

    const/4 v1, -0x5

    if-eq v0, v1, :cond_35

    .line 1096
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->conflictCommandType:[S

    aput-short v5, v1, v5

    .line 1098
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    sget-object v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    iget-short v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->conflictCommandType:[S

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/voiceshell/VoiceEngine;->processEnroll(Ljava/lang/String;S[S)I

    move-result v0

    .line 1100
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->conflictCommandType:[S

    aget-short v1, v1, v5

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->conflictCommandType:[S

    aget-short v1, v1, v5

    iget-short v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    if-eq v1, v2, :cond_35

    .line 1102
    const/4 v0, -0x4

    .line 1106
    :cond_35
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    if-eqz v1, :cond_3e

    .line 1108
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->closeRecord()V

    .line 1111
    :cond_3e
    return v0
.end method

.method public SendHandlerMessage(III)V
    .registers 7
    .param p1, "job"    # I
    .param p2, "count"    # I
    .param p3, "check"    # I

    .prologue
    .line 343
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->handler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 344
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 345
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "job"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 346
    const-string v2, "Enroll_Count"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 347
    const-string v2, "EnrollCheck_Count"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 348
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 349
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 350
    return-void
.end method

.method public SetDataPath(Ljava/lang/String;)V
    .registers 5
    .param p1, "strRootPath"    # Ljava/lang/String;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "secMM: SetDataPath"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    sput-object p1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lastEnrollUtt_0.pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_0:Ljava/lang/String;

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lastEnrollUtt_1.pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_1:Ljava/lang/String;

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lastEnrollUtt_2.pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_2:Ljava/lang/String;

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lastEnrollUtt_3.pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_3:Ljava/lang/String;

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lastEnrollUtt_4.pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_4:Ljava/lang/String;

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lastEnrollUtt_5.pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_5:Ljava/lang/String;

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UDT_Always_AP_recog.raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTAlwaysAPrecog:Ljava/lang/String;

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UDT_Always_AP_search.raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTAlwaysAPsearch:Ljava/lang/String;

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UDT_Multi_AP_recog.raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTMultiAPrecog:Ljava/lang/String;

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UDT_Multi_AP_search.raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTMultiAPsearch:Ljava/lang/String;

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "typeDefine.bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->typeDefine:Ljava/lang/String;

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "kwd_1.bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->customVoiceTalkEnablePath:Ljava/lang/String;

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UDT_Always_Deep_search.bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_strSensoryCustomModelPath:Ljava/lang/String;

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "files/language.bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sVoiceLanguageFilePath:Ljava/lang/String;

    .line 378
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: SetDataPath, ROOT : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: SetDataPath, m_lastEnroll_0 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: SetDataPath, m_lastEnroll_0 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: SetDataPath, m_lastEnroll_0 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: SetDataPath, m_lastEnroll_0 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_3:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: SetDataPath, m_lastEnroll_0 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_4:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: SetDataPath, m_lastEnroll_0 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: SetDataPath, typeDefine : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->typeDefine:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: SetDataPath, customVoiceTalkEnablePath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->customVoiceTalkEnablePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: SetDataPath, sVoiceLanguageFilePath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sVoiceLanguageFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return-void
.end method

.method protected TerminateEnroll()I
    .registers 4

    .prologue
    .line 1154
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "secMM: TerminateEnroll"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    const/4 v0, 0x0

    .line 1158
    .local v0, "iResult":I
    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v1, :cond_10

    .line 1169
    :cond_c
    :goto_c
    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnrollReady:Z

    .line 1171
    return v0

    .line 1163
    :cond_10
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    if-eqz v1, :cond_c

    .line 1165
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v1}, Lcom/samsung/voiceshell/VoiceEngine;->terminateEnroll()I

    move-result v0

    goto :goto_c
.end method

.method public choiceMultipleWakeUpIntent(I)Landroid/content/Intent;
    .registers 13
    .param p1, "resultCommand"    # I

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 1283
    const/4 v2, 0x0

    .line 1284
    .local v2, "intent":Landroid/content/Intent;
    const/4 v3, 0x4

    new-array v1, v3, [I

    .line 1287
    .local v1, "assignCommandArray":[I
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "secMM: choiceMultipleWakeUpIntent, resultCommand : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    invoke-virtual {p0, v1, v7}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->functionAssignment([II)I

    move-result v3

    if-ne v3, v6, :cond_36

    .line 1291
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v4, "secMM: choiceMultipleWakeUpIntent, functionAssignment error!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    aput v6, v1, v7

    .line 1293
    aput v6, v1, v8

    .line 1294
    aput v6, v1, v9

    .line 1295
    aput v6, v1, v10

    .line 1298
    :cond_36
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "secMM: choiceMultipleWakeUpIntent, resultCommand : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    packed-switch p1, :pswitch_data_d6

    .line 1325
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "secMM: choiceMultipleWakeUpIntent, resultCommand is none : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    :goto_69
    :pswitch_69
    if-eqz v2, :cond_cd

    .line 1331
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "secMM: choiceMultipleWakeUpIntent, intent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    :goto_87
    return-object v2

    .line 1304
    :pswitch_88
    const-string v0, "custom.wakeup.screen"

    .line 1305
    .local v0, "EXTRA_CUSTOM_WAKEUP":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1306
    .restart local v2    # "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.vlingo.midas"

    const-string v5, "com.vlingo.midas.gui.ConversationActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1308
    const v3, 0x10208000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1310
    const-string v3, "custom.wakeup.screen"

    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_69

    .line 1313
    .end local v0    # "EXTRA_CUSTOM_WAKEUP":Ljava/lang/String;
    :pswitch_a9
    aget v3, v1, v7

    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/samsung/voiceshell/MultipleWakeUp;->getMultipleWakeUpIntent(ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 1314
    goto :goto_69

    .line 1316
    :pswitch_b2
    aget v3, v1, v8

    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/samsung/voiceshell/MultipleWakeUp;->getMultipleWakeUpIntent(ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 1317
    goto :goto_69

    .line 1319
    :pswitch_bb
    aget v3, v1, v9

    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/samsung/voiceshell/MultipleWakeUp;->getMultipleWakeUpIntent(ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 1320
    goto :goto_69

    .line 1322
    :pswitch_c4
    aget v3, v1, v10

    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/samsung/voiceshell/MultipleWakeUp;->getMultipleWakeUpIntent(ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 1323
    goto :goto_69

    .line 1335
    :cond_cd
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v4, "secMM: choiceMultipleWakeUpIntent, intent is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87

    .line 1299
    nop

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_69
        :pswitch_88
        :pswitch_a9
        :pswitch_b2
        :pswitch_bb
        :pswitch_c4
    .end packed-switch
.end method

.method public destroy()V
    .registers 7

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 982
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "secMM: destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z

    .line 985
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_all:Z

    .line 987
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioManager:Landroid/media/AudioManager;

    .line 988
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    .line 990
    invoke-virtual {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->stopEnroll()I

    .line 991
    invoke-virtual {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->stopVerify()I

    .line 993
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    if-eqz v0, :cond_87

    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryWakeUpLibExist:Z

    if-eqz v0, :cond_87

    .line 996
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "waitForBackgroundEnroll start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    invoke-direct {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->waitForBackgroundEnroll()V

    .line 998
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "waitForBackgroundEnroll end"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    if-eqz v0, :cond_3f

    .line 1001
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    .line 1002
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "destroy : mVElib = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    :cond_3f
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v0, :cond_57

    .line 1007
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryUDTSIDThreadEnable:Z

    .line 1009
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    if-eqz v0, :cond_4e

    .line 1011
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    invoke-virtual {v0}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->closeModels()V

    .line 1013
    :cond_4e
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    .line 1014
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "destroy : mSensoryUDTSIDEngine = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    :cond_57
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    if-eqz v0, :cond_95

    .line 1019
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    if-eqz v0, :cond_75

    .line 1021
    iget-wide v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->consoleInitReturn:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_73

    .line 1023
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    iget-wide v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->consoleInitReturn:J

    invoke-virtual {v0, v1, v2}, Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;->phrasespotClose(J)V

    .line 1024
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iput-wide v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->consoleInitReturn:J

    invoke-virtual {v0, v4, v5}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setConsoleInitReturn(J)V

    .line 1026
    :cond_73
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    .line 1038
    :cond_75
    :goto_75
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    if-eqz v0, :cond_87

    .line 1039
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v0}, Lcom/samsung/voiceshell/AudioRecordHaydn;->destroy()V

    .line 1040
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    .line 1041
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "destroy : mDummyRecorder = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    :cond_87
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    if-eqz v0, :cond_94

    .line 1047
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    .line 1048
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "destroy : mResultListener = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    :cond_94
    return-void

    .line 1031
    :cond_95
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    if-eqz v0, :cond_75

    .line 1033
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    .line 1034
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "destroy : mSensoryJNI = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75
.end method

.method public functionAssignment([II)I
    .registers 7
    .param p1, "AssignArray"    # [I
    .param p2, "RW"    # I

    .prologue
    .line 1344
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: functionAssignment, typeDefine : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->typeDefine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    sget-object v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->typeDefine:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, p2}, Lcom/samsung/voiceshell/VoiceEngine;->functionAssignment(Ljava/lang/String;[II)I

    move-result v0

    .line 1347
    .local v0, "result":I
    return v0
.end method

.method public getEnableWakeUp()Z
    .registers 2

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    return v0
.end method

.method public init()I
    .registers 10

    .prologue
    const/16 v8, 0x3e80

    const/4 v7, 0x1

    const/4 v3, -0x1

    .line 395
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v4, "secMM: init"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    if-nez v2, :cond_3b

    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-nez v2, :cond_3b

    .line 399
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "secMM: Not exist library, isSamsungWakeUpLibExist : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isSensoryUDTSIDExist : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 670
    :goto_3a
    return v2

    .line 404
    :cond_3b
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryWakeUpLibExist:Z

    if-nez v2, :cond_5b

    .line 406
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "secMM: Not exist library, isSensoryWakeUpLibExist : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryWakeUpLibExist:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 408
    goto :goto_3a

    .line 411
    :cond_5b
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_6b

    .line 413
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioManager:Landroid/media/AudioManager;

    .line 416
    :cond_6b
    new-instance v2, Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    iget-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    iget-boolean v6, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    invoke-direct {v2, v4, v5, v6}, Lcom/samsung/voiceshell/AudioRecordHaydn;-><init>(Lcom/samsung/voiceshell/VoiceEngineResultListener;ZZ)V

    iput-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    .line 417
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    if-nez v2, :cond_85

    .line 419
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v4, "secMM: init, Failed to allocate AudioRecordHaydn"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 420
    goto :goto_3a

    .line 423
    :cond_85
    invoke-static {}, Lcom/samsung/voiceshell/VoiceEngineWrapper;->getInstance()Lcom/samsung/voiceshell/VoiceEngine;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    .line 425
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v2, :cond_cf

    .line 427
    invoke-static {}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngineWrapper;->getInstance()Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    .line 429
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    if-eqz v2, :cond_c8

    .line 431
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    invoke-virtual {v2}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->getSessionValue()J

    move-result-wide v0

    .line 432
    .local v0, "lTrig":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_bd

    .line 434
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init, pre-trig : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_bd
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    invoke-virtual {v2}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->initSession()J

    move-result-wide v0

    .line 438
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    invoke-virtual {v2, v0, v1}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->setSessionValue(J)V

    .line 441
    .end local v0    # "lTrig":J
    :cond_c8
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "secMM: SensoryUDTSIDEngine init complete"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_cf
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    if-eqz v2, :cond_ff

    .line 450
    invoke-static {}, Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngineWrapper;->getInstance()Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    .line 457
    :goto_d9
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v2, :cond_106

    .line 459
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "Sample Rate is 16000"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v2, v8}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setSampleRate(I)V

    .line 478
    :goto_e9
    iput-boolean v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_all:Z

    .line 480
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;

    invoke-direct {v3, p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;-><init>(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->background_enroll:Ljava/lang/Thread;

    .line 668
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->background_enroll:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 670
    const/4 v2, 0x0

    goto/16 :goto_3a

    .line 454
    :cond_ff
    invoke-static {}, Lcom/vlingo/client/phrasespotter/SensoryEngineWrapper;->getInstance()Lcom/vlingo/client/phrasespotter/SensoryJNI;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    goto :goto_d9

    .line 464
    :cond_106
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v2, v7}, Lcom/samsung/voiceshell/VoiceEngine;->setIsRunningVoiceEngine(Z)V

    .line 466
    const-string v2, "/system/wakeupdata/samsung/models_x86.bin"

    invoke-virtual {p0, v2}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isWakeUpFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_120

    .line 468
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "Sample Rate is 16000"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v2, v8}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setSampleRate(I)V

    goto :goto_e9

    .line 473
    :cond_120
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "Sample Rate is 44100"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    const v3, 0xac44

    invoke-virtual {v2, v3}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setSampleRate(I)V

    goto :goto_e9
.end method

.method public isWakeUpFile(Ljava/lang/String;)Z
    .registers 4
    .param p1, "mFilePath"    # Ljava/lang/String;

    .prologue
    .line 1772
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1773
    .local v0, "mFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1774
    const/4 v1, 0x1

    .line 1777
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method protected sensoryProcessEnroll()I
    .registers 7

    .prologue
    .line 1116
    const/4 v0, -0x3

    .line 1117
    .local v0, "iResult":I
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    if-eqz v2, :cond_54

    .line 1119
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->startRecord()Z

    move-result v2

    if-nez v2, :cond_e

    .line 1121
    const/4 v0, -0x5

    .line 1130
    :cond_e
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "secMM: start sensoryProcessEnroll, trig : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    invoke-virtual {v4}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->getSessionValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    sget-boolean v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnrollReady:Z

    if-eqz v2, :cond_42

    const/4 v2, -0x5

    if-eq v0, v2, :cond_42

    .line 1134
    :cond_33
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-boolean v2, v2, Lcom/samsung/voiceshell/AudioRecordHaydn;->isPipeRecogEnrollSuccess:Z

    if-nez v2, :cond_3d

    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryUDTSIDThreadEnable:Z

    if-nez v2, :cond_33

    .line 1138
    :cond_3d
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/samsung/voiceshell/AudioRecordHaydn;->isPipeRecogEnrollSuccess:Z

    .line 1141
    :cond_42
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "secMM: stop sensoryProcessEnroll"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    if-eqz v2, :cond_52

    .line 1145
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->closeRecord()V

    :cond_52
    move v1, v0

    .line 1148
    .end local v0    # "iResult":I
    .local v1, "iResult":I
    :goto_53
    return v1

    .line 1126
    .end local v1    # "iResult":I
    .restart local v0    # "iResult":I
    :cond_54
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "secMM: sensoryProcessEnroll, mDummyRecorder is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 1127
    .end local v0    # "iResult":I
    .restart local v1    # "iResult":I
    goto :goto_53
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 234
    iget-object v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v6, "secMM: setContext, Set data"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iput-object p1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    .line 237
    iget-object v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    if-nez v5, :cond_15

    .line 239
    iget-object v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v6, "secMM: mContext is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_14
    :goto_14
    return-void

    .line 243
    :cond_15
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_94

    .line 245
    iget-object v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v6, "secMM: setContext, context.getFilesDir() is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 248
    .local v2, "nUserID":I
    iget-object v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "secMM: setContext, userID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    if-nez v2, :cond_6e

    .line 254
    const-string v4, "/data/data/com.vlingo.midas/"

    .line 262
    .local v4, "strRootPath":Ljava/lang/String;
    :goto_42
    iget-object v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "secMM: setContext, strRootPath : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-virtual {p0, v4}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SetDataPath(Ljava/lang/String;)V

    .line 265
    invoke-static {v4}, Lcom/samsung/voiceshell/MultipleWakeUp;->SetDataPath(Ljava/lang/String;)V

    .line 266
    invoke-static {v4}, Lcom/samsung/voiceshell/VoiceEngine;->SetDataPath(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->setLanguage()V

    .line 270
    iget-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    if-eqz v5, :cond_14

    .line 272
    invoke-virtual {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->setNewVersionLanguage()V

    goto :goto_14

    .line 258
    .end local v4    # "strRootPath":Ljava/lang/String;
    :cond_6e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/user/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "com.vlingo.midas"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "strRootPath":Ljava/lang/String;
    goto :goto_42

    .line 277
    .end local v2    # "nUserID":I
    .end local v4    # "strRootPath":Ljava/lang/String;
    :cond_94
    iget-object v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v6, "secMM: setContext, context.getFilesDir() is not null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 280
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_14a

    .line 284
    :try_start_a3
    const-string v5, "com.vlingo.midas"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 287
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v6, "secMM: setContext, PACKAGENAME : com.vlingo.midas"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "secMM: setContext, mContext : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "secMM: setContext, appInfo.dataDir : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 294
    .restart local v4    # "strRootPath":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "secMM: setContext, strRootPath : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {p0, v4}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SetDataPath(Ljava/lang/String;)V

    .line 297
    invoke-static {v4}, Lcom/samsung/voiceshell/MultipleWakeUp;->SetDataPath(Ljava/lang/String;)V

    .line 298
    invoke-static {v4}, Lcom/samsung/voiceshell/VoiceEngine;->SetDataPath(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->setLanguage()V

    .line 302
    iget-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    if-eqz v5, :cond_14

    .line 304
    invoke-virtual {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->setNewVersionLanguage()V
    :try_end_129
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a3 .. :try_end_129} :catch_12b

    goto/16 :goto_14

    .line 307
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "strRootPath":Ljava/lang/String;
    :catch_12b
    move-exception v1

    .line 309
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "secMM: Error : Could not find "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 314
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_14a
    iget-object v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "secMM: Error : PackageManager is null, mContext : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14
.end method

.method public setLanguage()V
    .registers 7

    .prologue
    .line 1444
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 1445
    .local v2, "stringLanguage":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 1446
    .local v1, "stringCountry":Ljava/lang/String;
    sget-object v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sVoiceLanguageFilePath:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1448
    .local v0, "sVoiceLanguage":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setLanguage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Country : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sVoiceLanguage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    if-eqz v0, :cond_12a

    .line 1454
    const-string v3, "ko-KR"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 1456
    const-string v3, "/system/wakeupdata/sensory/nn_ko_mfcc_16k_15_big_250_v2_1.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1457
    const-string v3, "/system/wakeupdata/sensory/ko_hi_galaxy_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    .line 1569
    :cond_70
    :goto_70
    return-void

    .line 1459
    :cond_71
    const-string v3, "en-GB"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_82

    .line 1461
    const-string v3, "/system/wakeupdata/sensory/nn_en_uk_mfcc_16k_15_big_250_v2_0.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1462
    const-string v3, "/system/wakeupdata/sensory/en_gb_hg_tuned1_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto :goto_70

    .line 1464
    :cond_82
    const-string v3, "en-US"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_93

    .line 1466
    const-string v3, "/system/wakeupdata/sensory/nn_en_us_mfcc_16k_15_big_250_v4_5.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1467
    const-string v3, "/system/wakeupdata/sensory/en_us_hg_tuned3_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto :goto_70

    .line 1469
    :cond_93
    const-string v3, "es-ES"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a4

    .line 1471
    const-string v3, "/system/wakeupdata/sensory/nn_es_mfcc_16k_15_big_250_v1_1.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1472
    const-string v3, "/system/wakeupdata/sensory/es_galaxy_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto :goto_70

    .line 1474
    :cond_a4
    const-string v3, "v-es-LA"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 1476
    const-string v3, "/system/wakeupdata/sensory/nn_es_mfcc_16k_15_big_250_v1_1.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1477
    const-string v3, "/system/wakeupdata/sensory/es_galaxy_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto :goto_70

    .line 1479
    :cond_b5
    const-string v3, "fr-FR"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c6

    .line 1481
    const-string v3, "/system/wakeupdata/sensory/nn_fr_mfcc_16k_15_big_250_v2_2.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1482
    const-string v3, "/system/wakeupdata/sensory/fr_galaxy_tuned8_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto :goto_70

    .line 1484
    :cond_c6
    const-string v3, "de-DE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d7

    .line 1486
    const-string v3, "/system/wakeupdata/sensory/nn_de_mfcc_16k_15_big_250_v3_0.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1487
    const-string v3, "/system/wakeupdata/sensory/de_galaxy_tuned_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto :goto_70

    .line 1489
    :cond_d7
    const-string v3, "it-IT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e8

    .line 1491
    const-string v3, "/system/wakeupdata/sensory/nn_it_mfcc_16k_15_big_250_v3_2.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1492
    const-string v3, "/system/wakeupdata/sensory/it_galaxy_tuned_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto :goto_70

    .line 1494
    :cond_e8
    const-string v3, "zh-CN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fe

    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnableChineseWakeUp:Z

    if-eqz v3, :cond_fe

    .line 1496
    const-string v3, "/system/wakeupdata/sensory/nn_zh_mfcc_16k_15_big_250_v2_2.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1497
    const-string v3, "/system/wakeupdata/sensory/zh_galaxy_9_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto/16 :goto_70

    .line 1499
    :cond_fe
    const-string v3, "ja-JP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_114

    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnableJapaneseWakeUp:Z

    if-eqz v3, :cond_114

    .line 1501
    const-string v3, "/system/wakeupdata/sensory/nn_ja_mfcc_16k_15_big_250_v4_2.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1502
    const-string v3, "/system/wakeupdata/sensory/ja_haroo_galaxy_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto/16 :goto_70

    .line 1504
    :cond_114
    const-string v3, "ru-RU"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnableRussianWakeUp:Z

    if-eqz v3, :cond_70

    .line 1506
    const-string v3, "/system/wakeupdata/sensory/nn_en_us_mfcc_16k_15_big_250_v4_5.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1507
    const-string v3, "/system/wakeupdata/sensory/ru_en_galaxy_en3_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto/16 :goto_70

    .line 1512
    :cond_12a
    if-eqz v2, :cond_70

    .line 1514
    sget-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_142

    .line 1516
    const-string v3, "/system/wakeupdata/sensory/nn_ko_mfcc_16k_15_big_250_v2_1.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1517
    const-string v3, "/system/wakeupdata/sensory/ko_hi_galaxy_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto/16 :goto_70

    .line 1519
    :cond_142
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16a

    .line 1521
    const-string v3, "GB"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_160

    .line 1523
    const-string v3, "/system/wakeupdata/sensory/nn_en_uk_mfcc_16k_15_big_250_v2_0.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1524
    const-string v3, "/system/wakeupdata/sensory/en_gb_hg_tuned1_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto/16 :goto_70

    .line 1528
    :cond_160
    const-string v3, "/system/wakeupdata/sensory/nn_en_us_mfcc_16k_15_big_250_v4_5.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1529
    const-string v3, "/system/wakeupdata/sensory/en_us_hg_tuned3_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto/16 :goto_70

    .line 1532
    :cond_16a
    const-string v3, "es"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17c

    .line 1534
    const-string v3, "/system/wakeupdata/sensory/nn_es_mfcc_16k_15_big_250_v1_1.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1535
    const-string v3, "/system/wakeupdata/sensory/es_galaxy_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto/16 :goto_70

    .line 1537
    :cond_17c
    sget-object v3, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_192

    .line 1539
    const-string v3, "/system/wakeupdata/sensory/nn_fr_mfcc_16k_15_big_250_v2_2.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1540
    const-string v3, "/system/wakeupdata/sensory/fr_galaxy_tuned8_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto/16 :goto_70

    .line 1542
    :cond_192
    sget-object v3, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a8

    .line 1544
    const-string v3, "/system/wakeupdata/sensory/nn_de_mfcc_16k_15_big_250_v3_0.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1545
    const-string v3, "/system/wakeupdata/sensory/de_galaxy_tuned_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto/16 :goto_70

    .line 1547
    :cond_1a8
    sget-object v3, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1be

    .line 1549
    const-string v3, "/system/wakeupdata/sensory/nn_it_mfcc_16k_15_big_250_v3_2.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1550
    const-string v3, "/system/wakeupdata/sensory/it_galaxy_tuned_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto/16 :goto_70

    .line 1552
    :cond_1be
    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d8

    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnableChineseWakeUp:Z

    if-eqz v3, :cond_1d8

    .line 1554
    const-string v3, "/system/wakeupdata/sensory/nn_zh_mfcc_16k_15_big_250_v2_2.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1555
    const-string v3, "/system/wakeupdata/sensory/zh_galaxy_9_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto/16 :goto_70

    .line 1557
    :cond_1d8
    sget-object v3, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f2

    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnableJapaneseWakeUp:Z

    if-eqz v3, :cond_1f2

    .line 1559
    const-string v3, "/system/wakeupdata/sensory/nn_ja_mfcc_16k_15_big_250_v4_2.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1560
    const-string v3, "/system/wakeupdata/sensory/ja_haroo_galaxy_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto/16 :goto_70

    .line 1562
    :cond_1f2
    const-string v3, "ru"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnableRussianWakeUp:Z

    if-eqz v3, :cond_70

    .line 1564
    const-string v3, "/system/wakeupdata/sensory/nn_en_us_mfcc_16k_15_big_250_v4_5.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1565
    const-string v3, "/system/wakeupdata/sensory/ru_en_galaxy_en3_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto/16 :goto_70
.end method

.method public setNewVersionLanguage()V
    .registers 7

    .prologue
    .line 1573
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1574
    .local v1, "modelPath":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    .line 1576
    .local v0, "grammarPath":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 1577
    .local v4, "stringLanguage":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 1578
    .local v3, "stringCountry":Ljava/lang/String;
    sget-object v5, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sVoiceLanguageFilePath:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1580
    .local v2, "sVoiceLanguage":Ljava/lang/String;
    if-eqz v2, :cond_e5

    .line 1582
    const-string v5, "ko-KR"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 1584
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_ko_kr_v2.raw"

    .line 1585
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_ko_kr_v2.raw"

    .line 1719
    :cond_28
    :goto_28
    iget-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v5, :cond_40

    .line 1721
    sget-object v5, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTAlwaysAPrecog:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isWakeUpFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_40

    sget-object v5, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTAlwaysAPsearch:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isWakeUpFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 1723
    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTAlwaysAPrecog:Ljava/lang/String;

    .line 1724
    sget-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTAlwaysAPsearch:Ljava/lang/String;

    .line 1728
    :cond_40
    invoke-virtual {p0, v1}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isWakeUpFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-virtual {p0, v0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isWakeUpFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 1730
    iput-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1731
    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    .line 1733
    :cond_50
    return-void

    .line 1587
    :cond_51
    const-string v5, "en-GB"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 1589
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_en_gb_v2.raw"

    .line 1590
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_en_gb_v2.raw"

    goto :goto_28

    .line 1592
    :cond_5e
    const-string v5, "en-US"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 1594
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_en_us_v2.raw"

    .line 1595
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_en_us_v2.raw"

    goto :goto_28

    .line 1597
    :cond_6b
    const-string v5, "es-ES"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_78

    .line 1599
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_es_es_v2.raw"

    .line 1600
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_es_es_v2.raw"

    goto :goto_28

    .line 1602
    :cond_78
    const-string v5, "v-es-LA"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_85

    .line 1604
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_es_la_v2.raw"

    .line 1605
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_es_la_v2.raw"

    goto :goto_28

    .line 1607
    :cond_85
    const-string v5, "fr-FR"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_92

    .line 1609
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_fr_fr_v2.raw"

    .line 1610
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_fr_fr_v2.raw"

    goto :goto_28

    .line 1612
    :cond_92
    const-string v5, "de-DE"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9f

    .line 1614
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_de_de_v2.raw"

    .line 1615
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_de_de_v2.raw"

    goto :goto_28

    .line 1617
    :cond_9f
    const-string v5, "it-IT"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ad

    .line 1619
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_it_it_v2.raw"

    .line 1620
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_it_it_v2.raw"

    goto/16 :goto_28

    .line 1622
    :cond_ad
    const-string v5, "zh-CN"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bb

    .line 1624
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_zh_cn_v2.raw"

    .line 1625
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_zh_cn_v2.raw"

    goto/16 :goto_28

    .line 1627
    :cond_bb
    const-string v5, "ja-JP"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c9

    .line 1629
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_ja_jp_v2.raw"

    .line 1630
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_ja_jp_v2.raw"

    goto/16 :goto_28

    .line 1632
    :cond_c9
    const-string v5, "ru-RU"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d7

    .line 1634
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_ru_ru_v2.raw"

    .line 1635
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_ru_ru_v2.raw"

    goto/16 :goto_28

    .line 1637
    :cond_d7
    const-string v5, "pt-BR"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 1639
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_pt_br_v2.raw"

    .line 1640
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_pt_br_v2.raw"

    goto/16 :goto_28

    .line 1645
    :cond_e5
    if-eqz v4, :cond_28

    .line 1647
    sget-object v5, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f9

    .line 1649
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_ko_kr_v2.raw"

    .line 1650
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_ko_kr_v2.raw"

    goto/16 :goto_28

    .line 1652
    :cond_f9
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_119

    .line 1654
    const-string v5, "GB"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_113

    .line 1656
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_en_gb_v2.raw"

    .line 1657
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_en_gb_v2.raw"

    goto/16 :goto_28

    .line 1661
    :cond_113
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_en_us_v2.raw"

    .line 1662
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_en_us_v2.raw"

    goto/16 :goto_28

    .line 1665
    :cond_119
    const-string v5, "es"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_135

    .line 1667
    const-string v5, "ES"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12f

    .line 1669
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_es_es_v2.raw"

    .line 1670
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_es_es_v2.raw"

    goto/16 :goto_28

    .line 1674
    :cond_12f
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_es_la_v2.raw"

    .line 1675
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_es_la_v2.raw"

    goto/16 :goto_28

    .line 1678
    :cond_135
    sget-object v5, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_147

    .line 1680
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_fr_fr_v2.raw"

    .line 1681
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_fr_fr_v2.raw"

    goto/16 :goto_28

    .line 1683
    :cond_147
    sget-object v5, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_159

    .line 1685
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_de_de_v2.raw"

    .line 1686
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_de_de_v2.raw"

    goto/16 :goto_28

    .line 1688
    :cond_159
    sget-object v5, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16b

    .line 1690
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_it_it_v2.raw"

    .line 1691
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_it_it_v2.raw"

    goto/16 :goto_28

    .line 1693
    :cond_16b
    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17d

    .line 1695
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_zh_cn_v2.raw"

    .line 1696
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_zh_cn_v2.raw"

    goto/16 :goto_28

    .line 1698
    :cond_17d
    sget-object v5, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18f

    .line 1700
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_ja_jp_v2.raw"

    .line 1701
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_ja_jp_v2.raw"

    goto/16 :goto_28

    .line 1703
    :cond_18f
    const-string v5, "ru"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19d

    .line 1705
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_ru_ru_v2.raw"

    .line 1706
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_ru_ru_v2.raw"

    goto/16 :goto_28

    .line 1708
    :cond_19d
    const-string v5, "pt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 1710
    const-string v5, "BR"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 1712
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_pt_br_v2.raw"

    .line 1713
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_pt_br_v2.raw"

    goto/16 :goto_28
.end method

.method public startEnroll(S)I
    .registers 3
    .param p1, "cmNumber"    # S

    .prologue
    .line 676
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->startEnroll(SS)I

    move-result v0

    return v0
.end method

.method public startEnroll(SS)I
    .registers 10
    .param p1, "cmNumber"    # S
    .param p2, "wakeUpType"    # S

    .prologue
    const/16 v6, 0x3e80

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 681
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "secMM: startEnroll, cmNumber : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", wakeUpType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    if-nez v2, :cond_56

    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-nez v2, :cond_56

    .line 685
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: Not exist library, isSamsungWakeUpLibExist : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isSensoryUDTSIDExist : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :goto_55
    return v0

    .line 690
    :cond_56
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryWakeUpLibExist:Z

    if-nez v2, :cond_75

    .line 692
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: Not exist library, isSensoryWakeUpLibExist : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryWakeUpLibExist:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    .line 696
    :cond_75
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->SetRecordingMode(I)V

    .line 698
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v2, :cond_97

    .line 700
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "Sample Rate is 16000"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v2, v6}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setSampleRate(I)V

    .line 702
    iput-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryUDTSIDThreadEnable:Z

    .line 718
    :goto_8a
    iput p2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    .line 719
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v2, v0}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setWakeUpType(I)V

    .line 721
    iput-short p1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    .line 722
    iput-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z

    move v0, v1

    .line 724
    goto :goto_55

    .line 706
    :cond_97
    const-string v2, "/system/wakeupdata/samsung/models_x86.bin"

    invoke-virtual {p0, v2}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isWakeUpFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 708
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "Sample Rate is 16000"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v2, v6}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setSampleRate(I)V

    goto :goto_8a

    .line 713
    :cond_ac
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "Sample Rate is 44100"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    const v3, 0xac44

    invoke-virtual {v2, v3}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setSampleRate(I)V

    goto :goto_8a
.end method

.method public startVerify(I)I
    .registers 15
    .param p1, "wakeType"    # I

    .prologue
    const/4 v0, -0x1

    const/16 v7, -0xa

    const/16 v1, -0xb

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 755
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "secMM: startVerify, wakeType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    const/4 v11, 0x0

    .line 759
    .local v11, "iResult":I
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    if-nez v2, :cond_4f

    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-nez v2, :cond_4f

    .line 761
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: Not exist library, isSamsungWakeUpLibExist : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isSensoryUDTSIDExist : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :goto_4e
    return v0

    .line 766
    :cond_4f
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryWakeUpLibExist:Z

    if-nez v2, :cond_6e

    .line 768
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: Not exist library, isSensoryWakeUpLibExist : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryWakeUpLibExist:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 772
    :cond_6e
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    if-eqz v0, :cond_75

    .line 774
    invoke-virtual {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->setNewVersionLanguage()V

    .line 777
    :cond_75
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_a3

    .line 779
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isAudioFocus:Z

    if-nez v0, :cond_a3

    .line 781
    iput-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRecording:Z

    .line 789
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 791
    iput-boolean v6, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isAudioFocus:Z

    .line 793
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRecording:Z

    if-eqz v0, :cond_a3

    .line 795
    iput-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRecording:Z

    .line 796
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "waiting for recording start"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    const-wide/16 v2, 0x1f4

    :try_start_99
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9c
    .catch Ljava/lang/InterruptedException; {:try_start_99 .. :try_end_9c} :catch_c4

    .line 802
    :goto_9c
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "waiting for recording end"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :cond_a3
    iput p1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    .line 808
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    invoke-virtual {v0, v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setWakeUpType(I)V

    .line 810
    new-instance v12, Ljava/io/File;

    const-string v0, "/system/wakeupdata/samsung/models_16k_NoE.bin"

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 812
    .local v12, "mFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_c9

    .line 814
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    if-eqz v0, :cond_c2

    .line 816
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    invoke-interface {v0, v1, v5}, Lcom/samsung/voiceshell/VoiceEngineResultListener;->OnVerifyResult(IS)V

    :cond_c2
    move v0, v1

    .line 818
    goto :goto_4e

    .line 799
    .end local v12    # "mFile":Ljava/io/File;
    :catch_c4
    move-exception v10

    .line 800
    .local v10, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v10}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_9c

    .line 821
    .end local v10    # "e":Ljava/lang/InterruptedException;
    .restart local v12    # "mFile":Ljava/io/File;
    :cond_c9
    invoke-direct {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->InitializeVerify()I

    move-result v11

    .line 823
    if-ne v11, v7, :cond_15d

    .line 825
    iget v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-eqz v0, :cond_d8

    iget v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_ed

    .line 827
    :cond_d8
    iput-boolean v6, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->weHaveNoModel:Z

    .line 828
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->weHaveNoModel:Z

    invoke-virtual {v0, v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setWeHaveNoModel(Z)V

    .line 829
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    if-eqz v0, :cond_ea

    .line 831
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    invoke-interface {v0, v7, v5}, Lcom/samsung/voiceshell/VoiceEngineResultListener;->OnVerifyResult(IS)V

    :cond_ea
    move v0, v11

    .line 833
    goto/16 :goto_4e

    .line 837
    :cond_ed
    iput-boolean v6, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->weHaveNoModel:Z

    .line 838
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->weHaveNoModel:Z

    invoke-virtual {v0, v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setWeHaveNoModel(Z)V

    .line 847
    :goto_f6
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v0, :cond_167

    sget-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_strSensoryCustomModelPath:Ljava/lang/String;

    :goto_fc
    invoke-direct {p0, v0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->checkFile(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isCustomVoiceTalkEnable:Z

    .line 850
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: isCustomVoiceTalkEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isCustomVoiceTalkEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isCustomVoiceTalkEnable:Z

    invoke-virtual {v0, v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setCustomVoiceTalkFlag(Z)V

    .line 853
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v0, :cond_133

    .line 855
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isCustomVoiceTalkEnable:Z

    if-eqz v0, :cond_133

    .line 857
    sget-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTAlwaysAPrecog:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 858
    sget-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTAlwaysAPsearch:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    .line 862
    :cond_133
    iget v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-lez v0, :cond_182

    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v0, :cond_182

    .line 864
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryInitialize:Z

    if-nez v0, :cond_156

    .line 866
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    if-eqz v0, :cond_16a

    .line 868
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;->phrasespotInit(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->consoleInitReturn:J

    .line 869
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-wide v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->consoleInitReturn:J

    invoke-virtual {v0, v1, v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setConsoleInitReturn(J)V

    .line 929
    :cond_156
    :goto_156
    invoke-direct {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->StartVerify()I

    move-result v11

    move v0, v11

    .line 931
    goto/16 :goto_4e

    .line 843
    :cond_15d
    iput-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->weHaveNoModel:Z

    .line 844
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->weHaveNoModel:Z

    invoke-virtual {v0, v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setWeHaveNoModel(Z)V

    goto :goto_f6

    .line 847
    :cond_167
    sget-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->customVoiceTalkEnablePath:Ljava/lang/String;

    goto :goto_fc

    .line 873
    :cond_16a
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    sget v3, Lcom/vlingo/client/phrasespotter/SensoryJNI;->GRAMMAR_FORMALITY_DEFAULT:I

    iget v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->beam:F

    iget v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->absBeam:F

    iget v6, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->aoffset:F

    iget v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->delay:F

    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->debugSessionPathname:Ljava/lang/String;

    iget v9, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->doLoggingParam:I

    invoke-virtual/range {v0 .. v9}, Lcom/vlingo/client/phrasespotter/SensoryJNI;->Initialize(Ljava/lang/String;Ljava/lang/String;IFFFFLjava/lang/String;I)Z

    goto :goto_156

    .line 887
    :cond_182
    iget v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-ne v0, v6, :cond_156

    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isCustomVoiceTalkEnable:Z

    if-nez v0, :cond_156

    .line 889
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryInitialize:Z

    if-nez v0, :cond_1a5

    .line 891
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    if-eqz v0, :cond_1b9

    .line 893
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;->phrasespotInit(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->consoleInitReturn:J

    .line 894
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-wide v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->consoleInitReturn:J

    invoke-virtual {v0, v1, v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setConsoleInitReturn(J)V

    .line 912
    :cond_1a5
    :goto_1a5
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    if-nez v0, :cond_156

    .line 918
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    invoke-virtual {v0}, Lcom/vlingo/client/phrasespotter/SensoryJNI;->MakeReady()Z

    move-result v0

    if-eqz v0, :cond_1d1

    .line 920
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "SensoryEngine Ready"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_156

    .line 898
    :cond_1b9
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    sget v3, Lcom/vlingo/client/phrasespotter/SensoryJNI;->GRAMMAR_FORMALITY_DEFAULT:I

    iget v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->beam:F

    iget v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->absBeam:F

    iget v6, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->aoffset:F

    iget v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->delay:F

    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->debugSessionPathname:Ljava/lang/String;

    iget v9, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->doLoggingParam:I

    invoke-virtual/range {v0 .. v9}, Lcom/vlingo/client/phrasespotter/SensoryJNI;->Initialize(Ljava/lang/String;Ljava/lang/String;IFFFFLjava/lang/String;I)Z

    goto :goto_1a5

    .line 924
    :cond_1d1
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "SensoryEngine Not Ready"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_156
.end method

.method public stopEnroll()I
    .registers 5

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 729
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "secMM: stopEnroll"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    if-nez v2, :cond_12

    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-nez v2, :cond_12

    .line 749
    :cond_11
    :goto_11
    return v0

    .line 736
    :cond_12
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryWakeUpLibExist:Z

    if-eqz v2, :cond_11

    .line 741
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v0, :cond_23

    .line 743
    iput-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryUDTSIDThreadEnable:Z

    .line 744
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "Set sensoryUDTSIDThreadEnable false"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_23
    iput-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z

    .line 748
    invoke-virtual {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TerminateEnroll()I

    move v0, v1

    .line 749
    goto :goto_11
.end method

.method public stopVerify()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 936
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "stopVerify"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    if-nez v2, :cond_12

    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-nez v2, :cond_12

    .line 959
    :cond_11
    :goto_11
    return v0

    .line 943
    :cond_12
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryWakeUpLibExist:Z

    if-eqz v2, :cond_11

    .line 948
    invoke-direct {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TerminateVerify()I

    .line 950
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2a

    .line 952
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isAudioFocus:Z

    if-eqz v0, :cond_2a

    .line 954
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 955
    iput-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isAudioFocus:Z

    :cond_2a
    move v0, v1

    .line 959
    goto :goto_11
.end method
