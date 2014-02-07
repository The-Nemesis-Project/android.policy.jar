.class public Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DisplayClientState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_SIM_STATES:Z = false

.field private static final FAILED_BIOMETRIC_UNLOCK_ATTEMPTS_BEFORE_BACKUP:I = 0x3

.field private static final FLIPBOARD_KEY_APP_PACKAGE:Ljava/lang/String; = "fb_app_package"

.field private static final FLIPBOARD_KEY_AUTHOR:Ljava/lang/String; = "fb_author"

.field private static final FLIPBOARD_KEY_GET_MORE:Ljava/lang/String; = "fb_get_more"

.field private static final FLIPBOARD_KEY_ID:Ljava/lang/String; = "fb_id"

.field private static final FLIPBOARD_KEY_SOURCE:Ljava/lang/String; = "fb_source"

.field private static final FLIPBOARD_KEY_STREAM_ID:Ljava/lang/String; = "fb_stream_id"

.field private static final FLIPBOARD_KEY_TARGET:Ljava/lang/String; = "fb_target"

.field private static final FLIPBOARD_KEY_TIME:Ljava/lang/String; = "fb_time"

.field private static final FLIPBOARD_KEY_TITLE:Ljava/lang/String; = "fb_title"

.field private static final FLIPBOARD_KEY_TOTAL_ITEM_CNT:Ljava/lang/String; = "fb_total_item_cnt"

.field private static final FLIPBOARD_KEY_WALLPAPER_PATH:Ljava/lang/String; = "fb_wallpaper_path"

.field private static final LOW_BATTERY_THRESHOLD:I = 0x14

.field private static final MSG_AIRPLANE_UPDATE:I = 0x13e

.field private static final MSG_BATTERY_UPDATE:I = 0x12e

.field protected static final MSG_BOOT_COMPLETED:I = 0x139

.field private static final MSG_CARRIER_INFO_UPDATE:I = 0x12f

.field private static final MSG_CLOCK_VISIBILITY_CHANGED:I = 0x133

.field private static final MSG_DEVICE_PROVISIONED:I = 0x134

.field private static final MSG_DPM_STATE_CHANGED:I = 0x135

.field private static final MSG_FLIPBOARD_DATA_UPDATED:I = 0x1f7

.field private static final MSG_GO_TO_UNLOCK_SCREEN:I = 0x1f5

.field private static final MSG_KEYGUARD_VISIBILITY_CHANGED:I = 0x138

.field private static final MSG_PHONE_STATE_CHANGED:I = 0x132

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x131

.field private static final MSG_SET_CURRENT_CLIENT_ID:I = 0x13b

.field protected static final MSG_SET_PLAYBACK_STATE:I = 0x13c

.field private static final MSG_SIM_STATE_CHANGE:I = 0x130

.field private static final MSG_TIME_UPDATE:I = 0x12d

.field protected static final MSG_USER_INFO_CHANGED:I = 0x13d

.field private static final MSG_USER_REMOVED:I = 0x137

.field private static final MSG_USER_SWITCHING:I = 0x136

.field private static final MSG_USER_SWITCH_COMPLETE:I = 0x13a

.field private static final SAMSUNG_FLIPBOARD_DATA_UPDATED:Ljava/lang/String; = "com.samsung.fb.DATA_UPDATED"

.field private static final SAMSUNG_PEN_INSERT_ACTION:Ljava/lang/String; = "com.samsung.pen.INSERT"

.field private static final TAG:Ljava/lang/String; = "KeyguardUpdateMonitor"

.field private static mSlotSwitching:I

.field private static sInstance:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;


# instance fields
.field private mAlternateUnlockEnabled:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBatteryStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

.field private mBootCompleted:Z

.field private final mBroadcastAllReceiver:Landroid/content/BroadcastReceiver;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mClockVisible:Z

.field private final mContext:Landroid/content/Context;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceProvisioned:Z

.field private mDeviceProvisionedObserver:Landroid/database/ContentObserver;

.field private mDisplayClientState:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DisplayClientState;

.field private mFailedAttempts:I

.field private mFailedBiometricUnlockAttempts:I

.field private mFlipboardItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mIsSimStateReadyInAirplaneMode:Z

.field private mKeyguardIsVisible:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPhoneState:I

.field private mPrevSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private final mRemoteControlDisplay:Landroid/media/IRemoteControlDisplay$Stub;

.field private mRingMode:I

.field private mShowPlmn:Z

.field private mShowPlmn2:Z

.field private mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mSlotSwitchingPlmnSlot2:Ljava/lang/CharSequence;

.field private mSwitchingUser:Z

.field private mTelephonyPlmn:Ljava/lang/CharSequence;

.field private mTelephonyPlmnSlot2:Ljava/lang/CharSequence;

.field private mTelephonySpn:Ljava/lang/CharSequence;

.field private mTelephonySpnSlot2:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 138
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSlotSwitching:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 563
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 130
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 131
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPrevSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 153
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:I

    .line 154
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    .line 163
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mShowPlmn:Z

    .line 164
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mShowPlmn2:Z

    .line 166
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 171
    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 186
    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFlipboardItemList:Ljava/util/ArrayList;

    .line 188
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    .line 266
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DisplayClientState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDisplayClientState:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    .line 273
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mRemoteControlDisplay:Landroid/media/IRemoteControlDisplay$Stub;

    .line 307
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 388
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBroadcastAllReceiver:Landroid/content/BroadcastReceiver;

    .line 564
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    .line 565
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 567
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 570
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-nez v0, :cond_58

    .line 571
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->watchForDeviceProvisioning()V

    .line 574
    :cond_58
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mIsSimStateReadyInAirplaneMode:Z

    .line 577
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 578
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    const/4 v1, 0x1

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2, v5, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .line 579
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    .line 580
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmnSlot2:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSlotSwitchingPlmnSlot2:Ljava/lang/CharSequence;

    .line 583
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 584
    .local v8, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.TIME_TICK"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 585
    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 586
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 587
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 588
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 589
    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 590
    const-string v0, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 591
    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 592
    const-string v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 593
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 594
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 595
    const-string v0, "com.samsung.pen.INSERT"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 596
    const-string v0, "com.samsung.fb.DATA_UPDATED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 599
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 600
    .local v6, "bootCompleteFilter":Landroid/content/IntentFilter;
    const/16 v0, 0x3e8

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 601
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 604
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.USER_INFO_CHANGED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 605
    .local v3, "userInfoFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBroadcastAllReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 609
    :try_start_e5
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$5;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$5;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_f1
    .catch Landroid/os/RemoteException; {:try_start_e5 .. :try_end_f1} :catch_f2

    .line 628
    :goto_f1
    return-void

    .line 624
    :catch_f2
    move-exception v7

    .line 626
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_f1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleTimeUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleBatteryUpdate(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getTelephonyPlmnFromDualMode(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getTelephonySpnFromDualMode(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800()I
    .registers 1

    .prologue
    .line 85
    sget v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSlotSwitching:I

    return v0
.end method

.method static synthetic access$1802(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 85
    sput p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSlotSwitching:I

    return p0
.end method

.method static synthetic access$1902(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmnSlot2:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleCarrierInfoUpdate()V

    return-void
.end method

.method static synthetic access$2002(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSlotSwitchingPlmnSlot2:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleClockVisibilityChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleAirplaneUpdate(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleKeyguardVisibilityChanged(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleGoToUnlockScreen()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleUserInfoChanged(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleFlipboardDataUpdated(Landroid/os/Bundle;)V

    return-void
.end method

.method private concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 8
    .param p1, "plmn"    # Ljava/lang/CharSequence;
    .param p2, "spn"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 900
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_37

    move v0, v2

    .line 901
    .local v0, "plmnValid":Z
    :goto_9
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_39

    move v1, v2

    .line 903
    .local v1, "spnValid":Z
    :goto_10
    if-eqz v0, :cond_3b

    if-eqz v1, :cond_3b

    .line 904
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104090e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 910
    .end local p1    # "plmn":Ljava/lang/CharSequence;
    :cond_36
    :goto_36
    return-object p1

    .end local v0    # "plmnValid":Z
    .end local v1    # "spnValid":Z
    .restart local p1    # "plmn":Ljava/lang/CharSequence;
    :cond_37
    move v0, v3

    .line 900
    goto :goto_9

    .restart local v0    # "plmnValid":Z
    :cond_39
    move v1, v3

    .line 901
    goto :goto_10

    .line 905
    .restart local v1    # "spnValid":Z
    :cond_3b
    if-nez v0, :cond_36

    .line 907
    if-eqz v1, :cond_41

    move-object p1, p2

    .line 908
    goto :goto_36

    .line 910
    :cond_41
    const-string p1, ""

    goto :goto_36
.end method

.method private getDefaultPlmn()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 1041
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isCTCFeature()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1042
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104085c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1045
    :goto_13
    return-object v0

    :cond_14
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040508

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_13
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 516
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sInstance:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    if-nez v0, :cond_b

    .line 517
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sInstance:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    .line 519
    :cond_b
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sInstance:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method private getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1030
    const-string v1, "showPlmn"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1031
    const-string v1, "plmn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1032
    .local v0, "plmn":Ljava/lang/String;
    if-eqz v0, :cond_12

    .line 1034
    .end local v0    # "plmn":Ljava/lang/String;
    :goto_11
    return-object v0

    .line 1032
    .restart local v0    # "plmn":Ljava/lang/String;
    :cond_12
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_11

    .line 1034
    .end local v0    # "plmn":Ljava/lang/String;
    :cond_17
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private getTelephonyPlmnFromDualMode(Landroid/content/Intent;)V
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1069
    const-string v4, "showPlmn"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_ff

    .line 1070
    const/4 v1, 0x0

    .line 1071
    .local v1, "PhoneIdx":I
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1080
    :cond_12
    const-string v4, "phoneIndex"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1081
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1091
    :cond_1e
    const-string v4, "plmn"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1093
    .local v3, "plmn":Ljava/lang/String;
    const-string v4, "KeyguardUpdateMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTelephonyPlmnFromDualMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " plmn : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    if-nez v1, :cond_54

    .line 1095
    if-eqz v3, :cond_4f

    .end local v3    # "plmn":Ljava/lang/String;
    :goto_4a
    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    .line 1096
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mShowPlmn:Z

    .line 1134
    .end local v1    # "PhoneIdx":I
    :cond_4e
    :goto_4e
    return-void

    .line 1095
    .restart local v1    # "PhoneIdx":I
    .restart local v3    # "plmn":Ljava/lang/String;
    :cond_4f
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_4a

    .line 1097
    :cond_54
    if-ne v1, v8, :cond_4e

    .line 1098
    if-eqz v3, :cond_a6

    .end local v3    # "plmn":Ljava/lang/String;
    :goto_58
    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmnSlot2:Ljava/lang/CharSequence;

    .line 1099
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mShowPlmn2:Z

    .line 1100
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "switching.slot"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSlotSwitching:I

    .line 1101
    sget v4, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSlotSwitching:I

    if-ne v4, v8, :cond_4e

    .line 1102
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v8, :cond_ab

    .line 1103
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10401d9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSlotSwitchingPlmnSlot2:Ljava/lang/CharSequence;

    .line 1104
    const-string v4, "KeyguardUpdateMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTelephonyPlmnFromDualMode: AIRPLANE mSlotSwitchingPlmnSlot2 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSlotSwitchingPlmnSlot2:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 1098
    .restart local v3    # "plmn":Ljava/lang/String;
    :cond_a6
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_58

    .line 1108
    .end local v3    # "plmn":Ljava/lang/String;
    :cond_ab
    const-string v4, "gsm.sim.currentcardstatus"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1109
    .local v0, "CardStatus":I
    const/4 v4, 0x2

    if-ne v0, v4, :cond_ef

    .line 1110
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104085b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSlotSwitchingPlmnSlot2:Ljava/lang/CharSequence;

    .line 1113
    :goto_c9
    const-string v4, "KeyguardUpdateMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTelephonyPlmnFromDualMode: CardStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mSlotSwitchingPlmnSlot2 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSlotSwitchingPlmnSlot2:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4e

    .line 1112
    :cond_ef
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104085c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSlotSwitchingPlmnSlot2:Ljava/lang/CharSequence;

    goto :goto_c9

    .line 1120
    .end local v0    # "CardStatus":I
    .end local v1    # "PhoneIdx":I
    :cond_ff
    const-string v4, "phoneIndex"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1121
    .local v2, "phneIndex":I
    if-nez v2, :cond_113

    .line 1122
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mShowPlmn:Z

    .line 1123
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v4

    if-nez v4, :cond_4e

    .line 1124
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    goto/16 :goto_4e

    .line 1127
    :cond_113
    if-ne v2, v8, :cond_4e

    .line 1128
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mShowPlmn2:Z

    .line 1129
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v4

    if-nez v4, :cond_4e

    .line 1130
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmnSlot2:Ljava/lang/CharSequence;

    goto/16 :goto_4e
.end method

.method private getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1054
    const-string v1, "showSpn"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1055
    const-string v1, "spn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1056
    .local v0, "spn":Ljava/lang/String;
    if-eqz v0, :cond_12

    .line 1060
    .end local v0    # "spn":Ljava/lang/String;
    :goto_11
    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private getTelephonySpnFromDualMode(Landroid/content/Intent;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 1142
    const-string v2, "phoneIndex"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1143
    .local v0, "PhoneIdx":I
    const-string v2, "spn"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1145
    .local v1, "spn":Ljava/lang/String;
    const-string v2, "showSpn"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1147
    if-eqz v1, :cond_3f

    .line 1148
    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTelephonySpnFromDualMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " spn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    if-nez v0, :cond_40

    .line 1150
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    .line 1165
    :cond_3f
    :goto_3f
    return-void

    .line 1152
    :cond_40
    if-ne v0, v5, :cond_3f

    .line 1153
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpnSlot2:Ljava/lang/CharSequence;

    goto :goto_3f

    .line 1159
    :cond_45
    if-nez v0, :cond_4a

    .line 1160
    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    goto :goto_3f

    .line 1161
    :cond_4a
    if-ne v0, v5, :cond_3f

    .line 1162
    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpnSlot2:Ljava/lang/CharSequence;

    goto :goto_3f
.end method

.method private handleAirplaneUpdate(I)V
    .registers 6
    .param p1, "on"    # I

    .prologue
    .line 705
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_64

    .line 706
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 707
    .local v0, "cb":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_35

    .line 708
    const/4 v2, 0x1

    if-ne p1, v2, :cond_38

    .line 709
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v3, :cond_28

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_35

    .line 711
    :cond_28
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPrevSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 712
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 713
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 705
    :cond_35
    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 716
    :cond_38
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mIsSimStateReadyInAirplaneMode:Z

    if-eqz v2, :cond_4a

    .line 717
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 718
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPrevSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 719
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_35

    .line 720
    :cond_4a
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPrevSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v3, :cond_56

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPrevSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_35

    .line 722
    :cond_56
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPrevSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 723
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPrevSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 724
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_35

    .line 729
    .end local v0    # "cb":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_64
    return-void
.end method

.method private handleBatteryUpdate(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .registers 6
    .param p1, "status"    # Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    .line 835
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    invoke-static {v3, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isBatteryUpdateInteresting(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    .line 836
    .local v0, "batteryUpdateInteresting":Z
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .line 837
    if-eqz v0, :cond_29

    .line 838
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_29

    .line 839
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 840
    .local v1, "cb":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v1, :cond_26

    .line 841
    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRefreshBatteryInfo(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    .line 838
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 845
    .end local v1    # "cb":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    .end local v2    # "i":I
    :cond_29
    return-void
.end method

.method private handleCarrierInfoUpdate()V
    .registers 10

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 851
    const-string v4, "KeyguardUpdateMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleCarrierInfoUpdate: plmn = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", spn = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_29
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_109

    .line 855
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 856
    .local v0, "cb":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_88

    .line 857
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v4

    if-eqz v4, :cond_101

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->isPlmnEnabled()Z

    move-result v4

    if-eqz v4, :cond_101

    .line 858
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "switching.slot"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSlotSwitching:I

    .line 860
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getActiveSIMCount(Landroid/content/Context;)I

    move-result v4

    if-ne v4, v5, :cond_8b

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getWhichSIMOn(Landroid/content/Context;)I

    move-result v4

    if-ne v4, v5, :cond_8b

    move v3, v5

    .line 863
    .local v3, "onlyActiveSIM2":Z
    :goto_6c
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getActiveSIMCount(Landroid/content/Context;)I

    move-result v4

    if-ne v4, v5, :cond_8d

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getWhichSIMOn(Landroid/content/Context;)I

    move-result v4

    if-nez v4, :cond_8d

    move v2, v5

    .line 866
    .local v2, "onlyActiveSIM1":Z
    :goto_7d
    sget v4, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSlotSwitching:I

    if-ne v4, v5, :cond_8f

    .line 867
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmnSlot2:Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSlotSwitchingPlmnSlot2:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 854
    .end local v2    # "onlyActiveSIM1":Z
    .end local v3    # "onlyActiveSIM2":Z
    :cond_88
    :goto_88
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_8b
    move v3, v6

    .line 860
    goto :goto_6c

    .restart local v3    # "onlyActiveSIM2":Z
    :cond_8d
    move v2, v6

    .line 863
    goto :goto_7d

    .line 868
    .restart local v2    # "onlyActiveSIM1":Z
    :cond_8f
    if-eqz v2, :cond_9f

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v4

    if-nez v4, :cond_9f

    .line 869
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_88

    .line 870
    :cond_9f
    if-eqz v3, :cond_af

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v4

    if-nez v4, :cond_af

    .line 871
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmnSlot2:Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpnSlot2:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_88

    .line 875
    :cond_af
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isEurMultiSIMDevice()Z

    move-result v4

    if-eqz v4, :cond_c9

    .line 877
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    invoke-direct {p0, v4, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmnSlot2:Ljava/lang/CharSequence;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpnSlot2:Ljava/lang/CharSequence;

    invoke-direct {p0, v7, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_88

    .line 881
    :cond_c9
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mShowPlmn:Z

    if-eqz v4, :cond_d9

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mShowPlmn2:Z

    if-eqz v4, :cond_d9

    .line 882
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmnSlot2:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_88

    .line 883
    :cond_d9
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mShowPlmn:Z

    if-eqz v4, :cond_e9

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mShowPlmn2:Z

    if-nez v4, :cond_e9

    .line 884
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpnSlot2:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_88

    .line 885
    :cond_e9
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mShowPlmn:Z

    if-nez v4, :cond_f9

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mShowPlmn2:Z

    if-eqz v4, :cond_f9

    .line 886
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmnSlot2:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_88

    .line 888
    :cond_f9
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpnSlot2:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_88

    .line 893
    .end local v2    # "onlyActiveSIM1":Z
    .end local v3    # "onlyActiveSIM2":Z
    :cond_101
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_88

    .line 897
    .end local v0    # "cb":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_109
    return-void
.end method

.method private handleClockVisibilityChanged()V
    .registers 4

    .prologue
    .line 964
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 965
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 966
    .local v0, "cb":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_1c

    .line 967
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onClockVisibilityChanged()V

    .line 964
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 970
    .end local v0    # "cb":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1f
    return-void
.end method

.method private handleFlipboardDataUpdated(Landroid/os/Bundle;)V
    .registers 23
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1437
    if-eqz p1, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    if-nez v3, :cond_9

    .line 1472
    :cond_8
    return-void

    .line 1440
    :cond_9
    const-string v3, "fb_total_item_cnt"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 1442
    .local v18, "totalCnt":I
    const-string v3, "KeyguardUpdateMonitor"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "read totalCnt = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFlipboardItemList:Ljava/util/ArrayList;

    if-nez v3, :cond_42

    .line 1445
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFlipboardItemList:Ljava/util/ArrayList;

    .line 1447
    :cond_42
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFlipboardItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1449
    const/16 v17, 0x0

    .local v17, "idx":I
    :goto_4b
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1af

    .line 1450
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "fb_wallpaper_path"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v19, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1451
    .local v4, "wallpaperPath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "fb_title"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v19, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1452
    .local v5, "title":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "fb_author"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v19, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1453
    .local v6, "author":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "fb_time"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v19, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v19

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 1454
    .local v7, "Time":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "fb_app_package"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v19, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1455
    .local v9, "appPackage":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "fb_source"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v19, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1456
    .local v10, "source":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "fb_target"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v19, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1457
    .local v11, "target":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "fb_id"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v19, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1458
    .local v12, "id":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "fb_stream_id"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v19, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1459
    .local v13, "streamId":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "fb_get_more"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 1461
    .local v14, "getMore":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFlipboardItemList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;

    invoke-direct/range {v3 .. v14}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1449
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_4b

    .line 1465
    .end local v4    # "wallpaperPath":Ljava/lang/String;
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "author":Ljava/lang/String;
    .end local v7    # "Time":J
    .end local v9    # "appPackage":Ljava/lang/String;
    .end local v10    # "source":Ljava/lang/String;
    .end local v11    # "target":Ljava/lang/String;
    .end local v12    # "id":Ljava/lang/String;
    .end local v13    # "streamId":Ljava/lang/String;
    .end local v14    # "getMore":I
    :cond_1af
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFlipboardItemList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->insertDataList(Ljava/util/ArrayList;)Z

    .line 1467
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1c4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_8

    .line 1468
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 1469
    .local v15, "cb":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v15, :cond_1e7

    .line 1470
    invoke-virtual {v15}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onFlipboardDataUpdated()V

    .line 1467
    :cond_1e7
    add-int/lit8 v16, v16, 0x1

    goto :goto_1c4
.end method

.method private handleGoToUnlockScreen()V
    .registers 4

    .prologue
    .line 1427
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 1428
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 1429
    .local v0, "cb":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_1c

    .line 1430
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->goToUnlockScreenForDetachPen()V

    .line 1427
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1433
    .end local v0    # "cb":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1f
    return-void
.end method

.method private handleKeyguardVisibilityChanged(I)V
    .registers 6
    .param p1, "showing"    # I

    .prologue
    const/4 v2, 0x1

    .line 977
    if-ne p1, v2, :cond_24

    .line 978
    .local v2, "isShowing":Z
    :goto_3
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    .line 979
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_26

    .line 980
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 981
    .local v0, "cb":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_21

    .line 982
    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChanged(Z)V

    .line 979
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 977
    .end local v0    # "cb":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    .end local v1    # "i":I
    .end local v2    # "isShowing":Z
    :cond_24
    const/4 v2, 0x0

    goto :goto_3

    .line 985
    .restart local v1    # "i":I
    .restart local v2    # "isShowing":Z
    :cond_26
    return-void
.end method

.method private handleSimStateChange(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;)V
    .registers 8
    .param p1, "simArgs"    # Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;

    .prologue
    .line 918
    iget-object v2, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 924
    .local v2, "state":Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isDualModeDevice()I

    move-result v3

    if-eqz v3, :cond_63

    .line 925
    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSimStateChange PINPUK = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getPINPUKRequest()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardConstants$State;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , mSimState :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getPINPUKRequest()Z

    move-result v3

    if-eqz v3, :cond_97

    .line 927
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_45
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_97

    .line 928
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 929
    .local v0, "cb":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_60

    .line 930
    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 927
    :cond_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    .line 941
    .end local v0    # "cb":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    .end local v1    # "i":I
    :cond_63
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_93

    .line 942
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mIsSimStateReadyInAirplaneMode:Z

    .line 947
    :goto_6a
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v3, :cond_97

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v3, :cond_97

    .line 948
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 949
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_75
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_97

    .line 950
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 951
    .restart local v0    # "cb":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_90

    .line 952
    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 949
    :cond_90
    add-int/lit8 v1, v1, 0x1

    goto :goto_75

    .line 944
    .end local v0    # "cb":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    .end local v1    # "i":I
    :cond_93
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mIsSimStateReadyInAirplaneMode:Z

    goto :goto_6a

    .line 957
    :cond_97
    return-void
.end method

.method private handleTimeUpdate()V
    .registers 4

    .prologue
    .line 822
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 823
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 824
    .local v0, "cb":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_1c

    .line 825
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onTimeChanged()V

    .line 822
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 828
    .end local v0    # "cb":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1f
    return-void
.end method

.method private handleUserInfoChanged(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 555
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 556
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 557
    .local v0, "cb":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_1c

    .line 558
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onUserInfoChanged(I)V

    .line 555
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 561
    .end local v0    # "cb":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1f
    return-void
.end method

.method private static isBatteryUpdateInteresting(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)Z
    .registers 9
    .param p0, "old"    # Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;
    .param p1, "current"    # Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 996
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v0

    .line 997
    .local v0, "nowPluggedIn":Z
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v2

    .line 998
    .local v2, "wasPluggedIn":Z
    if-ne v2, v3, :cond_1a

    if-ne v0, v3, :cond_1a

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    iget v6, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    if-eq v5, v6, :cond_1a

    move v1, v3

    .line 1003
    .local v1, "stateChangedWhilePluggedIn":Z
    :goto_15
    if-ne v2, v0, :cond_19

    if-eqz v1, :cond_1c

    .line 1022
    :cond_19
    :goto_19
    return v3

    .end local v1    # "stateChangedWhilePluggedIn":Z
    :cond_1a
    move v1, v4

    .line 998
    goto :goto_15

    .line 1008
    .restart local v1    # "stateChangedWhilePluggedIn":Z
    :cond_1c
    if-eqz v0, :cond_24

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iget v6, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    if-ne v5, v6, :cond_19

    .line 1013
    :cond_24
    if-nez v0, :cond_32

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isBatteryLow()Z

    move-result v5

    if-eqz v5, :cond_32

    iget v5, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    if-ne v5, v6, :cond_19

    .line 1018
    :cond_32
    iget v5, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_19

    move v3, v4

    .line 1022
    goto :goto_19
.end method

.method private isDeviceProvisionedInSettingsDb()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 631
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method public static isSimLocked(Lcom/android/internal/telephony/IccCardConstants$State;)Z
    .registers 2
    .param p0, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 1352
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1353
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getPINPUKRequest()Z

    move-result v0

    .line 1355
    :goto_a
    return v0

    :cond_b
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_1b

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_1b

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_1b

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p0, v0, :cond_1d

    :cond_1b
    const/4 v0, 0x1

    goto :goto_a

    :cond_1d
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static isSimPinSecure(Lcom/android/internal/telephony/IccCardConstants$State;)Z
    .registers 3
    .param p0, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 1367
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1368
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getPINPUKRequest()Z

    move-result v1

    .line 1371
    :goto_a
    return v1

    .line 1370
    :cond_b
    move-object v0, p0

    .line 1371
    .local v0, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_1c

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_1c

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_1c

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_1e

    :cond_1c
    const/4 v1, 0x1

    goto :goto_a

    :cond_1e
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private sendUpdates(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V
    .registers 8
    .param p1, "callback"    # Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1212
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    invoke-virtual {p1, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRefreshBatteryInfo(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    .line 1213
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onTimeChanged()V

    .line 1214
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mRingMode:I

    invoke-virtual {p1, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRingerModeChanged(I)V

    .line 1215
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    invoke-virtual {p1, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onPhoneStateChanged(I)V

    .line 1216
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v4

    if-eqz v4, :cond_105

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->isPlmnEnabled()Z

    move-result v4

    if-eqz v4, :cond_105

    .line 1218
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "switching.slot"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSlotSwitching:I

    .line 1220
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getActiveSIMCount(Landroid/content/Context;)I

    move-result v4

    if-ne v4, v2, :cond_7e

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getWhichSIMOn(Landroid/content/Context;)I

    move-result v4

    if-ne v4, v2, :cond_7e

    move v1, v2

    .line 1222
    .local v1, "onlyActiveSIM2":Z
    :goto_3f
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getActiveSIMCount(Landroid/content/Context;)I

    move-result v4

    if-ne v4, v2, :cond_80

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getWhichSIMOn(Landroid/content/Context;)I

    move-result v4

    if-nez v4, :cond_80

    move v0, v2

    .line 1225
    .local v0, "onlyActiveSIM1":Z
    :goto_50
    sget v3, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSlotSwitching:I

    if-ne v3, v2, :cond_82

    .line 1226
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmnSlot2:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSlotSwitchingPlmnSlot2:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1252
    .end local v0    # "onlyActiveSIM1":Z
    .end local v1    # "onlyActiveSIM2":Z
    :goto_5b
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onClockVisibilityChanged()V

    .line 1253
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 1254
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDisplayClientState:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    iget v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DisplayClientState;->clientGeneration:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDisplayClientState:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    iget-boolean v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DisplayClientState;->clearing:Z

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDisplayClientState:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    iget-object v4, v4, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DisplayClientState;->intent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onMusicClientIdChanged(IZLandroid/app/PendingIntent;)V

    .line 1258
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDisplayClientState:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    iget v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DisplayClientState;->playbackState:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDisplayClientState:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    iget-wide v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DisplayClientState;->playbackEventTime:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onMusicPlaybackStateChanged(IJ)V

    .line 1260
    return-void

    :cond_7e
    move v1, v3

    .line 1220
    goto :goto_3f

    .restart local v1    # "onlyActiveSIM2":Z
    :cond_80
    move v0, v3

    .line 1222
    goto :goto_50

    .line 1227
    .restart local v0    # "onlyActiveSIM1":Z
    :cond_82
    if-eqz v0, :cond_92

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v2

    if-nez v2, :cond_92

    .line 1228
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_5b

    .line 1229
    :cond_92
    if-eqz v1, :cond_a2

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v2

    if-nez v2, :cond_a2

    .line 1230
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmnSlot2:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpnSlot2:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_5b

    .line 1232
    :cond_a2
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isEurMultiSIMDevice()Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 1234
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmnSlot2:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpnSlot2:Ljava/lang/CharSequence;

    invoke-direct {p0, v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_5b

    .line 1235
    :cond_bc
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v2

    if-eqz v2, :cond_ca

    .line 1236
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmnSlot2:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_5b

    .line 1239
    :cond_ca
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mShowPlmn:Z

    if-eqz v2, :cond_da

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mShowPlmn2:Z

    if-eqz v2, :cond_da

    .line 1240
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmnSlot2:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_5b

    .line 1241
    :cond_da
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mShowPlmn:Z

    if-eqz v2, :cond_eb

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mShowPlmn2:Z

    if-nez v2, :cond_eb

    .line 1242
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpnSlot2:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_5b

    .line 1243
    :cond_eb
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mShowPlmn:Z

    if-nez v2, :cond_fc

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mShowPlmn2:Z

    if-eqz v2, :cond_fc

    .line 1244
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmnSlot2:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_5b

    .line 1246
    :cond_fc
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpnSlot2:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_5b

    .line 1250
    .end local v0    # "onlyActiveSIM1":Z
    .end local v1    # "onlyActiveSIM2":Z
    :cond_105
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_5b
.end method

.method private watchForDeviceProvisioning()V
    .registers 6

    .prologue
    .line 636
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$6;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$6;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    .line 648
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 654
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z

    move-result v0

    .line 655
    .local v0, "provisioned":Z
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eq v0, v1, :cond_36

    .line 656
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 657
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eqz v1, :cond_36

    .line 658
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x134

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 661
    :cond_36
    return-void
.end method


# virtual methods
.method public clearFailedUnlockAttempts()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1315
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:I

    .line 1316
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    .line 1317
    return-void
.end method

.method public getCachedDisplayClientState()Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DisplayClientState;
    .registers 2

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDisplayClientState:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    return-object v0
.end method

.method public getCurrentFailedPasswordAttempts()I
    .registers 2

    .prologue
    .line 1391
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts()I

    move-result v0

    return v0
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .registers 5

    .prologue
    .line 1413
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_22

    .line 1414
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 1417
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_22

    .line 1418
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "Can\'t get DevicePolicyManagerService: is it running?"

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Stack trace:"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1422
    :cond_22
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public getFailedUnlockAttempts()I
    .registers 2

    .prologue
    .line 1307
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:I

    return v0
.end method

.method public getFailedUnlockAttemptswithITPolicy()I
    .registers 2

    .prologue
    .line 1311
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getCurrentFailedPasswordAttempts()I

    move-result v0

    return v0
.end method

.method public getFlipboardItemList()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    .line 1476
    const/4 v0, 0x0

    .line 1482
    :goto_5
    return-object v0

    .line 1478
    :cond_6
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "getFlipboardItemList"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFlipboardItemList:Ljava/util/ArrayList;

    if-nez v0, :cond_1d

    .line 1480
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFlipboardDBAdapter;->getDataList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFlipboardItemList:Ljava/util/ArrayList;

    .line 1482
    :cond_1d
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFlipboardItemList:Ljava/util/ArrayList;

    goto :goto_5
.end method

.method public getMaxBiometricUnlockAttemptsReached()Z
    .registers 3

    .prologue
    .line 1336
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getMaximumFailedPasswordsForWipe()I
    .registers 3

    .prologue
    .line 1395
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getPhoneState()I
    .registers 2

    .prologue
    .line 1328
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    return v0
.end method

.method public getSimState()Lcom/android/internal/telephony/IccCardConstants$State;
    .registers 2

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0
.end method

.method public getTelephonyPlmn()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTelephonySpn()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected handleBootCompleted()V
    .registers 5

    .prologue
    .line 735
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBootCompleted:Z

    .line 736
    new-instance v2, Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/media/AudioManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mAudioManager:Landroid/media/AudioManager;

    .line 737
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mRemoteControlDisplay:Landroid/media/IRemoteControlDisplay$Stub;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    .line 738
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_32

    .line 739
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 740
    .local v0, "cb":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_2f

    .line 741
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onBootCompleted()V

    .line 738
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 744
    .end local v0    # "cb":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_32
    return-void
.end method

.method protected handleDevicePolicyManagerStateChanged()V
    .registers 4

    .prologue
    .line 667
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_20

    .line 668
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 669
    .local v0, "cb":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_1d

    .line 670
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onDevicePolicyManagerStateChanged()V

    .line 667
    :cond_1d
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 673
    .end local v0    # "cb":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_20
    return-void
.end method

.method protected handleDeviceProvisioned()V
    .registers 5

    .prologue
    .line 770
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 771
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 772
    .local v0, "cb":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_1c

    .line 773
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onDeviceProvisioned()V

    .line 770
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 776
    .end local v0    # "cb":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1f
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    if-eqz v2, :cond_31

    .line 778
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 779
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    .line 781
    :cond_31
    return-void
.end method

.method protected handlePhoneStateChanged(Ljava/lang/String;)V
    .registers 5
    .param p1, "newState"    # Ljava/lang/String;

    .prologue
    .line 788
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 789
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    .line 795
    :cond_b
    :goto_b
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_44

    .line 796
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 797
    .local v0, "cb":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_29

    .line 798
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onPhoneStateChanged(I)V

    .line 795
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 790
    .end local v0    # "cb":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    .end local v1    # "i":I
    :cond_2c
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 791
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    goto :goto_b

    .line 792
    :cond_38
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 793
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    goto :goto_b

    .line 801
    .restart local v1    # "i":I
    :cond_44
    return-void
.end method

.method protected handleRingerModeChange(I)V
    .registers 5
    .param p1, "mode"    # I

    .prologue
    .line 808
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mRingMode:I

    .line 809
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 810
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 811
    .local v0, "cb":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_1e

    .line 812
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRingerModeChanged(I)V

    .line 809
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 815
    .end local v0    # "cb":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_21
    return-void
.end method

.method protected handleSetGenerationId(IZLandroid/app/PendingIntent;)V
    .registers 7
    .param p1, "clientGeneration"    # I
    .param p2, "clearing"    # Z
    .param p3, "p"    # Landroid/app/PendingIntent;

    .prologue
    .line 523
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDisplayClientState:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    iput p1, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DisplayClientState;->clientGeneration:I

    .line 524
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDisplayClientState:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    iput-boolean p2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DisplayClientState;->clearing:Z

    .line 525
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDisplayClientState:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    iput-object p3, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DisplayClientState;->intent:Landroid/app/PendingIntent;

    .line 528
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 529
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 530
    .local v0, "cb":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_28

    .line 531
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onMusicClientIdChanged(IZLandroid/app/PendingIntent;)V

    .line 528
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 534
    .end local v0    # "cb":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_2b
    return-void
.end method

.method protected handleSetPlaybackState(IIJ)V
    .registers 10
    .param p1, "generationId"    # I
    .param p2, "playbackState"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 540
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDisplayClientState:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    iput p2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DisplayClientState;->playbackState:I

    .line 541
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDisplayClientState:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    iput-wide p3, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DisplayClientState;->playbackEventTime:J

    .line 542
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDisplayClientState:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    iget v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DisplayClientState;->clientGeneration:I

    if-ne p1, v2, :cond_2d

    .line 543
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4b

    .line 544
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 545
    .local v0, "cb":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_2a

    .line 546
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onMusicPlaybackStateChanged(IJ)V

    .line 543
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 550
    .end local v0    # "cb":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    .end local v1    # "i":I
    :cond_2d
    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring generation id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " because it\'s not current"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_4b
    return-void
.end method

.method protected handleUserRemoved(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 758
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 759
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 760
    .local v0, "cb":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_1c

    .line 761
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onUserRemoved(I)V

    .line 758
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 764
    .end local v0    # "cb":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1f
    return-void
.end method

.method protected handleUserSwitchComplete(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 695
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 696
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 697
    .local v0, "cb":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_1c

    .line 698
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onUserSwitchComplete(I)V

    .line 695
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 701
    .end local v0    # "cb":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1f
    return-void
.end method

.method protected handleUserSwitching(ILandroid/os/IRemoteCallback;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 679
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 680
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 681
    .local v0, "cb":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_1c

    .line 682
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onUserSwitching(I)V

    .line 679
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 686
    .end local v0    # "cb":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1f
    const/4 v2, 0x0

    :try_start_20
    invoke-interface {p2, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_24

    .line 689
    :goto_23
    return-void

    .line 687
    :catch_24
    move-exception v2

    goto :goto_23
.end method

.method public hasBootCompleted()Z
    .registers 2

    .prologue
    .line 751
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBootCompleted:Z

    return v0
.end method

.method public isAlternateUnlockEnabled()Z
    .registers 2

    .prologue
    .line 1340
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mAlternateUnlockEnabled:Z

    return v0
.end method

.method public isClockVisible()Z
    .registers 2

    .prologue
    .line 1324
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mClockVisible:Z

    return v0
.end method

.method public isDeviceProvisioned()Z
    .registers 2

    .prologue
    .line 1303
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return v0
.end method

.method public isITPolicyEnabled()Z
    .registers 2

    .prologue
    .line 1399
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getMaximumFailedPasswordsForWipe()I

    move-result v0

    if-lez v0, :cond_8

    .line 1400
    const/4 v0, 0x1

    .line 1402
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isIccBlockedPermanently()Z
    .registers 3

    .prologue
    .line 1384
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_a

    .line 1385
    const/4 v0, 0x1

    .line 1387
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isKeyguardVisible()Z
    .registers 2

    .prologue
    .line 988
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    return v0
.end method

.method public isSecuredByEAS()Z
    .registers 3

    .prologue
    .line 1406
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    const/high16 v1, 0x20000

    if-lt v0, v1, :cond_f

    .line 1407
    const/4 v0, 0x1

    .line 1409
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public isSimLocked()Z
    .registers 2

    .prologue
    .line 1348
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSimLocked(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v0

    return v0
.end method

.method public isSimPinSecure()Z
    .registers 2

    .prologue
    .line 1363
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSimPinSecure(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v0

    return v0
.end method

.method public isSwitchingUser()Z
    .registers 2

    .prologue
    .line 992
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    return v0
.end method

.method public registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V
    .registers 5
    .param p1, "callback"    # Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .prologue
    .line 1198
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 1199
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_18

    .line 1208
    :goto_17
    return-void

    .line 1198
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1205
    :cond_1b
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1206
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 1207
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sendUpdates(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    goto :goto_17
.end method

.method public removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V
    .registers 4
    .param p1, "callback"    # Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .prologue
    .line 1174
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_20

    .line 1175
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1d

    .line 1176
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1174
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1179
    :cond_20
    return-void
.end method

.method public removeCallback(Ljava/lang/Object;)V
    .registers 2
    .param p1, "observer"    # Ljava/lang/Object;

    .prologue
    .line 1188
    return-void
.end method

.method public reportClockVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .prologue
    .line 1270
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mClockVisible:Z

    .line 1271
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x133

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1272
    return-void
.end method

.method public reportFailedBiometricUnlockAttempt()V
    .registers 2

    .prologue
    .line 1332
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    .line 1333
    return-void
.end method

.method public reportFailedUnlockAttempt()V
    .registers 2

    .prologue
    .line 1320
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:I

    .line 1321
    return-void
.end method

.method public reportSimUnlocked()V
    .registers 3

    .prologue
    .line 1287
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;-><init>(Lcom/android/internal/telephony/IccCardConstants$State;)V

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;)V

    .line 1288
    return-void
.end method

.method public sendKeyguardVisibilityChanged(Z)V
    .registers 5
    .param p1, "showing"    # Z

    .prologue
    .line 1264
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x138

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1265
    .local v0, "message":Landroid/os/Message;
    if-eqz p1, :cond_11

    const/4 v1, 0x1

    :goto_b
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1266
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1267
    return-void

    .line 1265
    :cond_11
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public setAlternateUnlockEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1344
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mAlternateUnlockEnabled:Z

    .line 1345
    return-void
.end method
