.class public Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;
.super Landroid/widget/TextView;
.source "KeyguardMessageArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$AnnounceRunnable;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;
    }
.end annotation


# static fields
.field private static final ANNOUNCEMENT_DELAY:J = 0xfaL

.field private static final ANNOUNCE_TOKEN:Ljava/lang/Object;

.field static final BATTERY_LOW_ICON:I = 0x0

.field static final CHARGING_ICON:I = 0x0

.field private static final CMASTAG:Ljava/lang/String; = "CMASMessage"

.field public static DEBUG:Z = false

.field protected static final FADE_DURATION:I = 0x2ee

.field private static final MISSED_EVENT_ARRIVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationArrived"

.field private static final MISSED_EVENT_REMOVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationRemoved"

.field static final SECURITY_MESSAGE_DURATION:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "KeyguardMessageArea"


# instance fields
.field private final CMAS_MESSAGE_UPDATE:I

.field private MSG_PKG:Ljava/lang/String;

.field private final REQ_INDEX_MSG:I

.field protected mBatteryCharged:Z

.field protected mBatteryIsLow:Z

.field mBatteryLevel:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCMASIcon:I

.field private mCMASNotiInfo:Landroid/app/NotificationInfo;

.field mCharging:Z

.field mClearMessageRunnable:Ljava/lang/Runnable;

.field private mCmasHandler:Landroid/os/Handler;

.field mConnectPCbyUSB:Z

.field private mHandler:Landroid/os/Handler;

.field private mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mMessage:Ljava/lang/CharSequence;

.field private mPrevShowingCMASText:Z

.field private mSeparator:Ljava/lang/CharSequence;

.field mShowingBatteryInfo:Z

.field mShowingBouncer:Z

.field private mShowingCMASText:Z

.field mShowingMessage:Z

.field mTimeout:J

.field mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->ANNOUNCE_TOKEN:Ljava/lang/Object;

    .line 79
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 210
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 211
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 214
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingBatteryInfo:Z

    .line 85
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingBouncer:Z

    .line 88
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mCharging:Z

    .line 91
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mConnectPCbyUSB:Z

    .line 94
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBatteryLevel:I

    .line 99
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mTimeout:J

    .line 107
    const-string v0, "com.android.mms"

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->MSG_PKG:Ljava/lang/String;

    .line 108
    const/16 v0, 0x41c

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->REQ_INDEX_MSG:I

    .line 110
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingCMASText:Z

    .line 111
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mPrevShowingCMASText:Z

    .line 115
    const/16 v0, 0x12c2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->CMAS_MESSAGE_UPDATE:I

    .line 124
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Ljava/lang/Runnable;

    .line 190
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 405
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mCmasHandler:Landroid/os/Handler;

    .line 216
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 219
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->setSelected(Z)V

    .line 222
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    .line 223
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 224
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    .line 226
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104090e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mSeparator:Ljava/lang/CharSequence;

    .line 228
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->update()V

    .line 229
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;IZ)V
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->hideMessage(IZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->showMessage(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mCmasHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private varargs concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "args"    # [Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    .local v0, "b":Ljava/lang/StringBuilder;
    aget-object v3, p1, v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 305
    aget-object v3, p1, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 307
    :cond_13
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_14
    array-length v3, p1

    if-ge v1, v3, :cond_30

    .line 308
    aget-object v2, p1, v1

    .line 309
    .local v2, "text":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 310
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2a

    .line 311
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mSeparator:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 313
    :cond_2a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 307
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 316
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getCMASCount()V
    .registers 5

    .prologue
    .line 453
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 455
    .local v0, "mNM":Landroid/app/NotificationManager;
    if-nez v0, :cond_d

    .line 470
    :cond_c
    :goto_c
    return-void

    .line 459
    :cond_d
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->MSG_PKG:Ljava/lang/String;

    const/16 v2, 0x41c

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mCMASNotiInfo:Landroid/app/NotificationInfo;

    .line 460
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mCMASNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v1, :cond_c

    .line 461
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->DEBUG:Z

    if-eqz v1, :cond_3b

    const-string v1, "CMASMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMAS missedCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mCMASNotiInfo:Landroid/app/NotificationInfo;

    iget v3, v3, Landroid/app/NotificationInfo;->missedCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_3b
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mCMASNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    if-lez v1, :cond_c

    .line 463
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isPresidentialCMASFeature()Z

    move-result v1

    if-eqz v1, :cond_51

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mCMASNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->commonValue:I

    if-nez v1, :cond_51

    .line 464
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingCMASText:Z

    goto :goto_c

    .line 466
    :cond_51
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingCMASText:Z

    goto :goto_c
.end method

.method private getChargeInfo(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;
    .registers 8
    .param p1, "icon"    # Llibcore/util/MutableInt;

    .prologue
    const/4 v5, 0x0

    .line 334
    const/4 v0, 0x0

    .line 335
    .local v0, "string":Ljava/lang/CharSequence;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingBatteryInfo:Z

    if-eqz v1, :cond_2a

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingMessage:Z

    if-nez v1, :cond_2a

    .line 337
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mCharging:Z

    if-eqz v1, :cond_2f

    .line 339
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBatteryCharged:Z

    if-eqz v1, :cond_2b

    const v1, 0x1040514

    :goto_19
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 342
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    .line 350
    :cond_2a
    :goto_2a
    return-object v0

    .line 339
    :cond_2b
    const v1, 0x1040513

    goto :goto_19

    .line 343
    :cond_2f
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBatteryIsLow:Z

    if-eqz v1, :cond_2a

    .line 345
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040516

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 347
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    goto :goto_2a
.end method

.method private hideMessage(IZ)V
    .registers 8
    .param p1, "duration"    # I
    .param p2, "thenUpdate"    # Z

    .prologue
    const/4 v4, 0x0

    .line 354
    if-lez p1, :cond_21

    .line 355
    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 356
    .local v0, "anim":Landroid/animation/Animator;
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 357
    if-eqz p2, :cond_1d

    .line 358
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 365
    :cond_1d
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 372
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_20
    :goto_20
    return-void

    .line 367
    :cond_21
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->setAlpha(F)V

    .line 368
    if-eqz p2, :cond_20

    .line 369
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->update()V

    goto :goto_20
.end method

.method private showMessage(I)V
    .registers 7
    .param p1, "duration"    # I

    .prologue
    const/high16 v4, 0x3f800000

    .line 375
    if-lez p1, :cond_18

    .line 376
    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 377
    .local v0, "anim":Landroid/animation/Animator;
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 378
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 382
    .end local v0    # "anim":Landroid/animation/Animator;
    :goto_17
    return-void

    .line 380
    :cond_18
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->setAlpha(F)V

    goto :goto_17
.end method


# virtual methods
.method getCurrentMessage()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingMessage:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method getOwnerInfo()Ljava/lang/String;
    .registers 6

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 325
    .local v2, "res":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 326
    .local v0, "info":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled()Z

    move-result v1

    .line 327
    .local v1, "ownerInfoEnabled":Z
    if-eqz v1, :cond_21

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingMessage:Z

    if-nez v3, :cond_21

    .line 328
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 330
    :cond_21
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    .line 418
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 420
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 421
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 422
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 423
    const-string v1, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 425
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$5;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$5;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 437
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 438
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->refreshCMASInfo()V

    .line 440
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_29
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 444
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 447
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_e

    .line 448
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 450
    :cond_e
    return-void
.end method

.method public refreshCMASInfo()V
    .registers 3

    .prologue
    .line 473
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getCMASCount()V

    .line 474
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mPrevShowingCMASText:Z

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingCMASText:Z

    if-eq v0, v1, :cond_10

    .line 475
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->update()V

    .line 476
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingCMASText:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mPrevShowingCMASText:Z

    .line 478
    :cond_10
    return-void
.end method

.method public securityMessageChanged()V
    .registers 8

    .prologue
    .line 232
    const/high16 v0, 0x3f800000

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->setAlpha(F)V

    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingMessage:Z

    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mConnectPCbyUSB:Z

    .line 235
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->update()V

    .line 236
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 237
    iget-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_26

    .line 238
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 240
    :cond_26
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->ANNOUNCE_TOKEN:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 241
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$AnnounceRunnable;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$AnnounceRunnable;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->ANNOUNCE_TOKEN:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0xfa

    add-long/2addr v3, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 243
    return-void
.end method

.method update()V
    .registers 11

    .prologue
    const v9, 0x10804ec

    const v8, 0x10408ab

    const/4 v7, 0x0

    .line 253
    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->DEBUG:Z

    if-eqz v4, :cond_2b

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 254
    const-string v4, "CMASMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[update] mShowingCMASText is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingCMASText:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_2b
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingCMASText:Z

    if-eqz v4, :cond_9b

    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, "cmasText":Ljava/lang/String;
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mCMASIcon:I

    .line 259
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 260
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isPresidentialCMASFeature()Z

    move-result v4

    if-eqz v4, :cond_65

    .line 261
    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->DEBUG:Z

    if-eqz v4, :cond_49

    const-string v4, "CMASMessage"

    const-string v5, "[update] show cmas text - SPR!! "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_49
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10408ac

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 263
    const v4, 0x10804ed

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mCMASIcon:I

    .line 276
    :goto_59
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mCMASIcon:I

    invoke-virtual {p0, v4, v7, v7, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 278
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->invalidate()V

    .line 300
    .end local v0    # "cmasText":Ljava/lang/String;
    :cond_64
    :goto_64
    return-void

    .line 264
    .restart local v0    # "cmasText":Ljava/lang/String;
    :cond_65
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isVZWFeature()Z

    move-result v4

    if-eqz v4, :cond_84

    .line 265
    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->DEBUG:Z

    if-eqz v4, :cond_76

    const-string v4, "CMASMessage"

    const-string v5, "[update] show cmas text - No SPR!! "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_76
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 267
    const v4, 0x10804ee

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mCMASIcon:I

    goto :goto_59

    .line 269
    :cond_84
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 270
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mCMASIcon:I

    goto :goto_59

    .line 273
    :cond_8f
    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->DEBUG:Z

    if-eqz v4, :cond_64

    const-string v4, "CMASMessage"

    const-string v5, "[update] No show cmas text !! "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    .line 282
    .end local v0    # "cmasText":Ljava/lang/String;
    :cond_9b
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mConnectPCbyUSB:Z

    if-eqz v4, :cond_b1

    .line 283
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040906

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "connectGuideText":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->setText(Ljava/lang/CharSequence;)V

    .line 285
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->invalidate()V

    goto :goto_64

    .line 289
    .end local v1    # "connectGuideText":Ljava/lang/String;
    :cond_b1
    new-instance v2, Llibcore/util/MutableInt;

    invoke-direct {v2, v7}, Llibcore/util/MutableInt;-><init>(I)V

    .line 290
    .local v2, "icon":Llibcore/util/MutableInt;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/CharSequence;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getChargeInfo(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getCurrentMessage()Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 291
    .local v3, "status":Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v4

    if-eqz v4, :cond_e5

    .line 292
    invoke-virtual {p0, v7, v7, v7, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 293
    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->DEBUG:Z

    if-eqz v4, :cond_de

    .line 294
    const-string v4, "CMASMessage"

    const-string v5, "CMASIcon was GONE : "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_de
    :goto_de
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->setText(Ljava/lang/CharSequence;)V

    .line 299
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->invalidate()V

    goto :goto_64

    .line 296
    :cond_e5
    iget v4, v2, Llibcore/util/MutableInt;->value:I

    invoke-virtual {p0, v4, v7, v7, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_de
.end method
