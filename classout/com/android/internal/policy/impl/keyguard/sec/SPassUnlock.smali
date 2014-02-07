.class public Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;
.super Ljava/lang/Object;
.source "SPassUnlock.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
.implements Ljava/util/EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;
    }
.end annotation


# static fields
.field private static final ACTION_LAUNCH_SHORTCUT:Ljava/lang/String; = "com.samsung.android.secretmode.action.LAUNCH_SHORTCUT"

.field private static final CONTACT_NUMBER_SEPERATOR:C = ','

.field private static final DB_DRIVING_MODE_ON:Ljava/lang/String; = "driving_mode_on"

.field private static final DEBUG:Z = true

.field private static final PACKAGE_CLASS_SEPERATOR:C = '/'

.field private static final PERM_NAME_APP:Ljava/lang/String; = "com.android.settings.permission.shortcut_app"

.field private static final PERM_NAME_BOOKMARK:Ljava/lang/String; = "com.android.settings.permission.shortcut_bookmark"

.field private static final PERM_NAME_CONTACT:Ljava/lang/String; = "com.android.settings.permission.shortcut_contact"

.field private static final PERM_NAME_DRIVINGMODE:Ljava/lang/String; = "com.android.settings.permission.shortcut_drivingmode"

.field private static final PERM_NAME_KIDSMODE:Ljava/lang/String; = "com.android.settings.permission.shortcut_kidsmode"

.field private static final SECRET_FS_KEY:Ljava/lang/String; = "secret_fs_key"

.field private static final SHORTCUT_LAUNCHER_COMPONENT:Landroid/content/ComponentName;

.field private static final SHORTCUT_SEPERATOR:C = ';'

.field private static final TAG:Ljava/lang/String; = "SPassUnlock"

.field private static mStatusText:Landroid/widget/TextView;

.field private static mUnlockImg:Landroid/widget/ImageView;


# instance fields
.field private final MSG_CANCEL:I

.field private final MSG_POKE_WAKELOCK:I

.field private final MSG_READY:I

.field private final MSG_REPORT_FAILED_ATTEMPT:I

.field private final MSG_SCANNING_CANCEL:I

.field private final MSG_UNLOCK:I

.field private final SCREEN_TIMEOUT:I

.field private ani:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;

.field private aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private bRegisterClient:Z

.field private final mContext:Landroid/content/Context;

.field private mErrorText:Ljava/lang/String;

.field private mExpiredTime:J

.field private mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

.field private mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mHandler:Landroid/os/Handler;

.field private mImageQuality:I

.field private mIsFinishedIdentify:Z

.field private mIsFinishedScanning:Z

.field private volatile mIsRunning:Z

.field private mIsSucceed:Z

.field mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mPowerManager:Landroid/os/PowerManager;

.field private mSPassUnlockView:Landroid/view/View;

.field private mShortcutIntent:Landroid/content/Intent;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 94
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.secretmode.service"

    const-string v2, "com.samsung.android.secretmode.service.SecretModeService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->SHORTCUT_LAUNCHER_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 171
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 56
    const/16 v0, 0x458

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->MSG_UNLOCK:I

    .line 57
    const/16 v0, 0x459

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->MSG_CANCEL:I

    .line 58
    const/16 v0, 0x45a

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->MSG_REPORT_FAILED_ATTEMPT:I

    .line 59
    const/16 v0, 0x45b

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->MSG_POKE_WAKELOCK:I

    .line 60
    const/16 v0, 0x45c

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->MSG_READY:I

    .line 61
    const/16 v0, 0x45d

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->MSG_SCANNING_CANCEL:I

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mIsRunning:Z

    .line 88
    const/16 v0, 0x7530

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->SCREEN_TIMEOUT:I

    .line 99
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$1;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    .line 172
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    .line 173
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 174
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    .line 175
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mIsFinishedScanning:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mIsFinishedIdentify:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mIsSucceed:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->startFailedAnimation()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->startSucceedAnimation()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->startIdentify()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->startStandbyAnimation()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mShortcutIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private pokeWakelock()V
    .registers 4

    .prologue
    .line 458
    const-string v1, "SPassUnlock"

    const-string v2, "pokeWakelock()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x45b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 460
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 461
    return-void
.end method

.method private registerClient()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 438
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 439
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-nez v3, :cond_f

    .line 447
    :goto_e
    return v2

    .line 443
    :cond_f
    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    const-string v3, "system"

    invoke-direct {v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;-><init>(Ljava/lang/String;)V

    .line 444
    .local v0, "builder":Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->demandExtraEvent(Z)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    .line 445
    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->useManualTimeout(Z)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    .line 446
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->build()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mToken:Landroid/os/IBinder;

    .line 447
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mToken:Landroid/os/IBinder;

    if-eqz v3, :cond_30

    :goto_2e
    move v2, v1

    goto :goto_e

    :cond_30
    move v1, v2

    goto :goto_2e
.end method

.method private setErrorCaseText(I)V
    .registers 5
    .param p1, "quality"    # I

    .prologue
    .line 562
    sparse-switch p1, :sswitch_data_c8

    .line 594
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    const v1, 0x1040025

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mErrorText:Ljava/lang/String;

    .line 598
    :goto_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mErrorText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mErrorText:Ljava/lang/String;

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mErrorText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    const v2, 0x1040026

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mErrorText:Ljava/lang/String;

    .line 600
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mStatusText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mErrorText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 601
    return-void

    .line 564
    :sswitch_4b
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    const v1, 0x1040029

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mErrorText:Ljava/lang/String;

    goto :goto_e

    .line 567
    :sswitch_57
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    const v1, 0x1040027

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mErrorText:Ljava/lang/String;

    goto :goto_e

    .line 570
    :sswitch_63
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    const v1, 0x1040028

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mErrorText:Ljava/lang/String;

    goto :goto_e

    .line 573
    :sswitch_6f
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    const v1, 0x1040031

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mErrorText:Ljava/lang/String;

    goto :goto_e

    .line 576
    :sswitch_7b
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    const v1, 0x104002f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mErrorText:Ljava/lang/String;

    goto :goto_e

    .line 579
    :sswitch_87
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    const v1, 0x104002a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mErrorText:Ljava/lang/String;

    goto/16 :goto_e

    .line 582
    :sswitch_94
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    const v1, 0x104002e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mErrorText:Ljava/lang/String;

    goto/16 :goto_e

    .line 585
    :sswitch_a1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    const v1, 0x1040030

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mErrorText:Ljava/lang/String;

    goto/16 :goto_e

    .line 588
    :sswitch_ae
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    const v1, 0x104002c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mErrorText:Ljava/lang/String;

    goto/16 :goto_e

    .line 591
    :sswitch_bb
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    const v1, 0x104002d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mErrorText:Ljava/lang/String;

    goto/16 :goto_e

    .line 562
    :sswitch_data_c8
    .sparse-switch
        0x1 -> :sswitch_bb
        0x2 -> :sswitch_4b
        0x4 -> :sswitch_57
        0x10 -> :sswitch_63
        0x1000 -> :sswitch_87
        0x8000 -> :sswitch_6f
        0x10000 -> :sswitch_7b
        0x80000 -> :sswitch_94
        0x1000000 -> :sswitch_a1
        0x2000000 -> :sswitch_ae
    .end sparse-switch
.end method

.method private startFailedAnimation()V
    .registers 4

    .prologue
    .line 492
    const-string v1, "SPassUnlock"

    const-string v2, "startFailedAnimation()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->ani:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;

    if-eqz v1, :cond_10

    .line 495
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->ani:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;->stop()V

    .line 497
    :cond_10
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 498
    .local v0, "monitor":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mUnlockImg:Landroid/widget/ImageView;

    const v2, 0x10a0011

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 499
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mUnlockImg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 500
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$3;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$3;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;Landroid/graphics/drawable/AnimationDrawable;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->ani:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;

    .line 511
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->ani:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;->start()V

    .line 512
    return-void
.end method

.method private startIdentify()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 219
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->bRegisterClient:Z

    if-eqz v0, :cond_6

    .line 230
    :cond_5
    :goto_5
    return v3

    .line 222
    :cond_6
    const-string v0, "SPassUnlock"

    const-string v1, "start()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->registerClient()Z

    .line 224
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->bRegisterClient:Z

    .line 226
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->identify(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 227
    const-string v0, "SPassUnlock"

    const-string v1, "identify request failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private startScanningAnimation()V
    .registers 4

    .prologue
    .line 464
    const-string v0, "SPassUnlock"

    const-string v1, "startScanningAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->ani:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;

    if-eqz v0, :cond_10

    .line 467
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->ani:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;->stop()V

    .line 469
    :cond_10
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mStatusText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    const v2, 0x1040023

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mUnlockImg:Landroid/widget/ImageView;

    const v1, 0x10a000f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 471
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mUnlockImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 472
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$2;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$2;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;Landroid/graphics/drawable/AnimationDrawable;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->ani:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;

    .line 488
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->ani:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;->start()V

    .line 489
    return-void
.end method

.method private startShortcut(ILjava/lang/String;)V
    .registers 6
    .param p1, "fingerIndex"    # I
    .param p2, "permissionName"    # Ljava/lang/String;

    .prologue
    .line 553
    const-string v0, "SPassUnlock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startShortcut() : fingerIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " permissionName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.secretmode.action.LAUNCH_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mShortcutIntent:Landroid/content/Intent;

    .line 555
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mShortcutIntent:Landroid/content/Intent;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->SHORTCUT_LAUNCHER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 556
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mShortcutIntent:Landroid/content/Intent;

    const-string v1, "commandName"

    const-string v2, "fingerprintShortcut"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mShortcutIntent:Landroid/content/Intent;

    const-string v1, "permissionName"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 558
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mShortcutIntent:Landroid/content/Intent;

    const-string v1, "fingerIndex"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 559
    return-void
.end method

.method private startStandbyAnimation()V
    .registers 3

    .prologue
    .line 537
    const-string v0, "SPassUnlock"

    const-string v1, "startStandbyAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->ani:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;

    if-eqz v0, :cond_10

    .line 539
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->ani:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;->stop()V

    .line 541
    :cond_10
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mUnlockImg:Landroid/widget/ImageView;

    const v1, 0x10a0012

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 542
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mUnlockImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 543
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$5;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$5;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;Landroid/graphics/drawable/AnimationDrawable;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->ani:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;

    .line 549
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->ani:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;->start()V

    .line 550
    return-void
.end method

.method private startSucceedAnimation()V
    .registers 4

    .prologue
    .line 515
    const-string v0, "SPassUnlock"

    const-string v1, "startSucceedAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->ani:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;

    if-eqz v0, :cond_10

    .line 518
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->ani:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;->stop()V

    .line 520
    :cond_10
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mUnlockImg:Landroid/widget/ImageView;

    const v1, 0x10a0010

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 521
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mStatusText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    const v2, 0x1040024

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mUnlockImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 523
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$4;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$4;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;Landroid/graphics/drawable/AnimationDrawable;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->ani:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;

    .line 533
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->ani:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;->start()V

    .line 534
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .registers 3

    .prologue
    .line 264
    const-string v0, "SPassUnlock"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mShortcutIntent:Landroid/content/Intent;

    .line 266
    return-void
.end method

.method public getQuality()I
    .registers 2

    .prologue
    .line 272
    const/high16 v0, 0x80000

    return v0
.end method

.method handleCancel()V
    .registers 4

    .prologue
    .line 410
    const-string v0, "SPassUnlock"

    const-string v1, "handleCancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 414
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Biometric:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->showBackupSecurity(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 415
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 416
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v10, 0xc

    const/16 v9, 0x45d

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 281
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/fingerprint/FingerprintEvent;

    .line 283
    .local v1, "event":Lcom/samsung/android/fingerprint/FingerprintEvent;
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_1f0

    .line 390
    const-string v7, "SPassUnlock"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unhandled message = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :goto_29
    return v6

    .line 285
    :sswitch_2a
    const-string v6, "SPassUnlock"

    const-string v8, "handleMessage : MSG_UNLOCK"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->handleUnlock()V

    :cond_34
    :goto_34
    move v6, v7

    .line 394
    goto :goto_29

    .line 289
    :sswitch_36
    const-string v6, "SPassUnlock"

    const-string v8, "handleMessage : MSG_CANCEL"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->handleCancel()V

    goto :goto_34

    .line 293
    :sswitch_41
    const-string v6, "SPassUnlock"

    const-string v8, "handleMessage : MSG_REPORT_FAILED_ATTEMPT"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->handleReportFailedAttempt()V

    goto :goto_34

    .line 297
    :sswitch_4c
    const-string v6, "SPassUnlock"

    const-string v8, "handleMessage : MSG_POKE_WAKELOCK"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->handlePokeWakelock()V

    goto :goto_34

    .line 302
    :sswitch_57
    const-string v8, "SPassUnlock"

    const-string v9, "handleMessage : EVENT_IDENTIFY_STARTED"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mImageQuality:I

    .line 304
    iget-wide v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mExpiredTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v6, v8, v10

    if-lez v6, :cond_6d

    .line 305
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->pokeWakelock()V

    .line 308
    :cond_6d
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->startScanningAnimation()V

    goto :goto_34

    .line 312
    :sswitch_71
    const-string v6, "SPassUnlock"

    const-string v8, "handleMessage : EVENT_FINGER_REMOVED"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 314
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v9, 0x7d0

    invoke-virtual {v6, v8, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_34

    .line 318
    :sswitch_8b
    const-string v8, "SPassUnlock"

    const-string v9, "handleMessage : EVENT_IDENTIFY_READY"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mIsFinishedScanning:Z

    .line 320
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mIsFinishedIdentify:Z

    goto :goto_34

    .line 324
    :sswitch_97
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 325
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mShortcutIntent:Landroid/content/Intent;

    .line 326
    iget v8, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-nez v8, :cond_119

    .line 327
    const-string v8, "SPassUnlock"

    const-string v9, "handleMessage : RESULT_SUCCESS"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->stopIdentify()Z

    .line 329
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_fingerprint_shortcut"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_10a

    move v0, v7

    .line 330
    .local v0, "bEnableShorcut":Z
    :goto_bc
    if-eqz v0, :cond_10c

    .line 331
    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getGrantedPermissions()Ljava/util/List;

    move-result-object v5

    .line 332
    .local v5, "perms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_c6
    :goto_c6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 333
    .local v4, "permName":Ljava/lang/String;
    const-string v6, "com.android.settings.permission.shortcut_app"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_102

    const-string v6, "com.android.settings.permission.shortcut_app"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_102

    const-string v6, "com.android.settings.permission.shortcut_contact"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_102

    const-string v6, "com.android.settings.permission.shortcut_bookmark"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_102

    const-string v6, "com.android.settings.permission.shortcut_kidsmode"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_102

    const-string v6, "com.android.settings.permission.shortcut_drivingmode"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c6

    .line 339
    :cond_102
    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getFingerIndex()I

    move-result v2

    .line 340
    .local v2, "fingerIndex":I
    invoke-direct {p0, v2, v4}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->startShortcut(ILjava/lang/String;)V

    goto :goto_c6

    .end local v0    # "bEnableShorcut":Z
    .end local v2    # "fingerIndex":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "permName":Ljava/lang/String;
    .end local v5    # "perms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_10a
    move v0, v6

    .line 329
    goto :goto_bc

    .line 344
    .restart local v0    # "bEnableShorcut":Z
    :cond_10c
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mIsFinishedIdentify:Z

    .line 345
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mIsSucceed:Z

    .line 346
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mIsFinishedScanning:Z

    if-eqz v6, :cond_34

    .line 347
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->startSucceedAnimation()V

    goto/16 :goto_34

    .line 349
    .end local v0    # "bEnableShorcut":Z
    :cond_119
    iget v8, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_34

    .line 350
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->stopIdentify()Z

    .line 351
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mIsFinishedIdentify:Z

    .line 352
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mIsSucceed:Z

    .line 353
    iget v8, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v9, 0x8

    if-ne v8, v9, :cond_147

    .line 354
    const-string v6, "SPassUnlock"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessage : RESULT_FAILED eventStatus = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_34

    .line 355
    :cond_147
    iget v8, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    if-ne v8, v10, :cond_185

    .line 356
    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getImageQuality()I

    move-result v6

    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mImageQuality:I

    .line 357
    const-string v6, "SPassUnlock"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessage : RESULT_FAILED eventStatus = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " quality = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mImageQuality:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mImageQuality:I

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->setErrorCaseText(I)V

    .line 359
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mIsFinishedScanning:Z

    if-eqz v6, :cond_34

    .line 360
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->startFailedAnimation()V

    goto/16 :goto_34

    .line 363
    :cond_185
    const-string v8, "SPassUnlock"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleMessage : RESULT_FAILED eventStatus = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->setErrorCaseText(I)V

    .line 365
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mIsFinishedScanning:Z

    if-eqz v6, :cond_34

    .line 366
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->startFailedAnimation()V

    goto/16 :goto_34

    .line 373
    :sswitch_1ab
    const-string v6, "SPassUnlock"

    const-string v8, "handleMessage : EVENT_IDENTIFY_STATUS"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget v6, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    if-ne v6, v10, :cond_34

    .line 375
    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getImageQuality()I

    move-result v6

    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mImageQuality:I

    .line 376
    const-string v6, "SPassUnlock"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "quality = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mImageQuality:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_34

    .line 381
    :sswitch_1d8
    const-string v8, "SPassUnlock"

    const-string v9, "handleMessage : MSG_SCANNING_CANCEL"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->stopIdentify()Z

    .line 383
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mIsFinishedIdentify:Z

    .line 384
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mIsSucceed:Z

    .line 385
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mImageQuality:I

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->setErrorCaseText(I)V

    .line 386
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->startFailedAnimation()V

    goto/16 :goto_34

    .line 283
    :sswitch_data_1f0
    .sparse-switch
        0xb -> :sswitch_8b
        0xc -> :sswitch_57
        0xd -> :sswitch_97
        0xe -> :sswitch_1ab
        0x3f3 -> :sswitch_71
        0x458 -> :sswitch_2a
        0x459 -> :sswitch_36
        0x45a -> :sswitch_41
        0x45b -> :sswitch_4c
        0x45d -> :sswitch_1d8
    .end sparse-switch
.end method

.method handlePokeWakelock()V
    .registers 4

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 433
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 435
    :cond_f
    return-void
.end method

.method handleReportFailedAttempt()V
    .registers 3

    .prologue
    .line 422
    const-string v0, "SPassUnlock"

    const-string v1, "handleReportFailedAttempt()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 424
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->reportFailedUnlockAttempt()V

    .line 425
    return-void
.end method

.method handleUnlock()V
    .registers 3

    .prologue
    .line 401
    const-string v0, "SPassUnlock"

    const-string v1, "handleUnlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->reportSuccessfulUnlockAttempt()V

    .line 403
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 404
    return-void
.end method

.method public initializeView(Landroid/view/View;)V
    .registers 4
    .param p1, "biometricUnlockView"    # Landroid/view/View;

    .prologue
    .line 182
    const-string v0, "SPassUnlock"

    const-string v1, "initializeView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mSPassUnlockView:Landroid/view/View;

    .line 184
    return-void
.end method

.method public initializeViews(Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .param p1, "status"    # Landroid/view/View;
    .param p2, "unlock"    # Landroid/view/View;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mPowerManager:Landroid/os/PowerManager;

    .line 188
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "status":Landroid/view/View;
    sput-object p1, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mStatusText:Landroid/widget/TextView;

    .line 189
    check-cast p2, Landroid/widget/ImageView;

    .end local p2    # "unlock":Landroid/view/View;
    sput-object p2, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mUnlockImg:Landroid/widget/ImageView;

    .line 190
    return-void
.end method

.method public isRunning()Z
    .registers 2

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mIsRunning:Z

    return v0
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .registers 2
    .param p1, "keyguardScreenCallback"    # Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 179
    return-void
.end method

.method public start()Z
    .registers 5

    .prologue
    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mExpiredTime:J

    .line 213
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->startStandbyAnimation()V

    .line 214
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mStatusText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mContext:Landroid/content/Context;

    const v2, 0x1040963

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->startIdentify()Z

    move-result v0

    return v0
.end method

.method public stop()Z
    .registers 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->ani:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;

    if-eqz v0, :cond_9

    .line 238
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->ani:Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock$AnimationDrawableListener;->stop()V

    .line 241
    :cond_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 242
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x45d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 243
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mStatusText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->stopIdentify()Z

    move-result v0

    return v0
.end method

.method public stopAndShowBackup()V
    .registers 3

    .prologue
    .line 203
    const-string v0, "SPassUnlock"

    const-string v1, "stopAndShowBackup()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x459

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 205
    return-void
.end method

.method public stopIdentify()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 249
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->bRegisterClient:Z

    if-nez v0, :cond_6

    .line 257
    :goto_5
    return v2

    .line 252
    :cond_6
    const-string v0, "SPassUnlock"

    const-string v1, "stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->unregisterClient()V

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->bRegisterClient:Z

    goto :goto_5
.end method

.method public unregisterClient()V
    .registers 3

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_12

    .line 452
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterClient(Landroid/os/IBinder;)Z

    .line 453
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->mToken:Landroid/os/IBinder;

    .line 455
    :cond_12
    return-void
.end method
