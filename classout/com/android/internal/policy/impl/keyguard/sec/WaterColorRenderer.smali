.class public Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;
.super Ljava/lang/Object;
.source "WaterColorRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field public static final PORTRAIT_MODE:I = 0x0

.field public static final TABLET_MODE:I = 0x1

.field private static mJniWaterColor:Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;


# instance fields
.field private CPU_CLOCK_NUM:I

.field private final CPU_CLOK_CONTROL:I

.field private final DBG:Z

.field final DISTANCE_MAX_OF_DRAG:I

.field private final EVENT_CLEAR:I

.field private final EVENT_DELETE_BACKGROUND:I

.field private final EVENT_DELETE_FBO:I

.field private final EVENT_RELOAD_BACKGROUND:I

.field private final EVENT_RELOAD_FBO:I

.field private final EVENT_UNLOCK:I

.field private GPU_FREQUNCY_NUM:I

.field private final GPU_FREQ_CONTROL:I

.field final SOUND_ID_TAB:I

.field final SOUND_ID_UNLOC:I

.field private final TAG:Ljava/lang/String;

.field private final UNLOCK_SOUND_PLAY_TIME:J

.field private calledIsScreenTurnedOn:Z

.field cpuMaxClockBooster:Landroid/os/DVFSHelper;

.field private defaultX:F

.field private defaultY:F

.field private fpsCount:I

.field gpuMaxFreqBooster:Landroid/os/DVFSHelper;

.field private isCleanup:Z

.field private isDraged:Z

.field private isEndEffectStart:Z

.field isFirstSurfaceChanged:Z

.field private isFirstTouched:Z

.field private isFpsChecked:Z

.field private isRestrictCPUClock:Z

.field private isRestrictGPUFreq:Z

.field isSurfaceCreated:Z

.field private isSystemSoundChecked:Z

.field logCount:I

.field mContext:Landroid/content/Context;

.field mCountOfDirtyMode:I

.field private mCurrentBG:Landroid/graphics/Bitmap;

.field private mDefaultRunnable:Ljava/lang/Runnable;

.field mParent:Landroid/opengl/GLSurfaceView;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSound_left_max:F

.field private mSound_right_max:F

.field private mSound_tap_id:I

.field private mSound_unlock_id:I

.field private mTabletMode:I

.field final pointer_xpos:[I

.field final pointer_ypos:[I

.field private prevPressTime:J

.field private prevTouchMoveX:I

.field private prevTouchMoveY:I

.field private releaseSoundRunnable:Ljava/lang/Runnable;

.field private sleepTime:J

.field private sounds:[I

.field private startTime:J

.field supportedCPUClockTable:[I

.field supportedGPUFreqTable:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;ILandroid/graphics/Bitmap;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/opengl/GLSurfaceView;
    .param p3, "mJni"    # Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;
    .param p4, "tabletmode"    # I
    .param p5, "bg"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 135
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->DBG:Z

    .line 46
    const-string v0, "WaterColor_WaterColorRenderer"

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->TAG:Ljava/lang/String;

    .line 51
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mCurrentBG:Landroid/graphics/Bitmap;

    .line 55
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isFirstTouched:Z

    .line 56
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->calledIsScreenTurnedOn:Z

    .line 57
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->defaultX:F

    .line 58
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->defaultY:F

    .line 61
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->pointer_xpos:[I

    .line 62
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->pointer_ypos:[I

    .line 63
    iput-wide v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->prevPressTime:J

    .line 64
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->prevTouchMoveX:I

    .line 65
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->prevTouchMoveY:I

    .line 66
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isDraged:Z

    .line 69
    const/16 v0, 0x5a

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->EVENT_CLEAR:I

    .line 70
    const/16 v0, 0x5b

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->EVENT_UNLOCK:I

    .line 71
    const/16 v0, 0x5c

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->EVENT_DELETE_BACKGROUND:I

    .line 72
    const/16 v0, 0x5e

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->EVENT_RELOAD_BACKGROUND:I

    .line 73
    const/16 v0, 0x5d

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->EVENT_DELETE_FBO:I

    .line 74
    const/16 v0, 0x5f

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->EVENT_RELOAD_FBO:I

    .line 77
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mSoundPool:Landroid/media/SoundPool;

    .line 78
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->sounds:[I

    .line 79
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mSound_tap_id:I

    .line 80
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mSound_unlock_id:I

    .line 81
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->SOUND_ID_TAB:I

    .line 82
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->SOUND_ID_UNLOC:I

    .line 83
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->DISTANCE_MAX_OF_DRAG:I

    .line 84
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mSound_left_max:F

    .line 85
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mSound_right_max:F

    .line 86
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isSystemSoundChecked:Z

    .line 87
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->UNLOCK_SOUND_PLAY_TIME:J

    .line 91
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isFirstSurfaceChanged:Z

    .line 92
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isSurfaceCreated:Z

    .line 93
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mCountOfDirtyMode:I

    .line 94
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->logCount:I

    .line 95
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isEndEffectStart:Z

    .line 96
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isCleanup:Z

    .line 104
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mTabletMode:I

    .line 109
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isFpsChecked:Z

    .line 110
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->fpsCount:I

    .line 111
    iput-wide v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->startTime:J

    .line 112
    iput-wide v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->sleepTime:J

    .line 115
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->CPU_CLOCK_NUM:I

    .line 116
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    .line 117
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->supportedCPUClockTable:[I

    .line 118
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isRestrictCPUClock:Z

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->GPU_FREQUNCY_NUM:I

    .line 122
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    .line 123
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->supportedGPUFreqTable:[I

    .line 124
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isRestrictGPUFreq:Z

    .line 126
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->CPU_CLOK_CONTROL:I

    .line 127
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->GPU_FREQ_CONTROL:I

    .line 137
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "WaterColorRender Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mContext:Landroid/content/Context;

    .line 139
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    .line 140
    sput-object p3, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mJniWaterColor:Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;

    .line 141
    iput-object p5, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mCurrentBG:Landroid/graphics/Bitmap;

    .line 142
    iput p4, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mTabletMode:I

    .line 143
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mJniWaterColor:Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;->Init_PhysicsEngineJNI()V

    .line 144
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isFirstSurfaceChanged:Z

    .line 147
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isRestrictCPUClock:Z

    .line 148
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->CPU_CLOCK_NUM:I

    .line 149
    const-string v0, "WaterColor_WaterColorRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRestrictCPUClock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isRestrictCPUClock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v0, "WaterColor_WaterColorRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CPU_CLOCK_NUM = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->CPU_CLOCK_NUM:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isRestrictGPUFreq:Z

    .line 154
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->GPU_FREQUNCY_NUM:I

    .line 155
    const-string v0, "WaterColor_WaterColorRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRestrictGPUFreq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isRestrictGPUFreq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string v0, "WaterColor_WaterColorRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GPU_FREQUNCY_NUM = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->GPU_FREQUNCY_NUM:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isRestrictCPUClock:Z

    if-eqz v0, :cond_16a

    .line 160
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_158

    .line 162
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->releaseBooster(I)V

    .line 163
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    .line 166
    :cond_158
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "new cpuMaxClockBooster"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mContext:Landroid/content/Context;

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    .line 170
    :cond_16a
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_189

    .line 172
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_177

    .line 174
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->releaseBooster(I)V

    .line 175
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    .line 178
    :cond_177
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "new gpuMaxFreqBooster"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mContext:Landroid/content/Context;

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    .line 182
    :cond_189
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->sleepTime:J

    .line 183
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isRestrictCPUClock:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isRestrictGPUFreq:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;)Landroid/media/SoundPool;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->releaseSoundRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400()Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mJniWaterColor:Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->setFalseDefaultEffectFlag()V

    return-void
.end method

.method private acquireBooster(I)V
    .registers 8
    .param p1, "type"    # I

    .prologue
    .line 756
    const-string v2, "WaterColor_WaterColorRenderer"

    const-string v3, "acquireBooster"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    const/4 v0, 0x0

    .line 759
    .local v0, "bestCpuClock":I
    const/4 v1, 0x0

    .line 761
    .local v1, "bestGpuFreq":I
    if-nez p1, :cond_6b

    .line 763
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    if-eqz v2, :cond_63

    .line 765
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->supportedCPUClockTable:[I

    if-nez v2, :cond_5a

    .line 767
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->supportedCPUClockTable:[I

    .line 769
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->supportedCPUClockTable:[I

    if-eqz v2, :cond_5b

    .line 771
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->supportedCPUClockTable:[I

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->CPU_CLOCK_NUM:I

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->getBestMaxFreq([II)I

    move-result v0

    .line 772
    const-string v2, "WaterColor_WaterColorRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquire CPU, ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->supportedCPUClockTable:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    const-string v3, "CPU"

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->supportedCPUClockTable:[I

    aget v4, v4, v0

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 774
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->acquire()V

    .line 817
    :cond_5a
    :goto_5a
    return-void

    .line 778
    :cond_5b
    const-string v2, "WaterColor_WaterColorRenderer"

    const-string v3, "getSupportedCPUFrequency, but supportedCPUClockTable is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    .line 784
    :cond_63
    const-string v2, "WaterColor_WaterColorRenderer"

    const-string v3, "cpuMaxClockBooster is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    .line 787
    :cond_6b
    const/4 v2, 0x1

    if-ne p1, v2, :cond_ce

    .line 789
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    if-eqz v2, :cond_c6

    .line 791
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->supportedGPUFreqTable:[I

    if-nez v2, :cond_5a

    .line 793
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->supportedGPUFreqTable:[I

    .line 795
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->supportedGPUFreqTable:[I

    if-eqz v2, :cond_be

    .line 797
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->supportedGPUFreqTable:[I

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->GPU_FREQUNCY_NUM:I

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->getBestMaxFreq([II)I

    move-result v1

    .line 798
    const-string v2, "WaterColor_WaterColorRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquire GPU, ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->supportedGPUFreqTable:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    const-string v3, "GPU"

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->supportedGPUFreqTable:[I

    aget v4, v4, v1

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 800
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->acquire()V

    goto :goto_5a

    .line 804
    :cond_be
    const-string v2, "WaterColor_WaterColorRenderer"

    const-string v3, "getSupportedGPUFrequency, but supportedGPUFreqTable is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    .line 810
    :cond_c6
    const-string v2, "WaterColor_WaterColorRenderer"

    const-string v3, "gpuMaxFreqBooster is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    .line 815
    :cond_ce
    const-string v2, "WaterColor_WaterColorRenderer"

    const-string v3, "type is invalid."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a
.end method

.method private checkSound()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 497
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 498
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 501
    .local v2, "result":I
    :try_start_8
    const-string v3, "lockscreen_sounds_enabled"

    const/4 v4, -0x2

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_e
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_e} :catch_14

    move-result v2

    .line 509
    :goto_f
    if-ne v2, v5, :cond_19

    .line 510
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isSystemSoundChecked:Z

    .line 514
    :goto_13
    return-void

    .line 503
    :catch_14
    move-exception v1

    .line 505
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_f

    .line 512
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_19
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isSystemSoundChecked:Z

    goto :goto_13
.end method

.method private getBestMaxFreq([II)I
    .registers 9
    .param p1, "pArray"    # [I
    .param p2, "bestValue"    # I

    .prologue
    .line 865
    const/4 v4, 0x0

    .line 866
    .local v4, "value":I
    const v3, 0x7fffffff

    .line 867
    .local v3, "prevdiff":I
    const/4 v1, 0x0

    .line 868
    .local v1, "currdiff":I
    array-length v0, p1

    .line 870
    .local v0, "arrayLenth":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_18

    .line 873
    aget v5, p1, v2

    sub-int v5, p2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 874
    if-ge v1, v3, :cond_15

    .line 876
    move v4, v2

    .line 877
    move v3, v1

    .line 870
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 881
    :cond_18
    return v4
.end method

.method private playSound(I)V
    .registers 9
    .param p1, "soundId"    # I

    .prologue
    const/4 v4, 0x0

    .line 726
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isSystemSoundChecked:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_19

    .line 727
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mSound_left_max:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mSound_right_max:F

    const/high16 v6, 0x3f800000

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 729
    :cond_19
    return-void
.end method

.method private removeDefaultRunnable()V
    .registers 3

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_15

    .line 686
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "mDefaultRunnable isn\'t null, mParent.removeCallbacks(mDefaultRunnable)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 689
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    .line 691
    :cond_15
    return-void
.end method

.method private setFalseDefaultEffectFlag()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 696
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "setFalseDefaultEffectFlag()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isFirstTouched:Z

    .line 698
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->calledIsScreenTurnedOn:Z

    .line 699
    return-void
.end method

.method private setSound()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 711
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->checkSound()V

    .line 712
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->stopReleaseSound()V

    .line 714
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_3d

    .line 716
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "MotionEvent.ACTION_DOWN mSoundPool == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mSoundPool:Landroid/media/SoundPool;

    .line 719
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->sounds:[I

    .line 720
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->sounds:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mSound_tap_id:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v5

    .line 721
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->sounds:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mSound_unlock_id:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    .line 723
    :cond_3d
    return-void
.end method

.method private stopReleaseSound()V
    .registers 3

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->releaseSoundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_e

    .line 614
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->releaseSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 615
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 617
    :cond_e
    return-void
.end method


# virtual methods
.method public changeBackground(Landroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "bg"    # Landroid/graphics/Bitmap;

    .prologue
    .line 490
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mCurrentBG:Landroid/graphics/Bitmap;

    .line 491
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mJniWaterColor:Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;

    const-string v1, "LockScreenBG"

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mCurrentBG:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;->SetTexture(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 492
    return-void
.end method

.method public changeNoiseTexture()V
    .registers 7

    .prologue
    .line 478
    const/4 v1, 0x0

    .line 479
    .local v1, "istr_WaterColor_Noise":Ljava/io/InputStream;
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x108104f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 480
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mJniWaterColor:Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;

    const-string v3, "Noise"

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;->SetTexture(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 481
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_1e

    .line 486
    :goto_1d
    return-void

    .line 483
    :catch_1e
    move-exception v0

    .line 484
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1d
.end method

.method changeWaterColorBackground(Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "mBmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 435
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "changeWaterColorBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mJniWaterColor:Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;

    const-string v1, "LockScreenBG"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;->SetTexture(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 437
    return-void
.end method

.method public cleanUp()V
    .registers 5

    .prologue
    .line 570
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->removeDefaultRunnable()V

    .line 574
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->setFalseDefaultEffectFlag()V

    .line 575
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isCleanup:Z

    .line 576
    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->sleepTime:J

    .line 578
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer$1;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/opengl/GLSurfaceView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 597
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->stopReleaseSound()V

    .line 598
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer$2;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 609
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/opengl/GLSurfaceView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 610
    return-void
.end method

.method public clearWaterColor()V
    .registers 3

    .prologue
    .line 526
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mJniWaterColor:Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;->onKeyEvent(I)V

    .line 527
    return-void
.end method

.method public destroyed()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 733
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isRestrictCPUClock:Z

    if-eqz v0, :cond_16

    .line 737
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_16

    .line 739
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->releaseBooster(I)V

    .line 740
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    .line 744
    :cond_16
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_24

    .line 746
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_24

    .line 748
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->releaseBooster(I)V

    .line 749
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    .line 752
    :cond_24
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 9
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v6, 0x0

    .line 239
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->logCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->logCount:I

    .line 241
    iget-wide v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->sleepTime:J

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 243
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mJniWaterColor:Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;->isEmpty()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_71

    .line 245
    const-string v2, "WaterColor_WaterColorRenderer"

    const-string v3, "mJniWaterColor is Empty"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mCountOfDirtyMode:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mCountOfDirtyMode:I

    .line 247
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mCountOfDirtyMode:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_35

    .line 249
    const-string v2, "WaterColor_WaterColorRenderer"

    const-string v3, "Drity Mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v2, v6}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 251
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mCountOfDirtyMode:I

    .line 263
    :cond_35
    :goto_35
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mJniWaterColor:Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;->Draw_PhysicsEngine()V

    .line 265
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isFpsChecked:Z

    if-eqz v2, :cond_70

    .line 267
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->fpsCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->fpsCount:I

    .line 268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 269
    .local v0, "endTime":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->startTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_70

    .line 271
    const-string v2, "WaterColor_WaterColorRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fps = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->fpsCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->startTime:J

    .line 273
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->fpsCount:I

    .line 276
    .end local v0    # "endTime":J
    :cond_70
    return-void

    .line 256
    :cond_71
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->logCount:I

    const/16 v3, 0x64

    if-le v2, v3, :cond_35

    .line 258
    const-string v2, "WaterColor_WaterColorRenderer"

    const-string v3, "mJniWaterColor is not Empty"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->logCount:I

    goto :goto_35
.end method

.method public onKeyEvent(I)V
    .registers 3
    .param p1, "keyCode"    # I

    .prologue
    .line 530
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mJniWaterColor:Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;->onKeyEvent(I)V

    .line 531
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 8
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v3, 0x0

    .line 201
    const-string v0, "WaterColor_WaterColorRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceChanged, width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mTabletMode:I

    if-nez v0, :cond_3f

    .line 204
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isFirstSurfaceChanged:Z

    if-eqz v0, :cond_36

    .line 206
    if-le p2, p3, :cond_37

    .line 208
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mJniWaterColor:Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mTabletMode:I

    invoke-virtual {v0, v1, p3, p2}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;->Init_PhysicsEngine(III)V

    .line 214
    :goto_34
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isFirstSurfaceChanged:Z

    .line 232
    :cond_36
    :goto_36
    return-void

    .line 212
    :cond_37
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mJniWaterColor:Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mTabletMode:I

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;->Init_PhysicsEngine(III)V

    goto :goto_34

    .line 219
    :cond_3f
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isSurfaceCreated:Z

    if-eqz v0, :cond_50

    .line 221
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->preSetTexture()V

    .line 222
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mJniWaterColor:Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mTabletMode:I

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;->Init_PhysicsEngine(III)V

    .line 223
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isSurfaceCreated:Z

    goto :goto_36

    .line 227
    :cond_50
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->changeNoiseTexture()V

    .line 228
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mJniWaterColor:Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;->onSurfaceChangedEvent(II)V

    goto :goto_36
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 189
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mTabletMode:I

    if-nez v0, :cond_e

    .line 192
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->preSetTexture()V

    .line 194
    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isSurfaceCreated:Z

    .line 195
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 19
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 280
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 282
    .local v7, "action":I
    const/4 v2, 0x0

    .line 283
    .local v2, "pointer_id":I
    const/4 v3, 0x1

    .line 284
    .local v3, "multitouch_num":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->pointer_xpos:[I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    aput v4, v1, v2

    .line 285
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->pointer_ypos:[I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    aput v4, v1, v2

    .line 287
    const-string v1, "WaterColor_WaterColorRenderer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTouchEvent action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const-string v1, "WaterColor_WaterColorRenderer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ievent.getX() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const-string v1, "WaterColor_WaterColorRenderer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ievent.getY() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isCleanup:Z

    if-eqz v1, :cond_7a

    .line 293
    const-string v1, "WaterColor_WaterColorRenderer"

    const-string v4, "isCleanup is true"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_79
    :goto_79
    return-void

    .line 297
    :cond_7a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 299
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isFirstTouched:Z

    if-eqz v1, :cond_95

    .line 301
    const-string v1, "WaterColor_WaterColorRenderer"

    const-string v4, "isFirstTouched is true"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->removeDefaultRunnable()V

    .line 303
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->setFalseDefaultEffectFlag()V

    .line 306
    :cond_95
    packed-switch v7, :pswitch_data_1c2

    :pswitch_98
    goto :goto_79

    .line 308
    :pswitch_99
    const-string v1, "WaterColor_WaterColorRenderer"

    const-string v4, "ACTION_DOWN"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mJniWaterColor:Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->pointer_xpos:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->pointer_ypos:[I

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;->onTouchEvent(III[I[I)V

    .line 311
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->playSound(I)V

    .line 312
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->prevPressTime:J

    .line 313
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->pointer_xpos:[I

    aget v1, v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->prevTouchMoveX:I

    .line 314
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->pointer_ypos:[I

    aget v1, v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->prevTouchMoveY:I

    .line 315
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isDraged:Z

    goto :goto_79

    .line 320
    :pswitch_d6
    const-string v1, "WaterColor_WaterColorRenderer"

    const-string v4, "ACTION_MOVE"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isDraged:Z

    if-nez v1, :cond_130

    .line 324
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->pointer_xpos:[I

    aget v1, v1, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->prevTouchMoveX:I

    sub-int/2addr v1, v4

    int-to-float v11, v1

    .line 325
    .local v11, "dx":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->pointer_ypos:[I

    aget v1, v1, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->prevTouchMoveY:I

    sub-int/2addr v1, v4

    int-to-float v12, v1

    .line 327
    .local v12, "dy":F
    float-to-double v4, v11

    const-wide/high16 v13, 0x4000000000000000L

    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    float-to-double v13, v12

    const-wide/high16 v15, 0x4000000000000000L

    invoke-static/range {v13 .. v16}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    add-double/2addr v4, v13

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v10, v4

    .line 329
    .local v10, "distanceForDragSound":I
    const/16 v1, 0x32

    if-le v10, v1, :cond_130

    .line 331
    const-string v1, "WaterColor_WaterColorRenderer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "distanceForDragSound = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isDraged:Z

    .line 336
    .end local v10    # "distanceForDragSound":I
    .end local v11    # "dx":F
    .end local v12    # "dy":F
    :cond_130
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mJniWaterColor:Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->pointer_xpos:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->pointer_ypos:[I

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;->onTouchEvent(III[I[I)V

    goto/16 :goto_79

    .line 342
    :pswitch_140
    const-string v1, "WaterColor_WaterColorRenderer"

    const-string v4, "ACTION_UP"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->prevPressTime:J

    sub-long v8, v4, v13

    .line 344
    .local v8, "differTime":J
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isDraged:Z

    if-nez v1, :cond_79

    const-wide/16 v4, 0x258

    cmp-long v1, v8, v4

    if-lez v1, :cond_79

    .line 346
    const-string v1, "WaterColor_WaterColorRenderer"

    const-string v4, "LONG PRESS UP"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mJniWaterColor:Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->pointer_xpos:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->pointer_ypos:[I

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;->onTouchEvent(III[I[I)V

    .line 349
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->playSound(I)V

    goto/16 :goto_79

    .line 355
    .end local v8    # "differTime":J
    :pswitch_17a
    const-string v1, "WaterColor_WaterColorRenderer"

    const-string v4, "ACTION_HOVER_ENTER"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mJniWaterColor:Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;

    const/16 v4, 0x9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->pointer_xpos:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->pointer_ypos:[I

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;->onTouchEvent(III[I[I)V

    goto/16 :goto_79

    .line 362
    :pswitch_192
    const-string v1, "WaterColor_WaterColorRenderer"

    const-string v4, "ACTION_HOVER_MOVE"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mJniWaterColor:Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;

    const/4 v4, 0x7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->pointer_xpos:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->pointer_ypos:[I

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;->onTouchEvent(III[I[I)V

    goto/16 :goto_79

    .line 369
    :pswitch_1a9
    const-string v1, "WaterColor_WaterColorRenderer"

    const-string v4, "ACTION_HOVER_EXIT"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mJniWaterColor:Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;

    const/16 v4, 0xa

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->pointer_xpos:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->pointer_ypos:[I

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;->onTouchEvent(III[I[I)V

    goto/16 :goto_79

    .line 306
    nop

    :pswitch_data_1c2
    .packed-switch 0x0
        :pswitch_99
        :pswitch_140
        :pswitch_d6
        :pswitch_98
        :pswitch_98
        :pswitch_98
        :pswitch_98
        :pswitch_192
        :pswitch_98
        :pswitch_17a
        :pswitch_1a9
    .end packed-switch
.end method

.method public onTouchEventForPatternLock(Landroid/view/MotionEvent;)V
    .registers 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 379
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 381
    .local v6, "action":I
    const/4 v1, 0x0

    .line 382
    .local v1, "pointer_id":I
    const/4 v2, 0x1

    .line 383
    .local v2, "multitouch_num":I
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->pointer_xpos:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v1

    .line 384
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->pointer_ypos:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v1

    .line 386
    const-string v0, "WaterColor_WaterColorRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouchEventForPatternLock action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const-string v0, "WaterColor_WaterColorRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ievent.getX() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const-string v0, "WaterColor_WaterColorRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ievent.getY() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isCleanup:Z

    if-eqz v0, :cond_74

    .line 392
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v3, "isCleanup is true"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_73
    :goto_73
    return-void

    .line 396
    :cond_74
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 398
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isFirstTouched:Z

    if-eqz v0, :cond_8b

    .line 400
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v3, "isFirstTouched is true"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->removeDefaultRunnable()V

    .line 402
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->setFalseDefaultEffectFlag()V

    .line 405
    :cond_8b
    packed-switch v6, :pswitch_data_dc

    goto :goto_73

    .line 407
    :pswitch_8f
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v3, "ACTION_DOWN => ACTION_HOVER_ENTER"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mJniWaterColor:Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;

    const/16 v3, 0x9

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->pointer_xpos:[I

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->pointer_ypos:[I

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;->onTouchEvent(III[I[I)V

    goto :goto_73

    .line 414
    :pswitch_a2
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v3, "ACTION_MOVE => ACTION_HOVER_MOVE"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mJniWaterColor:Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->pointer_xpos:[I

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->pointer_ypos:[I

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;->onTouchEvent(III[I[I)V

    goto :goto_73

    .line 421
    :pswitch_b4
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v3, "ACTION_UP"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->prevPressTime:J

    sub-long v7, v3, v9

    .line 423
    .local v7, "differTime":J
    const-wide/16 v3, 0x258

    cmp-long v0, v7, v3

    if-lez v0, :cond_73

    .line 425
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v3, "LONG PRESS, ACTION_UP => ACTION_HOVER_EXIT"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mJniWaterColor:Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;

    const/16 v3, 0xa

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->pointer_xpos:[I

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->pointer_ypos:[I

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;->onTouchEvent(III[I[I)V

    goto :goto_73

    .line 405
    :pswitch_data_dc
    .packed-switch 0x0
        :pswitch_8f
        :pswitch_b4
        :pswitch_a2
    .end packed-switch
.end method

.method public preSetTexture()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 442
    const/4 v1, 0x0

    .line 443
    .local v1, "istr_WaterColor_Mask1":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 444
    .local v2, "istr_WaterColor_Mask2":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 445
    .local v3, "istr_WaterColor_Mask3":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 446
    .local v5, "istr_WaterColor_Tube":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 448
    .local v4, "istr_WaterColor_Noise":Ljava/io/InputStream;
    :try_start_6
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x108104c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 449
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x108104d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 450
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x108104e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 451
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1081050

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 452
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x108104f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 454
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mJniWaterColor:Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;

    const-string v7, "Mask1"

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;->SetTexture(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 455
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mJniWaterColor:Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;

    const-string v7, "Mask2"

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;->SetTexture(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 456
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mJniWaterColor:Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;

    const-string v7, "Mask3"

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;->SetTexture(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 457
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mJniWaterColor:Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;

    const-string v7, "Tube"

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;->SetTexture(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 458
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mJniWaterColor:Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;

    const-string v7, "Noise"

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;->SetTexture(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 460
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 461
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 462
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 463
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 464
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_92} :catch_9c

    .line 472
    :goto_92
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mJniWaterColor:Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;

    const-string v7, "LockScreenBG"

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mCurrentBG:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7, v8, v10}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;->SetTexture(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 473
    return-void

    .line 466
    :catch_9c
    move-exception v0

    .line 468
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_92
.end method

.method public releaseBooster(I)V
    .registers 5
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x0

    .line 821
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "releaseBooster"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    if-nez p1, :cond_29

    .line 825
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->supportedCPUClockTable:[I

    if-eqz v0, :cond_21

    .line 827
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1e

    .line 829
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "cpuMaxClockBooster.release()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 833
    :cond_1e
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->supportedCPUClockTable:[I

    .line 861
    :goto_20
    return-void

    .line 837
    :cond_21
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "supportedCPUClockTable isn\'t null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 840
    :cond_29
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4b

    .line 842
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->supportedGPUFreqTable:[I

    if-eqz v0, :cond_43

    .line 844
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_40

    .line 846
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "gpuMaxFreqBooster.release()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 850
    :cond_40
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->supportedGPUFreqTable:[I

    goto :goto_20

    .line 854
    :cond_43
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "supportedGPUFreqTable isn\'t null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 859
    :cond_4b
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "type is invalid."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 620
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->clearWaterColor()V

    .line 625
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->removeDefaultRunnable()V

    .line 626
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->setFalseDefaultEffectFlag()V

    .line 628
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isRestrictCPUClock:Z

    if-eqz v0, :cond_18

    .line 630
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->releaseBooster(I)V

    .line 633
    :cond_18
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_20

    .line 635
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->releaseBooster(I)V

    .line 637
    :cond_20
    return-void
.end method

.method public screenTurnedOn()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 549
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->removeDefaultRunnable()V

    .line 553
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isFirstTouched:Z

    .line 555
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 557
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isRestrictCPUClock:Z

    if-eqz v0, :cond_1a

    .line 559
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->acquireBooster(I)V

    .line 562
    :cond_1a
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_21

    .line 564
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->acquireBooster(I)V

    .line 567
    :cond_21
    return-void
.end method

.method public setSoundRID(IIFF)V
    .registers 5
    .param p1, "soundID_TAB"    # I
    .param p2, "soundID_UNLOCK"    # I
    .param p3, "leftMax"    # F
    .param p4, "RightMax"    # F

    .prologue
    .line 703
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mSound_tap_id:I

    .line 704
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mSound_unlock_id:I

    .line 705
    iput p3, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mSound_left_max:F

    .line 706
    iput p4, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mSound_right_max:F

    .line 707
    return-void
.end method

.method public show()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 535
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->setSound()V

    .line 539
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->removeDefaultRunnable()V

    .line 540
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->setFalseDefaultEffectFlag()V

    .line 541
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isEndEffectStart:Z

    .line 542
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isCleanup:Z

    .line 543
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->clearWaterColor()V

    .line 544
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 545
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->sleepTime:J

    .line 546
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .registers 8
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 641
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "showUnlockAffordance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    const-string v0, "WaterColor_WaterColorRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calledIsScreenTurnedOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->calledIsScreenTurnedOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->removeDefaultRunnable()V

    .line 645
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isFirstTouched:Z

    if-eqz v0, :cond_af

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->calledIsScreenTurnedOn:Z

    if-eqz v0, :cond_af

    .line 647
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->defaultX:F

    .line 648
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->defaultY:F

    .line 650
    const-string v0, "WaterColor_WaterColorRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "defaultX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->defaultX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const-string v0, "WaterColor_WaterColorRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "defaultY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->defaultY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->pointer_xpos:[I

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->defaultX:F

    float-to-int v1, v1

    aput v1, v0, v3

    .line 654
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->pointer_ypos:[I

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->defaultY:F

    float-to-int v1, v1

    aput v1, v0, v3

    .line 656
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_9b

    .line 658
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "mDefaultRunnable,  new Runnable()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer$3;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    .line 674
    :cond_9b
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "mDefaultRunnable, postDelayed()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/opengl/GLSurfaceView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 676
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 678
    :cond_af
    return-void
.end method

.method public unlockWaterColor()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 518
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->isEndEffectStart:Z

    .line 519
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 520
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->mJniWaterColor:Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;->onKeyEvent(I)V

    .line 521
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->playSound(I)V

    .line 522
    return-void
.end method
