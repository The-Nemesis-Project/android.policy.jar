.class public abstract Lcom/android/internal/policy/impl/WindowOrientationListener;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;,
        Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;,
        Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;
    }
.end annotation


# static fields
.field private static final LOG:Z

.field private static final TAG:Ljava/lang/String; = "WindowOrientationListener"

.field private static final USE_GRAVITY_SENSOR:Z

.field private static mbResultFaceDectection:Z

.field private static msfforSContextRotation:Lcom/sec/android/smartface/SmartFaceManager;

.field private static sCurrentAppAngle:I

.field private static sCurrentAppOrientation:I

.field private static sCurrentRotation:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentRotation:I

.field private mEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mRate:I

.field private mSContextAutoRotationListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mSOSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mUsedautorotioansensor:Z

.field private mbSContext:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, -0x1

    .line 64
    const-string v0, "debug.orientation.log"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/WindowOrientationListener;->LOG:Z

    .line 67
    sput v2, Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppOrientation:I

    .line 68
    sput v2, Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentRotation:I

    .line 89
    sput v2, Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppAngle:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 106
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/WindowOrientationListener;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    .line 107
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "rate"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput v6, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mCurrentRotation:I

    .line 80
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;

    .line 123
    const-string v2, "WindowOrientationListener"

    const-string v3, "WindowOrientationListener"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iput-object p2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 126
    .local v1, "packageMgr":Landroid/content/pm/PackageManager;
    const-string v2, "com.sec.feature.sensorhub"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbSContext:Z

    .line 127
    const-string v2, "WindowOrientationListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mbSContext : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbSContext:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iput-object p1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mContext:Landroid/content/Context;

    .line 129
    sput-boolean v7, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbResultFaceDectection:Z

    .line 131
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbSContext:Z

    if-eqz v2, :cond_66

    .line 133
    const-string v2, "WindowOrientationListener"

    const-string v3, "++SContextListenerImpl"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v2, "scontext"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/scontext/SContextManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 135
    new-instance v2, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;-><init>(Lcom/android/internal/policy/impl/WindowOrientationListener;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSContextAutoRotationListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;

    .line 136
    const-string v2, "WindowOrientationListener"

    const-string v3, "--SContextListenerImpl"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :goto_65
    return-void

    .line 140
    :cond_66
    const-string v2, "WindowOrientationListener"

    const-string v3, "++SensorEventListenerImpl"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string v2, "sensor"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 142
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mEnabled:Z

    .line 143
    iput p3, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mRate:I

    .line 145
    iget-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2}, Landroid/hardware/SensorManager;->getSupportedFunction()I

    move-result v0

    .line 146
    .local v0, "nfeature":I
    and-int/lit8 v2, v0, 0x6

    if-eqz v2, :cond_c3

    .line 148
    if-ne p3, v6, :cond_8a

    .line 149
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mRate:I

    .line 150
    :cond_8a
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mUsedautorotioansensor:Z

    .line 163
    :goto_8c
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-ne v2, v5, :cond_9a

    .line 165
    iget-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 167
    :cond_9a
    iget-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_a2

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-nez v2, :cond_ac

    .line 169
    :cond_a2
    iget-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 170
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mUsedautorotioansensor:Z

    .line 173
    :cond_ac
    iget-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_bb

    .line 175
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-ne v2, v5, :cond_cb

    .line 176
    new-instance v2, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;-><init>(Lcom/android/internal/policy/impl/WindowOrientationListener;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSOSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;

    .line 183
    :cond_bb
    :goto_bb
    const-string v2, "WindowOrientationListener"

    const-string v3, "--SensorEventListenerImpl"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65

    .line 154
    :cond_c3
    if-ne p3, v6, :cond_c8

    .line 155
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mRate:I

    .line 156
    :cond_c8
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mUsedautorotioansensor:Z

    goto :goto_8c

    .line 179
    :cond_cb
    const-string v2, "WindowOrientationListener"

    const-string v3, "++++SensorEventListenerImpl"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v2, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;-><init>(Lcom/android/internal/policy/impl/WindowOrientationListener;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;

    goto :goto_bb
.end method

.method static synthetic access$200()Z
    .registers 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbResultFaceDectection:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/WindowOrientationListener;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/WindowOrientationListener;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()I
    .registers 1

    .prologue
    .line 62
    sget v0, Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppAngle:I

    return v0
.end method

.method static synthetic access$402(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 62
    sput p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppAngle:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/WindowOrientationListener;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/WindowOrientationListener;

    .prologue
    .line 62
    iget v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mCurrentRotation:I

    return v0
.end method

.method static synthetic access$600()Lcom/sec/android/smartface/SmartFaceManager;
    .registers 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/internal/policy/impl/WindowOrientationListener;->msfforSContextRotation:Lcom/sec/android/smartface/SmartFaceManager;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/smartface/SmartFaceManager;)Lcom/sec/android/smartface/SmartFaceManager;
    .registers 1
    .param p0, "x0"    # Lcom/sec/android/smartface/SmartFaceManager;

    .prologue
    .line 62
    sput-object p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->msfforSContextRotation:Lcom/sec/android/smartface/SmartFaceManager;

    return-object p0
.end method

.method static synthetic access$700()Z
    .registers 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/android/internal/policy/impl/WindowOrientationListener;->LOG:Z

    return v0
.end method

.method static synthetic access$800()I
    .registers 1

    .prologue
    .line 62
    sget v0, Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppOrientation:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/WindowOrientationListener;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/WindowOrientationListener;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static getCurrentRotation()I
    .registers 1

    .prologue
    .line 342
    sget v0, Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentRotation:I

    return v0
.end method

.method public static setCurrentAppOrientation(I)V
    .registers 1
    .param p0, "appOrientation"    # I

    .prologue
    .line 335
    sput p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppOrientation:I

    .line 336
    return-void
.end method


# virtual methods
.method public canDetectOrientation()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 308
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 309
    :try_start_4
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbSContext:Z

    if-eqz v2, :cond_a

    .line 310
    monitor-exit v1

    .line 312
    :goto_9
    return v0

    :cond_a
    iget-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_13

    :goto_e
    monitor-exit v1

    goto :goto_9

    .line 314
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v0

    .line 312
    :cond_13
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public disable()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 235
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 236
    :try_start_4
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbSContext:Z

    if-eqz v0, :cond_12

    .line 238
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSContextAutoRotationListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 256
    :cond_10
    :goto_10
    monitor-exit v1

    .line 257
    :goto_11
    return-void

    .line 241
    :cond_12
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_22

    .line 242
    const-string v0, "WindowOrientationListener"

    const-string v2, "Cannot detect sensors. Invalid disable"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    monitor-exit v1

    goto :goto_11

    .line 256
    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_1f

    throw v0

    .line 245
    :cond_22
    :try_start_22
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mEnabled:Z

    if-ne v0, v3, :cond_10

    .line 246
    const-string v0, "WindowOrientationListener"

    const-string v2, "WindowOrientationListener disabled"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSOSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;

    :goto_35
    invoke-virtual {v2, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 250
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-ne v0, v3, :cond_41

    .line 251
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSOSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;

    # invokes: Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->resetLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->access$100(Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;)V

    .line 253
    :cond_41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mEnabled:Z

    goto :goto_10

    .line 247
    :cond_45
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;
    :try_end_47
    .catchall {:try_start_22 .. :try_end_47} :catchall_1f

    goto :goto_35
.end method

.method public enable()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 192
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 193
    :try_start_4
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbSContext:Z

    if-eqz v0, :cond_13

    .line 194
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSContextAutoRotationListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;II)Z

    .line 228
    :cond_11
    :goto_11
    monitor-exit v1

    .line 229
    :goto_12
    return-void

    .line 208
    :cond_13
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbResultFaceDectection:Z

    .line 209
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_26

    .line 210
    const-string v0, "WindowOrientationListener"

    const-string v2, "Cannot detect sensors. Not enabled"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    monitor-exit v1

    goto :goto_12

    .line 228
    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_23

    throw v0

    .line 213
    :cond_26
    :try_start_26
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mEnabled:Z

    if-nez v0, :cond_11

    .line 214
    sget-boolean v0, Lcom/android/internal/policy/impl/WindowOrientationListener;->LOG:Z

    if-eqz v0, :cond_35

    .line 215
    const-string v0, "WindowOrientationListener"

    const-string v2, "WindowOrientationListener enabled"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_35
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-eq v0, v3, :cond_53

    .line 218
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;

    # invokes: Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->resetLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->access$000(Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;)V

    .line 222
    :goto_3e
    iget-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSOSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;

    :goto_46
    iget-object v3, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    iget v4, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mRate:I

    iget-object v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mEnabled:Z

    goto :goto_11

    .line 220
    :cond_53
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSOSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;

    # invokes: Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->resetLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->access$100(Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;)V

    goto :goto_3e

    .line 222
    :cond_59
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;
    :try_end_5b
    .catchall {:try_start_26 .. :try_end_5b} :catchall_23

    goto :goto_46
.end method

.method public getProposedRotation()I
    .registers 6

    .prologue
    const/4 v0, -0x1

    .line 280
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 282
    :try_start_4
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbSContext:Z

    if-eqz v2, :cond_10

    .line 283
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSContextAutoRotationListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->getProposedRotation()I

    move-result v0

    monitor-exit v1

    .line 294
    :goto_f
    return v0

    .line 285
    :cond_10
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mEnabled:Z

    if-eqz v2, :cond_4b

    .line 286
    sget-boolean v2, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbResultFaceDectection:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_38

    .line 288
    const-string v2, "WindowOrientationListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProposedRotation facedetection :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbResultFaceDectection:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    monitor-exit v1

    goto :goto_f

    .line 297
    :catchall_35
    move-exception v0

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_4 .. :try_end_37} :catchall_35

    throw v0

    .line 291
    :cond_38
    :try_start_38
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSOSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->getProposedRotationLocked()I

    move-result v0

    :goto_42
    monitor-exit v1

    goto :goto_f

    :cond_44
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->getProposedRotationLocked()I

    move-result v0

    goto :goto_42

    .line 294
    :cond_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_38 .. :try_end_4c} :catchall_35

    goto :goto_f
.end method

.method public abstract onProposedRotationChanged(I)V
.end method

.method public setCurrentRotation(I)V
    .registers 4
    .param p1, "rotation"    # I

    .prologue
    .line 265
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 266
    :try_start_3
    iput p1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mCurrentRotation:I

    .line 267
    sput p1, Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentRotation:I

    .line 268
    monitor-exit v1

    .line 269
    return-void

    .line 268
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public setFaceDetectionResult(Z)V
    .registers 2
    .param p1, "ResultFaceDectection"    # Z

    .prologue
    .line 301
    sput-boolean p1, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbResultFaceDectection:Z

    .line 302
    return-void
.end method
