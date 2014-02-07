.class public Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;
.super Ljava/lang/Object;
.source "UnlockTextToSpeech.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech$1;,
        Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech$TtsListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static IsTtsInitiated:Z = false

.field private static final TAG:Ljava/lang/String; = "UnlockTextToSpeech"

.field private static _instance:Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;

.field private static mTts:Landroid/speech/tts/TextToSpeech;


# instance fields
.field private TtsString:Ljava/lang/String;

.field private TtsmissedEvent:Ljava/lang/String;

.field private Ttstime:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEnginesHelper:Landroid/speech/tts/TtsEngines;

.field private mMissedCallNotiInfo:Landroid/app/NotificationInfo;

.field private mTtsListener:Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech$TtsListener;

.field private mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 45
    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 46
    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->_instance:Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;

    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->IsTtsInitiated:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Z)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isCircleLockscreen"    # Z

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    .line 44
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mTtsListener:Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech$TtsListener;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->Ttstime:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->TtsString:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    .line 62
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    .line 63
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech$TtsListener;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech$TtsListener;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mTtsListener:Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech$TtsListener;

    .line 64
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mTtsListener:Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech$TtsListener;

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 66
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->doSpeak()V

    .line 67
    return-void
.end method

.method static synthetic access$102(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 39
    sput-boolean p0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->IsTtsInitiated:Z

    return p0
.end method

.method public static declared-synchronized destroy()V
    .registers 3

    .prologue
    .line 285
    const-class v1, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_21

    .line 287
    const-string v0, "UnlockTextToSpeech"

    const-string v2, "destroy"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 291
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 292
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->IsTtsInitiated:Z

    .line 293
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->_instance:Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;

    .line 294
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_23

    .line 296
    :cond_21
    monitor-exit v1

    return-void

    .line 285
    :catchall_23
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    const-class v0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    invoke-static {p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->getInstance(Landroid/content/Context;Z)Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_a

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Z)Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isCircleLockscreen"    # Z

    .prologue
    .line 91
    const-class v1, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->_instance:Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;

    if-eqz v0, :cond_c

    .line 92
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->_instance:Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->destroy()V

    .line 94
    :cond_c
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->_instance:Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;

    .line 95
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->_instance:Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v1

    return-object v0

    .line 91
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getTtsLocalString(I)Ljava/lang/String;
    .registers 8
    .param p1, "resId"    # I

    .prologue
    .line 317
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v4, :cond_3f

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v4

    if-eqz v4, :cond_3f

    .line 318
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "currentLang":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 321
    .local v3, "strings":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107005b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 324
    .local v2, "langs":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2e
    array-length v4, v3

    if-ge v1, v4, :cond_3f

    .line 325
    aget-object v4, v2, v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 326
    aget-object v4, v3, v1

    .line 330
    .end local v0    # "currentLang":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "langs":[Ljava/lang/String;
    .end local v3    # "strings":[Ljava/lang/String;
    :goto_3b
    return-object v4

    .line 324
    .restart local v0    # "currentLang":Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "langs":[Ljava/lang/String;
    .restart local v3    # "strings":[Ljava/lang/String;
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 330
    .end local v0    # "currentLang":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "langs":[Ljava/lang/String;
    .end local v3    # "strings":[Ljava/lang/String;
    :cond_3f
    const/4 v4, 0x0

    goto :goto_3b
.end method

.method private maybeUpdateTtsLanguage(Ljava/lang/String;)V
    .registers 9
    .param p1, "currentEngine"    # Ljava/lang/String;

    .prologue
    .line 299
    if-eqz p1, :cond_4d

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v4, :cond_4d

    .line 300
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v4, p1}, Landroid/speech/tts/TtsEngines;->getLocalePrefForEngine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, "localeString":Ljava/lang/String;
    if-eqz v2, :cond_4d

    .line 302
    invoke-static {v2}, Landroid/speech/tts/TtsEngines;->parseLocalePref(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, "locale":[Ljava/lang/String;
    new-instance v3, Ljava/util/Locale;

    const/4 v4, 0x0

    aget-object v4, v1, v4

    const/4 v5, 0x1

    aget-object v5, v1, v5

    const/4 v6, 0x2

    aget-object v6, v1, v6

    invoke-direct {v3, v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .local v3, "newLocale":Ljava/util/Locale;
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v0

    .line 306
    .local v0, "engineLocale":Ljava/util/Locale;
    invoke-virtual {v3, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    .line 308
    const-string v4, "UnlockTextToSpeech"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loading language ahead of sample check : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4, v3}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 314
    .end local v0    # "engineLocale":Ljava/util/Locale;
    .end local v1    # "locale":[Ljava/lang/String;
    .end local v2    # "localeString":Ljava/lang/String;
    .end local v3    # "newLocale":Ljava/util/Locale;
    :cond_4d
    return-void
.end method

.method public static declared-synchronized stopTts()V
    .registers 2

    .prologue
    .line 278
    const-class v1, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_a

    .line 280
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->destroy()V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    .line 282
    :cond_a
    monitor-exit v1

    return-void

    .line 278
    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public doSpeak()V
    .registers 32

    .prologue
    .line 100
    const-string v27, "UnlockTextToSpeech"

    const-string v28, "Getting into speak TTS"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    sget-object v27, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v27, :cond_266

    sget-boolean v27, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->IsTtsInitiated:Z

    if-eqz v27, :cond_266

    .line 104
    sget-object v27, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual/range {v27 .. v27}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v12

    .line 106
    .local v12, "currentEngine":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_21

    .line 107
    sget-object v27, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual/range {v27 .. v27}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v12

    .line 110
    :cond_21
    new-instance v27, Landroid/speech/tts/TtsEngines;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    .line 111
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->maybeUpdateTtsLanguage(Ljava/lang/String;)V

    .line 112
    sget-object v27, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual/range {v27 .. v27}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v13

    .line 114
    .local v13, "currentLocale":Ljava/util/Locale;
    if-nez v13, :cond_6e

    .line 116
    const-string v27, "UnlockTextToSpeech"

    const-string v28, "mTts.getLanguage() returns null"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    sget-object v27, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v18

    .line 119
    .local v18, "languageResult":I
    const/16 v27, -0x2

    move/from16 v0, v18

    move/from16 v1, v27

    if-eq v0, v1, :cond_60

    const/16 v27, -0x1

    move/from16 v0, v18

    move/from16 v1, v27

    if-ne v0, v1, :cond_6e

    .line 120
    :cond_60
    sget-object v27, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v28, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v27 .. v28}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 122
    const-string v27, "UnlockTextToSpeech"

    const-string v28, "TTS cannot use system language, using Locale.US instead"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .end local v18    # "languageResult":I
    :cond_6e
    const-string v27, "UnlockTextToSpeech"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "TTS locale:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual/range {v29 .. v29}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    sget-object v27, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual/range {v27 .. v27}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v27

    if-nez v27, :cond_266

    .line 132
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    .line 134
    .local v23, "myHashAlarm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v27, "streamType"

    const/16 v28, 0x9

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v27, "utteranceId"

    const-string v28, "Unlock screen tts ended"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 139
    .local v10, "cal":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    move-wide/from16 v0, v27

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 141
    const/16 v27, 0xb

    move/from16 v0, v27

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 142
    .local v15, "hourInt":I
    const/16 v27, 0xc

    move/from16 v0, v27

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v22

    .line 143
    .local v22, "minInt":I
    const/16 v27, 0x9

    move/from16 v0, v27

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 146
    .local v9, "am_pm":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v19

    .line 149
    .local v19, "mAM_PM_Check01":Z
    if-nez v19, :cond_2a9

    .line 150
    const/16 v27, 0xc

    move/from16 v0, v27

    if-le v15, v0, :cond_267

    .line 151
    add-int/lit8 v15, v15, -0xc

    .line 155
    :cond_f0
    :goto_f0
    if-nez v9, :cond_26d

    .line 156
    const v27, 0x1070050

    :try_start_f5
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->Ttstime:Ljava/lang/String;

    .line 168
    :goto_11f
    const-string v27, "UnlockTextToSpeech"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "TTS Time:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->Ttstime:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13d
    .catch Ljava/lang/NullPointerException; {:try_start_f5 .. :try_end_13d} :catch_29c

    .line 176
    :goto_13d
    const-string v4, "aw_daemon_service_key_app_service_status"

    .line 177
    .local v4, "KEY_APP_SERVICE_STATUS":Ljava/lang/String;
    const-string v5, "aw_daemon_service_key_loc_code"

    .line 178
    .local v5, "KEY_CITY_ID":Ljava/lang/String;
    const/4 v6, 0x1

    .line 181
    .local v6, "LOCK_SCREEN_SERVICE_CODE":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "aw_daemon_service_key_app_service_status"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    .line 182
    .local v20, "mAppServiceStatus":I
    and-int/lit8 v27, v20, 0x1

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2f6

    const/16 v17, 0x1

    .line 185
    .local v17, "isServiceEnable":Z
    :goto_160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "aw_daemon_service_key_loc_code"

    invoke-static/range {v27 .. v28}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 188
    .local v11, "cityId":Ljava/lang/String;
    const-string v27, "UnlockTextToSpeech"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "isServiceEnable = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " cityId = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-string v8, ""

    .line 192
    .local v8, "Ttsweather":Ljava/lang/String;
    const-string v7, ""

    .line 195
    .local v7, "TtsDegree":Ljava/lang/String;
    if-eqz v17, :cond_32e

    if-eqz v11, :cond_32e

    :try_start_1a0
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_32e

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "aw_daemon_service_key_temp_scale"

    const/16 v29, 0x1

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2fa

    const/16 v16, 0x1

    .line 198
    .local v16, "isCelsius":Z
    :goto_1c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "aw_daemon_service_key_current_temp"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v27

    move/from16 v0, v27

    float-to-int v14, v0

    .line 199
    .local v14, "currentTemp":I
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, ". "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "aw_daemon_service_key_weather_text"

    invoke-static/range {v28 .. v29}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ". "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 201
    if-eqz v16, :cond_2fe

    .line 202
    const v27, 0x1070053

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x1

    const v30, 0x1070054

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 214
    .end local v14    # "currentTemp":I
    .end local v16    # "isCelsius":Z
    :goto_230
    const-string v27, "UnlockTextToSpeech"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "TTS temperature= "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", weather="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_256
    .catch Ljava/lang/NullPointerException; {:try_start_1a0 .. :try_end_256} :catch_332

    .line 222
    :goto_256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const-string v28, "notification"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/app/NotificationManager;

    .line 224
    .local v21, "mNM":Landroid/app/NotificationManager;
    if-nez v21, :cond_33f

    .line 275
    .end local v4    # "KEY_APP_SERVICE_STATUS":Ljava/lang/String;
    .end local v5    # "KEY_CITY_ID":Ljava/lang/String;
    .end local v6    # "LOCK_SCREEN_SERVICE_CODE":I
    .end local v7    # "TtsDegree":Ljava/lang/String;
    .end local v8    # "Ttsweather":Ljava/lang/String;
    .end local v9    # "am_pm":I
    .end local v10    # "cal":Ljava/util/Calendar;
    .end local v11    # "cityId":Ljava/lang/String;
    .end local v12    # "currentEngine":Ljava/lang/String;
    .end local v13    # "currentLocale":Ljava/util/Locale;
    .end local v15    # "hourInt":I
    .end local v17    # "isServiceEnable":Z
    .end local v19    # "mAM_PM_Check01":Z
    .end local v20    # "mAppServiceStatus":I
    .end local v21    # "mNM":Landroid/app/NotificationManager;
    .end local v22    # "minInt":I
    .end local v23    # "myHashAlarm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_266
    :goto_266
    return-void

    .line 152
    .restart local v9    # "am_pm":I
    .restart local v10    # "cal":Ljava/util/Calendar;
    .restart local v12    # "currentEngine":Ljava/lang/String;
    .restart local v13    # "currentLocale":Ljava/util/Locale;
    .restart local v15    # "hourInt":I
    .restart local v19    # "mAM_PM_Check01":Z
    .restart local v22    # "minInt":I
    .restart local v23    # "myHashAlarm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_267
    if-nez v15, :cond_f0

    .line 153
    const/16 v15, 0xc

    goto/16 :goto_f0

    .line 158
    :cond_26d
    const v27, 0x1070051

    :try_start_270
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->Ttstime:Ljava/lang/String;
    :try_end_29a
    .catch Ljava/lang/NullPointerException; {:try_start_270 .. :try_end_29a} :catch_29c

    goto/16 :goto_11f

    .line 170
    :catch_29c
    move-exception v26

    .line 171
    .local v26, "nullPonterException":Ljava/lang/NullPointerException;
    const-string v27, "UnlockTextToSpeech"

    const-string v28, "NullPointerException has been occured in getTtsLocalString()"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual/range {v26 .. v26}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_13d

    .line 161
    .end local v26    # "nullPonterException":Ljava/lang/NullPointerException;
    :cond_2a9
    const v27, 0x1070052

    :try_start_2ac
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->Ttstime:Ljava/lang/String;

    .line 163
    const-string v27, "UnlockTextToSpeech"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[24-hour format] TTS Time:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->Ttstime:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f4
    .catch Ljava/lang/NullPointerException; {:try_start_2ac .. :try_end_2f4} :catch_29c

    goto/16 :goto_11f

    .line 182
    .restart local v4    # "KEY_APP_SERVICE_STATUS":Ljava/lang/String;
    .restart local v5    # "KEY_CITY_ID":Ljava/lang/String;
    .restart local v6    # "LOCK_SCREEN_SERVICE_CODE":I
    .restart local v20    # "mAppServiceStatus":I
    :cond_2f6
    const/16 v17, 0x0

    goto/16 :goto_160

    .line 196
    .restart local v7    # "TtsDegree":Ljava/lang/String;
    .restart local v8    # "Ttsweather":Ljava/lang/String;
    .restart local v11    # "cityId":Ljava/lang/String;
    .restart local v17    # "isServiceEnable":Z
    :cond_2fa
    const/16 v16, 0x0

    goto/16 :goto_1c2

    .line 206
    .restart local v14    # "currentTemp":I
    .restart local v16    # "isCelsius":Z
    :cond_2fe
    const v27, 0x1070053

    :try_start_301
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x1

    const v30, 0x1070055

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_230

    .line 210
    .end local v14    # "currentTemp":I
    .end local v16    # "isCelsius":Z
    :cond_32e
    const-string v7, ". "
    :try_end_330
    .catch Ljava/lang/NullPointerException; {:try_start_301 .. :try_end_330} :catch_332

    goto/16 :goto_230

    .line 216
    :catch_332
    move-exception v26

    .line 217
    .restart local v26    # "nullPonterException":Ljava/lang/NullPointerException;
    const-string v27, "UnlockTextToSpeech"

    const-string v28, "NullPointerException has been occured in getTtsLocalString()"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual/range {v26 .. v26}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_256

    .line 228
    .end local v26    # "nullPonterException":Ljava/lang/NullPointerException;
    .restart local v21    # "mNM":Landroid/app/NotificationManager;
    :cond_33f
    const/16 v24, 0x0

    .line 229
    .local v24, "nCallCount":I
    const/16 v25, 0x0

    .line 231
    .local v25, "nMsgCount":I
    const-string v27, "com.android.phone"

    const/16 v28, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    .line 232
    const-string v27, "com.android.mms"

    const/16 v28, 0x7b

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    move-object/from16 v27, v0

    if-eqz v27, :cond_37f

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/app/NotificationInfo;->missedCount:I

    move/from16 v24, v0

    .line 237
    :cond_37f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    move-object/from16 v27, v0

    if-eqz v27, :cond_393

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/app/NotificationInfo;->missedCount:I

    move/from16 v25, v0

    .line 242
    :cond_393
    if-lez v24, :cond_41e

    if-lez v25, :cond_41e

    .line 243
    const v27, 0x1070056

    :try_start_39a
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;
    :try_end_3c4
    .catch Ljava/lang/NullPointerException; {:try_start_39a .. :try_end_3c4} :catch_44d

    .line 263
    :goto_3c4
    if-gtz v24, :cond_3c8

    if-lez v25, :cond_3d3

    .line 265
    :cond_3c8
    const-string v27, "UnlockTextToSpeech"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_3d3
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->Ttstime:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ","

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->TtsString:Ljava/lang/String;

    .line 271
    sget-object v27, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->TtsString:Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v29

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 272
    sget-object v27, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->mTtsListener:Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech$TtsListener;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    goto/16 :goto_266

    .line 245
    :cond_41e
    const/16 v27, 0x1

    move/from16 v0, v24

    move/from16 v1, v27

    if-le v0, v1, :cond_45a

    .line 246
    const v27, 0x1070057

    :try_start_429
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;
    :try_end_44b
    .catch Ljava/lang/NullPointerException; {:try_start_429 .. :try_end_44b} :catch_44d

    goto/16 :goto_3c4

    .line 258
    :catch_44d
    move-exception v26

    .line 259
    .restart local v26    # "nullPonterException":Ljava/lang/NullPointerException;
    const-string v27, "UnlockTextToSpeech"

    const-string v28, "NullPointerException has been occured in getTtsLocalString()"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual/range {v26 .. v26}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_3c4

    .line 248
    .end local v26    # "nullPonterException":Ljava/lang/NullPointerException;
    :cond_45a
    const/16 v27, 0x1

    move/from16 v0, v25

    move/from16 v1, v27

    if-le v0, v1, :cond_489

    .line 249
    const v27, 0x1070058

    :try_start_465
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;

    goto/16 :goto_3c4

    .line 251
    :cond_489
    const/16 v27, 0x1

    move/from16 v0, v24

    move/from16 v1, v27

    if-ne v0, v1, :cond_4b0

    .line 252
    const v27, 0x1070059

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;

    goto/16 :goto_3c4

    .line 253
    :cond_4b0
    const/16 v27, 0x1

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_4d7

    .line 254
    const v27, 0x107005a

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;

    goto/16 :goto_3c4

    .line 256
    :cond_4d7
    const-string v27, ""

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;
    :try_end_4df
    .catch Ljava/lang/NullPointerException; {:try_start_465 .. :try_end_4df} :catch_44d

    goto/16 :goto_3c4
.end method
