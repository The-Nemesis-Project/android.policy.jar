.class public Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserverForSPen;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SPenGestureInputEventReceiver;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenShotForEffect;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenshotRunnable;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserver;
    }
.end annotation


# static fields
.field static final ACTION_NOTIFICATION_ARRIVED:Ljava/lang/String; = "com.system.action.NOTIFICATION"

.field private static BOOSTING_TIMEOUT:I = 0x0

.field static final DEBUG:Z = false

.field private static final DELAY_SHOW_IN_FULLSCREEN_BY_NOTIFICATION:I = 0x3e8

.field private static final FINGERPRINT_KEY_IGNORE_DURATION:I = 0x3e8

.field private static final KEYGUARD_SCREENSHOT_CHORD_DELAY_MULTIPLIER:F = 2.5f

.field static final KEY_DISABLE_STATUS_BAR_OPEN:Ljava/lang/String; = "com.system.notification.DashNotificationManagerService.Disable"

.field static final NOTIFICATION_FIELD_TYPE:Ljava/lang/String; = "com.system.notification.DashNotificationManagerService.Type"

.field static final NOTIFICATION_TYPE_ADD:I = 0x1

.field private static final SAFETYASSURANCE_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0xfaL

.field static final SAFE_DEBUG:Z

.field static final SCREENCAPTURE_ORIGINAL:I = 0x1

.field static final SCREENCAPTURE_SWEEP_LEFT:I = 0x2

.field static final SCREENCAPTURE_SWEEP_RIGHT:I = 0x3

.field private static final SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field static final TAG:Ljava/lang/String; = "SamsungWindowManager"

.field static final localLOGV:Z

.field private static mCoreNumLockHelper:Landroid/os/DVFSHelper;

.field private static mCpuBooster:Landroid/os/DVFSHelper;

.field static mFocusedWindowPkgName:Ljava/lang/String;


# instance fields
.field private final EnableLinuxCOMMONAPI4:Ljava/lang/String;

.field final MAX_SCREENSHOT_CONNECTION:I

.field private final UVS_ORIENTATION_PROVIDER:Ljava/lang/String;

.field private final UVS_ORIENTATION_REQUEST:Ljava/lang/String;

.field WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

.field private final mAccessControlChordLongPress:Ljava/lang/Runnable;

.field mAlwaysComponet:Landroid/content/ComponentName;

.field mAlwaysIntent:Landroid/content/Intent;

.field mAudioManager:Landroid/media/AudioManager;

.field mAvailableVoiceCommand:Z

.field mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field mBootCompleted:Z

.field mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mCameraRecordKeyConsumedByAccessControlChord:Z

.field private mCameraRecordKeyTime:J

.field private mCameraRecordKeyTriggered:Z

.field mClearCoverComponent:Landroid/content/ComponentName;

.field mContext:Landroid/content/Context;

.field mDefaultShowOnFullScreenByNotification:Ljava/lang/Runnable;

.field mDoubleTapOnHomeBehavior:I

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEasySetupKeyTriggered:Z

.field private final mFactoryTestChordLongPress:Ljava/lang/Runnable;

.field mFingerPrintIntent:Landroid/content/Intent;

.field mFingerPrintPending:Z

.field private final mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

.field mFlashAnnotateComponent:Landroid/content/ComponentName;

.field mFlashAnnotateServiceComponent:Landroid/content/ComponentName;

.field private mFlashKeyConsumedByScreenshotChord:Z

.field private mFlashKeyTime:J

.field private mFlashKeyTriggered:Z

.field mFlipFolderOpenedIntent:Landroid/content/Intent;

.field mGloveModeIntent:Landroid/content/Intent;

.field mGloveState:I

.field mHMTPressed:Z

.field mHandler:Landroid/os/Handler;

.field mHasDaynotePackage:Z

.field mHasFlashAnnotateComponent:Z

.field mHasMultiWindowFeature:Z

.field private mHasSPenUspFeature:Z

.field mHasUltraSonicPackage:Z

.field mHasVoiceMemoComponent:Z

.field mHoldKeyConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;

.field private mHomeKeyConsumedByAccessControlChord:Z

.field private mHomeKeyConsumedByScreenRecordChord:Z

.field private mHomeKeyConsumedByScreenshotChord:Z

.field private mHomeKeyTime:J

.field private mHomeKeyTriggered:Z

.field mIsDockHomeEnabled:Z

.field mIsEasyModeEnabled:Z

.field mIsEnabledAccessControl:Z

.field mIsKidsModeEnabled:Z

.field mIsSafetyAssuranceEnabled:Z

.field mIsUseAccessControl:Z

.field private mIsVisibleSPenGestureView:Z

.field mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

.field final mLock:Ljava/lang/Object;

.field mMenuLongPressConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;

.field mNotificationReceiver:Landroid/content/BroadcastReceiver;

.field mOpenByNotification:Z

.field mOrientationListenerForPenGesture:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

.field mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field mPenInsertedIntent:Landroid/content/Intent;

.field mPenState:I

.field mPerformEditAfterScreenCapture:Z

.field mPowerDoubleBehavior:Z

.field private mPowerKeyConsumedByAccessControlChord:Z

.field private mPowerKeyConsumedByFactoryTestChord:Z

.field private mPowerKeyConsumedByQuickShotChord:Z

.field private mPowerKeyConsumedByScreenRecordChord:Z

.field private mPowerKeyConsumedByScreenshotChord:Z

.field private mPowerKeyTime:J

.field private mPowerKeyTriggered:Z

.field mPowerManager:Landroid/os/PowerManager;

.field private mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

.field private final mQuickShotChordLongPress:Ljava/lang/Runnable;

.field mRingtone:Landroid/media/Ringtone;

.field mSPenGestureInputChannel:Landroid/view/InputChannel;

.field mSPenGestureInputEventReceiver:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SPenGestureInputEventReceiver;

.field mSPenGestureView:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

.field mSVoiceComponent:Landroid/content/ComponentName;

.field private final mSafetyAssuranceChordLongPress:Ljava/lang/Runnable;

.field mSafetyAssuranceTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

.field mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

.field mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;

.field private final mScreenrecordChordLongPress:Ljava/lang/Runnable;

.field private final mScreenshotChordLongPress:Ljava/lang/Runnable;

.field final mScreenshotLock:Ljava/lang/Object;

.field final mServiceAquireLock:Ljava/lang/Object;

.field mServiceConnectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ServiceConnection;",
            "Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenshotRunnable;",
            ">;"
        }
    .end annotation
.end field

.field mSettingsObserver:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserver;

.field mSideSyncSourcePresentationActived:Z

.field private mSpenUspFeatureLevel:I

.field mStateGlance:Z

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field mSweepDirection:I

.field mSweepReceiver:Landroid/content/BroadcastReceiver;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mTripleTapOnHomeBehavior:I

.field private mUvsOrientation:I

.field mUvsReceiver:Landroid/content/BroadcastReceiver;

.field mVibrator:Landroid/os/SystemVibrator;

.field mVoiceCommandIntent:Landroid/content/Intent;

.field mVoiceTalkComponent:Landroid/content/ComponentName;

.field private mVolumeDownKeyConsumedByAccessControlChord:Z

.field private mVolumeDownKeyConsumedByQuickShotChord:Z

.field private mVolumeDownKeyConsumedBySafetyAssuranceChord:Z

.field private mVolumeDownKeyConsumedByScreenshotChord:Z

.field private mVolumeDownKeyTime:J

.field private mVolumeDownKeyTriggered:Z

.field private mVolumeUpKeyConsumedBySafetyAssuranceChord:Z

.field private mVolumeUpKeyConsumedByScreenRecordChord:Z

.field private mVolumeUpKeyTime:J

.field private mVolumeUpKeyTriggered:Z

.field private mWiFiProtectedSetupKeyConsumedByFactoryTestChord:Z

.field private mWiFiProtectedSetupKeyTime:J

.field private mWiFiProtectedSetupKeyTriggered:Z

.field mWindowManager:Landroid/view/IWindowManager;

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 125
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_9

    const/4 v0, 0x0

    :cond_9
    sput-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    .line 345
    const-string v0, "UNKNOWN"

    sput-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFocusedWindowPkgName:Ljava/lang/String;

    .line 3460
    sput-object v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 3461
    sput-object v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    .line 3462
    const/16 v0, 0x3e8

    sput v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->BOOSTING_TIMEOUT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBootCompleted:Z

    .line 147
    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    .line 150
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 151
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 152
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    .line 155
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;

    .line 159
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;

    invoke-direct {v0, p0, v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mMenuLongPressConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    .line 171
    iput v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenState:I

    .line 172
    iput v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mGloveState:I

    .line 231
    iput v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 232
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAvailableVoiceCommand:Z

    .line 236
    iput v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTripleTapOnHomeBehavior:I

    .line 240
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerDoubleBehavior:Z

    .line 244
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    .line 250
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    .line 251
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    .line 255
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsKidsModeEnabled:Z

    .line 259
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    .line 263
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    .line 264
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasFlashAnnotateComponent:Z

    .line 268
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasVoiceMemoComponent:Z

    .line 272
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasUltraSonicPackage:Z

    .line 276
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasDaynotePackage:Z

    .line 280
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    .line 284
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    .line 288
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHMTPressed:Z

    .line 296
    iput v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSweepDirection:I

    .line 300
    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 313
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mOpenByNotification:Z

    .line 317
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsVisibleSPenGestureView:Z

    .line 318
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasSPenUspFeature:Z

    .line 322
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStateGlance:Z

    .line 323
    iput v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSpenUspFeatureLevel:I

    .line 327
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasMultiWindowFeature:Z

    .line 330
    iput v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    .line 331
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_EnableLinuxCommonApi4"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->EnableLinuxCOMMONAPI4:Ljava/lang/String;

    .line 332
    const-string v0, "com.lguplus.uvs.REQUEST_ORIENTATION"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->UVS_ORIENTATION_REQUEST:Ljava/lang/String;

    .line 333
    const-string v0, "LGT"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->UVS_ORIENTATION_PROVIDER:Ljava/lang/String;

    .line 348
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSweepReceiver:Landroid/content/BroadcastReceiver;

    .line 378
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$2;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 405
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$3;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 420
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$4;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mDefaultShowOnFullScreenByNotification:Ljava/lang/Runnable;

    .line 432
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$5;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mNotificationReceiver:Landroid/content/BroadcastReceiver;

    .line 1139
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$7;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$7;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    .line 1641
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$8;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$8;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    .line 1676
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$9;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$9;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFactoryTestChordLongPress:Ljava/lang/Runnable;

    .line 1728
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$10;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$10;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAccessControlChordLongPress:Ljava/lang/Runnable;

    .line 1767
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$11;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$11;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSafetyAssuranceChordLongPress:Ljava/lang/Runnable;

    .line 1906
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$12;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$12;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenrecordChordLongPress:Ljava/lang/Runnable;

    .line 1940
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$13;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$13;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mQuickShotChordLongPress:Ljava/lang/Runnable;

    .line 1952
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    .line 1953
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    .line 1954
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->MAX_SCREENSHOT_CONNECTION:I

    .line 3028
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$14;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$14;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUvsReceiver:Landroid/content/BroadcastReceiver;

    .line 3126
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->updateAvailableVoiceCommand()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .prologue
    .line 122
    iget v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->setUvsOrieatation(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isScreenCaptureEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->takeScreenshot(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isOneTouchReportEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->updateWacomOffset(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsVisibleSPenGestureView:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsVisibleSPenGestureView:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->EnableLinuxCOMMONAPI4:Ljava/lang/String;

    return-object v0
.end method

.method private cancelPendingAccessControlChordAction()V
    .registers 3

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAccessControlChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1726
    return-void
.end method

.method private cancelPendingFactoryTestChordAction()V
    .registers 3

    .prologue
    .line 1673
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFactoryTestChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1674
    return-void
.end method

.method private cancelPendingQuickShotChordAction()V
    .registers 3

    .prologue
    .line 1937
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mQuickShotChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1938
    return-void
.end method

.method private cancelPendingSafetyAssuranceChordAction()V
    .registers 3

    .prologue
    .line 1763
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSafetyAssuranceChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1764
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1765
    :cond_14
    return-void
.end method

.method private cancelPendingScreenrecordChordAction()V
    .registers 3

    .prologue
    .line 1903
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenrecordChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1904
    return-void
.end method

.method private cancelPendingScreenshotChordAction()V
    .registers 3

    .prologue
    .line 1638
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1639
    return-void
.end method

.method public static getFocusedWindowPkgName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 3385
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFocusedWindowPkgName:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, "UNKNOWN"

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFocusedWindowPkgName:Ljava/lang/String;

    goto :goto_6
.end method

.method private getScreenshotChordLongPressDelay()J
    .registers 3

    .prologue
    .line 1592
    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method static getTelephonyExtService()Lcom/android/internal/telephony/ITelephonyExt;
    .registers 3

    .prologue
    .line 3067
    const-string v1, "phoneext"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v0

    .line 3069
    .local v0, "telephonyExtService":Lcom/android/internal/telephony/ITelephonyExt;
    if-nez v0, :cond_13

    .line 3070
    const-string v1, "SamsungWindowManager"

    const-string v2, "Unable to find ITelephony interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3072
    :cond_13
    return-object v0
.end method

.method static getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .registers 1

    .prologue
    .line 761
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method static getTelephonyService2()Lcom/android/internal/telephony/ITelephony;
    .registers 3

    .prologue
    .line 766
    const-string v1, "phone2"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 768
    .local v0, "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_13

    .line 769
    const-string v1, "SamsungWindowManager"

    const-string v2, "Unable to find ITelephony2 interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_13
    return-object v0
.end method

.method static getVoIPInterfaceService()Landroid/os/IVoIPInterface;
    .registers 3

    .prologue
    .line 3076
    const-string v1, "voip"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v0

    .line 3078
    .local v0, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-nez v0, :cond_13

    .line 3079
    const-string v1, "SamsungWindowManager"

    const-string v2, "Unable to find IVoIPInterface interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3081
    :cond_13
    return-object v0
.end method

.method private interceptAccessControlChord()V
    .registers 8

    .prologue
    const-wide/16 v5, 0x96

    const/4 v4, 0x1

    .line 1692
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    if-nez v2, :cond_8

    .line 1722
    :cond_7
    :goto_7
    return-void

    .line 1693
    :cond_8
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-eqz v2, :cond_48

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_48

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_48

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-nez v2, :cond_48

    .line 1695
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1696
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_7

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_7

    .line 1699
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByAccessControlChord:Z

    .line 1700
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedByAccessControlChord:Z

    .line 1701
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 1702
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1703
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1704
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingSafetyAssuranceChordAction()V

    .line 1705
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAccessControlChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7

    .line 1708
    .end local v0    # "now":J
    :cond_48
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyTriggered:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-nez v2, :cond_7

    .line 1709
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1710
    .restart local v0    # "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_7

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_7

    .line 1713
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByAccessControlChord:Z

    .line 1714
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyConsumedByAccessControlChord:Z

    .line 1715
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 1716
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1717
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1718
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingSafetyAssuranceChordAction()V

    .line 1719
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAccessControlChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7
.end method

.method private interceptFactoryTestChord()V
    .registers 8

    .prologue
    const-wide/16 v5, 0x96

    const/4 v4, 0x1

    .line 1656
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1670
    :cond_9
    :goto_9
    return-void

    .line 1657
    :cond_a
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyTriggered:Z

    if-eqz v2, :cond_9

    .line 1658
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1659
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_9

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_9

    .line 1661
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByFactoryTestChord:Z

    .line 1662
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyConsumedByFactoryTestChord:Z

    .line 1663
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 1664
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1665
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1666
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingAccessControlChordAction()V

    .line 1667
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFactoryTestChordLongPress:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9
.end method

.method private interceptSafetyAssuranceChord()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 1745
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isOneTouchReportChordEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1760
    :cond_d
    :goto_d
    return-void

    .line 1747
    :cond_e
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-nez v0, :cond_d

    .line 1749
    iget-wide v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTime:J

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-gez v0, :cond_d

    .line 1750
    const-string v0, "SamsungWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interceptSafetyAssuranceChord - success and waiting long press : mVolumeDownKeyTime["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] mVolumeUpKeyTime["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedBySafetyAssuranceChord:Z

    .line 1752
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyConsumedBySafetyAssuranceChord:Z

    .line 1753
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 1754
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1755
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1756
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1757
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSafetyAssuranceChordLongPress:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_d
.end method

.method private interceptScreenRecordChord()V
    .registers 8

    .prologue
    const-wide/16 v4, 0x96

    const/4 v6, 0x1

    .line 1867
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isScreenRecordChordEnabled()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1900
    :cond_9
    :goto_9
    return-void

    .line 1868
    :cond_a
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hasNavigationBar()Z

    move-result v2

    if-nez v2, :cond_bc

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-eqz v2, :cond_bc

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-eqz v2, :cond_bc

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v2, :cond_bc

    .line 1869
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1870
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_80

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_80

    .line 1872
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_6a

    const-string v2, "SamsungWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interceptScreenRecordChord - success and waiting long press : now["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mVolumeUpKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mHomeKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    :cond_6a
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyConsumedByScreenRecordChord:Z

    .line 1874
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByScreenRecordChord:Z

    .line 1875
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1876
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingSafetyAssuranceChordAction()V

    .line 1877
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenrecordChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9

    .line 1880
    :cond_80
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_9

    const-string v2, "SamsungWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interceptScreenRecordChord - fail : now["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mVolumeUpKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mHomeKeyTime{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 1883
    .end local v0    # "now":J
    :cond_bc
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hasNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v2, :cond_9

    .line 1885
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1886
    .restart local v0    # "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_138

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_138

    .line 1888
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_11c

    const-string v2, "SamsungWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interceptScreenRecordChord - success and waiting long press : now["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mVolumeUpKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mPowerKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    :cond_11c
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyConsumedByScreenRecordChord:Z

    .line 1890
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByScreenRecordChord:Z

    .line 1891
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 1892
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1893
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingSafetyAssuranceChordAction()V

    .line 1894
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenrecordChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_9

    .line 1897
    :cond_138
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_9

    const-string v2, "SamsungWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interceptScreenRecordChord - fail : now["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mVolumeUpKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mPowerKeyTime{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9
.end method

.method private isComponentAvailable(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 818
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 820
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_12

    const/16 v3, 0x80

    :try_start_b
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_e} :catch_13

    move-result-object v3

    if-eqz v3, :cond_12

    .line 822
    const/4 v2, 0x1

    .line 827
    :cond_12
    :goto_12
    return v2

    .line 826
    :catch_13
    move-exception v0

    .line 827
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_12
.end method

.method private isHMTLongClick()V
    .registers 6

    .prologue
    .line 3436
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3437
    .local v2, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_1a

    .line 3439
    :try_start_6
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 3440
    sget-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_17

    const-string v3, "SamsungWindowManager"

    const-string v4, "interceptKeyBeforeDispatching: CALL key - short press down while ringing: Reject the call!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3441
    :cond_17
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->endCall()Z

    .line 3457
    :cond_1a
    :goto_1a
    return-void

    .line 3443
    :cond_1b
    sget-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_26

    const-string v3, "SamsungWindowManager"

    const-string v4, "seethrough Camara"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3444
    :cond_26
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3445
    .local v1, "seethroughintent":Landroid/content/Intent;
    const-string v3, "com.samsung.android.gvr.seethrough"

    const-string v4, "com.samsung.android.gvr.seethrough.CameraActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3446
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_37} :catch_4a

    .line 3448
    :try_start_37
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_37 .. :try_end_3c} :catch_3d
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3c} :catch_4a

    goto :goto_1a

    .line 3449
    :catch_3d
    move-exception v0

    .line 3450
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    :try_start_3e
    sget-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_1a

    const-string v3, "SamsungWindowManager"

    const-string v4, "Fail to launch seethrough Camera"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_49} :catch_4a

    goto :goto_1a

    .line 3453
    .end local v0    # "ex":Landroid/content/ActivityNotFoundException;
    .end local v1    # "seethroughintent":Landroid/content/Intent;
    :catch_4a
    move-exception v0

    .line 3454
    .local v0, "ex":Landroid/os/RemoteException;
    sget-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_1a

    const-string v3, "SamsungWindowManager"

    const-string v4, "ITelephony threw RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a
.end method

.method private isHMTSingleClick()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 3416
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3417
    .local v1, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_3d

    .line 3419
    :try_start_7
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 3420
    sget-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_18

    const-string v3, "SamsungWindowManager"

    const-string v4, "interceptKeyBeforeDispatching: CALL key - short press down while ringing: Answer the call!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3421
    :cond_18
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V

    .line 3432
    :goto_1b
    return v2

    .line 3423
    :cond_1c
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 3424
    sget-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_2d

    const-string v3, "SamsungWindowManager"

    const-string v4, "interceptKeyBeforeDispatching: ENDCALL key - short press down while offhook: End the call!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3425
    :cond_2d
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_30} :catch_31

    goto :goto_1b

    .line 3428
    :catch_31
    move-exception v0

    .line 3429
    .local v0, "ex":Landroid/os/RemoteException;
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_3d

    const-string v2, "SamsungWindowManager"

    const-string v3, "ITelephony threw RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3432
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_3d
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method private isOneTouchReportEnabled()Z
    .registers 18

    .prologue
    .line 1809
    const-string v15, "go.police.report"

    .line 1810
    .local v15, "oneTouchReportPackageName":Ljava/lang/String;
    const-string v14, "com.android.vending"

    .line 1812
    .local v14, "oneTouchReportInstaller":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1813
    .local v13, "installerPackage":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1815
    .local v12, "enabled":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isOneTouchReportChordEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1816
    const/4 v2, 0x0

    .line 1861
    :goto_11
    return v2

    .line 1820
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 1822
    .local v16, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_1a
    const-string v2, "go.police.report"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1824
    const-string v2, "com.android.vending"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_27} :catch_2c

    move-result v2

    if-nez v2, :cond_2f

    .line 1826
    const/4 v2, 0x0

    goto :goto_11

    .line 1828
    :catch_2c
    move-exception v11

    .line 1830
    .local v11, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_11

    .line 1834
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_2f
    const-string v9, "content://go.police.provider.report"

    .line 1835
    .local v9, "customerAgreementPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1837
    .local v1, "cr":Landroid/content/ContentResolver;
    if-eqz v1, :cond_67

    .line 1838
    const-string v2, "content://go.police.provider.report"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1840
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_62

    :try_start_4b
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 1841
    const-string v2, "customer_agreement"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1843
    .local v8, "customerAgreementColumn":I
    const/4 v2, -0x1

    if-eq v8, v2, :cond_62

    .line 1844
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_5d} :catch_6b
    .catchall {:try_start_4b .. :try_end_5d} :catchall_75

    move-result v10

    .line 1845
    .local v10, "customerAgreementValue":I
    const/4 v2, 0x1

    if-ne v2, v10, :cond_69

    const/4 v12, 0x1

    .line 1855
    .end local v8    # "customerAgreementColumn":I
    .end local v10    # "customerAgreementValue":I
    :cond_62
    :goto_62
    if-eqz v7, :cond_67

    .line 1856
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v7    # "c":Landroid/database/Cursor;
    :cond_67
    :goto_67
    move v2, v12

    .line 1861
    goto :goto_11

    .line 1845
    .restart local v7    # "c":Landroid/database/Cursor;
    .restart local v8    # "customerAgreementColumn":I
    .restart local v10    # "customerAgreementValue":I
    :cond_69
    const/4 v12, 0x0

    goto :goto_62

    .line 1852
    .end local v8    # "customerAgreementColumn":I
    .end local v10    # "customerAgreementValue":I
    :catch_6b
    move-exception v11

    .line 1853
    .restart local v11    # "e":Ljava/lang/Exception;
    :try_start_6c
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_75

    .line 1855
    if-eqz v7, :cond_67

    .line 1856
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_67

    .line 1855
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_75
    move-exception v2

    if-eqz v7, :cond_7b

    .line 1856
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7b
    throw v2
.end method

.method private isPackageAvailable(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 832
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 834
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_12

    const/16 v3, 0x80

    :try_start_b
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_e} :catch_13

    move-result-object v3

    if-eqz v3, :cond_12

    .line 835
    const/4 v2, 0x1

    .line 840
    :cond_12
    :goto_12
    return v2

    .line 839
    :catch_13
    move-exception v0

    .line 840
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_12
.end method

.method private isScreenCaptureEnabled()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 795
    const/4 v0, 0x1

    .line 797
    .local v0, "isScreenCaptureEnabled":Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v1, :cond_12

    .line 798
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 802
    :cond_12
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/enterprise/RestrictionPolicy;->isScreenCaptureEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_47

    .line 803
    const-string v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEDM.getRestrictionPolicy().isScreenCaptureEnabledEx(true) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/enterprise/RestrictionPolicy;->isScreenCaptureEnabledEx(Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    const/4 v0, 0x0

    .line 806
    const/4 v1, 0x0

    .line 809
    :goto_46
    return v1

    :cond_47
    move v1, v0

    goto :goto_46
.end method

.method private playSound(Ljava/lang/String;)V
    .registers 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 2176
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2177
    .local v3, "soundUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 2179
    .local v0, "audioManager":Landroid/media/AudioManager;
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    if-eqz v4, :cond_1d

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 2181
    :try_start_15
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4}, Landroid/media/Ringtone;->stop()V

    .line 2182
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1d} :catch_3a

    .line 2188
    :cond_1d
    :goto_1d
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    .line 2189
    if-eqz v0, :cond_5c

    .line 2190
    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 2192
    .local v2, "masterStreamVolume":I
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    if-eqz v4, :cond_54

    .line 2193
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4, v7}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 2194
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4}, Landroid/media/Ringtone;->play()V

    .line 2203
    .end local v2    # "masterStreamVolume":I
    :goto_39
    return-void

    .line 2183
    :catch_3a
    move-exception v1

    .line 2184
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail to stop Ringtone - already done : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 2197
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "masterStreamVolume":I
    :cond_54
    const-string v4, "SamsungWindowManager"

    const-string v5, "There are no ringtones"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 2201
    .end local v2    # "masterStreamVolume":I
    :cond_5c
    const-string v4, "SamsungWindowManager"

    const-string v5, "AudioManager loading fail"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39
.end method

.method private playSoundEffect()V
    .registers 4

    .prologue
    .line 2306
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 2307
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_1c

    .line 2308
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v1

    if-nez v1, :cond_14

    .line 2309
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 2317
    :goto_13
    return-void

    .line 2312
    :cond_14
    const-string v1, "SamsungWindowManager"

    const-string v2, "keyguard - disable key sound"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 2315
    :cond_1c
    const-string v1, "SamsungWindowManager"

    const-string v2, "Couldn\'t get audio manager"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method private setUvsOrieatation(I)V
    .registers 3
    .param p1, "request"    # I

    .prologue
    .line 3016
    iget v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    if-eq v0, p1, :cond_13

    .line 3017
    if-eqz p1, :cond_11

    const/4 v0, 0x1

    if-eq p1, v0, :cond_11

    const/16 v0, 0x8

    if-eq p1, v0, :cond_11

    const/16 v0, 0x9

    if-ne p1, v0, :cond_14

    .line 3021
    :cond_11
    iput p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    .line 3026
    :cond_13
    :goto_13
    return-void

    .line 3023
    :cond_14
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    goto :goto_13
.end method

.method private startSGA(Ljava/lang/String;)V
    .registers 7
    .param p1, "gamePkg"    # Ljava/lang/String;

    .prologue
    .line 3336
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3337
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 3338
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 3340
    if-eqz v1, :cond_22

    .line 3342
    :try_start_d
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_14
    .catch Landroid/content/ActivityNotFoundException; {:try_start_d .. :try_end_14} :catch_15

    .line 3349
    :cond_14
    :goto_14
    return-void

    .line 3343
    :catch_15
    move-exception v0

    .line 3344
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_14

    const-string v3, "SamsungWindowManager"

    const-string v4, "SGA is not installed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 3347
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_22
    sget-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_14

    const-string v3, "SamsungWindowManager"

    const-string v4, "no Launch intent of SGA"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method private takeScreenshot(I)V
    .registers 10
    .param p1, "event"    # I

    .prologue
    .line 1982
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1983
    :try_start_3
    sget-boolean v4, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_2b

    .line 1984
    const-string v4, "SamsungWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "takeScreenshot : event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mPerformEditAfterScreenCapture = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    :cond_2b
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    if-eqz v4, :cond_4b

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasFlashAnnotateComponent:Z

    if-eqz v4, :cond_4b

    .line 1989
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1990
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1991
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashAnnotateServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1992
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v6}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2010
    :cond_49
    :goto_49
    monitor-exit v5

    .line 2011
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_4a
    return-void

    .line 1994
    :cond_4b
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    const/4 v6, 0x3

    if-lt v4, v6, :cond_59

    .line 1995
    monitor-exit v5

    goto :goto_4a

    .line 2010
    :catchall_56
    move-exception v4

    monitor-exit v5
    :try_end_58
    .catchall {:try_start_3 .. :try_end_58} :catchall_56

    throw v4

    .line 1997
    :cond_59
    :try_start_59
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.android.systemui"

    const-string v6, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v0, v4, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1999
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2000
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2001
    new-instance v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;I)V

    .line 2003
    .local v1, "conn":Landroid/content/ServiceConnection;
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v1, v6, v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 2005
    new-instance v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenshotRunnable;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenshotRunnable;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Landroid/content/ServiceConnection;)V

    .line 2006
    .local v3, "runnable":Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenshotRunnable;
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2007
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_8b
    .catchall {:try_start_59 .. :try_end_8b} :catchall_56

    goto :goto_49
.end method

.method private updateAvailableVoiceCommand()V
    .registers 2

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSVoiceComponent:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isComponentAvailable(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceTalkComponent:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isComponentAvailable(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1076
    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAvailableVoiceCommand:Z

    .line 1080
    :goto_13
    return-void

    .line 1078
    :cond_14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAvailableVoiceCommand:Z

    goto :goto_13
.end method

.method private updateWacomOffset(I)V
    .registers 7
    .param p1, "rotation"    # I

    .prologue
    .line 2255
    const/4 v1, 0x0

    .line 2257
    .local v1, "out":Ljava/io/OutputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/sec/sec_epen/epen_rotation"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_d} :catch_1f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_2b
    .catchall {:try_start_1 .. :try_end_d} :catchall_3a

    .line 2258
    .end local v1    # "out":Ljava/io/OutputStream;
    .local v2, "out":Ljava/io/OutputStream;
    add-int/lit8 v3, p1, 0x30

    :try_start_f
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_12} :catch_4c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_49
    .catchall {:try_start_f .. :try_end_12} :catchall_46

    .line 2265
    if-eqz v2, :cond_17

    .line 2266
    :try_start_14
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_19

    :cond_17
    move-object v1, v2

    .line 2272
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    :cond_18
    :goto_18
    return-void

    .line 2268
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_19
    move-exception v0

    .line 2269
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    .line 2271
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_18

    .line 2259
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1f
    move-exception v3

    .line 2265
    :goto_20
    if-eqz v1, :cond_18

    .line 2266
    :try_start_22
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_18

    .line 2268
    :catch_26
    move-exception v0

    .line 2269
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    .line 2261
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2b
    move-exception v0

    .line 2262
    .local v0, "e":Ljava/io/IOException;
    :goto_2c
    :try_start_2c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_3a

    .line 2265
    if-eqz v1, :cond_18

    .line 2266
    :try_start_31
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_18

    .line 2268
    :catch_35
    move-exception v0

    .line 2269
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    .line 2264
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_3a
    move-exception v3

    .line 2265
    :goto_3b
    if-eqz v1, :cond_40

    .line 2266
    :try_start_3d
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_41

    .line 2270
    :cond_40
    :goto_40
    throw v3

    .line 2268
    :catch_41
    move-exception v0

    .line 2269
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_40

    .line 2264
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catchall_46
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_3b

    .line 2261
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_49
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_2c

    .line 2259
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_4c
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_20
.end method


# virtual methods
.method public callAccessibilityScreenCurtain()V
    .registers 5

    .prologue
    .line 1107
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1108
    const-string v2, "SamsungWindowManager"

    const-string v3, "callAccessibilityScreenCurtain() is called"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    const-string v2, "accessibility"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1111
    .local v1, "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :try_start_17
    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->setScreenCurtain()V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_1b

    .line 1118
    .end local v1    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :goto_1a
    return-void

    .line 1112
    .restart local v1    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :catch_1b
    move-exception v0

    .line 1113
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1a

    .line 1116
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :cond_20
    const-string v2, "SamsungWindowManager"

    const-string v3, "sendBroadcastForAccessibility() is not called, because it is not provisioned"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method public checkMenuLongPressIgnore()Z
    .registers 2

    .prologue
    .line 3224
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mMenuLongPressConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;

    # invokes: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->checkMenuLongPressIgnore()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->access$1300(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;)Z

    move-result v0

    return v0
.end method

.method public downloadForSGA(Ljava/lang/String;)V
    .registers 6
    .param p1, "pkgUri"    # Ljava/lang/String;

    .prologue
    .line 3368
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_b

    const-string v2, "SamsungWindowManager"

    const-string v3, "try download SGA"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3370
    :cond_b
    :try_start_b
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3371
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3372
    const v2, 0x30000020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3374
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_24
    .catch Landroid/content/ActivityNotFoundException; {:try_start_b .. :try_end_24} :catch_25

    .line 3380
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_24
    return-void

    .line 3375
    :catch_25
    move-exception v0

    .line 3377
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_31

    const-string v2, "SamsungWindowManager"

    const-string v3, "Samsung apps is not installed. so you are moving to Samsung apps download page."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3378
    :cond_31
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->downloadForSamsungApps()V

    goto :goto_24
.end method

.method public downloadForSamsungApps()V
    .registers 6

    .prologue
    .line 3352
    sget-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_b

    const-string v3, "SamsungWindowManager"

    const-string v4, "try download SamsungApps"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3353
    :cond_b
    const-string v2, "http://apps.samsung.com/mw/apk_en.as"

    .line 3355
    .local v2, "url":Ljava/lang/String;
    :try_start_d
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3357
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3358
    const v3, 0x30000020

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3360
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_d .. :try_end_2a} :catch_2b

    .line 3365
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_2a
    return-void

    .line 3361
    :catch_2b
    move-exception v0

    .line 3363
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "SamsungWindowManager"

    const-string v4, "There is not browsable apps for samsungapps download"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3504
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPenState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3505
    const-string v0, " mGloveState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mGloveState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3506
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPowerKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3507
    const-string v0, " mHomeKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3508
    const-string v0, " mVolumeDownKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3509
    const-string v0, " mVolumeUpKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3510
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFlashKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3511
    const-string v0, " mCameraRecordKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3512
    const-string v0, " mWiFiProtectedSetupKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3513
    const-string v0, " mEasySetupKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mEasySetupKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3514
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsSafetyAssuranceEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3515
    const-string v0, " mIsUseAccessControl="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3516
    const-string v0, " mIsEnabledAccessControl="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3517
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsKidsModeEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsKidsModeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3518
    const-string v0, " mIsEasyModeEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3519
    const-string v0, " mIsDockHomeEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3520
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPerformEditAfterScreenCapture="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3521
    const-string v0, " mHasFlashAnnotateComponent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasFlashAnnotateComponent:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3522
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDoubleTapOnHomeBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3523
    const-string v0, " mAvailableVoiceCommand="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAvailableVoiceCommand:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3524
    const-string v0, " mTripleTapOnHomeBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTripleTapOnHomeBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3526
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSideSyncSourcePresentationActived="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3528
    return-void
.end method

.method public enableSPenGesture()V
    .registers 7

    .prologue
    const/4 v4, -0x1

    .line 2958
    iget v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSpenUspFeatureLevel:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5c

    .line 2959
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSPenGestureView:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    if-nez v2, :cond_5c

    .line 2960
    new-instance v2, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSPenGestureView:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .line 2961
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSPenGestureView:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->setVisibility(I)V

    .line 2964
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 2966
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x831

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2967
    const/16 v2, 0x518

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2970
    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2971
    const-string v2, "SPenGesture"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2972
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 2973
    .local v1, "wm":Landroid/view/WindowManager;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 2974
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSPenGestureView:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2976
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const-string v3, "SPenGestureView"

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSPenGestureInputChannel:Landroid/view/InputChannel;

    .line 2977
    new-instance v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SPenGestureInputEventReceiver;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSPenGestureInputChannel:Landroid/view/InputChannel;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSPenGestureView:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SPenGestureInputEventReceiver;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSPenGestureInputEventReceiver:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SPenGestureInputEventReceiver;

    .line 2981
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "wm":Landroid/view/WindowManager;
    :cond_5c
    return-void
.end method

.method public endCallByGamekey()Z
    .registers 8

    .prologue
    .line 3256
    const/4 v1, 0x0

    .line 3258
    .local v1, "hungUp":Z
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3259
    .local v2, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_11

    .line 3261
    :try_start_7
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 3262
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_36

    move-result v1

    .line 3270
    :cond_11
    :goto_11
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isDualSIMMode()Z

    move-result v5

    if-eqz v5, :cond_27

    .line 3271
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getTelephonyService2()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 3272
    .local v3, "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_27

    .line 3274
    :try_start_1d
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v5

    if-eqz v5, :cond_27

    .line 3275
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_26} :catch_43

    move-result v1

    .line 3284
    .end local v3    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    :cond_27
    :goto_27
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v4

    .line 3286
    .local v4, "voipInterfaceService":Landroid/os/IVoIPInterface;
    :try_start_2b
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isVoIPRinging()Z

    move-result v5

    if-eqz v5, :cond_35

    .line 3287
    invoke-interface {v4}, Landroid/os/IVoIPInterface;->hangupVoIPCall()Z
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_34} :catch_50

    move-result v1

    .line 3292
    :cond_35
    :goto_35
    return v1

    .line 3264
    .end local v4    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :catch_36
    move-exception v0

    .line 3265
    .local v0, "ex":Landroid/os/RemoteException;
    sget-boolean v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v5, :cond_11

    const-string v5, "SamsungWindowManager"

    const-string v6, "ITelephony threw RemoteException"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11

    .line 3277
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v3    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    :catch_43
    move-exception v0

    .line 3278
    .restart local v0    # "ex":Landroid/os/RemoteException;
    sget-boolean v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v5, :cond_27

    const-string v5, "SamsungWindowManager"

    const-string v6, "ITelephony2 threw RemoteException"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    .line 3289
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v3    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    .restart local v4    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :catch_50
    move-exception v0

    .line 3290
    .restart local v0    # "ex":Landroid/os/RemoteException;
    sget-boolean v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v5, :cond_35

    const-string v5, "SamsungWindowManager"

    const-string v6, "ITelephony2 threw RemoteException"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .registers 4

    .prologue
    .line 785
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 786
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_13

    .line 787
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    .line 790
    :cond_13
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    monitor-exit v1

    return-object v0

    .line 791
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public getCurrentTopActivity()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 2550
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 3

    .prologue
    .line 775
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 776
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_13

    .line 777
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 780
    :cond_13
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v1

    return-object v0

    .line 781
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public getTimeoutTimeOfKeyCombination(Landroid/view/KeyEvent;J)J
    .registers 11
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "now"    # J

    .prologue
    const-wide/16 v5, 0x96

    .line 1336
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    .line 1337
    .local v0, "flags":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isScreenShotChordEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4c

    and-int/lit16 v3, v0, 0x400

    if-nez v3, :cond_4c

    .line 1339
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v3, :cond_27

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v3, :cond_27

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-nez v3, :cond_27

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyTriggered:Z

    if-nez v3, :cond_27

    .line 1341
    iget-wide v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    add-long v1, v3, v5

    .line 1406
    :goto_26
    return-wide v1

    .line 1345
    :cond_27
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-eqz v3, :cond_3f

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-nez v3, :cond_3f

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v3, :cond_3f

    .line 1346
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSystemKeyEventRequested(I)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 1347
    iget-wide v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTime:J

    add-long v1, v3, v5

    .line 1349
    .local v1, "timeoutTime":J
    goto :goto_26

    .line 1352
    .end local v1    # "timeoutTime":J
    :cond_3f
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyTriggered:Z

    if-eqz v3, :cond_4c

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-nez v3, :cond_4c

    .line 1353
    iget-wide v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyTime:J

    add-long v1, v3, v5

    .line 1355
    .restart local v1    # "timeoutTime":J
    goto :goto_26

    .line 1359
    .end local v1    # "timeoutTime":J
    :cond_4c
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isScreenRecordChordEnabled()Z

    move-result v3

    if-eqz v3, :cond_70

    and-int/lit16 v3, v0, 0x400

    if-nez v3, :cond_70

    .line 1361
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-eqz v3, :cond_63

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v3, :cond_63

    .line 1362
    iget-wide v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTime:J

    add-long v1, v3, v5

    .line 1364
    .restart local v1    # "timeoutTime":J
    goto :goto_26

    .line 1366
    .end local v1    # "timeoutTime":J
    :cond_63
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v3, :cond_70

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v3, :cond_70

    .line 1367
    iget-wide v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    add-long v1, v3, v5

    .line 1369
    .restart local v1    # "timeoutTime":J
    goto :goto_26

    .line 1373
    .end local v1    # "timeoutTime":J
    :cond_70
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    if-nez v3, :cond_7c

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isOneTouchReportChordEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 1375
    :cond_7c
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-eqz v3, :cond_89

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v3, :cond_89

    .line 1376
    iget-wide v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTime:J

    add-long v1, v3, v5

    .line 1378
    .restart local v1    # "timeoutTime":J
    goto :goto_26

    .line 1382
    .end local v1    # "timeoutTime":J
    :cond_89
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    if-eqz v3, :cond_ac

    and-int/lit16 v3, v0, 0x400

    if-nez v3, :cond_ac

    .line 1383
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-eqz v3, :cond_9e

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v3, :cond_9e

    .line 1384
    iget-wide v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTime:J

    add-long v1, v3, v5

    .line 1386
    .restart local v1    # "timeoutTime":J
    goto :goto_26

    .line 1388
    .end local v1    # "timeoutTime":J
    :cond_9e
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyTriggered:Z

    if-eqz v3, :cond_ac

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-nez v3, :cond_ac

    .line 1389
    iget-wide v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyTime:J

    add-long v1, v3, v5

    .line 1391
    .restart local v1    # "timeoutTime":J
    goto/16 :goto_26

    .line 1395
    .end local v1    # "timeoutTime":J
    :cond_ac
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v3

    if-eqz v3, :cond_d2

    and-int/lit16 v3, v0, 0x400

    if-nez v3, :cond_d2

    .line 1396
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyTriggered:Z

    if-eqz v3, :cond_c4

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-nez v3, :cond_c4

    .line 1397
    iget-wide v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyTime:J

    add-long v1, v3, v5

    .line 1399
    .restart local v1    # "timeoutTime":J
    goto/16 :goto_26

    .line 1400
    .end local v1    # "timeoutTime":J
    :cond_c4
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v3, :cond_d2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyTriggered:Z

    if-nez v3, :cond_d2

    .line 1401
    iget-wide v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    add-long v1, v3, v5

    .line 1403
    .restart local v1    # "timeoutTime":J
    goto/16 :goto_26

    .end local v1    # "timeoutTime":J
    :cond_d2
    move-wide v1, p2

    .line 1406
    goto/16 :goto_26
.end method

.method public getUvsOrientation()I
    .registers 2

    .prologue
    .line 3012
    iget v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    return v0
.end method

.method public handleMenuLongPress()Z
    .registers 2

    .prologue
    .line 3228
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mMenuLongPressConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;

    # invokes: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->handleMenuLongPress()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->access$200(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;)Z

    move-result v0

    return v0
.end method

.method public handleSamsungVolumeControl(IZZ)V
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "down"    # Z
    .param p3, "canceled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2815
    if-eqz p2, :cond_19

    .line 2816
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;

    if-nez v0, :cond_18

    .line 2817
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;

    .line 2818
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->updateInfo(IZZ)V

    .line 2819
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->start()V

    .line 2827
    :cond_18
    :goto_18
    return-void

    .line 2822
    :cond_19
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;

    if-eqz v0, :cond_18

    .line 2823
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->updateInfo(IZZ)V

    .line 2824
    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;

    goto :goto_18
.end method

.method public init(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneWindowManager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p3, "windowManager"    # Landroid/view/IWindowManager;
    .param p4, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v6, 0x1

    .line 449
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 450
    iput-object p2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 451
    iput-object p3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 452
    iput-object p4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 453
    const-string v4, "power"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 454
    const-string v4, "vibrator"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/SystemVibrator;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    .line 457
    const-string v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 460
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v5, "SamsungPhoneWindowManager.mBroadcastWakeLock"

    invoke-virtual {v4, v6, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 462
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v5, "PhoneWindowManager.mSafetyAssuranceWakeLock"

    invoke-virtual {v4, v6, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 464
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v5, "PhoneWindowManager.mSafetyAssuranceTimeoutWakeLock"

    invoke-virtual {v4, v6, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSafetyAssuranceTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 468
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5a

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    if-nez v4, :cond_5a

    .line 470
    new-instance v4, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mOrientationListenerForPenGesture:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

    .line 475
    :cond_5a
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 476
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.SWEEP_LEFT"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 477
    const-string v4, "android.intent.action.SWEEP_RIGHT"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 478
    const-string v4, "android.intent.action.SWEEP_DOWN"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 479
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSweepReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 482
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 483
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 484
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 487
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 488
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 489
    const-string v4, "package"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 490
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 493
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 494
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v4, "com.system.action.NOTIFICATION"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 495
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mNotificationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 497
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.sec.action.SVOICE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    .line 498
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    const-string v5, "isThisComeFromHomeKeyDoubleClickConcept"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 499
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    const-string v5, "CHECK_SCHEDULE_ENABLED"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 500
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.pen.INSERT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    .line 501
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.android.app.always.action.LAUNCH_ALWAYS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAlwaysIntent:Landroid/content/Intent;

    .line 502
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.glove.ENABLE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mGloveModeIntent:Landroid/content/Intent;

    .line 503
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.flipfolder.OPEN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlipFolderOpenedIntent:Landroid/content/Intent;

    .line 504
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.android.secretmode.action.REQ_SHOW_VISUAL_CUE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFingerPrintIntent:Landroid/content/Intent;

    .line 505
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFingerPrintIntent:Landroid/content/Intent;

    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.samsung.android.secretmode.service"

    const-string v7, "com.samsung.android.secretmode.service.SecretModeService"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 507
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.vlingo.client.samsung"

    const-string v6, "com.vlingo.client.car.CarActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceTalkComponent:Landroid/content/ComponentName;

    .line 509
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.vlingo.midas"

    const-string v6, "com.vlingo.midas.gui.ConversationActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSVoiceComponent:Landroid/content/ComponentName;

    .line 511
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.samsung.android.app.always"

    const-string v6, "com.samsung.android.app.always.ui.MainActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAlwaysComponet:Landroid/content/ComponentName;

    .line 513
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.sec.spen.flashannotate"

    const-string v6, "com.sec.spen.flashannotate.FlashAnnotateActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashAnnotateComponent:Landroid/content/ComponentName;

    .line 515
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.sec.spen.flashannotatesvc"

    const-string v6, "com.sec.spen.flashannotatesvc.flashannotateservice"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashAnnotateServiceComponent:Landroid/content/ComponentName;

    .line 519
    const-string v4, "com.sec.android.daynote"

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasDaynotePackage:Z

    .line 523
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashAnnotateComponent:Landroid/content/ComponentName;

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isComponentAvailable(Landroid/content/ComponentName;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasFlashAnnotateComponent:Z

    .line 527
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->updateAvailableVoiceCommand()V

    .line 530
    new-instance v4, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserver;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSettingsObserver:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserver;

    .line 531
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSettingsObserver:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserver;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserver;->observe()V

    .line 534
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 535
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_178

    .line 536
    const-string v4, "com.sec.feature.spen_usp"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSpenUspFeatureLevel:I

    .line 537
    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSpenUspFeatureLevel : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSpenUspFeatureLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_178
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasSPenUspFeature:Z

    .line 540
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasSPenUspFeature:Z

    if-eqz v4, :cond_193

    .line 541
    iget v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSpenUspFeatureLevel:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_193

    .line 542
    new-instance v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserverForSPen;

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserverForSPen;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Landroid/os/Handler;)V

    .line 543
    .local v3, "settingObserverForSPen":Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserverForSPen;
    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserverForSPen;->observe()V

    .line 549
    .end local v3    # "settingObserverForSPen":Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserverForSPen;
    :cond_193
    if-eqz v2, :cond_1b7

    .line 550
    const-string v4, "com.sec.feature.multiwindow"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasMultiWindowFeature:Z

    .line 551
    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mHasMultiWindowFeature : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasMultiWindowFeature:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_1b7
    const-string v4, "LGT"

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->EnableLinuxCOMMONAPI4:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d5

    .line 556
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 557
    .local v1, "mUvsFilter":Landroid/content/IntentFilter;
    const-string v4, "com.lguplus.uvs.REQUEST_ORIENTATION"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 558
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUvsReceiver:Landroid/content/BroadcastReceiver;

    const-string v6, "android.permission.SET_ORIENTATION"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v1, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 561
    .end local v1    # "mUvsFilter":Landroid/content/IntentFilter;
    :cond_1d5
    return-void
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/KeyEvent;)Z
    .registers 27
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v17

    .line 857
    .local v17, "keyguardOn":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v15

    .line 858
    .local v15, "keyCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v18

    .line 859
    .local v18, "repeatCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v10

    .line 860
    .local v10, "flags":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v21

    if-nez v21, :cond_50

    const/4 v7, 0x1

    .line 862
    .local v7, "down":Z
    :goto_1d
    const/16 v21, 0x10c

    move/from16 v0, v21

    if-ne v15, v0, :cond_52

    .line 863
    if-eqz v7, :cond_4d

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 865
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    const-wide/16 v23, 0x3e8

    invoke-virtual/range {v21 .. v24}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 868
    :cond_4d
    const/16 v16, 0x1

    .line 1046
    :cond_4f
    :goto_4f
    return v16

    .line 860
    .end local v7    # "down":Z
    :cond_50
    const/4 v7, 0x0

    goto :goto_1d

    .line 869
    .restart local v7    # "down":Z
    :cond_52
    const/16 v21, 0x10d

    move/from16 v0, v21

    if-ne v15, v0, :cond_7f

    .line 870
    if-nez v7, :cond_7c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    move/from16 v21, v0

    if-eqz v21, :cond_7c

    .line 871
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 873
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->launchFingerPrint()V

    .line 875
    :cond_7c
    const/16 v16, 0x1

    goto :goto_4f

    .line 879
    :cond_7f
    const/16 v21, 0x111

    move/from16 v0, v21

    if-ne v15, v0, :cond_a2

    .line 880
    const/16 v16, 0x1

    .line 881
    .local v16, "keyIntercept":Z
    if-nez v7, :cond_4f

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v21

    if-nez v21, :cond_4f

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->launchingGamekey(Z)Z

    move-result v16

    goto :goto_4f

    .line 889
    .end local v16    # "keyIntercept":Z
    :cond_a2
    const/16 v21, 0x11b

    move/from16 v0, v21

    if-ne v15, v0, :cond_be

    .line 890
    if-nez v7, :cond_bb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOnFully()Z

    move-result v21

    if-eqz v21, :cond_bb

    if-nez v17, :cond_bb

    .line 891
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->trySMouseAction()V

    .line 1046
    :cond_bb
    const/16 v16, 0x0

    goto :goto_4f

    .line 896
    :cond_be
    const/16 v21, 0xf0

    move/from16 v0, v21

    if-ne v15, v0, :cond_2bf

    .line 897
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportDMBAntennaDetach()Z

    move-result v21

    if-eqz v21, :cond_269

    .line 898
    const-string v21, "service.media.dmb"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 899
    .local v6, "dmb_running":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "dmb_antenna_auto_start"

    const/16 v23, 0x0

    const/16 v24, -0x2

    invoke-static/range {v21 .. v24}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_216

    const/4 v13, 0x1

    .line 901
    .local v13, "isDmbAutoStarton":Z
    :goto_ed
    const/4 v3, 0x0

    .line 902
    .local v3, "b_dmb_running":Z
    const/4 v14, 0x0

    .line 903
    .local v14, "isSecureKeyguard":Z
    const-string v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_104

    .line 904
    const-string v21, "1"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_219

    .line 905
    const/4 v3, 0x1

    .line 911
    :cond_104
    :goto_104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_120

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v14

    .line 913
    :cond_120
    const-string v21, "SamsungWindowManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "KEYCODE_DMB_ANT_OPEN dmb_running="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", isSecureKeyguard="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", isDmbAutoStarton="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    if-nez v7, :cond_1ab

    if-nez v18, :cond_1ab

    .line 919
    :try_start_156
    const-string v2, "/efs/FactoryApp/tdmb_det_count"

    .line 920
    .local v2, "TDMB_DET_PATH":Ljava/lang/String;
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 921
    .local v20, "strDMBCount":Ljava/lang/String;
    const-string v21, "SamsungWindowManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "TDMB_DET_COUNT : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    if-eqz v20, :cond_226

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_226

    .line 924
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v21

    const-wide/16 v23, 0x1

    add-long v4, v21, v23

    .line 925
    .local v4, "dmb_det_count":J
    const-wide/32 v21, 0xf423f

    cmp-long v21, v4, v21

    if-lez v21, :cond_1a2

    .line 926
    const-wide/16 v4, 0x1

    .line 928
    :cond_1a2
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1ab
    .catch Ljava/io/IOException; {:try_start_156 .. :try_end_1ab} :catch_22f
    .catch Ljava/lang/NumberFormatException; {:try_start_156 .. :try_end_1ab} :catch_24c

    .line 939
    .end local v2    # "TDMB_DET_PATH":Ljava/lang/String;
    .end local v4    # "dmb_det_count":J
    .end local v20    # "strDMBCount":Ljava/lang/String;
    :cond_1ab
    :goto_1ab
    if-nez v7, :cond_bb

    if-nez v18, :cond_bb

    if-nez v3, :cond_bb

    if-nez v14, :cond_bb

    if-eqz v13, :cond_bb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Landroid/os/FactoryTest;->isFactoryMode(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Z

    move-result v21

    if-nez v21, :cond_bb

    .line 942
    const-string v21, "SamsungWindowManager"

    const-string v22, "KEYCODE_DMB_ANT_OPEN"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    new-instance v21, Landroid/content/ComponentName;

    const-string v22, "com.sec.android.app.dmb"

    const-string v23, "com.sec.android.app.dmb.activity.DMBFullScreenView"

    invoke-direct/range {v21 .. v23}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v21 .. v21}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v12

    .line 946
    .local v12, "intent":Landroid/content/Intent;
    const-string v21, "com.sec.android.action.DMB_ANT_OPEN"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 947
    const/high16 v21, 0x10000000

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v21

    if-eqz v21, :cond_212

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    new-instance v22, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$6;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$6;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 957
    :cond_212
    const/16 v16, 0x1

    goto/16 :goto_4f

    .line 899
    .end local v3    # "b_dmb_running":Z
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "isDmbAutoStarton":Z
    .end local v14    # "isSecureKeyguard":Z
    :cond_216
    const/4 v13, 0x0

    goto/16 :goto_ed

    .line 906
    .restart local v3    # "b_dmb_running":Z
    .restart local v13    # "isDmbAutoStarton":Z
    .restart local v14    # "isSecureKeyguard":Z
    :cond_219
    const-string v21, "0"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_104

    .line 907
    const/4 v3, 0x0

    goto/16 :goto_104

    .line 930
    .restart local v2    # "TDMB_DET_PATH":Ljava/lang/String;
    .restart local v20    # "strDMBCount":Ljava/lang/String;
    :cond_226
    :try_start_226
    const-string v21, "0"

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22d
    .catch Ljava/io/IOException; {:try_start_226 .. :try_end_22d} :catch_22f
    .catch Ljava/lang/NumberFormatException; {:try_start_226 .. :try_end_22d} :catch_24c

    goto/16 :goto_1ab

    .line 932
    .end local v2    # "TDMB_DET_PATH":Ljava/lang/String;
    .end local v20    # "strDMBCount":Ljava/lang/String;
    :catch_22f
    move-exception v8

    .line 933
    .local v8, "e":Ljava/io/IOException;
    const-string v21, "SamsungWindowManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "IOException : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1ab

    .line 934
    .end local v8    # "e":Ljava/io/IOException;
    :catch_24c
    move-exception v8

    .line 935
    .local v8, "e":Ljava/lang/NumberFormatException;
    const-string v21, "SamsungWindowManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "NumberFormatException : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1ab

    .line 961
    .end local v3    # "b_dmb_running":Z
    .end local v6    # "dmb_running":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    .end local v13    # "isDmbAutoStarton":Z
    .end local v14    # "isSecureKeyguard":Z
    :cond_269
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportDTVAntennaDetach()Z

    move-result v21

    if-eqz v21, :cond_bb

    .line 963
    const/4 v14, 0x0

    .line 964
    .restart local v14    # "isSecureKeyguard":Z
    const-string v21, "SamsungWindowManager"

    const-string v22, "SISO DTV  APPLICATION KEYCODE_DTV_ANTENNA_OPEN"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_293

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v14

    .line 968
    :cond_293
    if-nez v7, :cond_bb

    if-nez v18, :cond_bb

    if-nez v14, :cond_bb

    .line 969
    const-string v21, "SamsungWindowManager"

    const-string v22, "SISO DTV  APPLICATION KEYCODE_DTV_ANTENNA_OPEN TO SEND BROADCAST"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 971
    .restart local v12    # "intent":Landroid/content/Intent;
    const-string v21, "com.samsung.sec.mtv.DTV_ANTENNA_OPEN"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    sget-object v22, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 973
    const/16 v16, 0x1

    goto/16 :goto_4f

    .line 976
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v14    # "isSecureKeyguard":Z
    :cond_2bf
    const/16 v21, 0xf1

    move/from16 v0, v21

    if-ne v15, v0, :cond_333

    .line 977
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportDMBAntennaDetach()Z

    move-result v21

    if-eqz v21, :cond_305

    .line 978
    if-nez v7, :cond_bb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Landroid/os/FactoryTest;->isFactoryMode(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Z

    move-result v21

    if-nez v21, :cond_bb

    .line 979
    const-string v21, "SamsungWindowManager"

    const-string v22, "KEYCODE_DMB_ANT_CLOSE"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 981
    .restart local v12    # "intent":Landroid/content/Intent;
    const-string v21, "com.sec.android.action.DMB_ANT_CLOSE"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    sget-object v22, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 984
    const/16 v16, 0x1

    goto/16 :goto_4f

    .line 988
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_305
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportDTVAntennaDetach()Z

    move-result v21

    if-eqz v21, :cond_bb

    .line 989
    if-nez v7, :cond_bb

    .line 990
    const-string v21, "SamsungWindowManager"

    const-string v22, "KEYCODE_DTV_ANT_CLOSE"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 992
    .restart local v12    # "intent":Landroid/content/Intent;
    const-string v21, "com.samsung.sec.mtv.DTV_ANTENNA_CLOSE"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    sget-object v22, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 994
    const/16 v16, 0x1

    goto/16 :goto_4f

    .line 1002
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_333
    const/16 v21, 0xe2

    move/from16 v0, v21

    if-ne v15, v0, :cond_356

    .line 1003
    if-eqz v7, :cond_bb

    if-nez v17, :cond_bb

    if-nez v18, :cond_bb

    .line 1005
    :try_start_33f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v19

    .line 1006
    .local v19, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v19, :cond_348

    .line 1007
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/statusbar/IStatusBarService;->toggleNotificationPanel()V
    :try_end_348
    .catch Landroid/os/RemoteException; {:try_start_33f .. :try_end_348} :catch_34c

    .line 1013
    .end local v19    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_348
    :goto_348
    const/16 v16, 0x1

    goto/16 :goto_4f

    .line 1009
    :catch_34c
    move-exception v9

    .line 1011
    .local v9, "ex":Landroid/os/RemoteException;
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_348

    .line 1018
    .end local v9    # "ex":Landroid/os/RemoteException;
    :cond_356
    const/16 v21, 0xdd

    move/from16 v0, v21

    if-eq v15, v0, :cond_362

    const/16 v21, 0xdc

    move/from16 v0, v21

    if-ne v15, v0, :cond_383

    .line 1020
    :cond_362
    if-eqz v7, :cond_bb

    if-nez v17, :cond_bb

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportSPC()Z

    move-result v21

    if-nez v21, :cond_bb

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "input_method"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/InputMethodManager;

    .line 1023
    .local v11, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v11, :cond_37f

    .line 1024
    invoke-virtual {v11, v15}, Landroid/view/inputmethod/InputMethodManager;->setBrightnessWithKeyboard(I)V

    .line 1026
    :cond_37f
    const/16 v16, 0x1

    goto/16 :goto_4f

    .line 1030
    .end local v11    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_383
    const/16 v21, 0x11c

    move/from16 v0, v21

    if-ne v15, v0, :cond_3ac

    .line 1031
    if-nez v7, :cond_3a8

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v21

    if-eqz v21, :cond_3a8

    if-nez v17, :cond_3a8

    .line 1032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/PhoneWindowManager;->closeMultiWindowTrayBar()Z

    move-result v21

    if-nez v21, :cond_3a8

    .line 1033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/PhoneWindowManager;->toggleMultiWindowTray()Z

    .line 1036
    :cond_3a8
    const/16 v16, 0x1

    goto/16 :goto_4f

    .line 1038
    :cond_3ac
    const/16 v21, 0x11e

    move/from16 v0, v21

    if-ne v15, v0, :cond_bb

    .line 1039
    if-nez v7, :cond_3c5

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v21

    if-eqz v21, :cond_3c5

    if-nez v17, :cond_3c5

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mMenuLongPressConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;

    move-object/from16 v21, v0

    # invokes: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->handleMenuLongPress()Z
    invoke-static/range {v21 .. v21}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->access$200(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;)Z

    .line 1042
    :cond_3c5
    const/16 v16, 0x1

    goto/16 :goto_4f
.end method

.method public interceptKeyCombinationBeforeQueueing(Landroid/view/KeyEvent;IZ)V
    .registers 11
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1152
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_15

    move v1, v3

    .line 1153
    .local v1, "down":Z
    :goto_9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    .line 1154
    .local v0, "canceled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 1156
    .local v2, "keyCode":I
    sparse-switch v2, :sswitch_data_1e8

    .line 1333
    :cond_14
    :goto_14
    return-void

    .end local v0    # "canceled":Z
    .end local v1    # "down":Z
    .end local v2    # "keyCode":I
    :cond_15
    move v1, v4

    .line 1152
    goto :goto_9

    .line 1161
    .restart local v0    # "canceled":Z
    .restart local v1    # "down":Z
    .restart local v2    # "keyCode":I
    :sswitch_17
    const/16 v5, 0x19

    if-eq v2, v5, :cond_1f

    const/16 v5, 0xa9

    if-ne v2, v5, :cond_67

    .line 1163
    :cond_1f
    if-eqz v1, :cond_55

    .line 1164
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v5, :cond_14

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_14

    .line 1165
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    .line 1166
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTime:J

    .line 1167
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 1168
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1169
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedBySafetyAssuranceChord:Z

    .line 1170
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptSafetyAssuranceChord()V

    .line 1171
    if-eqz p3, :cond_4f

    .line 1172
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 1173
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedByAccessControlChord:Z

    .line 1174
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptScreenshotChord()V

    .line 1175
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptAccessControlChord()V

    goto :goto_14

    .line 1177
    :cond_4f
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedByQuickShotChord:Z

    .line 1178
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptQuickShotChord()V

    goto :goto_14

    .line 1182
    :cond_55
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    .line 1183
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1184
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1185
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingSafetyAssuranceChordAction()V

    .line 1186
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingAccessControlChordAction()V

    .line 1187
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingQuickShotChordAction()V

    goto :goto_14

    .line 1189
    :cond_67
    const/16 v5, 0x18

    if-eq v2, v5, :cond_6f

    const/16 v5, 0xa8

    if-ne v2, v5, :cond_14

    .line 1191
    :cond_6f
    if-eqz v1, :cond_9e

    .line 1192
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v5, :cond_14

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_14

    .line 1193
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    .line 1194
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTime:J

    .line 1195
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 1196
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1197
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingAccessControlChordAction()V

    .line 1198
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyConsumedBySafetyAssuranceChord:Z

    .line 1199
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptSafetyAssuranceChord()V

    .line 1200
    if-eqz p3, :cond_14

    .line 1201
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyConsumedByScreenRecordChord:Z

    .line 1202
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptScreenRecordChord()V

    goto/16 :goto_14

    .line 1206
    :cond_9e
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    .line 1207
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1208
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1209
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingSafetyAssuranceChordAction()V

    .line 1210
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingAccessControlChordAction()V

    goto/16 :goto_14

    .line 1216
    :sswitch_ae
    if-eqz v1, :cond_e3

    .line 1217
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-nez v5, :cond_14

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_14

    .line 1218
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    .line 1219
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    .line 1220
    if-eqz p3, :cond_dc

    .line 1221
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByScreenshotChord:Z

    .line 1222
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByScreenRecordChord:Z

    .line 1223
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByAccessControlChord:Z

    .line 1224
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByFactoryTestChord:Z

    .line 1225
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptScreenshotChord()V

    .line 1226
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptScreenRecordChord()V

    .line 1227
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptAccessControlChord()V

    .line 1228
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptFactoryTestChord()V

    goto/16 :goto_14

    .line 1230
    :cond_dc
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByQuickShotChord:Z

    .line 1231
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptQuickShotChord()V

    goto/16 :goto_14

    .line 1235
    :cond_e3
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    .line 1236
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1237
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1238
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingAccessControlChordAction()V

    .line 1239
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingFactoryTestChordAction()V

    .line 1240
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingQuickShotChordAction()V

    goto/16 :goto_14

    .line 1245
    :sswitch_f6
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hasNavigationBar()Z

    move-result v5

    if-nez v5, :cond_14

    .line 1246
    if-eqz v1, :cond_12c

    .line 1247
    if-eqz p3, :cond_14

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-nez v5, :cond_14

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_14

    .line 1249
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    .line 1250
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTime:J

    .line 1251
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByScreenshotChord:Z

    .line 1252
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByScreenRecordChord:Z

    .line 1253
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByAccessControlChord:Z

    .line 1254
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 1255
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptScreenshotChord()V

    .line 1256
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptScreenRecordChord()V

    .line 1257
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptAccessControlChord()V

    goto/16 :goto_14

    .line 1260
    :cond_12c
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    .line 1261
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1262
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1263
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingAccessControlChordAction()V

    goto/16 :goto_14

    .line 1269
    :sswitch_139
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1270
    if-eqz v1, :cond_16c

    .line 1271
    if-eqz p3, :cond_14

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyTriggered:Z

    if-nez v5, :cond_14

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_14

    .line 1273
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyTriggered:Z

    .line 1274
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyTime:J

    .line 1275
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 1276
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1277
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1278
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingAccessControlChordAction()V

    .line 1279
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyConsumedByScreenshotChord:Z

    .line 1280
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptScreenshotChord()V

    goto/16 :goto_14

    .line 1283
    :cond_16c
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyTriggered:Z

    .line 1284
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1285
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1286
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingAccessControlChordAction()V

    goto/16 :goto_14

    .line 1292
    :sswitch_179
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1293
    if-eqz v1, :cond_1ac

    .line 1294
    if-eqz p3, :cond_14

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyTriggered:Z

    if-nez v5, :cond_14

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_14

    .line 1296
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyTriggered:Z

    .line 1297
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyTime:J

    .line 1298
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 1299
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1300
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1301
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingAccessControlChordAction()V

    .line 1302
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyConsumedByAccessControlChord:Z

    .line 1303
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptAccessControlChord()V

    goto/16 :goto_14

    .line 1306
    :cond_1ac
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyTriggered:Z

    .line 1307
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1308
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1309
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingAccessControlChordAction()V

    goto/16 :goto_14

    .line 1315
    :sswitch_1b9
    if-eqz v1, :cond_1d8

    .line 1316
    if-eqz p3, :cond_14

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyTriggered:Z

    if-nez v5, :cond_14

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_14

    .line 1318
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyTriggered:Z

    .line 1319
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyTime:J

    .line 1320
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyConsumedByFactoryTestChord:Z

    .line 1321
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptFactoryTestChord()V

    goto/16 :goto_14

    .line 1324
    :cond_1d8
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyTriggered:Z

    .line 1325
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1326
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1327
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingAccessControlChordAction()V

    .line 1328
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingFactoryTestChordAction()V

    goto/16 :goto_14

    .line 1156
    :sswitch_data_1e8
    .sparse-switch
        0x3 -> :sswitch_f6
        0x18 -> :sswitch_17
        0x19 -> :sswitch_17
        0x1a -> :sswitch_ae
        0xa8 -> :sswitch_17
        0xa9 -> :sswitch_17
        0xf5 -> :sswitch_179
        0xfb -> :sswitch_139
        0x109 -> :sswitch_1b9
    .end sparse-switch
.end method

.method public interceptQuickShotChord()V
    .registers 8

    .prologue
    const-wide/16 v5, 0x96

    const/4 v4, 0x1

    .line 1921
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportCameraQuickShot()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1934
    :cond_9
    :goto_9
    return-void

    .line 1923
    :cond_a
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_9

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-nez v2, :cond_9

    .line 1924
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1925
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_9

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_9

    .line 1927
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedByQuickShotChord:Z

    .line 1928
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByQuickShotChord:Z

    .line 1929
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 1930
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingSafetyAssuranceChordAction()V

    .line 1931
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mQuickShotChordLongPress:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9
.end method

.method public interceptScreenshotChord()V
    .registers 8

    .prologue
    const-wide/16 v5, 0x96

    const/4 v4, 0x1

    .line 1596
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isScreenShotChordEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1635
    :cond_b
    :goto_b
    return-void

    .line 1598
    :cond_c
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hasNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_83

    .line 1599
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_51

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_51

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_51

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-nez v2, :cond_51

    .line 1600
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1601
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    .line 1603
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 1604
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByScreenshotChord:Z

    .line 1605
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 1606
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1607
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingSafetyAssuranceChordAction()V

    .line 1608
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b

    .line 1611
    .end local v0    # "now":J
    :cond_51
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyTriggered:Z

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_b

    .line 1612
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1613
    .restart local v0    # "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    .line 1615
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyConsumedByScreenshotChord:Z

    .line 1616
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByScreenshotChord:Z

    .line 1617
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 1618
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1619
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b

    .line 1623
    .end local v0    # "now":J
    :cond_83
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v2, :cond_b

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_b

    .line 1624
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1625
    .restart local v0    # "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    .line 1627
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByScreenshotChord:Z

    .line 1628
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByScreenshotChord:Z

    .line 1629
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 1630
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1631
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_b
.end method

.method public isBlockedKeyBySideSync(Landroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1411
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 1412
    .local v2, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    .line 1413
    .local v1, "flags":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_23

    move v0, v3

    .line 1415
    .local v0, "down":Z
    :goto_11
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    if-eqz v5, :cond_25

    const/4 v5, 0x3

    if-eq v2, v5, :cond_25

    const/16 v5, 0x1a

    if-eq v2, v5, :cond_25

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v5

    if-nez v5, :cond_25

    .line 1423
    :goto_22
    return v3

    .end local v0    # "down":Z
    :cond_23
    move v0, v4

    .line 1413
    goto :goto_11

    .restart local v0    # "down":Z
    :cond_25
    move v3, v4

    .line 1423
    goto :goto_22
.end method

.method public isBlockedPowerKeyByKeyTest()Z
    .registers 4

    .prologue
    .line 2554
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;

    const/16 v2, 0x1a

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;->isSystemKeyEventRequested(I)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 2555
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 2556
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.factory.app.ui.UIHardKey"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.OneJigBinary.testitem.KeyTest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.android.app.simplefunctiontest.KeypadTest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.factory.app.spcselftest.SpcSelfTestMain"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.android.app.latin.tdfnotifier"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 2563
    :cond_4e
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v1, :cond_59

    const-string v1, "SamsungWindowManager"

    const-string v2, "Skip power key behavior by FactoryTest application"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2564
    :cond_59
    const/4 v1, 0x1

    .line 2567
    .end local v0    # "componentName":Landroid/content/ComponentName;
    :goto_5a
    return v1

    :cond_5b
    const/4 v1, 0x0

    goto :goto_5a
.end method

.method public isCameraOnTop()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 3233
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 3242
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_20

    .line 3243
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.sec.android.app.camera.Camera"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.sec.android.app.camera.Camcorder"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 3246
    :cond_1f
    const/4 v1, 0x1

    .line 3251
    :cond_20
    return v1
.end method

.method public isCombinationKeyTriggered()Z
    .registers 2

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v0, :cond_20

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v0, :cond_20

    :cond_10
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-nez v0, :cond_20

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyTriggered:Z

    if-nez v0, :cond_20

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyTriggered:Z

    if-nez v0, :cond_20

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyTriggered:Z

    if-eqz v0, :cond_22

    .line 1583
    :cond_20
    const/4 v0, 0x1

    .line 1585
    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public isConsumedKeyCombination(Landroid/view/KeyEvent;)Z
    .registers 11
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x3

    const/16 v7, 0x19

    const/16 v6, 0x1a

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1428
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 1429
    .local v2, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    .line 1430
    .local v1, "flags":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_31

    move v0, v3

    .line 1435
    .local v0, "down":Z
    :goto_16
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isScreenShotChordEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_56

    and-int/lit16 v5, v1, 0x400

    if-nez v5, :cond_56

    .line 1437
    if-eq v2, v7, :cond_28

    const/16 v5, 0xa9

    if-ne v2, v5, :cond_33

    :cond_28
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    if-eqz v5, :cond_33

    .line 1440
    if-nez v0, :cond_30

    .line 1441
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 1576
    :cond_30
    :goto_30
    return v3

    .end local v0    # "down":Z
    :cond_31
    move v0, v4

    .line 1430
    goto :goto_16

    .line 1445
    .restart local v0    # "down":Z
    :cond_33
    if-ne v2, v8, :cond_3e

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByScreenshotChord:Z

    if-eqz v5, :cond_3e

    .line 1447
    if-nez v0, :cond_30

    .line 1448
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByScreenshotChord:Z

    goto :goto_30

    .line 1452
    :cond_3e
    if-ne v2, v6, :cond_49

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByScreenshotChord:Z

    if-eqz v5, :cond_49

    .line 1454
    if-nez v0, :cond_30

    .line 1455
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByScreenshotChord:Z

    goto :goto_30

    .line 1459
    :cond_49
    const/16 v5, 0xfb

    if-ne v2, v5, :cond_56

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyConsumedByScreenshotChord:Z

    if-eqz v5, :cond_56

    .line 1461
    if-nez v0, :cond_30

    .line 1462
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyConsumedByScreenshotChord:Z

    goto :goto_30

    .line 1468
    :cond_56
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isScreenRecordChordEnabled()Z

    move-result v5

    if-eqz v5, :cond_83

    and-int/lit16 v5, v1, 0x400

    if-nez v5, :cond_83

    .line 1470
    const/16 v5, 0x18

    if-ne v2, v5, :cond_6d

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyConsumedByScreenRecordChord:Z

    if-eqz v5, :cond_6d

    .line 1472
    if-nez v0, :cond_30

    .line 1473
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyConsumedByScreenRecordChord:Z

    goto :goto_30

    .line 1477
    :cond_6d
    if-ne v2, v8, :cond_78

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByScreenRecordChord:Z

    if-eqz v5, :cond_78

    .line 1479
    if-nez v0, :cond_30

    .line 1480
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByScreenRecordChord:Z

    goto :goto_30

    .line 1484
    :cond_78
    if-ne v2, v6, :cond_83

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByScreenRecordChord:Z

    if-eqz v5, :cond_83

    .line 1486
    if-nez v0, :cond_30

    .line 1487
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByScreenRecordChord:Z

    goto :goto_30

    .line 1493
    :cond_83
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    if-nez v5, :cond_8f

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isOneTouchReportChordEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_a7

    .line 1495
    :cond_8f
    if-ne v2, v7, :cond_9a

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedBySafetyAssuranceChord:Z

    if-eqz v5, :cond_9a

    .line 1497
    if-nez v0, :cond_30

    .line 1498
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedBySafetyAssuranceChord:Z

    goto :goto_30

    .line 1502
    :cond_9a
    const/16 v5, 0x18

    if-ne v2, v5, :cond_a7

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyConsumedBySafetyAssuranceChord:Z

    if-eqz v5, :cond_a7

    .line 1504
    if-nez v0, :cond_30

    .line 1505
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyConsumedBySafetyAssuranceChord:Z

    goto :goto_30

    .line 1511
    :cond_a7
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    if-eqz v5, :cond_e1

    and-int/lit16 v5, v1, 0x400

    if-nez v5, :cond_e1

    .line 1512
    if-ne v2, v8, :cond_bb

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByAccessControlChord:Z

    if-eqz v5, :cond_bb

    .line 1514
    if-nez v0, :cond_30

    .line 1515
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByAccessControlChord:Z

    goto/16 :goto_30

    .line 1519
    :cond_bb
    if-ne v2, v7, :cond_c7

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedByAccessControlChord:Z

    if-eqz v5, :cond_c7

    .line 1521
    if-nez v0, :cond_30

    .line 1522
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedByAccessControlChord:Z

    goto/16 :goto_30

    .line 1526
    :cond_c7
    if-ne v2, v6, :cond_d3

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByAccessControlChord:Z

    if-eqz v5, :cond_d3

    .line 1528
    if-nez v0, :cond_30

    .line 1529
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByAccessControlChord:Z

    goto/16 :goto_30

    .line 1533
    :cond_d3
    const/16 v5, 0xf5

    if-ne v2, v5, :cond_e1

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyConsumedByAccessControlChord:Z

    if-eqz v5, :cond_e1

    .line 1535
    if-nez v0, :cond_30

    .line 1536
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyConsumedByAccessControlChord:Z

    goto/16 :goto_30

    .line 1542
    :cond_e1
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v5

    if-eqz v5, :cond_105

    and-int/lit16 v5, v1, 0x400

    if-nez v5, :cond_105

    .line 1543
    if-ne v2, v6, :cond_f7

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByFactoryTestChord:Z

    if-eqz v5, :cond_f7

    .line 1545
    if-nez v0, :cond_30

    .line 1546
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByFactoryTestChord:Z

    goto/16 :goto_30

    .line 1550
    :cond_f7
    const/16 v5, 0x109

    if-ne v2, v5, :cond_105

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyConsumedByFactoryTestChord:Z

    if-eqz v5, :cond_105

    .line 1552
    if-nez v0, :cond_30

    .line 1553
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyConsumedByFactoryTestChord:Z

    goto/16 :goto_30

    .line 1559
    :cond_105
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportCameraQuickShot()Z

    move-result v5

    if-eqz v5, :cond_123

    .line 1560
    if-ne v2, v7, :cond_117

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedByQuickShotChord:Z

    if-eqz v5, :cond_117

    .line 1562
    if-nez v0, :cond_30

    .line 1563
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedByQuickShotChord:Z

    goto/16 :goto_30

    .line 1567
    :cond_117
    if-ne v2, v6, :cond_123

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByQuickShotChord:Z

    if-eqz v5, :cond_123

    .line 1569
    if-nez v0, :cond_30

    .line 1570
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByQuickShotChord:Z

    goto/16 :goto_30

    :cond_123
    move v3, v4

    .line 1576
    goto/16 :goto_30
.end method

.method isDeviceProvisioned()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 813
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

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

.method public isDockHomeEnabled()Z
    .registers 2

    .prologue
    .line 2097
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    return v0
.end method

.method public isDoubleTapOnHomeEnabled()Z
    .registers 2

    .prologue
    .line 1052
    iget v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isDoubleTapOnPowerEnabled()Z
    .registers 2

    .prologue
    .line 1103
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerDoubleBehavior:Z

    return v0
.end method

.method public isEasyModeEnabled()Z
    .registers 2

    .prologue
    .line 2091
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    return v0
.end method

.method public isEnableAccessControl()Z
    .registers 2

    .prologue
    .line 1739
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    return v0
.end method

.method public isGloveModeEnabled()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2234
    iget v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mGloveState:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isHMTButtonClick(ZIZ)Z
    .registers 8
    .param p1, "down"    # Z
    .param p2, "repeatCount"    # I
    .param p3, "canceled"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3391
    if-eqz p1, :cond_29

    .line 3392
    if-nez p2, :cond_13

    .line 3393
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_11

    const-string v2, "SamsungWindowManager"

    const-string v3, "HMT button down"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3394
    :cond_11
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHMTPressed:Z

    .line 3396
    :cond_13
    const/4 v2, 0x7

    if-ne p2, v2, :cond_42

    if-nez p3, :cond_42

    .line 3397
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHMTPressed:Z

    .line 3398
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v1, :cond_25

    const-string v1, "SamsungWindowManager"

    const-string v2, "HMT button long click"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3399
    :cond_25
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isHMTLongClick()V

    .line 3412
    :cond_28
    :goto_28
    return v0

    .line 3403
    :cond_29
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHMTPressed:Z

    if-eqz v2, :cond_42

    .line 3404
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHMTPressed:Z

    .line 3405
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_3a

    const-string v2, "SamsungWindowManager"

    const-string v3, "HMT button single click"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3406
    :cond_3a
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isHMTSingleClick()Z

    move-result v2

    if-nez v2, :cond_28

    move v0, v1

    .line 3409
    goto :goto_28

    :cond_42
    move v0, v1

    .line 3412
    goto :goto_28
.end method

.method public isKidsModeEnabled()Z
    .registers 2

    .prologue
    .line 2085
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsKidsModeEnabled:Z

    return v0
.end method

.method public isKnoxActivated()Z
    .registers 3

    .prologue
    .line 2103
    const-string v0, "true"

    const-string v1, "dev.knoxapp.running"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2104
    const/4 v0, 0x1

    .line 2106
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isSideSyncPresentationRunning()Z
    .registers 2

    .prologue
    .line 2848
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    return v0
.end method

.method public isSystemKeyEventRequested(I)Z
    .registers 3
    .param p1, "keyCode"    # I

    .prologue
    .line 2546
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;->isSystemKeyEventRequested(I)Z

    move-result v0

    return v0
.end method

.method public isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 2542
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public isTripleTapOnHomeEnabled()Z
    .registers 2

    .prologue
    .line 1085
    iget v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTripleTapOnHomeBehavior:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isUvsOrientationRequested()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 3005
    const-string v1, "LGT"

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->EnableLinuxCOMMONAPI4:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 3008
    :cond_b
    :goto_b
    return v0

    :cond_c
    iget v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    const/4 v0, 0x1

    goto :goto_b
.end method

.method isVoIPRinging()Z
    .registers 6

    .prologue
    .line 3085
    const/4 v1, 0x0

    .line 3087
    .local v1, "isVoIPRinging":Z
    :try_start_1
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v2

    .line 3088
    .local v2, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-eqz v2, :cond_c

    .line 3089
    invoke-interface {v2}, Landroid/os/IVoIPInterface;->isVoIPRinging()Z

    move-result v1

    .line 3096
    .end local v2    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :goto_b
    return v1

    .line 3091
    .restart local v2    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :cond_c
    const-string v3, "SamsungWindowManager"

    const-string v4, "Unable to find IVoIPInterface interface"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_13} :catch_14

    goto :goto_b

    .line 3093
    .end local v2    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :catch_14
    move-exception v0

    .line 3094
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "SamsungWindowManager"

    const-string v4, "RemoteException from getVoIPInterfaceService()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public launchFingerPrint()V
    .registers 5

    .prologue
    .line 1123
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportFingerPrint()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1124
    const-string v1, "SamsungWindowManager"

    const-string v2, "launch fingerprint"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    :try_start_d
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFingerPrintIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_16
    .catch Landroid/content/ActivityNotFoundException; {:try_start_d .. :try_end_16} :catch_17

    .line 1133
    :goto_16
    return-void

    .line 1127
    :catch_17
    move-exception v0

    .line 1128
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "SamsungWindowManager"

    const-string v2, "No activity to handle fingerprint."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 1131
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_20
    const-string v1, "SamsungWindowManager"

    const-string v2, "Device is not supported, not launch fingerprint"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method public launchVoiceCommand()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 1056
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v3

    if-eqz v3, :cond_54

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAvailableVoiceCommand:Z

    if-eqz v3, :cond_54

    .line 1057
    const-string v3, "SamsungWindowManager"

    const-string v4, "launch voicecommand"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const-string v4, "homekey"

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->closeSystemWindows(Ljava/lang/String;)V

    .line 1059
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_49

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v1

    .line 1060
    .local v1, "isSecureLock":Z
    :goto_27
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    const-string v4, "isSecure"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1061
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    const-string v4, "AUTO_LISTEN"

    if-nez v1, :cond_35

    const/4 v2, 0x1

    :cond_35
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1062
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1064
    :try_start_3f
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_48
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3f .. :try_end_48} :catch_4b

    .line 1071
    .end local v1    # "isSecureLock":Z
    :goto_48
    return-void

    :cond_49
    move v1, v2

    .line 1059
    goto :goto_27

    .line 1065
    .restart local v1    # "isSecureLock":Z
    :catch_4b
    move-exception v0

    .line 1066
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "SamsungWindowManager"

    const-string v3, "No activity to launch voicecommand."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_48

    .line 1069
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "isSecureLock":Z
    :cond_54
    const-string v2, "SamsungWindowManager"

    const-string v3, "Device is not provisioned, not launch voicecommand."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48
.end method

.method public launchingGamekey(Z)Z
    .registers 11
    .param p1, "keyguardOn"    # Z

    .prologue
    const/4 v5, 0x0

    .line 3296
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->endCallByGamekey()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 3297
    const/4 v5, 0x1

    .line 3332
    :cond_8
    :goto_8
    return v5

    .line 3298
    :cond_9
    if-nez p1, :cond_8

    .line 3303
    const-string v1, "com.sec.game.sga"

    .line 3304
    .local v1, "gamePkg":Ljava/lang/String;
    const-string v4, "com.sec.android.app.samsungapps"

    .line 3305
    .local v4, "samsungAppsPkg":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "samsungapps://ProductDetail/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3307
    .local v3, "pkgUri":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3310
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_23
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_23 .. :try_end_2d} :catch_34

    move-result-object v2

    .line 3315
    :cond_2e
    :goto_2e
    if-eqz v2, :cond_52

    .line 3316
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->startSGA(Ljava/lang/String;)V

    goto :goto_8

    .line 3311
    :catch_34
    move-exception v0

    .line 3312
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v6, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v6, :cond_2e

    const-string v6, "SamsungWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not exist. so try to download the SGA apps."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 3319
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_52
    :try_start_52
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_5c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_52 .. :try_end_5c} :catch_6e

    move-result-object v2

    .line 3324
    :cond_5d
    :goto_5d
    if-eqz v2, :cond_8c

    .line 3325
    sget-boolean v6, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v6, :cond_6a

    const-string v6, "SamsungWindowManager"

    const-string v7, "SGA is not installed. so you are moving to Samsung apps."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3326
    :cond_6a
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->downloadForSGA(Ljava/lang/String;)V

    goto :goto_8

    .line 3320
    :catch_6e
    move-exception v0

    .line 3321
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v6, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v6, :cond_5d

    const-string v6, "SamsungWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not exist. so try to download the SGA apps."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 3328
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_8c
    sget-boolean v6, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v6, :cond_97

    const-string v6, "SamsungWindowManager"

    const-string v7, "Samsung apps is not installed. so you are moving to Samsung apps download page."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3329
    :cond_97
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->downloadForSamsungApps()V

    goto/16 :goto_8
.end method

.method public notifyCoverSwitchChanged(JZ)V
    .registers 7
    .param p1, "whenNanos"    # J
    .param p3, "coverOpen"    # Z

    .prologue
    .line 2209
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_7

    .line 2215
    :cond_6
    :goto_6
    return-void

    .line 2209
    :cond_7
    if-nez p3, :cond_6

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasDaynotePackage:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2210
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2211
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.daynote"

    const-string v2, "com.sec.android.daynote.DayNoteActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2212
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2213
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_6
.end method

.method public notifyGloveSwitchChanged(JZ)V
    .registers 8
    .param p1, "whenNanos"    # J
    .param p3, "gloveEnable"    # Z

    .prologue
    .line 2221
    if-eqz p3, :cond_8

    const/4 v0, 0x1

    .line 2222
    .local v0, "newGloveState":I
    :goto_3
    iget v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mGloveState:I

    if-ne v0, v1, :cond_a

    .line 2231
    :goto_7
    return-void

    .line 2221
    .end local v0    # "newGloveState":I
    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    .line 2226
    .restart local v0    # "newGloveState":I
    :cond_a
    iput v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mGloveState:I

    .line 2228
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mGloveModeIntent:Landroid/content/Intent;

    const-string v2, "gloveEnable"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2229
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v1, :cond_35

    const-string v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Glove mode enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , broadcasted."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2230
    :cond_35
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mGloveModeIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_7
.end method

.method public notifyPenSwitchChanged(JZ)V
    .registers 16
    .param p1, "whenNanos"    # J
    .param p3, "penInsert"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2112
    if-eqz p3, :cond_33

    move v2, v6

    .line 2113
    .local v2, "newPenState":I
    :goto_5
    const/4 v3, 0x1

    .line 2114
    .local v3, "playSound":Z
    sget-boolean v8, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v8, :cond_2e

    const-string v8, "SamsungWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "newPenState : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mPenState : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenState:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2115
    :cond_2e
    iget v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenState:I

    if-ne v2, v8, :cond_35

    .line 2173
    :goto_32
    return-void

    .end local v2    # "newPenState":I
    .end local v3    # "playSound":Z
    :cond_33
    move v2, v7

    .line 2112
    goto :goto_5

    .line 2117
    .restart local v2    # "newPenState":I
    .restart local v3    # "playSound":Z
    :cond_35
    iget v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenState:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3b

    .line 2118
    const/4 v3, 0x0

    .line 2120
    :cond_3b
    sget-boolean v8, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v8, :cond_57

    const-string v8, "SamsungWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "playSound : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    :cond_57
    iput v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenState:I

    .line 2124
    const/16 v8, 0x2c

    new-array v0, v8, [B

    fill-array-data v0, :array_130

    .line 2134
    .local v0, "attach_noti_ivt":[B
    const/16 v8, 0x12

    new-array v1, v8, [B

    fill-array-data v1, :array_14a

    .line 2141
    .local v1, "detach_noti_ivt":[B
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "pen_detachment_notification"

    const/4 v10, -0x2

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 2144
    .local v4, "sound":Ljava/lang/String;
    if-eqz v4, :cond_f1

    const-string v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2146
    .local v5, "soundPath":[Ljava/lang/String;
    :goto_7c
    if-eqz p3, :cond_f3

    .line 2148
    if-eqz v3, :cond_8b

    if-eqz v4, :cond_8b

    :try_start_82
    array-length v8, v5

    if-le v8, v6, :cond_8b

    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->playSound(Ljava/lang/String;)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_8b} :catch_12c

    .line 2151
    :cond_8b
    :goto_8b
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v9}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v9

    invoke-virtual {v8, v0, v9}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    .line 2166
    :goto_96
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const-string v9, "penInsert"

    invoke-virtual {v8, v9, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2167
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const-string v9, "isScreenOn"

    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOnFully()Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2168
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const-string v9, "isKeyguardLocked"

    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2170
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const-string v9, "isBoot"

    const-wide/16 v10, 0x0

    cmp-long v10, p1, v10

    if-nez v10, :cond_128

    :goto_c1
    invoke-virtual {v8, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2171
    sget-boolean v6, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v6, :cond_e6

    const-string v6, "SamsungWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pen = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , broadcasted."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    :cond_e6
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_32

    .line 2144
    .end local v5    # "soundPath":[Ljava/lang/String;
    :cond_f1
    const/4 v5, 0x0

    goto :goto_7c

    .line 2153
    .restart local v5    # "soundPath":[Ljava/lang/String;
    :cond_f3
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v8

    if-eqz v8, :cond_11e

    .line 2154
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 2160
    :goto_104
    if-eqz v3, :cond_111

    if-eqz v4, :cond_111

    :try_start_108
    array-length v8, v5

    if-le v8, v6, :cond_111

    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->playSound(Ljava/lang/String;)V
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_111} :catch_12a

    .line 2163
    :cond_111
    :goto_111
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v9}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v9

    invoke-virtual {v8, v1, v9}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    goto/16 :goto_96

    .line 2156
    :cond_11e
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10, v7}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_104

    :cond_128
    move v6, v7

    .line 2170
    goto :goto_c1

    .line 2161
    :catch_12a
    move-exception v8

    goto :goto_111

    .line 2149
    :catch_12c
    move-exception v8

    goto/16 :goto_8b

    .line 2124
    nop

    :array_130
    .array-data 1
        0x1t
        0x0t
        0x3t
        0x0t
        0x24t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xdt
        0x0t
        0x15t
        0x0t
        -0xft
        -0x20t
        0x1t
        -0x1et
        0x0t
        0x0t
        -0xft
        -0x20t
        0x2t
        -0x1et
        0x0t
        -0x38t
        -0x1t
        0x20t
        0x1t
        0x0t
        0x0t
        0x5ft
        0x0t
        0x0t
        0x42t
        0x20t
        0x1t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        -0x1et
        0x0t
    .end array-data

    .line 2134
    :array_14a
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0xat
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x20t
        0x3t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        0x71t
    .end array-data
.end method

.method public onScreenTurnedOff(I)V
    .registers 3
    .param p1, "why"    # I

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    if-nez v0, :cond_11

    .line 571
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mOrientationListenerForPenGesture:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;->disable()V

    .line 574
    :cond_11
    return-void
.end method

.method public onScreenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .registers 3
    .param p1, "screenOnListener"    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    if-nez v0, :cond_11

    .line 580
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mOrientationListenerForPenGesture:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;->enable()V

    .line 583
    :cond_11
    return-void
.end method

.method public onSystemReady(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)V
    .registers 2
    .param p1, "keyguardDelegate"    # Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    .prologue
    .line 564
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    .line 565
    return-void
.end method

.method public performCPUBoost()V
    .registers 11

    .prologue
    const-wide/16 v4, 0x0

    const/4 v9, 0x0

    .line 3465
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_2a

    .line 3466
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "WAKEUP_BOOSTER"

    const/16 v3, 0xc

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 3467
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_2a

    .line 3468
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v8

    .line 3469
    .local v8, "supportedCPUFreqTable":[I
    if-eqz v8, :cond_2a

    .line 3470
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    aget v2, v8, v9

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 3473
    .end local v8    # "supportedCPUFreqTable":[I
    :cond_2a
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_35

    .line 3475
    :try_start_2e
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    sget v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->BOOSTING_TIMEOUT:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_35} :catch_76

    .line 3482
    :cond_35
    :goto_35
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_63

    .line 3483
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "WAKEUP_CORE_BOOSTER"

    const/16 v3, 0xe

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    .line 3484
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_63

    .line 3485
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v6

    .line 3486
    .local v6, "coreNumTable":[I
    if-eqz v6, :cond_63

    array-length v0, v6

    if-lez v0, :cond_63

    .line 3487
    aget v0, v6, v9

    const/4 v1, 0x2

    if-lt v0, v1, :cond_63

    .line 3488
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 3492
    .end local v6    # "coreNumTable":[I
    :cond_63
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_75

    .line 3494
    :try_start_67
    const-string v0, "SamsungWindowManager"

    const-string v1, "mCoreNumLockHelper.acquire"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3495
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    sget v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->BOOSTING_TIMEOUT:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_75} :catch_82

    .line 3501
    :cond_75
    :goto_75
    return-void

    .line 3476
    :catch_76
    move-exception v7

    .line 3477
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "SamsungWindowManager"

    const-string v1, "mCpuBooster.acquire is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3478
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_35

    .line 3496
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_82
    move-exception v7

    .line 3497
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v0, "SamsungWindowManager"

    const-string v1, "mCoreNumLockHelper.acquire is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3498
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_75
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .registers 15
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "effectId"    # I
    .param p3, "always"    # Z

    .prologue
    .line 2322
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v7}, Landroid/os/SystemVibrator;->hasVibrator()Z

    move-result v7

    if-nez v7, :cond_a

    .line 2323
    const/4 v7, 0x0

    .line 2436
    :goto_9
    return v7

    .line 2326
    :cond_a
    const/4 v1, 0x0

    .line 2328
    .local v1, "hapticsDisabledByPowerSavingMode":Z
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "haptic_feedback_enabled"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v7, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-nez v7, :cond_d6

    const/4 v0, 0x1

    .line 2331
    .local v0, "hapticsDisabled":Z
    :goto_1c
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "psm_switch"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v7, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_d9

    const/4 v5, 0x1

    .line 2335
    .local v5, "powerSavingModeEnabled":Z
    :goto_2e
    if-eqz v5, :cond_93

    .line 2336
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "psm_haptic_feedback"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v7, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_dc

    const/4 v6, 0x1

    .line 2339
    .local v6, "turnOffHapticFeedbackEnabled":Z
    :goto_42
    if-eqz v6, :cond_93

    .line 2340
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "psm_auto_turn_on"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v7, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_df

    const/4 v4, 0x1

    .line 2343
    .local v4, "powerSavingAutoModeEnabled":Z
    :goto_56
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "isLowLevel"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v7, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_e2

    const/4 v2, 0x1

    .line 2345
    .local v2, "isLowLevelBattery":Z
    :goto_68
    sget-boolean v7, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v7, :cond_8e

    .line 2346
    const-string v7, "SamsungWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Check haptic disabled policy : powerSavingAutoModeEnabled = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isLowLevelBattery = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    :cond_8e
    if-eqz v4, :cond_e4

    .line 2351
    if-eqz v2, :cond_93

    .line 2352
    const/4 v1, 0x1

    .line 2360
    .end local v2    # "isLowLevelBattery":Z
    .end local v4    # "powerSavingAutoModeEnabled":Z
    .end local v6    # "turnOffHapticFeedbackEnabled":Z
    :cond_93
    :goto_93
    if-nez p3, :cond_e6

    if-eqz v5, :cond_99

    if-nez v1, :cond_a3

    :cond_99
    if-nez v0, :cond_a3

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v7

    if-eqz v7, :cond_e6

    .line 2363
    :cond_a3
    sget-boolean v7, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v7, :cond_d3

    .line 2364
    const-string v7, "SamsungWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "haptic disabled by policy : hapticsDisabled = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " PowerSavingModeEnabled = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " TurnOffHapticFeedbackEnabled = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    :cond_d3
    const/4 v7, 0x0

    goto/16 :goto_9

    .line 2328
    .end local v0    # "hapticsDisabled":Z
    .end local v5    # "powerSavingModeEnabled":Z
    :cond_d6
    const/4 v0, 0x0

    goto/16 :goto_1c

    .line 2331
    .restart local v0    # "hapticsDisabled":Z
    :cond_d9
    const/4 v5, 0x0

    goto/16 :goto_2e

    .line 2336
    .restart local v5    # "powerSavingModeEnabled":Z
    :cond_dc
    const/4 v6, 0x0

    goto/16 :goto_42

    .line 2340
    .restart local v6    # "turnOffHapticFeedbackEnabled":Z
    :cond_df
    const/4 v4, 0x0

    goto/16 :goto_56

    .line 2343
    .restart local v4    # "powerSavingAutoModeEnabled":Z
    :cond_e2
    const/4 v2, 0x0

    goto :goto_68

    .line 2355
    .restart local v2    # "isLowLevelBattery":Z
    :cond_e4
    const/4 v1, 0x1

    goto :goto_93

    .line 2371
    .end local v2    # "isLowLevelBattery":Z
    .end local v4    # "powerSavingAutoModeEnabled":Z
    .end local v6    # "turnOffHapticFeedbackEnabled":Z
    :cond_e6
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isUseVibetonz()Z

    move-result v7

    if-eqz v7, :cond_110

    .line 2372
    sparse-switch p2, :sswitch_data_152

    .line 2383
    const/16 v7, 0x9

    if-lt p2, v7, :cond_10d

    const/16 v7, 0x16

    if-gt p2, v7, :cond_10d

    .line 2385
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    sget-object v8, Landroid/os/SystemVibrator$MagnitudeType;->TouchMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v7, p2, v8}, Landroid/os/SystemVibrator;->vibrateImmVibe(ILandroid/os/SystemVibrator$MagnitudeType;)V

    .line 2387
    const/4 v7, 0x1

    goto/16 :goto_9

    .line 2378
    :sswitch_101
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    const/16 v8, 0x9

    sget-object v9, Landroid/os/SystemVibrator$MagnitudeType;->TouchMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v7, v8, v9}, Landroid/os/SystemVibrator;->vibrateImmVibe(ILandroid/os/SystemVibrator$MagnitudeType;)V

    .line 2380
    const/4 v7, 0x1

    goto/16 :goto_9

    .line 2390
    :cond_10d
    const/4 v7, 0x0

    goto/16 :goto_9

    .line 2392
    :cond_110
    const/4 v7, 0x1

    new-array v3, v7, [J

    .line 2393
    .local v3, "pattern":[J
    sparse-switch p2, :sswitch_data_168

    .line 2426
    const/4 v7, 0x0

    goto/16 :goto_9

    .line 2399
    :sswitch_119
    const/4 v7, 0x0

    const-wide/16 v8, 0x32

    aput-wide v8, v3, v7

    .line 2428
    :goto_11e
    array-length v7, v3

    const/4 v8, 0x1

    if-ne v7, v8, :cond_14b

    .line 2430
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    const/4 v8, 0x0

    aget-wide v8, v3, v8

    invoke-virtual {v7, v8, v9}, Landroid/os/SystemVibrator;->vibrate(J)V

    .line 2436
    :goto_12a
    const/4 v7, 0x1

    goto/16 :goto_9

    .line 2404
    :sswitch_12d
    const/4 v7, 0x0

    const-wide/16 v8, 0x32

    aput-wide v8, v3, v7

    goto :goto_11e

    .line 2408
    :sswitch_133
    const/4 v7, 0x0

    const-wide/16 v8, 0x64

    aput-wide v8, v3, v7

    goto :goto_11e

    .line 2412
    :sswitch_139
    const/4 v7, 0x0

    const-wide/16 v8, 0x1f4

    aput-wide v8, v3, v7

    goto :goto_11e

    .line 2419
    :sswitch_13f
    const/4 v7, 0x0

    const-wide/16 v8, 0x5dc

    aput-wide v8, v3, v7

    goto :goto_11e

    .line 2423
    :sswitch_145
    const/4 v7, 0x0

    const-wide/16 v8, 0x32

    aput-wide v8, v3, v7

    goto :goto_11e

    .line 2433
    :cond_14b
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    const/4 v8, -0x1

    invoke-virtual {v7, v3, v8}, Landroid/os/SystemVibrator;->vibrate([JI)V

    goto :goto_12a

    .line 2372
    :sswitch_data_152
    .sparse-switch
        0x0 -> :sswitch_101
        0x1 -> :sswitch_101
        0x3 -> :sswitch_101
        0x2710 -> :sswitch_101
        0x2711 -> :sswitch_101
    .end sparse-switch

    .line 2393
    :sswitch_data_168
    .sparse-switch
        0x0 -> :sswitch_119
        0x1 -> :sswitch_119
        0x3 -> :sswitch_119
        0x9 -> :sswitch_12d
        0xa -> :sswitch_133
        0xc -> :sswitch_139
        0xd -> :sswitch_13f
        0xe -> :sswitch_145
        0x10 -> :sswitch_13f
        0x11 -> :sswitch_13f
        0x12 -> :sswitch_13f
        0x2710 -> :sswitch_119
        0x2711 -> :sswitch_119
    .end sparse-switch
.end method

.method public performSystemKeyFeedback(Landroid/view/KeyEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xe

    const/4 v2, 0x0

    .line 2278
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_29

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isCoverOpen()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_2a

    const-string v0, "SPC_Remote_Controller"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2303
    :cond_29
    :goto_29
    return-void

    .line 2285
    :cond_2a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_5a

    goto :goto_29

    .line 2289
    :sswitch_32
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isUseVibetonz()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasHardMenuBackKey()Z

    move-result v0

    if-nez v0, :cond_41

    .line 2290
    invoke-virtual {p0, v4, v3, v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2292
    :cond_41
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->playSoundEffect()V

    goto :goto_29

    .line 2295
    :sswitch_45
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasQwertyKeyboard(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 2296
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isUseVibetonz()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 2297
    invoke-virtual {p0, v4, v3, v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2299
    :cond_56
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->playSoundEffect()V

    goto :goto_29

    .line 2285
    :sswitch_data_5a
    .sparse-switch
        0x4 -> :sswitch_32
        0x52 -> :sswitch_32
        0x54 -> :sswitch_45
        0xbb -> :sswitch_32
    .end sparse-switch
.end method

.method public requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "request"    # Z

    .prologue
    .line 2538
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method public sendBroadcastForAccessibility()V
    .registers 5

    .prologue
    .line 1090
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1091
    const-string v1, "SamsungWindowManager"

    const-string v2, "sendBroadcastForAccessibility() is called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.action.HOME_TRIPLE_CLICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1094
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v3, "com.samsung.permission.HOME_TRIPLE_CLICK"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1098
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_1d
    return-void

    .line 1096
    :cond_1e
    const-string v1, "SamsungWindowManager"

    const-string v2, "sendBroadcastForAccessibility() is not called, because it is not provisioned"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method public sendSystemKeyToSideSync(Landroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2832
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v1

    if-nez v1, :cond_54

    .line 2834
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v1, :cond_2a

    const-string v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "System key send to sidesync.source keycode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2836
    :cond_2a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2837
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.sidesync.source"

    const-string v2, "com.sec.android.sidesync.source.WimpService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2838
    const-string v1, "com.sec.android.intent.action.SYSTEM_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2839
    const-string v1, "KEYCODE"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2840
    const-string v1, "ACTION"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2841
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2842
    const/4 v1, 0x1

    .line 2844
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_53
    return v1

    :cond_54
    const/4 v1, 0x0

    goto :goto_53
.end method

.method public setFingerPrintPending()V
    .registers 2

    .prologue
    .line 1136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    .line 1137
    return-void
.end method

.method public setFocusedWindow(Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 5
    .param p1, "focusWindow"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 2984
    if-eqz p1, :cond_8

    .line 2985
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFocusedWindowPkgName:Ljava/lang/String;

    .line 2988
    :cond_8
    iget v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSpenUspFeatureLevel:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_11

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasMultiWindowFeature:Z

    if-eqz v1, :cond_25

    .line 2989
    :cond_11
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "spengestureservice"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/smartclip/SpenGestureManager;

    .line 2990
    .local v0, "SpenManager":Lcom/samsung/android/smartclip/SpenGestureManager;
    if-eqz p1, :cond_24

    .line 2991
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/smartclip/SpenGestureManager;->setFocusWindow(I)V

    .line 3000
    .end local v0    # "SpenManager":Lcom/samsung/android/smartclip/SpenGestureManager;
    :cond_24
    :goto_24
    return-void

    .line 2993
    :cond_25
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasSPenUspFeature:Z

    if-eqz v1, :cond_24

    .line 2994
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSPenGestureView:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    if-eqz v1, :cond_24

    .line 2995
    if-eqz p1, :cond_24

    .line 2996
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSPenGestureView:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->setFocusedWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    goto :goto_24
.end method

.method public setOpenByNotification(ZZ)V
    .registers 4
    .param p1, "topIsFullscreen"    # Z
    .param p2, "openByNotification"    # Z

    .prologue
    .line 2854
    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mOpenByNotification:Z

    .line 2855
    return-void

    .line 2854
    :cond_8
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setRotationLw(I)V
    .registers 5
    .param p1, "rotation"    # I

    .prologue
    .line 751
    const-string v0, "SamsungWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRotationLw() : rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    if-nez v0, :cond_27

    .line 755
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->updateWacomOffset(I)V

    .line 758
    :cond_27
    return-void
.end method

.method public trySMouseAction()V
    .registers 7

    .prologue
    .line 3102
    sget-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_1e

    const-string v3, "SamsungWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "trySMouseAction() is called. / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSpenUspFeatureLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3103
    :cond_1e
    iget v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSpenUspFeatureLevel:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_60

    .line 3105
    :try_start_23
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 3106
    .local v2, "intentForService":Landroid/content/Intent;
    const-string v3, "com.sec.android.app.rakein"

    const-string v4, "com.sec.android.app.rakein.RakeInService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3107
    const-string v3, "selectIndex"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3108
    const-string v3, "multiwindow"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3109
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 3111
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.server.smartclip.GAC_SELECTED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3112
    .local v1, "gacIntentActionMemo":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3114
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isUseVibetonz()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 3115
    const/4 v3, 0x0

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 3117
    :cond_5d
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->playSoundEffect()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_60} :catch_61

    .line 3122
    .end local v1    # "gacIntentActionMemo":Landroid/content/Intent;
    .end local v2    # "intentForService":Landroid/content/Intent;
    :cond_60
    :goto_60
    return-void

    .line 3118
    :catch_61
    move-exception v0

    .line 3119
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_60

    const-string v3, "SamsungWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pen window doesn\'t start by Smouse"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60
.end method

.method public updateSettings()V
    .registers 18

    .prologue
    .line 659
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 660
    .local v10, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 662
    :try_start_d
    const-string v14, "double_tab_launch"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isVoiceTalkDefaultLaunch(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_108

    const/4 v12, 0x1

    :goto_1a
    const/4 v15, -0x2

    invoke-static {v10, v14, v12, v15}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 666
    .local v1, "doubleTapOnHomeBehavior":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-eq v12, v1, :cond_29

    .line 667
    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 672
    :cond_29
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v14, "direct_access"

    const/4 v15, 0x0

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-static {v12, v14, v15, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    .line 674
    .local v11, "tripleTapOnHomeBehavior":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTripleTapOnHomeBehavior:I

    if-eq v12, v11, :cond_46

    .line 675
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTripleTapOnHomeBehavior:I

    .line 680
    :cond_46
    const-string v12, "lcd_curtain"

    const/4 v14, 0x0

    invoke-static {v10, v12, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v14, 0x1

    if-ne v12, v14, :cond_10b

    const-string v12, "accessibility_enabled"

    const/4 v14, 0x0

    invoke-static {v10, v12, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v14, 0x1

    if-ne v12, v14, :cond_10b

    const/4 v12, 0x1

    :goto_5b
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerDoubleBehavior:Z

    .line 685
    const-string v12, "send_emergency_message"

    const/4 v14, 0x0

    const/4 v15, -0x2

    invoke-static {v10, v12, v14, v15}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    if-eqz v12, :cond_10e

    const/4 v6, 0x1

    .line 687
    .local v6, "isSafetyAssuranceEnabled":Z
    :goto_6a
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    if-eq v12, v6, :cond_74

    .line 688
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    .line 693
    :cond_74
    const-string v12, "access_control_use"

    const/4 v14, 0x0

    const/4 v15, -0x2

    invoke-static {v10, v12, v14, v15}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    if-eqz v12, :cond_111

    const/4 v8, 0x1

    .line 695
    .local v8, "isUseAccessControl":Z
    :goto_7f
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    if-eq v12, v8, :cond_89

    .line 696
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    .line 699
    :cond_89
    const-string v12, "access_control_enabled"

    const/4 v14, 0x0

    const/4 v15, -0x2

    invoke-static {v10, v12, v14, v15}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    if-eqz v12, :cond_114

    const/4 v4, 0x1

    .line 701
    .local v4, "isEnabledAccessControl":Z
    :goto_94
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    if-eq v12, v4, :cond_9e

    .line 702
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    .line 707
    :cond_9e
    const-string v12, "kids_home_mode"

    const/4 v14, 0x0

    const/4 v15, -0x2

    invoke-static {v10, v12, v14, v15}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    if-eqz v12, :cond_117

    const/4 v5, 0x1

    .line 709
    .local v5, "isKidsMode":Z
    :goto_a9
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsKidsModeEnabled:Z

    if-eq v12, v5, :cond_b3

    .line 710
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsKidsModeEnabled:Z

    .line 715
    :cond_b3
    const-string v12, "easy_mode_switch"

    const/4 v14, 0x1

    const/4 v15, -0x2

    invoke-static {v10, v12, v14, v15}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    if-nez v12, :cond_119

    const/4 v3, 0x1

    .line 717
    .local v3, "isEasyMode":Z
    :goto_be
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    if-eq v12, v3, :cond_c8

    .line 718
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    .line 723
    :cond_c8
    const-string v12, "edit_after_screen_capture"

    const/4 v14, 0x0

    const/4 v15, -0x2

    invoke-static {v10, v12, v14, v15}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    if-eqz v12, :cond_11b

    const/4 v9, 0x1

    .line 725
    .local v9, "performEditAfterScreenCapture":Z
    :goto_d3
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    if-eq v12, v9, :cond_dd

    .line 726
    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    .line 731
    :cond_dd
    const-string v12, "desk_home_screen_display"

    const/4 v14, 0x0

    const/4 v15, -0x2

    invoke-static {v10, v12, v14, v15}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    if-eqz v12, :cond_11d

    const/4 v2, 0x1

    .line 733
    .local v2, "isDockHomeEnabled":Z
    :goto_e8
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    if-eq v12, v2, :cond_f2

    .line 734
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    .line 739
    :cond_f2
    const-string v12, "sidesync_source_presentation"

    const/4 v14, 0x0

    invoke-static {v10, v12, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_11f

    const/4 v7, 0x1

    .line 742
    .local v7, "isSideSyncSourcePresentationActived":Z
    :goto_fc
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    if-eq v12, v7, :cond_106

    .line 743
    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    .line 747
    :cond_106
    monitor-exit v13

    .line 748
    return-void

    .line 662
    .end local v1    # "doubleTapOnHomeBehavior":I
    .end local v2    # "isDockHomeEnabled":Z
    .end local v3    # "isEasyMode":Z
    .end local v4    # "isEnabledAccessControl":Z
    .end local v5    # "isKidsMode":Z
    .end local v6    # "isSafetyAssuranceEnabled":Z
    .end local v7    # "isSideSyncSourcePresentationActived":Z
    .end local v8    # "isUseAccessControl":Z
    .end local v9    # "performEditAfterScreenCapture":Z
    .end local v11    # "tripleTapOnHomeBehavior":I
    :cond_108
    const/4 v12, 0x0

    goto/16 :goto_1a

    .line 680
    .restart local v1    # "doubleTapOnHomeBehavior":I
    .restart local v11    # "tripleTapOnHomeBehavior":I
    :cond_10b
    const/4 v12, 0x0

    goto/16 :goto_5b

    .line 685
    :cond_10e
    const/4 v6, 0x0

    goto/16 :goto_6a

    .line 693
    .restart local v6    # "isSafetyAssuranceEnabled":Z
    :cond_111
    const/4 v8, 0x0

    goto/16 :goto_7f

    .line 699
    .restart local v8    # "isUseAccessControl":Z
    :cond_114
    const/4 v4, 0x0

    goto/16 :goto_94

    .line 707
    .restart local v4    # "isEnabledAccessControl":Z
    :cond_117
    const/4 v5, 0x0

    goto :goto_a9

    .line 715
    .restart local v5    # "isKidsMode":Z
    :cond_119
    const/4 v3, 0x0

    goto :goto_be

    .line 723
    .restart local v3    # "isEasyMode":Z
    :cond_11b
    const/4 v9, 0x0

    goto :goto_d3

    .line 731
    .restart local v9    # "performEditAfterScreenCapture":Z
    :cond_11d
    const/4 v2, 0x0

    goto :goto_e8

    .line 739
    .restart local v2    # "isDockHomeEnabled":Z
    :cond_11f
    const/4 v7, 0x0

    goto :goto_fc

    .line 747
    .end local v1    # "doubleTapOnHomeBehavior":I
    .end local v2    # "isDockHomeEnabled":Z
    .end local v3    # "isEasyMode":Z
    .end local v4    # "isEnabledAccessControl":Z
    .end local v5    # "isKidsMode":Z
    .end local v6    # "isSafetyAssuranceEnabled":Z
    .end local v8    # "isUseAccessControl":Z
    .end local v9    # "performEditAfterScreenCapture":Z
    .end local v11    # "tripleTapOnHomeBehavior":I
    :catchall_121
    move-exception v12

    monitor-exit v13
    :try_end_123
    .catchall {:try_start_d .. :try_end_123} :catchall_121

    throw v12
.end method
