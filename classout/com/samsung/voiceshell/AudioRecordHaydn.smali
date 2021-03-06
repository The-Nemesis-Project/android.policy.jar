.class public Lcom/samsung/voiceshell/AudioRecordHaydn;
.super Ljava/lang/Object;
.source "AudioRecordHaydn.java"


# static fields
.field public static final AL_ENROLL:I = 0x0

.field public static final AL_NONE:I = -0x1

.field public static final AL_VERIFY:I = 0x1

.field private static final RECORDER_BUFFER_SIZE_16kHz:I = 0x9c40

.field private static final RECORDER_BUFFER_SIZE_44p1kHz:I = 0x15888

.field private static final SAMPLE_SIZE:I = 0xa0

.field public static final STATE_READY:I = 0x0

.field public static final STATE_RUNNING:I = 0x1

.field public static final VERIFY_CANCELLED:I = -0x3

.field public static final VERIFY_FAILED:I = -0xc

.field public static final VERIFY_SUCCEEDED:I = 0x1

.field public static final VR_RECOGNITON:I = 0x2

.field private static m_nRecordingMode:I

.field private static stats:[I

.field private static temp:[S


# instance fields
.field public CommandType:[S

.field private TAG:Ljava/lang/String;

.field public VElib:Lcom/samsung/voiceshell/VoiceEngine;

.field public VerifiedCommand:S

.field public aRecord:Landroid/media/AudioRecord;

.field final channelNum:I

.field public consoleInitReturn:J

.field public consoleResult:Ljava/lang/String;

.field final encodeFormat:I

.field public frameLeftNumber:[S

.field public handler:Landroid/os/Handler;

.field private isCustomVoiceTalkEnable:Z

.field public isNewVersionSensoryWakeUpLib:Z

.field public isPipeRecogEnrollSuccess:Z

.field private isRecording:Z

.field private isRunning_all:Z

.field public isSensoryUDTSIDEngine:Z

.field private mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

.field public mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

.field public mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

.field public mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

.field private mState:I

.field private mWakeUpType:I

.field private oldrms:I

.field private processedSample:I

.field private readBufferSize:I

.field private readLength:I

.field private readSize:I

.field public recordBuffer:[S

.field public rmshandler:Landroid/os/Handler;

.field private sampleDelay_engine:I

.field private sampleDelay_wave:I

.field private sampleRate:I

.field private threadRecord:Ljava/lang/Thread;

.field private weHaveNoModel:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 72
    const/16 v0, 0x80

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/voiceshell/AudioRecordHaydn;->stats:[I

    .line 73
    const/16 v0, 0xa0

    new-array v0, v0, [S

    sput-object v0, Lcom/samsung/voiceshell/AudioRecordHaydn;->temp:[S

    .line 87
    const/4 v0, -0x1

    sput v0, Lcom/samsung/voiceshell/AudioRecordHaydn;->m_nRecordingMode:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/voiceshell/VoiceEngineResultListener;ZZ)V
    .registers 8
    .param p1, "listener"    # Lcom/samsung/voiceshell/VoiceEngineResultListener;
    .param p2, "isNewVersion"    # Z
    .param p3, "isSensoryUDTSID"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mState:I

    .line 25
    const v0, 0xac44

    iput v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->sampleRate:I

    .line 26
    const/16 v0, 0x10

    iput v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->channelNum:I

    .line 27
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->encodeFormat:I

    .line 31
    iput-object v3, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    .line 32
    iput v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->readSize:I

    .line 33
    iput v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I

    .line 34
    iput v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->readBufferSize:I

    .line 38
    iput-object v3, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->threadRecord:Ljava/lang/Thread;

    .line 40
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->frameLeftNumber:[S

    .line 41
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->CommandType:[S

    .line 43
    iput-boolean v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRecording:Z

    .line 44
    iput-boolean v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRunning_all:Z

    .line 47
    iput v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->processedSample:I

    .line 48
    const/16 v0, 0x44e8

    iput v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->sampleDelay_wave:I

    .line 49
    const/16 v0, 0x2274

    iput v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->sampleDelay_engine:I

    .line 50
    iput v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->oldrms:I

    .line 52
    const-string v0, "AudioRecordHaydn"

    iput-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    .line 54
    iput-object v3, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->VElib:Lcom/samsung/voiceshell/VoiceEngine;

    .line 55
    iput-object v3, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    .line 56
    iput-object v3, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    .line 58
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->consoleInitReturn:J

    .line 59
    iput-object v3, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->consoleResult:Ljava/lang/String;

    .line 61
    iput-object v3, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    .line 62
    iput-boolean v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isCustomVoiceTalkEnable:Z

    .line 64
    iput-short v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->VerifiedCommand:S

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mWakeUpType:I

    .line 66
    iput-boolean v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->weHaveNoModel:Z

    .line 68
    iput-boolean v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isNewVersionSensoryWakeUpLib:Z

    .line 76
    iput-object v3, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    .line 78
    iput-boolean v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isSensoryUDTSIDEngine:Z

    .line 79
    iput-boolean v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isPipeRecogEnrollSuccess:Z

    .line 200
    new-instance v0, Lcom/samsung/voiceshell/AudioRecordHaydn$1;

    invoke-direct {v0, p0}, Lcom/samsung/voiceshell/AudioRecordHaydn$1;-><init>(Lcom/samsung/voiceshell/AudioRecordHaydn;)V

    iput-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->handler:Landroid/os/Handler;

    .line 230
    new-instance v0, Lcom/samsung/voiceshell/AudioRecordHaydn$2;

    invoke-direct {v0, p0}, Lcom/samsung/voiceshell/AudioRecordHaydn$2;-><init>(Lcom/samsung/voiceshell/AudioRecordHaydn;)V

    iput-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->rmshandler:Landroid/os/Handler;

    .line 96
    iput-boolean p2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isNewVersionSensoryWakeUpLib:Z

    .line 98
    iput-boolean p3, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isSensoryUDTSIDEngine:Z

    .line 100
    invoke-static {}, Lcom/samsung/voiceshell/VoiceEngineWrapper;->getInstance()Lcom/samsung/voiceshell/VoiceEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->VElib:Lcom/samsung/voiceshell/VoiceEngine;

    .line 102
    iget-boolean v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isNewVersionSensoryWakeUpLib:Z

    if-eqz v0, :cond_89

    .line 104
    invoke-static {}, Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngineWrapper;->getInstance()Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    .line 111
    :goto_7b
    iget-boolean v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isSensoryUDTSIDEngine:Z

    if-eqz v0, :cond_85

    .line 113
    invoke-static {}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngineWrapper;->getInstance()Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    .line 116
    :cond_85
    invoke-virtual {p0, p1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setVoiceEngineResultListener(Lcom/samsung/voiceshell/VoiceEngineResultListener;)V

    .line 117
    return-void

    .line 108
    :cond_89
    invoke-static {}, Lcom/vlingo/client/phrasespotter/SensoryEngineWrapper;->getInstance()Lcom/vlingo/client/phrasespotter/SensoryJNI;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    goto :goto_7b
.end method

.method public static GetRecordingMode()I
    .registers 1

    .prologue
    .line 634
    sget v0, Lcom/samsung/voiceshell/AudioRecordHaydn;->m_nRecordingMode:I

    return v0
.end method

.method static synthetic access$000(Lcom/samsung/voiceshell/AudioRecordHaydn;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/voiceshell/AudioRecordHaydn;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/voiceshell/AudioRecordHaydn;)Lcom/samsung/voiceshell/VoiceEngineResultListener;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/voiceshell/AudioRecordHaydn;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/voiceshell/AudioRecordHaydn;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/voiceshell/AudioRecordHaydn;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isCustomVoiceTalkEnable:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/samsung/voiceshell/AudioRecordHaydn;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/voiceshell/AudioRecordHaydn;

    .prologue
    .line 18
    iget v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->processedSample:I

    return v0
.end method

.method static synthetic access$1102(Lcom/samsung/voiceshell/AudioRecordHaydn;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/voiceshell/AudioRecordHaydn;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->processedSample:I

    return p1
.end method

.method static synthetic access$1200(Lcom/samsung/voiceshell/AudioRecordHaydn;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/voiceshell/AudioRecordHaydn;

    .prologue
    .line 18
    iget v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->oldrms:I

    return v0
.end method

.method static synthetic access$1202(Lcom/samsung/voiceshell/AudioRecordHaydn;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/voiceshell/AudioRecordHaydn;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->oldrms:I

    return p1
.end method

.method static synthetic access$1300()[S
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/samsung/voiceshell/AudioRecordHaydn;->temp:[S

    return-object v0
.end method

.method static synthetic access$1400()[I
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/samsung/voiceshell/AudioRecordHaydn;->stats:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/voiceshell/AudioRecordHaydn;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/voiceshell/AudioRecordHaydn;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRunning_all:Z

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/voiceshell/AudioRecordHaydn;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/voiceshell/AudioRecordHaydn;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRecording:Z

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/voiceshell/AudioRecordHaydn;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/voiceshell/AudioRecordHaydn;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRecording:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/voiceshell/AudioRecordHaydn;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/voiceshell/AudioRecordHaydn;

    .prologue
    .line 18
    iget v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/voiceshell/AudioRecordHaydn;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/voiceshell/AudioRecordHaydn;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/voiceshell/AudioRecordHaydn;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/voiceshell/AudioRecordHaydn;

    .prologue
    .line 18
    iget v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->readSize:I

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/voiceshell/AudioRecordHaydn;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/voiceshell/AudioRecordHaydn;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->weHaveNoModel:Z

    return v0
.end method

.method static synthetic access$700()I
    .registers 1

    .prologue
    .line 18
    sget v0, Lcom/samsung/voiceshell/AudioRecordHaydn;->m_nRecordingMode:I

    return v0
.end method

.method static synthetic access$702(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 18
    sput p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->m_nRecordingMode:I

    return p0
.end method

.method static synthetic access$800(Lcom/samsung/voiceshell/AudioRecordHaydn;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/voiceshell/AudioRecordHaydn;

    .prologue
    .line 18
    iget v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mWakeUpType:I

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/voiceshell/AudioRecordHaydn;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/voiceshell/AudioRecordHaydn;

    .prologue
    .line 18
    iget v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->sampleRate:I

    return v0
.end method

.method private initAudio()V
    .registers 7

    .prologue
    const v5, 0x9c40

    const/16 v4, 0x640

    const/4 v3, 0x1

    .line 148
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initAudio, mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/voiceshell/AudioRecordHaydn;->m_nRecordingMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sampleRate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->sampleRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sget v0, Lcom/samsung/voiceshell/AudioRecordHaydn;->m_nRecordingMode:I

    if-ne v0, v3, :cond_34

    .line 153
    const/16 v0, 0x3e80

    iput v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->sampleRate:I

    .line 161
    :cond_34
    sget v0, Lcom/samsung/voiceshell/AudioRecordHaydn;->m_nRecordingMode:I

    if-ne v0, v3, :cond_90

    .line 163
    iput v4, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->readSize:I

    .line 164
    iput v5, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->readBufferSize:I

    .line 165
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v1, "secMM: Passing 16K data to VERIFY"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_43
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: pcm readSize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->readSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->readSize:I

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->recordBuffer:[S

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->oldrms:I

    .line 187
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x6

    iget v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->sampleRate:I

    const/16 v3, 0x10

    const/4 v4, 0x2

    iget v5, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->readBufferSize:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    .line 192
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: initAudio, aRecord="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-void

    .line 167
    :cond_90
    iget v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->sampleRate:I

    const v1, 0xac44

    if-ne v0, v1, :cond_a8

    .line 169
    const/16 v0, 0x113a

    iput v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->readSize:I

    .line 170
    const v0, 0x15888

    iput v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->readBufferSize:I

    .line 171
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v1, "secMM: Passing 44K data to ENROLL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 175
    :cond_a8
    iput v4, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->readSize:I

    .line 176
    iput v5, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->readBufferSize:I

    .line 177
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v1, "secMM: Passing 16K data to ENROLL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43
.end method

.method private initThread()V
    .registers 4

    .prologue
    .line 271
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initThread, isRunning_all="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRunning_all:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-boolean v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRunning_all:Z

    if-eqz v0, :cond_1f

    .line 449
    :goto_1e
    return-void

    .line 277
    :cond_1f
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/voiceshell/AudioRecordHaydn$3;

    invoke-direct {v1, p0}, Lcom/samsung/voiceshell/AudioRecordHaydn$3;-><init>(Lcom/samsung/voiceshell/AudioRecordHaydn;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->threadRecord:Ljava/lang/Thread;

    .line 446
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRunning_all:Z

    .line 447
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->threadRecord:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 448
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initThread, START!, isRunning_all="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRunning_all:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
.end method

.method private waitForBackgroundRecordThread()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 543
    iput-boolean v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRunning_all:Z

    .line 544
    iput-boolean v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRecording:Z

    .line 546
    iget-object v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->threadRecord:Ljava/lang/Thread;

    if-eqz v1, :cond_17

    .line 548
    iget-object v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v2, "waitForBackgroundRecordThread"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :try_start_10
    iget-object v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->threadRecord:Ljava/lang/Thread;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_17} :catch_18

    .line 557
    :cond_17
    :goto_17
    return-void

    .line 552
    :catch_18
    move-exception v0

    .line 554
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_17
.end method


# virtual methods
.method public SendHandlerMessage(IS)V
    .registers 8
    .param p1, "value"    # I
    .param p2, "sValue"    # S

    .prologue
    .line 218
    iget-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "secMM: SendHandlerMessage, verify result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", verify command : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->handler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 223
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 224
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "verify_result"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 225
    const-string v2, "verify_command"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 226
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 227
    iget-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 228
    return-void
.end method

.method public SetRecordingMode(I)V
    .registers 5
    .param p1, "nRecordingMode"    # I

    .prologue
    .line 628
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetRecordingMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    sput p1, Lcom/samsung/voiceshell/AudioRecordHaydn;->m_nRecordingMode:I

    .line 630
    return-void
.end method

.method public closeRecord()V
    .registers 4

    .prologue
    .line 511
    monitor-enter p0

    .line 513
    :try_start_1
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v1, "closeRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRunning_all:Z

    .line 516
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRecording:Z

    .line 519
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v1, "waitForBackgroundRecordThread start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-direct {p0}, Lcom/samsung/voiceshell/AudioRecordHaydn;->waitForBackgroundRecordThread()V

    .line 521
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v1, "waitForBackgroundRecordThread end"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_54

    .line 525
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeRecord, mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4a

    .line 528
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 529
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mState:I

    .line 531
    :cond_4a
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 532
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    .line 538
    :goto_52
    monitor-exit p0

    .line 539
    return-void

    .line 536
    :cond_54
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v1, "closeRecord, aRecord is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 538
    :catchall_5c
    move-exception v0

    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_1 .. :try_end_5e} :catchall_5c

    throw v0
.end method

.method public destroy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 561
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iput-boolean v3, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRunning_all:Z

    .line 564
    iput-boolean v3, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRecording:Z

    .line 565
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isPipeRecogEnrollSuccess:Z

    .line 567
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    if-eqz v0, :cond_27

    .line 570
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v1, "waitForBackgroundRecordThread start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-direct {p0}, Lcom/samsung/voiceshell/AudioRecordHaydn;->waitForBackgroundRecordThread()V

    .line 572
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v1, "waitForBackgroundRecordThread end"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iput-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    .line 577
    :cond_27
    iput-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->VElib:Lcom/samsung/voiceshell/VoiceEngine;

    .line 579
    iget-boolean v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isNewVersionSensoryWakeUpLib:Z

    if-eqz v0, :cond_3e

    .line 581
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    if-eqz v0, :cond_33

    .line 583
    iput-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    .line 594
    :cond_33
    :goto_33
    iget-boolean v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isSensoryUDTSIDEngine:Z

    if-eqz v0, :cond_3d

    .line 596
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    if-eqz v0, :cond_3d

    .line 598
    iput-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    .line 602
    :cond_3d
    return-void

    .line 588
    :cond_3e
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    if-eqz v0, :cond_33

    .line 590
    iput-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    goto :goto_33
.end method

.method public getAudioInstance()Landroid/media/AudioRecord;
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    return-object v0
.end method

.method public initRecorder()V
    .registers 3

    .prologue
    .line 453
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v1, "initRecorder"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-direct {p0}, Lcom/samsung/voiceshell/AudioRecordHaydn;->initAudio()V

    .line 456
    invoke-direct {p0}, Lcom/samsung/voiceshell/AudioRecordHaydn;->initThread()V

    .line 457
    return-void
.end method

.method public pauseRecord()V
    .registers 3

    .prologue
    .line 505
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v1, "pauseRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRecording:Z

    .line 507
    return-void
.end method

.method public rmsSendHandlerMessage(I)V
    .registers 5
    .param p1, "value"    # I

    .prologue
    .line 251
    iget-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->handler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 252
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 253
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "rms_value"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 254
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 255
    iget-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->rmshandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 256
    return-void
.end method

.method public setAdaptation(I)I
    .registers 6
    .param p1, "verifyResult"    # I

    .prologue
    const/4 v3, 0x1

    .line 606
    iget-object v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v2, "setAdaptation"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    if-ne p1, v3, :cond_e

    .line 610
    iget-boolean v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isSensoryUDTSIDEngine:Z

    if-eqz v1, :cond_10

    .line 623
    :cond_e
    :goto_e
    const/4 v1, 0x0

    return v1

    .line 614
    :cond_10
    iget-object v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->VElib:Lcom/samsung/voiceshell/VoiceEngine;

    if-eqz v1, :cond_e

    .line 616
    iget-object v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v2, "Adaptation Start"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->VElib:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v1, v3}, Lcom/samsung/voiceshell/VoiceEngine;->setIsRunningAdaptation(Z)V

    .line 618
    iget-object v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->VElib:Lcom/samsung/voiceshell/VoiceEngine;

    iget-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->VElib:Lcom/samsung/voiceshell/VoiceEngine;

    iget-object v2, v2, Lcom/samsung/voiceshell/VoiceEngine;->m_UBMpath_default:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->VElib:Lcom/samsung/voiceshell/VoiceEngine;

    sget-object v3, Lcom/samsung/voiceshell/VoiceEngine;->ROOT:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/voiceshell/VoiceEngine;->performContinuousAdaptation(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 619
    .local v0, "contADAPTreturn":I
    iget-object v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adaptation End contADAPTreturn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public setConsoleInitReturn(J)V
    .registers 3
    .param p1, "value"    # J

    .prologue
    .line 121
    iput-wide p1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->consoleInitReturn:J

    .line 122
    return-void
.end method

.method public setCustomVoiceTalkFlag(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isCustomVoiceTalkEnable:Z

    .line 130
    return-void
.end method

.method public setSampleRate(I)V
    .registers 2
    .param p1, "nRate"    # I

    .prologue
    .line 143
    iput p1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->sampleRate:I

    .line 144
    return-void
.end method

.method public setVoiceEngineResultListener(Lcom/samsung/voiceshell/VoiceEngineResultListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/samsung/voiceshell/VoiceEngineResultListener;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    .line 126
    return-void
.end method

.method public setWakeUpType(I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 134
    iput p1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mWakeUpType:I

    .line 135
    return-void
.end method

.method public setWeHaveNoModel(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->weHaveNoModel:Z

    .line 139
    return-void
.end method

.method public spectrumSendHandlerMessage([I)V
    .registers 5
    .param p1, "stats"    # [I

    .prologue
    .line 262
    iget-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->handler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 263
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 264
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "spectrum_value"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 265
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 266
    iget-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->rmshandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 267
    return-void
.end method

.method public startRecord()Z
    .registers 6

    .prologue
    .line 461
    monitor-enter p0

    .line 463
    const/4 v1, 0x1

    .line 464
    .local v1, "result":Z
    :try_start_2
    iget-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startRecord, mState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    if-nez v2, :cond_23

    .line 468
    invoke-virtual {p0}, Lcom/samsung/voiceshell/AudioRecordHaydn;->initRecorder()V

    .line 471
    :cond_23
    iget v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mState:I

    if-nez v2, :cond_78

    .line 473
    const/4 v0, 0x0

    .line 474
    .local v0, "nRecordingState":I
    iget-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->startRecording()V

    .line 479
    iget-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    .line 480
    iget-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "secMM: Recording state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const/4 v2, 0x3

    if-eq v0, v2, :cond_54

    .line 483
    const/4 v1, 0x0

    .line 498
    .end local v0    # "nRecordingState":I
    :goto_4f
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->processedSample:I

    .line 500
    monitor-exit p0

    return v1

    .line 487
    .restart local v0    # "nRecordingState":I
    :cond_54
    const/4 v2, 0x1

    iput v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mState:I

    .line 488
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRecording:Z

    .line 489
    iget-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "secMM: startRecord, Set mState to STATE_RUNNING, isRecording="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRecording:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 501
    .end local v0    # "nRecordingState":I
    :catchall_75
    move-exception v2

    monitor-exit p0
    :try_end_77
    .catchall {:try_start_2 .. :try_end_77} :catchall_75

    throw v2

    .line 494
    :cond_78
    :try_start_78
    iget-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "secMM: mState is NOT ready="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_92
    .catchall {:try_start_78 .. :try_end_92} :catchall_75

    goto :goto_4f
.end method
