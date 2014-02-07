.class public Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$7;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;
    }
.end annotation


# static fields
.field private static final ACTION_SHRINK_WIDGET:Ljava/lang/String; = "com.sec.android.app.keyguard.shrinkWidget"

.field protected static final AWAKE_INTERVAL_DEFAULT_MS:I = 0x2710

.field protected static final AWAKE_INTERVAL_DEFAULT_MS_WITH_SMART_STAY:I = 0x1388

.field private static BOOSTING_TIMEOUT:I = 0x0

.field public static final CARRIER_LOCKED_ACTION:Ljava/lang/String; = "com.sec.android.FindingLostPhone.SUBSCRIBE"

.field public static final CARRIER_UNLOCKED_ACTION:Ljava/lang/String; = "com.sec.android.FindingLostPhone.CANCEL"

.field private static final DBG_WAKE:Z = false

.field static final DEBUG:Z = true

.field private static final DELAYED_KEYGUARD_ACTION:Ljava/lang/String; = "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

.field private static final DISABLE_KEYGUARD_FACTORY_ACTION:Ljava/lang/String; = "com.android.samsungtest.DISABLE_KEYGUARD_FACTORY"

.field private static final ENABLE_INSECURE_STATUS_BAR_EXPAND:Z = true

.field public static final FMM_LOCKED_ACTION:Ljava/lang/String; = "com.android.internal.policy.impl.Keyguard.PCW_LOCKED"

.field public static final FMM_UNLOCKED_ACTION:Ljava/lang/String; = "com.android.internal.policy.impl.Keyguard.PCW_UNLOCKED"

.field private static final HIDE:I = 0x3

.field private static final KEYGUARD_DISPLAY_TIMEOUT_DELAY_DEFAULT:I = 0x7530

.field private static final KEYGUARD_DONE:I = 0x9

.field private static final KEYGUARD_DONE_AUTHENTICATING:I = 0xb

.field private static final KEYGUARD_DONE_DRAWING:I = 0xa

.field private static final KEYGUARD_DONE_DRAWING_TIMEOUT_MS:I = 0x7d0

.field private static final KEYGUARD_LOCK_AFTER_DELAY_DEFAULT:I = 0x1388

.field private static final KEYGUARD_TIMEOUT:I = 0xd

.field private static final LANDSCAPE_WAKE_TIME_LIMIT_EXPIRED:Ljava/lang/String; = "com.android.internal.policy.impl.Keyguard.LANDSCAPE_WAKE_TIME_LIMIT_EXPIRED"

.field private static final NOTIFY_SCREEN_OFF:I = 0x6

.field private static final NOTIFY_SCREEN_ON:I = 0x7

.field private static final RESET:I = 0x4

.field private static final SET_HIDDEN:I = 0xc

.field private static final SHOW:I = 0x2

.field private static final SHOW_ASSISTANT:I = 0xe

.field protected static final SMART_LOCK_SECURE_LOCK_TO_SWIPE_LOCK:I = -0x3a

.field protected static final SMART_LOCK_SWIPE_LOCK_TO_SECURE_LOCK:I = -0x48

.field private static final SMART_UNLOCK_PERMISSION:Ljava/lang/String; = "com.sec.android.permission.SMART_UNLOCK"

.field private static final TAG:Ljava/lang/String; = "KeyguardViewMediator"

.field private static final UPDATE_RSSI_FOR_SMART_UNLOCK:I = 0x11

.field private static final VERIFY_UNLOCK:I = 0x5

.field private static final WAKE_UP:I = 0xf

.field private static final WAKE_UP_TIMEOUT:I = 0x10

.field private static final WAKE_WHEN_READY:I = 0x8

.field private static mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter; = null

.field private static mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset; = null

.field private static mCpuBooster:Landroid/os/DVFSHelper; = null

.field protected static mIsInLandscapeWakeTimeLimit:Z = false

.field private static final mLensLockSoundPath:Ljava/lang/String; = "/system/media/audio/ui/lens_flare_lock.ogg"

.field private static final mLensUnlockSoundPath:Ljava/lang/String; = "/system/media/audio/ui/lens_flare_unlock_silence.ogg"

.field private static final mNoneLockSoundPath:Ljava/lang/String; = "/system/media/audio/ui/Lock_none_effect.ogg"

.field private static final mNoneUnlockSoundPath:Ljava/lang/String; = "/system/media/audio/ui/Unlock_none_effect.ogg"

.field private static sMultiUserAvatarCache:Lcom/android/internal/policy/impl/keyguard/MultiUserAvatarCache;


# instance fields
.field private WAKE_UP_TIMEOUT_DURATION:I

.field private connectedBTforSmartLock:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field mCoverInCallIntent:Landroid/content/Intent;

.field private mDelayedShowingSequence:I

.field private mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

.field private mExternallyEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mHidden:Z

.field private mIsCoverOpen:Z

.field private mIsInCall:Z

.field private mIsKorean:Z

.field private mKeyguardDonePending:Z

.field private mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

.field mLandscapeWakeTimeLimitOffIntent:Landroid/app/PendingIntent;

.field private mLastHardKeyboardConfig:I

.field private mLensLockSoundId:I

.field private mLensUnlockSoundId:I

.field private mLidOpened:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSoundId:I

.field private mLockSoundStreamId:I

.field private final mLockSoundVolume:F

.field private mLockSounds:Landroid/media/SoundPool;

.field private mMasterStreamType:I

.field private mMaybeShow:Z

.field private mNeedToReshowWhenReenabled:Z

.field private mNoneLockSoundId:I

.field private mNoneUnlockSoundId:I

.field private mPM:Landroid/os/PowerManager;

.field private mPhoneState:I

.field private mRequestedWakeUp:Z

.field private mResetWakelock:Landroid/os/PowerManager$WakeLock;

.field private mScreenOn:Z

.field private mSearchManager:Landroid/app/SearchManager;

.field private mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

.field private mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mShowLockIcon:Z

.field private mShowing:Z

.field private mShowingLockIcon:Z

.field private final mSmartUnlockReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSuppressCoverUI:Z

.field private mSuppressNextLockSound:Z

.field private mSuppressNextUnLockSound:Z

.field private mSwitchingUser:Z

.field private mSystemReady:Z

.field private mUnlockSoundId:I

.field mUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

.field private mUserManager:Landroid/os/UserManager;

.field private mUserPresentIntent:Landroid/content/Intent;

.field mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

.field private mWaitingUntilKeyguardVisible:Z

.field private mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

.field private mWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 341
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mIsInLandscapeWakeTimeLimit:Z

    .line 354
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/MultiUserAvatarCache;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/MultiUserAvatarCache;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sMultiUserAvatarCache:Lcom/android/internal/policy/impl/keyguard/MultiUserAvatarCache;

    .line 1701
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 1702
    const/16 v0, 0x3e8

    sput v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->BOOSTING_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    const/4 v11, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 219
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSuppressNextUnLockSound:Z

    .line 261
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 268
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 272
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 275
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHidden:Z

    .line 299
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mPhoneState:I

    .line 310
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 312
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 331
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mIsCoverOpen:Z

    .line 332
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mIsInCall:Z

    .line 333
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSuppressCoverUI:Z

    .line 335
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mMaybeShow:Z

    .line 336
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mRequestedWakeUp:Z

    .line 338
    const/16 v6, 0x1388

    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->WAKE_UP_TIMEOUT_DURATION:I

    .line 340
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLidOpened:Z

    .line 343
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLastHardKeyboardConfig:I

    .line 346
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mIsKorean:Z

    .line 424
    new-instance v6, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 574
    new-instance v6, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    .line 1552
    new-instance v6, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$3;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSmartUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 1578
    new-instance v6, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1807
    new-instance v6, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v6, p0, v9, v11, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    .line 2280
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->connectedBTforSmartLock:Z

    .line 2282
    new-instance v6, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$6;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$6;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 661
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 662
    const-string v6, "power"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    .line 663
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v9, "user"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUserManager:Landroid/os/UserManager;

    .line 664
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const-string v9, "show keyguard"

    invoke-virtual {v6, v7, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 665
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 667
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const-string v9, "keyguardWakeAndHandOff"

    invoke-virtual {v6, v7, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    .line 668
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 670
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const-string v9, "mResetWakelock"

    invoke-virtual {v6, v7, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mResetWakelock:Landroid/os/PowerManager$WakeLock;

    .line 671
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mResetWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 673
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const-string v9, "mWakeUpWakeLock"

    invoke-virtual {v6, v7, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 674
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 677
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 678
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v6, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 680
    const-string v6, "secedm.src.android.app.enterprise.action.DO_KEYGUARD"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 681
    const-string v6, "android.app.action.DEVICE_POLICY_MANAGER_PASSWORD_CHANGED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 685
    const-string v6, "com.android.samsungtest.DISABLE_KEYGUARD_FACTORY"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 688
    const-string v6, "com.android.internal.policy.impl.Keyguard.PCW_LOCKED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 689
    const-string v6, "com.android.internal.policy.impl.Keyguard.PCW_UNLOCKED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 691
    const-string v6, "com.android.internal.policy.impl.Keyguard.LANDSCAPE_WAKE_TIME_LIMIT_EXPIRED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 694
    const-string v6, "com.sec.android.FindingLostPhone.SUBSCRIBE"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 695
    const-string v6, "com.sec.android.FindingLostPhone.CANCEL"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 698
    const-string v6, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 701
    const-string v6, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 703
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v9, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 706
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 707
    .local v3, "smartUnlockFilter":Landroid/content/IntentFilter;
    const-string v6, "android.bluetooth.device.action.OUT_OF_RANGE_ALERT"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 708
    const-string v6, "android.bluetooth.device.action.ACTION_IN_RANGE_ALERT"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 709
    const-string v6, "android.bluetooth.device.action.RSSI"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 711
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSmartUnlockReceiver:Landroid/content/BroadcastReceiver;

    const-string v10, "com.sec.android.permission.SMART_UNLOCK"

    invoke-virtual {v6, v9, v3, v10, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 713
    const-string v6, "alarm"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    .line 715
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    .line 717
    if-eqz p2, :cond_25e

    .end local p2    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :goto_123
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 719
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v8}, Lcom/android/internal/widget/LockPatternUtils;->setCurrentUser(I)V

    .line 721
    const-string v6, "window"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 723
    .local v5, "wm":Landroid/view/WindowManager;
    new-instance v6, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v6, p1, v5, v9, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    .line 726
    new-instance v6, Landroid/content/Intent;

    const-string v9, "android.intent.action.USER_PRESENT"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUserPresentIntent:Landroid/content/Intent;

    .line 727
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUserPresentIntent:Landroid/content/Intent;

    const/high16 v9, 0x28000000

    invoke-virtual {v6, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 730
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 731
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v6, "show_status_bar_lock"

    invoke-static {v0, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_267

    move v6, v7

    :goto_15c
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowLockIcon:Z

    .line 733
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-virtual {v6}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mScreenOn:Z

    .line 735
    new-instance v6, Landroid/media/SoundPool;

    invoke-direct {v6, v7, v7, v8}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    .line 736
    const-string v6, "lock_sound"

    invoke-static {v0, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 737
    .local v4, "soundPath":Ljava/lang/String;
    if-eqz v4, :cond_17d

    .line 738
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v6, v4, v7}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSoundId:I

    .line 740
    :cond_17d
    if-eqz v4, :cond_183

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSoundId:I

    if-nez v6, :cond_19b

    .line 741
    :cond_183
    const-string v6, "KeyguardViewMediator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to load lock sound from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :cond_19b
    const-string v6, "unlock_sound"

    invoke-static {v0, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 744
    if-eqz v4, :cond_1ab

    .line 745
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v6, v4, v7}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    .line 747
    :cond_1ab
    if-eqz v4, :cond_1b1

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    if-nez v6, :cond_1c9

    .line 748
    :cond_1b1
    const-string v6, "KeyguardViewMediator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to load unlock sound from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :cond_1c9
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    const-string v8, "/system/media/audio/ui/lens_flare_lock.ogg"

    invoke-virtual {v6, v8, v7}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLensLockSoundId:I

    .line 754
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLensLockSoundId:I

    if-nez v6, :cond_1de

    .line 755
    const-string v6, "KeyguardViewMediator"

    const-string v8, "failed to load lens lock sound from /system/media/audio/ui/lens_flare_lock.ogg"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_1de
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    const-string v8, "/system/media/audio/ui/lens_flare_unlock_silence.ogg"

    invoke-virtual {v6, v8, v7}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLensUnlockSoundId:I

    .line 760
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLensUnlockSoundId:I

    if-nez v6, :cond_1f3

    .line 761
    const-string v6, "KeyguardViewMediator"

    const-string v8, "failed to load lens unlock sound from /system/media/audio/ui/lens_flare_unlock_silence.ogg"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_1f3
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    const-string v8, "/system/media/audio/ui/Unlock_none_effect.ogg"

    invoke-virtual {v6, v8, v7}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mNoneUnlockSoundId:I

    .line 766
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mNoneUnlockSoundId:I

    if-nez v6, :cond_208

    .line 767
    const-string v6, "KeyguardViewMediator"

    const-string v8, "failed to load lens lock sound from /system/media/audio/ui/Unlock_none_effect.ogg"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :cond_208
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    const-string v8, "/system/media/audio/ui/Lock_none_effect.ogg"

    invoke-virtual {v6, v8, v7}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mNoneLockSoundId:I

    .line 772
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mNoneLockSoundId:I

    if-nez v6, :cond_21d

    .line 773
    const-string v6, "KeyguardViewMediator"

    const-string v7, "failed to load lens lock sound from /system/media/audio/ui/Lock_none_effect.ogg"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :cond_21d
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0005

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 778
    .local v2, "lockSoundDefaultAttenuation":I
    const-wide/high16 v6, 0x4024000000000000L

    int-to-float v8, v2

    const/high16 v9, 0x41a00000

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v6, v6

    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    .line 780
    new-instance v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-direct {v6, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    .line 782
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isKeyguardBackupAndRestore(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_251

    .line 783
    const-string v6, "KeyguardViewMediator"

    const-string v7, "Make mKeyguardBackupRestoreManager"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardBackupRestoreManager;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardBackupRestoreManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardBackupRestoreManager;->registerKeyguardBackupRestoreReceiver(Landroid/content/Context;)V

    .line 787
    :cond_251
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLastHardKeyboardConfig:I

    .line 793
    return-void

    .line 717
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "lockSoundDefaultAttenuation":I
    .end local v4    # "soundPath":Ljava/lang/String;
    .end local v5    # "wm":Landroid/view/WindowManager;
    .restart local p2    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_25e
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    .end local p2    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {p2, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    goto/16 :goto_123

    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v5    # "wm":Landroid/view/WindowManager;
    :cond_267
    move v6, v8

    .line 731
    goto/16 :goto_15c
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSwitchingUser:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mIsInCall:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->connectedBTforSmartLock:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->connectedBTforSmartLock:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    .prologue
    .line 136
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isFactoryMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    .prologue
    .line 136
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLastHardKeyboardConfig:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLastHardKeyboardConfig:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleShow(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleHide()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleReset(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleVerifyUnlock()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleNotifyScreenOff()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleNotifyScreenOn(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # I

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleWakeWhenReady(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleKeyguardDone(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleKeyguardDoneDrawing()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleSetHidden(Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$3202(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mMaybeShow:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleUpdateRSSI(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$3600()Landroid/bluetooth/BluetoothHeadset;
    .registers 1

    .prologue
    .line 136
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$3602(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .registers 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothHeadset;

    .prologue
    .line 136
    sput-object p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$500()Lcom/android/internal/policy/impl/keyguard/MultiUserAvatarCache;
    .registers 1

    .prologue
    .line 136
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sMultiUserAvatarCache:Lcom/android/internal/policy/impl/keyguard/MultiUserAvatarCache;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mPhoneState:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    return p1
.end method

.method private adjustStatusBarLocked()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 2073
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v2, :cond_11

    .line 2074
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 2077
    :cond_11
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v2, :cond_1d

    .line 2078
    const-string v2, "KeyguardViewMediator"

    const-string v3, "Could not get status bar manager"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    :cond_1c
    :goto_1c
    return-void

    .line 2080
    :cond_1d
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowLockIcon:Z

    if-eqz v2, :cond_45

    .line 2082
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v2, :cond_bc

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 2083
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowingLockIcon:Z

    if-nez v2, :cond_45

    .line 2084
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const v3, 0x10407c4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2086
    .local v0, "contentDescription":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v3, "secure"

    const v4, 0x108083b

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 2089
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowingLockIcon:Z

    .line 2101
    .end local v0    # "contentDescription":Ljava/lang/String;
    :cond_45
    :goto_45
    const/4 v1, 0x0

    .line 2102
    .local v1, "flags":I
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v2, :cond_6d

    .line 2106
    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    .line 2107
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_57

    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwipeLockShowingBeforeTimeout:Z

    if-eqz v2, :cond_cb

    .line 2111
    :cond_57
    :goto_57
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_64

    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwipeLockShowingBeforeTimeout:Z

    if-nez v2, :cond_64

    .line 2113
    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    .line 2115
    :cond_64
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isAssistantAvailable()Z

    move-result v2

    if-nez v2, :cond_6d

    .line 2116
    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    .line 2121
    :cond_6d
    const-string v2, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustStatusBarLocked: mShowing="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mHidden="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHidden:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isSecure="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --> flags=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_1c

    .line 2126
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v2, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto/16 :goto_1c

    .line 2092
    .end local v1    # "flags":I
    :cond_bc
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowingLockIcon:Z

    if-eqz v2, :cond_45

    .line 2093
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v3, "secure"

    invoke-virtual {v2, v3}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 2094
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowingLockIcon:Z

    goto/16 :goto_45

    .line 2109
    .restart local v1    # "flags":I
    :cond_cb
    const/high16 v2, 0x10000

    or-int/2addr v1, v2

    goto :goto_57
.end method

.method private cancelDoKeyguardLaterLocked()V
    .registers 2

    .prologue
    .line 1003
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    .line 1004
    return-void
.end method

.method private dismissVolumePanel()V
    .registers 6

    .prologue
    .line 1280
    const-string v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 1282
    .local v0, "audioService":Landroid/media/IAudioService;
    if-nez v0, :cond_14

    .line 1283
    const-string v2, "KeyguardViewMediator"

    const-string v3, "Unable to find IAudioService interface."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    :goto_13
    return-void

    .line 1288
    :cond_14
    :try_start_14
    const-string v2, "KeyguardViewMediator"

    const-string v3, "KeyguardGetAudioService.dismissVolumePanel() run"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    invoke-interface {v0}, Landroid/media/IAudioService;->dismissVolumePanel()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1e} :catch_1f

    goto :goto_13

    .line 1290
    :catch_1f
    move-exception v1

    .line 1291
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KeyguardGetAudioService.dismissVolumePanel() threw RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method private doKeyguardLaterLocked(I)V
    .registers 29
    .param p1, "why"    # I

    .prologue
    .line 884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 887
    .local v5, "cr":Landroid/content/ContentResolver;
    const-string v24, "screen_off_timeout"

    const/16 v25, 0x7530

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v5, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    move/from16 v0, v24

    int-to-long v6, v0

    .line 891
    .local v6, "displayTimeout":J
    const-string v24, "lock_screen_lock_after_timeout"

    const/16 v25, 0x1388

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v5, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    move/from16 v0, v24

    int-to-long v13, v0

    .line 896
    .local v13, "lockAfterTimeout":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v15

    .line 900
    .local v15, "policyTimeout":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v25, "enterprise_policy"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 902
    .local v8, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/enterprise/PasswordPolicy;->getPasswordLockDelay()I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v20, v0

    .line 903
    .local v20, "unlock_delay":J
    move-wide v9, v13

    .line 904
    .local v9, "final_delay":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v24

    if-eqz v24, :cond_94

    const-wide/16 v24, 0x0

    cmp-long v24, v20, v24

    if-lez v24, :cond_94

    .line 905
    const-wide/16 v24, 0x3e8

    mul-long v24, v24, v20

    move-wide/from16 v0, v24

    invoke-static {v0, v1, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 906
    const-string v24, "KeyguardViewMediator"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "final_delay was changed by mdm"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_94
    const-wide/16 v24, 0x0

    cmp-long v24, v15, v24

    if-lez v24, :cond_153

    .line 911
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 912
    sub-long v24, v15, v6

    move-wide/from16 v0, v24

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v18

    .line 915
    .local v18, "timeout":J
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->useIndependentLockTimeout()Z

    move-result v24

    if-eqz v24, :cond_d9

    .line 916
    const/16 v24, 0x2

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_10b

    .line 917
    move-wide v0, v15

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v18

    .line 935
    :cond_bd
    :goto_bd
    const-string v24, "KeyguardViewMediator"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "timeout="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    :cond_d9
    :goto_d9
    const-wide/16 v24, 0x0

    cmp-long v24, v18, v24

    if-gtz v24, :cond_1de

    .line 969
    const/16 v24, 0x3

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_ef

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 971
    :cond_ef
    const/16 v24, 0x0

    sput-boolean v24, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwipeLockShowingBeforeTimeout:Z

    .line 972
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->swipeLockBeforeTimeout()Z

    move-result v24

    if-eqz v24, :cond_1d9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1d9

    .line 973
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V

    .line 1000
    :cond_10a
    :goto_10a
    return-void

    .line 918
    :cond_10b
    const/16 v24, 0x3

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_bd

    .line 919
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    move/from16 v24, v0

    if-eqz v24, :cond_13a

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "intelligent_sleep_mode"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_142

    const/4 v12, 0x1

    .line 922
    .local v12, "isSmartStayOn":Z
    :goto_136
    if-eqz v12, :cond_144

    const-wide/16 v6, 0x1388

    .line 925
    .end local v12    # "isSmartStayOn":Z
    :cond_13a
    :goto_13a
    cmp-long v24, v15, v6

    if-gtz v24, :cond_147

    .line 926
    const-wide/16 v18, 0x0

    goto/16 :goto_bd

    .line 921
    :cond_142
    const/4 v12, 0x0

    goto :goto_136

    .line 922
    .restart local v12    # "isSmartStayOn":Z
    :cond_144
    const-wide/16 v6, 0x2710

    goto :goto_13a

    .line 928
    .end local v12    # "isSmartStayOn":Z
    :cond_147
    cmp-long v24, v15, v9

    if-lez v24, :cond_14f

    .line 929
    sub-long v18, v9, v6

    goto/16 :goto_bd

    .line 931
    :cond_14f
    sub-long v18, v15, v6

    goto/16 :goto_bd

    .line 939
    .end local v18    # "timeout":J
    :cond_153
    move-wide/from16 v18, v9

    .line 942
    .restart local v18    # "timeout":J
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->useIndependentLockTimeout()Z

    move-result v24

    if-eqz v24, :cond_d9

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v24

    if-eqz v24, :cond_1c3

    .line 944
    const/16 v24, 0x3

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_1a0

    .line 945
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 946
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    move/from16 v24, v0

    if-eqz v24, :cond_19e

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "intelligent_sleep_mode"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1be

    const/4 v12, 0x1

    .line 949
    .restart local v12    # "isSmartStayOn":Z
    :goto_19a
    if-eqz v12, :cond_1c0

    const-wide/16 v6, 0x1388

    .line 952
    .end local v12    # "isSmartStayOn":Z
    :cond_19e
    :goto_19e
    sub-long v18, v9, v6

    .line 961
    :cond_1a0
    :goto_1a0
    const-string v24, "KeyguardViewMediator"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "timeout="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d9

    .line 948
    :cond_1be
    const/4 v12, 0x0

    goto :goto_19a

    .line 949
    .restart local v12    # "isSmartStayOn":Z
    :cond_1c0
    const-wide/16 v6, 0x2710

    goto :goto_19e

    .line 955
    .end local v12    # "isSmartStayOn":Z
    :cond_1c3
    const/16 v24, 0x3

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_1ce

    .line 956
    const-wide/16 v18, 0x1388

    goto :goto_1a0

    .line 957
    :cond_1ce
    const/16 v24, 0x2

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_1a0

    .line 958
    const-wide/16 v18, 0x0

    goto :goto_1a0

    .line 975
    :cond_1d9
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V

    goto/16 :goto_10a

    .line 980
    :cond_1de
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    add-long v22, v24, v18

    .line 981
    .local v22, "when":J
    new-instance v11, Landroid/content/Intent;

    const-string v24, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    move-object/from16 v0, v24

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 982
    .local v11, "intent":Landroid/content/Intent;
    const-string v24, "seq"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/high16 v26, 0x10000000

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v11, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    .line 985
    .local v17, "sender":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-wide/from16 v2, v22

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 986
    const-string v24, "KeyguardViewMediator"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "setting alarm to turn off keyguard, seq = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->swipeLockBeforeTimeout()Z

    move-result v24

    if-eqz v24, :cond_10a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v24

    if-eqz v24, :cond_10a

    .line 990
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    move/from16 v24, v0

    if-eqz v24, :cond_269

    .line 991
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->notifyScreenOffLocked()V

    .line 992
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V

    goto/16 :goto_10a

    .line 994
    :cond_269
    const/16 v24, 0x1

    sput-boolean v24, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwipeLockShowingBeforeTimeout:Z

    .line 995
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V

    goto/16 :goto_10a
.end method

.method private doKeyguardLocked()V
    .registers 2

    .prologue
    .line 1313
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    .line 1314
    return-void
.end method

.method private doKeyguardLocked(Landroid/os/Bundle;)V
    .registers 15
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1320
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHidden:Z

    if-nez v10, :cond_29

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v10

    if-eqz v10, :cond_29

    .line 1321
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mMaybeShow:Z

    .line 1322
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->setOffWakeTimeLimit()V

    .line 1323
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x10

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 1324
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x10

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 1325
    .local v5, "msg":Landroid/os/Message;
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    iget v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->WAKE_UP_TIMEOUT_DURATION:I

    int-to-long v11, v11

    invoke-virtual {v10, v5, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1327
    .end local v5    # "msg":Landroid/os/Message;
    :cond_29
    const-string v10, "KeyguardViewMediator"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "doKeyguard() : mMaybeShow="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mMaybeShow:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " mRequestedWakeUp="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mRequestedWakeUp:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1330
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string v10, "access_control_enabled"

    const/4 v11, 0x0

    invoke-static {v1, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6a

    .line 1332
    const-string v10, "KeyguardViewMediator"

    const-string v11, "doKeyguard: not showing because access control is enabled"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->wakeUpIfNeeded()V

    .line 1428
    :goto_69
    return-void

    .line 1337
    :cond_6a
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isDualLCDFolderDevice(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_8b

    .line 1338
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v10

    if-nez v10, :cond_8b

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isFolderOpened(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_8b

    .line 1339
    const-string v10, "KeyguardViewMediator"

    const-string v11, "doKeyguard: not showing because folder is opened"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->wakeUpIfNeeded()V

    goto :goto_69

    .line 1346
    :cond_8b
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-nez v10, :cond_aa

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled()Z

    move-result v10

    if-eqz v10, :cond_9f

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockEnabled()Z

    move-result v10

    if-nez v10, :cond_aa

    .line 1347
    :cond_9f
    const-string v10, "KeyguardViewMediator"

    const-string v11, "doKeyguard: not showing because externally disabled"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->wakeUpIfNeeded()V

    goto :goto_69

    .line 1363
    :cond_aa
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_bd

    .line 1364
    const-string v10, "KeyguardViewMediator"

    const-string v11, "doKeyguard: not showing because it is already showing"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->wakeUpIfNeeded()V

    goto :goto_69

    .line 1370
    :cond_bd
    const-string v10, "keyguard.no_require_sim"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_fe

    const/4 v7, 0x1

    .line 1372
    .local v7, "requireSim":Z
    :goto_c7
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v6

    .line 1373
    .local v6, "provisioned":Z
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v8

    .line 1374
    .local v8, "state":Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-virtual {v8}, Lcom/android/internal/telephony/IccCardConstants$State;->isPinLocked()Z

    move-result v10

    if-nez v10, :cond_e3

    sget-object v10, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v8, v10, :cond_e1

    sget-object v10, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v8, v10, :cond_100

    :cond_e1
    if-eqz v7, :cond_100

    :cond_e3
    const/4 v4, 0x1

    .line 1380
    .local v4, "lockedOrMissing":Z
    :goto_e4
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v10

    if-eqz v10, :cond_ee

    .line 1381
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getPINPUKRequest()Z

    move-result v4

    .line 1384
    :cond_ee
    if-nez v4, :cond_102

    if-nez v6, :cond_102

    .line 1385
    const-string v10, "KeyguardViewMediator"

    const-string v11, "doKeyguard: not showing because device isn\'t provisioned and the sim is not locked or missing"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->wakeUpIfNeeded()V

    goto/16 :goto_69

    .line 1370
    .end local v4    # "lockedOrMissing":Z
    .end local v6    # "provisioned":Z
    .end local v7    # "requireSim":Z
    .end local v8    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_fe
    const/4 v7, 0x0

    goto :goto_c7

    .line 1374
    .restart local v6    # "provisioned":Z
    .restart local v7    # "requireSim":Z
    .restart local v8    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_100
    const/4 v4, 0x0

    goto :goto_e4

    .line 1391
    .restart local v4    # "lockedOrMissing":Z
    :cond_102
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUserManager:Landroid/os/UserManager;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x2

    if-ge v10, v11, :cond_136

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v10

    if-eqz v10, :cond_136

    if-nez v4, :cond_136

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockEnabled()Z

    move-result v10

    if-nez v10, :cond_136

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled()Z

    move-result v10

    if-nez v10, :cond_136

    .line 1396
    const-string v10, "KeyguardViewMediator"

    const-string v11, "doKeyguard: not showing because lockscreen is off"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->wakeUpIfNeeded()V

    goto/16 :goto_69

    .line 1402
    :cond_136
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "automatic_unlock"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_17e

    const/4 v3, 0x1

    .line 1403
    .local v3, "isAutoUnlock":Z
    :goto_147
    const-string v10, "window"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v9

    .line 1404
    .local v9, "wm":Landroid/view/IWindowManager;
    const/4 v0, 0x1

    .line 1406
    .local v0, "coverOpen":Z
    :try_start_152
    invoke-interface {v9}, Landroid/view/IWindowManager;->isCoverOpen()Z
    :try_end_155
    .catch Landroid/os/RemoteException; {:try_start_152 .. :try_end_155} :catch_180

    move-result v0

    .line 1410
    :goto_156
    if-nez v0, :cond_189

    if-eqz v3, :cond_189

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v10

    if-nez v10, :cond_189

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockEnabled()Z

    move-result v10

    if-nez v10, :cond_189

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled()Z

    move-result v10

    if-nez v10, :cond_189

    .line 1412
    const-string v10, "KeyguardViewMediator"

    const-string v11, "doKeyguard: not showing because cover is closed and not secured"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->wakeUpIfNeeded()V

    goto/16 :goto_69

    .line 1402
    .end local v0    # "coverOpen":Z
    .end local v3    # "isAutoUnlock":Z
    .end local v9    # "wm":Landroid/view/IWindowManager;
    :cond_17e
    const/4 v3, 0x0

    goto :goto_147

    .line 1407
    .restart local v0    # "coverOpen":Z
    .restart local v3    # "isAutoUnlock":Z
    .restart local v9    # "wm":Landroid/view/IWindowManager;
    :catch_180
    move-exception v2

    .line 1408
    .local v2, "e":Landroid/os/RemoteException;
    const-string v10, "KeyguardViewMediator"

    const-string v11, "error on isCoverOpen"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_156

    .line 1418
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_189
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isFactoryMode()Z

    move-result v10

    if-eqz v10, :cond_19b

    .line 1419
    const-string v10, "KeyguardViewMediator"

    const-string v11, "doKeyguard: not showing because factory mode"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->wakeUpIfNeeded()V

    goto/16 :goto_69

    .line 1424
    :cond_19b
    const-string v10, "KeyguardViewMediator"

    const-string v11, "doKeyguard: showing the lock screen"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSuppressNextUnLockSound:Z

    .line 1426
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->dismissVolumePanel()V

    .line 1427
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->showLocked(Landroid/os/Bundle;)V

    goto/16 :goto_69
.end method

.method private dumpStackTrack(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 14
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "depth"    # I

    .prologue
    .line 1192
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 1193
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 1194
    .local v3, "elements":[Ljava/lang/StackTraceElement;
    array-length v5, v3

    if-ge p3, v5, :cond_52

    move v0, p3

    .line 1195
    .local v0, "callDepth":I
    :goto_d
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_e
    if-ge v4, v0, :cond_54

    .line 1196
    aget-object v2, v3, v4

    .line 1197
    .local v2, "element":Ljava/lang/StackTraceElement;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%s.%s (%s:%s)"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 1194
    .end local v0    # "callDepth":I
    .end local v2    # "element":Ljava/lang/StackTraceElement;
    .end local v4    # "i":I
    :cond_52
    array-length v0, v3

    goto :goto_d

    .line 1199
    .restart local v0    # "callDepth":I
    .restart local v4    # "i":I
    :cond_54
    return-void
.end method

.method public static getAvatarCache()Lcom/android/internal/policy/impl/keyguard/MultiUserAvatarCache;
    .registers 1

    .prologue
    .line 2239
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sMultiUserAvatarCache:Lcom/android/internal/policy/impl/keyguard/MultiUserAvatarCache;

    return-object v0
.end method

.method private handleHide()V
    .registers 3

    .prologue
    .line 2046
    monitor-enter p0

    .line 2047
    :try_start_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleHide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2049
    const-string v0, "KeyguardViewMediator"

    const-string v1, "attempt to hide the keyguard while waking, ignored"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    monitor-exit p0

    .line 2070
    :goto_18
    return-void

    .line 2056
    :cond_19
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mPhoneState:I

    if-nez v0, :cond_28

    .line 2057
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSuppressNextUnLockSound:Z

    if-eqz v0, :cond_28

    .line 2058
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSuppressNextUnLockSound:Z

    .line 2059
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->playSounds(Z)V

    .line 2063
    :cond_28
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->hide()V

    .line 2064
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 2065
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mMaybeShow:Z

    .line 2066
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 2067
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 2068
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 2069
    monitor-exit p0

    goto :goto_18

    :catchall_3e
    move-exception v0

    monitor-exit p0
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_3e

    throw v0
.end method

.method private handleKeyguardDone(Z)V
    .registers 4
    .param p1, "wakeup"    # Z

    .prologue
    .line 1892
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleKeyguardDone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleHide()V

    .line 1894
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->userActivity()V

    .line 1895
    if-eqz p1, :cond_12

    .line 1896
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->wakeUp()V

    .line 1899
    :cond_12
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    .line 1901
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->isAddWidgetShow()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1902
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sendBroadcastShrinkSPlannerWidget()V

    .line 1904
    :cond_1e
    return-void
.end method

.method private handleKeyguardDoneDrawing()V
    .registers 3

    .prologue
    .line 1919
    monitor-enter p0

    .line 1921
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    if-eqz v0, :cond_19

    .line 1922
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleKeyguardDoneDrawing: notifying mWaitingUntilKeyguardVisible"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 1924
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1929
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1931
    :cond_19
    monitor-exit p0

    .line 1932
    return-void

    .line 1931
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method private handleNotifyScreenOff()V
    .registers 3

    .prologue
    .line 2203
    monitor-enter p0

    .line 2204
    :try_start_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleNotifyScreenOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->onScreenTurnedOff()V

    .line 2206
    monitor-exit p0

    .line 2207
    return-void

    .line 2206
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method private handleNotifyScreenOn(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V
    .registers 4
    .param p1, "showListener"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;

    .prologue
    .line 2214
    monitor-enter p0

    .line 2215
    :try_start_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleNotifyScreenOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->onScreenTurnedOn(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V

    .line 2217
    monitor-exit p0

    .line 2218
    return-void

    .line 2217
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method private handleReset(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 2173
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mResetWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2174
    if-nez p1, :cond_c

    .line 2175
    new-instance p1, Landroid/os/Bundle;

    .end local p1    # "options":Landroid/os/Bundle;
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 2177
    .restart local p1    # "options":Landroid/os/Bundle;
    :cond_c
    const-string v0, "is_switching_user"

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSwitchingUser:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2178
    monitor-enter p0

    .line 2179
    :try_start_14
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleReset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->reset(Landroid/os/Bundle;)V

    .line 2181
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_27

    .line 2182
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mResetWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2183
    return-void

    .line 2181
    :catchall_27
    move-exception v0

    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v0
.end method

.method private handleSetHidden(Z)V
    .registers 3
    .param p1, "isHidden"    # Z

    .prologue
    .line 1245
    monitor-enter p0

    .line 1246
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHidden:Z

    if-eq v0, p1, :cond_d

    .line 1247
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHidden:Z

    .line 1248
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 1249
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 1251
    :cond_d
    monitor-exit p0

    .line 1252
    return-void

    .line 1251
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method private handleShow(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 2015
    monitor-enter p0

    .line 2016
    :try_start_1
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleShow : mMaybeShow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mMaybeShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mRequestedWakeUp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mRequestedWakeUp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSystemReady:Z

    if-nez v0, :cond_2d

    monitor-exit p0

    .line 2039
    :goto_2c
    return-void

    .line 2020
    :cond_2d
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->playSounds(Z)V

    .line 2022
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->show(Landroid/os/Bundle;)V

    .line 2023
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 2025
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 2026
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 2027
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 2028
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->userActivity()V
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_55

    .line 2030
    :try_start_45
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const-string v1, "lock"

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4e} :catch_58
    .catchall {:try_start_45 .. :try_end_4e} :catchall_55

    .line 2037
    :goto_4e
    :try_start_4e
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2038
    monitor-exit p0

    goto :goto_2c

    :catchall_55
    move-exception v0

    monitor-exit p0
    :try_end_57
    .catchall {:try_start_4e .. :try_end_57} :catchall_55

    throw v0

    .line 2031
    :catch_58
    move-exception v0

    goto :goto_4e
.end method

.method private handleUpdateRSSI(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "extra"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 2324
    const-string v2, "android.bluetooth.device.extra.RSSI"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2325
    .local v1, "rssi":I
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 2326
    .local v0, "RemoteRssidevice":Landroid/bluetooth/BluetoothDevice;
    const-string v2, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleUpdateRSSI( rssi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", BluetoothDevice = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    const/16 v2, -0x3a

    if-lt v1, v2, :cond_4e

    .line 2329
    const-string v2, "KeyguardViewMediator"

    const-string v3, "handleUpdateRSSI(SMART_LOCK_SECURE_LOCK_TO_SWIPE_LOCK)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2330
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSwipeSmartLock()Z

    move-result v2

    if-nez v2, :cond_4d

    .line 2331
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setSwipeSmartLock(Z)V

    .line 2332
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V

    .line 2341
    :cond_4d
    :goto_4d
    return-void

    .line 2334
    :cond_4e
    const/16 v2, -0x48

    if-gt v1, v2, :cond_4d

    .line 2335
    const-string v2, "KeyguardViewMediator"

    const-string v3, "handleUpdateRSSI(SMART_LOCK_SWIPE_LOCK_TO_SECURE_LOCK) "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2336
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSwipeSmartLock()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 2337
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setSwipeSmartLock(Z)V

    .line 2338
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V

    goto :goto_4d
.end method

.method private handleVerifyUnlock()V
    .registers 3

    .prologue
    .line 2190
    monitor-enter p0

    .line 2191
    :try_start_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleVerifyUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2192
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->verifyUnlock()V

    .line 2193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 2194
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 2195
    monitor-exit p0

    .line 2196
    return-void

    .line 2195
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method

.method private handleWakeWhenReady(I)V
    .registers 5
    .param p1, "keyCode"    # I

    .prologue
    .line 2137
    monitor-enter p0

    .line 2138
    :try_start_1
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleWakeWhenReady("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") : mMaybeShow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mMaybeShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mMaybeShow:Z

    if-eqz v0, :cond_36

    .line 2140
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleWakeWhenReady() : will be shown soon"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->requestWakeUpAfterDrawing(Z)V

    .line 2142
    monitor-exit p0

    .line 2166
    :goto_35
    return-void

    .line 2147
    :cond_36
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->wakeWhenReadyTq(I)Z

    move-result v0

    if-nez v0, :cond_48

    .line 2149
    const-string v0, "KeyguardViewMediator"

    const-string v1, "mKeyguardViewManager.wakeWhenReadyTq did not poke wake lock, so poke it ourselves"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->userActivity()V

    .line 2157
    :cond_48
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2159
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isDualLCDFolderDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 2160
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v0

    if-nez v0, :cond_6f

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isFolderOpened(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 2161
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleWakeWhenReady, Folder is opened, keyguardDone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    .line 2165
    :cond_6f
    monitor-exit p0

    goto :goto_35

    :catchall_71
    move-exception v0

    monitor-exit p0
    :try_end_73
    .catchall {:try_start_1 .. :try_end_73} :catchall_71

    throw v0
.end method

.method private hideLocked()V
    .registers 4

    .prologue
    .line 1532
    const-string v1, "KeyguardViewMediator"

    const-string v2, "hideLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1534
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1535
    return-void
.end method

.method private isAssistantAvailable()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 2234
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSearchManager:Landroid/app/SearchManager;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSearchManager:Landroid/app/SearchManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method private isFactoryMode()Z
    .registers 4

    .prologue
    .line 2265
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2267
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/os/FactoryTest;->isFactoryMode(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Z

    move-result v1

    return v1
.end method

.method private maybeSendUserPresentBroadcast()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1043
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSystemReady:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_1c

    .line 1048
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    .line 1050
    :cond_1c
    return-void
.end method

.method private notifyScreenOffLocked()V
    .registers 3

    .prologue
    .line 1479
    const-string v0, "KeyguardViewMediator"

    const-string v1, "notifyScreenOffLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1481
    return-void
.end method

.method private notifyScreenOnLocked(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V
    .registers 5
    .param p1, "showListener"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;

    .prologue
    .line 1489
    const-string v1, "KeyguardViewMediator"

    const-string v2, "notifyScreenOnLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1491
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1492
    return-void
.end method

.method private performCPUBoost()V
    .registers 9

    .prologue
    .line 1705
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v2, "KEYGUARD_BOOSTER"

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 1706
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mCpuBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_2d

    .line 1707
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v7

    .line 1708
    .local v7, "supportedCPUFreqTable":[I
    if-eqz v7, :cond_26

    .line 1709
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mCpuBooster:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    const/4 v2, 0x0

    aget v2, v7, v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 1713
    :cond_26
    :try_start_26
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mCpuBooster:Landroid/os/DVFSHelper;

    sget v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->BOOSTING_TIMEOUT:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2d} :catch_2e

    .line 1719
    .end local v7    # "supportedCPUFreqTable":[I
    :cond_2d
    :goto_2d
    return-void

    .line 1714
    .restart local v7    # "supportedCPUFreqTable":[I
    :catch_2e
    move-exception v6

    .line 1715
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "KeyguardViewMediator"

    const-string v1, "mCpuBooster.acquire is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d
.end method

.method private playSounds(Z)V
    .registers 11
    .param p1, "locked"    # Z

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1937
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    if-eqz v0, :cond_b

    .line 1938
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 2000
    :cond_a
    :goto_a
    return-void

    .line 1941
    :cond_b
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isClearCoverClosed()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1943
    :cond_17
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1944
    .local v7, "cr":Landroid/content/ContentResolver;
    const-string v0, "lockscreen_sounds_enabled"

    invoke-static {v7, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_a

    .line 1946
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "lockscreen_ripple_effect"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 1951
    .local v8, "unlockEffect":I
    packed-switch v8, :pswitch_data_a4

    .line 1966
    :goto_34
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 1967
    if-eqz p1, :cond_80

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSoundId:I

    .line 1987
    .local v1, "whichSound":I
    :goto_3e
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSoundStreamId:I

    invoke-virtual {v0, v2}, Landroid/media/SoundPool;->stop(I)V

    .line 1989
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_61

    .line 1990
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    .line 1991
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_a

    .line 1992
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mMasterStreamType:I

    .line 1995
    :cond_61
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mMasterStreamType:I

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1997
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    const/high16 v6, 0x3f800000

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSoundStreamId:I

    goto :goto_a

    .line 1954
    .end local v1    # "whichSound":I
    :pswitch_7a
    const/4 v8, 0x3

    .line 1955
    goto :goto_34

    .line 1957
    :pswitch_7c
    const/4 v8, 0x1

    .line 1958
    goto :goto_34

    .line 1960
    :pswitch_7e
    const/4 v8, 0x2

    goto :goto_34

    .line 1967
    :cond_80
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    goto :goto_3e

    .line 1969
    :cond_83
    if-eqz p1, :cond_94

    .line 1970
    if-ne v8, v3, :cond_8a

    .line 1971
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLensLockSoundId:I

    .restart local v1    # "whichSound":I
    goto :goto_3e

    .line 1972
    .end local v1    # "whichSound":I
    :cond_8a
    if-eq v8, v4, :cond_8e

    if-ne v8, v6, :cond_91

    .line 1973
    :cond_8e
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockSoundId:I

    .restart local v1    # "whichSound":I
    goto :goto_3e

    .line 1975
    .end local v1    # "whichSound":I
    :cond_91
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mNoneLockSoundId:I

    .restart local v1    # "whichSound":I
    goto :goto_3e

    .line 1978
    .end local v1    # "whichSound":I
    :cond_94
    if-eq v8, v3, :cond_98

    if-ne v8, v6, :cond_9b

    .line 1979
    :cond_98
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLensUnlockSoundId:I

    .restart local v1    # "whichSound":I
    goto :goto_3e

    .line 1980
    .end local v1    # "whichSound":I
    :cond_9b
    if-ne v8, v4, :cond_a0

    .line 1981
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    .restart local v1    # "whichSound":I
    goto :goto_3e

    .line 1983
    .end local v1    # "whichSound":I
    :cond_a0
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mNoneUnlockSoundId:I

    .restart local v1    # "whichSound":I
    goto :goto_3e

    .line 1951
    nop

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_7a
        :pswitch_7a
        :pswitch_7c
        :pswitch_7e
    .end packed-switch
.end method

.method private resetStateLocked(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1457
    const-string v1, "KeyguardViewMediator"

    const-string v2, "resetStateLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sendBroadcastShrinkSPlannerWidget()V

    .line 1459
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1460
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1461
    return-void
.end method

.method private sendBroadcastShrinkSPlannerWidget()V
    .registers 6

    .prologue
    .line 1441
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110072

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 1442
    .local v2, "isSPlannerWidget":Z
    if-eqz v2, :cond_26

    .line 1443
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getContextualWidgets()[I

    move-result-object v0

    .line 1444
    .local v0, "contextualWidgetIds":[I
    if-eqz v0, :cond_26

    array-length v3, v0

    if-nez v3, :cond_26

    .line 1445
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.keyguard.shrinkWidget"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1446
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1449
    .end local v0    # "contextualWidgetIds":[I
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_26
    return-void
.end method

.method private sendUserPresentBroadcast()V
    .registers 4

    .prologue
    .line 1907
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_18

    .line 1908
    new-instance v0, Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 1909
    .local v0, "currentUser":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUserPresentIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1911
    .end local v0    # "currentUser":Landroid/os/UserHandle;
    :cond_18
    return-void
.end method

.method private setOffWakeTimeLimit()V
    .registers 10

    .prologue
    .line 1298
    const-wide/16 v0, 0x1388

    .line 1300
    .local v0, "TIMEOUT_MILLIS":J
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mIsInLandscapeWakeTimeLimit:Z

    .line 1303
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/16 v7, 0x1388

    add-long v3, v5, v7

    .line 1304
    .local v3, "when":J
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.internal.policy.impl.Keyguard.LANDSCAPE_WAKE_TIME_LIMIT_EXPIRED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1305
    .local v2, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x10000000

    invoke-static {v5, v6, v2, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLandscapeWakeTimeLimitOffIntent:Landroid/app/PendingIntent;

    .line 1307
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLandscapeWakeTimeLimitOffIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v6, v3, v4, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1309
    const-string v5, "KeyguardViewMediator"

    const-string v6, "setting alarm to set off wake time limit"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    return-void
.end method

.method private showLocked(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1520
    const-string v1, "KeyguardViewMediator"

    const-string v2, "showLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1523
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1524
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1525
    return-void
.end method

.method private updateActivityLockScreenState()V
    .registers 3

    .prologue
    .line 2004
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHidden:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_d
    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setLockScreenShown(Z)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_13

    .line 2008
    :goto_10
    return-void

    .line 2004
    :cond_11
    const/4 v0, 0x0

    goto :goto_d

    .line 2006
    :catch_13
    move-exception v0

    goto :goto_10
.end method

.method private verifyUnlockLocked()V
    .registers 3

    .prologue
    .line 1468
    const-string v0, "KeyguardViewMediator"

    const-string v1, "verifyUnlockLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1470
    return-void
.end method

.method private wakeWhenReady(I)V
    .registers 6
    .param p1, "keyCode"    # I

    .prologue
    .line 1509
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1511
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1512
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1513
    return-void
.end method


# virtual methods
.method public changeLidState(Z)V
    .registers 2
    .param p1, "lidOpen"    # Z

    .prologue
    .line 2271
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLidOpened:Z

    .line 2272
    return-void
.end method

.method public dismiss()V
    .registers 2

    .prologue
    .line 1434
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHidden:Z

    if-nez v0, :cond_d

    .line 1435
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->dismiss()V

    .line 1437
    :cond_d
    return-void
.end method

.method public doKeyguardTimeout(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0xd

    .line 1259
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1260
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1261
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1262
    return-void
.end method

.method public handleShowAssistant()V
    .registers 2

    .prologue
    .line 2230
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->showAssistant()V

    .line 2231
    return-void
.end method

.method public isDismissable()Z
    .registers 2

    .prologue
    .line 2221
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwipeLockShowingBeforeTimeout:Z

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isHidden()Z
    .registers 2

    .prologue
    .line 1223
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHidden:Z

    return v0
.end method

.method public isInputRestricted()Z
    .registers 4

    .prologue
    .line 1270
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1271
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInputRestricted(), mShowing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNeedToReshowWhenReenabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInputRestricted(), isDeviceProvisioned = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    :cond_4a
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-nez v0, :cond_5a

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_5c

    :cond_5a
    const/4 v0, 0x1

    :goto_5b
    return v0

    :cond_5c
    const/4 v0, 0x0

    goto :goto_5b
.end method

.method public isSecure()Z
    .registers 2

    .prologue
    .line 1538
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 1169
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    return v0
.end method

.method public isShowingAndNotHidden()Z
    .registers 2

    .prologue
    .line 1176
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHidden:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public keyguardDone(ZZ)V
    .registers 10
    .param p1, "authenticated"    # Z
    .param p2, "wakeup"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1768
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 1769
    monitor-enter p0

    .line 1772
    :try_start_5
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isSupportSPC()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1773
    new-instance v0, Landroid/content/Intent;

    const-string v4, "unlock_broadcast"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1774
    .local v0, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1776
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_17
    const v4, 0x11170

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1777
    const-string v4, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "keyguardDone("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1779
    .local v1, "msg":Landroid/os/Message;
    if-eqz p2, :cond_6a

    :goto_46
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 1780
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1782
    if-eqz p1, :cond_54

    .line 1783
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->clearFailedUnlockAttempts()V

    .line 1786
    :cond_54
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v2, :cond_68

    .line 1787
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    invoke-interface {v2, p1}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    .line 1788
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .line 1790
    if-eqz p1, :cond_68

    .line 1793
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 1794
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 1797
    :cond_68
    monitor-exit p0

    .line 1798
    return-void

    :cond_6a
    move v2, v3

    .line 1779
    goto :goto_46

    .line 1797
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_6c
    move-exception v2

    monitor-exit p0
    :try_end_6e
    .catchall {:try_start_5 .. :try_end_6e} :catchall_6c

    throw v2
.end method

.method public launchClearCover()V
    .registers 7

    .prologue
    .line 2243
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mIsCoverOpen:Z

    if-nez v3, :cond_c

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mIsInCall:Z

    if-nez v3, :cond_c

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSuppressCoverUI:Z

    if-eqz v3, :cond_d

    .line 2261
    :cond_c
    :goto_c
    return-void

    .line 2246
    :cond_d
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2248
    :try_start_15
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.android.app.ClearCover"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2249
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget-boolean v3, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v3, :cond_c

    .line 2251
    const-string v3, "KeyguardViewMediator"

    const-string v4, "launchClearCover"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2252
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.app.action.CLEAR_COVER_LOCKSCREEN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2253
    .local v2, "it":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2254
    const/high16 v3, 0x800000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2255
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_43
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_43} :catch_44

    goto :goto_c

    .line 2257
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "it":Landroid/content/Intent;
    :catch_44
    move-exception v0

    .line 2258
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "KeyguardViewMediator"

    const-string v4, "package not found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public maybeShow()Z
    .registers 2

    .prologue
    .line 1188
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mMaybeShow:Z

    return v0
.end method

.method public onDreamingStarted()V
    .registers 2

    .prologue
    .line 1057
    monitor-enter p0

    .line 1058
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mScreenOn:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isSupportSPC()Z

    move-result v0

    if-nez v0, :cond_17

    .line 1059
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLaterLocked(I)V

    .line 1061
    :cond_17
    monitor-exit p0

    .line 1062
    return-void

    .line 1061
    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public onDreamingStopped()V
    .registers 2

    .prologue
    .line 1068
    monitor-enter p0

    .line 1069
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mScreenOn:Z

    if-eqz v0, :cond_8

    .line 1070
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->cancelDoKeyguardLaterLocked()V

    .line 1072
    :cond_8
    monitor-exit p0

    .line 1073
    return-void

    .line 1072
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public onScreenTurnedOff(I)V
    .registers 6
    .param p1, "why"    # I

    .prologue
    const/4 v0, 0x0

    .line 839
    monitor-enter p0

    .line 840
    const/4 v1, 0x0

    :try_start_3
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mScreenOn:Z

    .line 841
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScreenTurnedOff("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 843
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 844
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 845
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 847
    :cond_3e
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mMaybeShow:Z

    .line 849
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 854
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v1

    if-nez v1, :cond_54

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-nez v1, :cond_55

    :cond_54
    const/4 v0, 0x1

    .line 857
    .local v0, "lockImmediately":Z
    :cond_55
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v1, :cond_72

    .line 858
    const-string v1, "KeyguardViewMediator"

    const-string v2, "pending exit secure callback cancelled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    .line 860
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .line 861
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-nez v1, :cond_70

    .line 862
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->hideLocked()V

    .line 875
    :cond_70
    :goto_70
    monitor-exit p0

    .line 876
    return-void

    .line 864
    :cond_72
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v1, :cond_85

    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwipeLockShowingBeforeTimeout:Z

    if-nez v1, :cond_85

    .line 865
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->notifyScreenOffLocked()V

    .line 866
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V

    goto :goto_70

    .line 875
    .end local v0    # "lockImmediately":Z
    :catchall_82
    move-exception v1

    monitor-exit p0
    :try_end_84
    .catchall {:try_start_3 .. :try_end_84} :catchall_82

    throw v1

    .line 867
    .restart local v0    # "lockImmediately":Z
    :cond_85
    const/4 v1, 0x3

    if-eq p1, v1, :cond_8d

    const/4 v1, 0x2

    if-ne p1, v1, :cond_91

    if-nez v0, :cond_91

    .line 869
    :cond_8d
    :try_start_8d
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLaterLocked(I)V

    goto :goto_70

    .line 870
    :cond_91
    const/4 v1, 0x4

    if-eq p1, v1, :cond_70

    .line 873
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    :try_end_97
    .catchall {:try_start_8d .. :try_end_97} :catchall_82

    goto :goto_70
.end method

.method public onScreenTurnedOn(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V
    .registers 5
    .param p1, "showListener"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;

    .prologue
    .line 1010
    monitor-enter p0

    .line 1012
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSystemReady:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->requestBluetoothRSSI()V

    .line 1014
    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mMaybeShow:Z

    .line 1015
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1016
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1017
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1018
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1020
    :cond_2e
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1021
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1024
    :cond_3b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mScreenOn:Z

    .line 1025
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mRequestedWakeUp:Z

    .line 1027
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mIsInLandscapeWakeTimeLimit:Z

    .line 1028
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLandscapeWakeTimeLimitOffIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1030
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->cancelDoKeyguardLaterLocked()V

    .line 1031
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenTurnedOn, seq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    if-eqz p1, :cond_6d

    .line 1033
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->notifyScreenOnLocked(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V

    .line 1035
    :cond_6d
    monitor-exit p0
    :try_end_6e
    .catchall {:try_start_1 .. :try_end_6e} :catchall_81

    .line 1036
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->maybeSendUserPresentBroadcast()V

    .line 1038
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSystemReady:Z

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v0

    if-nez v0, :cond_80

    .line 1039
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->userActivity()V

    .line 1040
    :cond_80
    return-void

    .line 1035
    :catchall_81
    move-exception v0

    :try_start_82
    monitor-exit p0
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    throw v0
.end method

.method public onSystemReady()V
    .registers 4

    .prologue
    .line 799
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSearchManager:Landroid/app/SearchManager;

    .line 800
    monitor-enter p0

    .line 801
    :try_start_d
    const-string v0, "KeyguardViewMediator"

    const-string v1, "onSystemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isDualModeDevice()I

    move-result v0

    if-eqz v0, :cond_26

    .line 803
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SIM_MANAGE_DONE"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 805
    :cond_26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSystemReady:Z

    .line 806
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 817
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 819
    const-string v0, "KeyguardViewMediator"

    const-string v1, "suppressing biometric unlock during boot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 825
    :goto_4d
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V

    .line 826
    monitor-exit p0
    :try_end_51
    .catchall {:try_start_d .. :try_end_51} :catchall_5c

    .line 829
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->maybeSendUserPresentBroadcast()V

    .line 830
    return-void

    .line 822
    :cond_55
    :try_start_55
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    goto :goto_4d

    .line 826
    :catchall_5c
    move-exception v0

    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_55 .. :try_end_5e} :catchall_5c

    throw v0
.end method

.method public onWakeKeyWhenKeyguardShowingTq(I)V
    .registers 5
    .param p1, "keyCode"    # I

    .prologue
    .line 1733
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWakeKeyWhenKeyguardShowing("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    const/16 v0, 0x10b

    if-eq p1, v0, :cond_26

    const/16 v0, 0x10c

    if-ne p1, v0, :cond_27

    .line 1746
    :cond_26
    :goto_26
    return-void

    .line 1738
    :cond_27
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1739
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->performCPUBoost()V

    .line 1745
    :cond_30
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->wakeWhenReady(I)V

    goto :goto_26
.end method

.method public onWakeMotionWhenKeyguardShowingTq()V
    .registers 3

    .prologue
    .line 1759
    const-string v0, "KeyguardViewMediator"

    const-string v1, "onWakeMotionWhenKeyguardShowing()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->wakeWhenReady(I)V

    .line 1765
    return-void
.end method

.method public requestBluetoothRSSI()V
    .registers 9

    .prologue
    .line 2296
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v4, :cond_18

    .line 2297
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    sput-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 2298
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v4, :cond_18

    .line 2299
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 2303
    :cond_18
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v4, :cond_78

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v4, :cond_78

    .line 2304
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    .line 2306
    .local v2, "pairedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_78

    .line 2308
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_78

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 2309
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothHeadset;->getSamsungHandsfreeDeviceType(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    .line 2310
    .local v3, "type":Ljava/lang/String;
    const-string v4, "WA"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 2311
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->readRawRssi()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->connectedBTforSmartLock:Z

    .line 2312
    const-string v4, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestBluetoothRSSI device : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " readRawRssi - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->connectedBTforSmartLock:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "pairedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v3    # "type":Ljava/lang/String;
    :cond_78
    return-void
.end method

.method public requestWakeUpAfterDrawing(Z)V
    .registers 5
    .param p1, "request"    # Z

    .prologue
    .line 1180
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestWakeUpAfterDrawing() request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mMaybeShow:Z

    if-eqz v0, :cond_1f

    .line 1183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mRequestedWakeUp:Z

    .line 1185
    :cond_1f
    return-void
.end method

.method public setCurrentUser(I)V
    .registers 3
    .param p1, "newUserId"    # I

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setCurrentUser(I)V

    .line 1550
    return-void
.end method

.method public setHidden(Z)V
    .registers 9
    .param p1, "isHidden"    # Z

    .prologue
    const/16 v6, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1231
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHidden:Z

    if-eq v1, p1, :cond_20

    .line 1232
    const-string v1, "KeyguardViewMediator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setHidden "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    :cond_20
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    if-nez p1, :cond_3b

    move v1, v2

    :goto_25
    invoke-virtual {v4, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sendKeyguardVisibilityChanged(Z)V

    .line 1236
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1237
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_3d

    :goto_31
    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1238
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1239
    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :cond_3b
    move v1, v3

    .line 1235
    goto :goto_25

    :cond_3d
    move v2, v3

    .line 1237
    goto :goto_31
.end method

.method public setKeyguardEnabled(Z)V
    .registers 7
    .param p1, "enabled"    # Z

    .prologue
    .line 1081
    monitor-enter p0

    .line 1082
    :try_start_1
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setKeyguardEnabled("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1086
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 1087
    monitor-exit p0

    .line 1137
    :goto_2f
    return-void

    .line 1090
    :cond_30
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 1092
    if-nez p1, :cond_57

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v1, :cond_57

    .line 1093
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v1, :cond_48

    .line 1094
    const-string v1, "KeyguardViewMediator"

    const-string v2, "in process of verifyUnlock request, ignoring"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    monitor-exit p0

    goto :goto_2f

    .line 1136
    :catchall_45
    move-exception v1

    monitor-exit p0
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_45

    throw v1

    .line 1101
    :cond_48
    :try_start_48
    const-string v1, "KeyguardViewMediator"

    const-string v2, "remembering to reshow, hiding keyguard, disabling status bar expansion"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 1104
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->hideLocked()V

    .line 1136
    :cond_55
    :goto_55
    monitor-exit p0

    goto :goto_2f

    .line 1105
    :cond_57
    if-eqz p1, :cond_55

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    if-eqz v1, :cond_55

    .line 1107
    const-string v1, "KeyguardViewMediator"

    const-string v2, "previously hidden, reshowing, reenabling status bar expansion"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 1111
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v1, :cond_80

    .line 1112
    const-string v1, "KeyguardViewMediator"

    const-string v2, "onKeyguardExitResult(false), resetting"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    .line 1114
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .line 1115
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V

    goto :goto_55

    .line 1117
    :cond_80
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSuppressNextUnLockSound:Z

    .line 1118
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->showLocked(Landroid/os/Bundle;)V

    .line 1123
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 1124
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1125
    const-string v1, "KeyguardViewMediator"

    const-string v2, "waiting until mWaitingUntilKeyguardVisible is false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    :goto_9a
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z
    :try_end_9c
    .catchall {:try_start_48 .. :try_end_9c} :catchall_45

    if-eqz v1, :cond_ab

    .line 1128
    :try_start_9e
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_a1
    .catch Ljava/lang/InterruptedException; {:try_start_9e .. :try_end_a1} :catch_a2
    .catchall {:try_start_9e .. :try_end_a1} :catchall_45

    goto :goto_9a

    .line 1129
    :catch_a2
    move-exception v0

    .line 1130
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_a3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_9a

    .line 1133
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_ab
    const-string v1, "KeyguardViewMediator"

    const-string v2, "done waiting for mWaitingUntilKeyguardVisible"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b2
    .catchall {:try_start_a3 .. :try_end_b2} :catchall_45

    goto :goto_55
.end method

.method public showAssistant()V
    .registers 4

    .prologue
    .line 2225
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2226
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2227
    return-void
.end method

.method public userActivity()V
    .registers 3

    .prologue
    .line 636
    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->userActivity(J)V

    .line 637
    return-void
.end method

.method public userActivity(J)V
    .registers 8
    .param p1, "holdMs"    # J

    .prologue
    const/4 v4, 0x0

    .line 642
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 643
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JIZ)V

    .line 653
    :cond_11
    :goto_11
    return-void

    .line 647
    :cond_12
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v0

    if-nez v0, :cond_11

    .line 648
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/os/PowerManager;->userActivity(JIZ)V

    goto :goto_11
.end method

.method public verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
    .registers 4
    .param p1, "callback"    # Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .prologue
    .line 1143
    monitor-enter p0

    .line 1144
    :try_start_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "verifyUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1147
    const-string v0, "KeyguardViewMediator"

    const-string v1, "ignoring because device isn\'t provisioned"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    .line 1162
    :goto_1b
    monitor-exit p0

    .line 1163
    return-void

    .line 1149
    :cond_1d
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-eqz v0, :cond_30

    .line 1153
    const-string v0, "KeyguardViewMediator"

    const-string v1, "verifyUnlock called when not externally disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    goto :goto_1b

    .line 1162
    :catchall_2d
    move-exception v0

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_2d

    throw v0

    .line 1155
    :cond_30
    :try_start_30
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v0, :cond_39

    .line 1157
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    goto :goto_1b

    .line 1159
    :cond_39
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .line 1160
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->verifyUnlockLocked()V
    :try_end_3e
    .catchall {:try_start_30 .. :try_end_3e} :catchall_2d

    goto :goto_1b
.end method

.method public wakeUp()V
    .registers 4

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 633
    return-void
.end method

.method public wakeUpIfNeeded()V
    .registers 7

    .prologue
    const/16 v5, 0xf

    const/4 v4, 0x0

    .line 1202
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mMaybeShow:Z

    if-eqz v1, :cond_65

    .line 1203
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wakeUpIfNeeded() mMaybeShow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mMaybeShow:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mRequestedWakeUp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mRequestedWakeUp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mShowing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    const-string v1, "KeyguardViewMediator"

    const-string v2, "   at "

    const/4 v3, 0x4

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->dumpStackTrack(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1205
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mRequestedWakeUp:Z

    if-eqz v1, :cond_66

    .line 1206
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mRequestedWakeUp:Z

    .line 1207
    const-string v1, "KeyguardViewMediator"

    const-string v2, "wakeUpIfNeeded() schedule wakeUp !!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1210
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1211
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1214
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1220
    .end local v0    # "msg":Landroid/os/Message;
    :cond_65
    :goto_65
    return-void

    .line 1216
    :cond_66
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mMaybeShow:Z

    .line 1217
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_65
.end method
