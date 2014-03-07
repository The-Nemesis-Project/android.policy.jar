.class public Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenShotForEffect;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenshotRunnable;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyGestureInputEventReceiver;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserver;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserverForSPen;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SPenGestureInputEventReceiver;
    }
.end annotation


# static fields
.field private static final BOOSTING_TIMEOUT:I = 0xbb8

.field static final DEBUG:Z = false

.field private static final KEYGUARD_SCREENSHOT_CHORD_DELAY_MULTIPLIER:F = 2.5f

.field private static final SAFETYASSURANCE_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0xfaL

.field static final SAFE_DEBUG:Z

.field static final SCANCODE_ZOOM_RING_IN:I = 0x225

.field static final SCANCODE_ZOOM_RING_OUT:I = 0x226

.field static final SCREENCAPTURE_ORIGINAL:I = 0x1

.field static final SCREENCAPTURE_SWEEP_LEFT:I = 0x2

.field static final SCREENCAPTURE_SWEEP_RIGHT:I = 0x3

.field private static final SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field public static final SCREEN_ON_BY_CAMERAKEY:I = 0x3ea

.field public static final SCREEN_ON_BY_COVER:I = 0x3ec

.field public static final SCREEN_ON_BY_FAST_BOOT_UP:I = 0x3eb

.field public static final SCREEN_ON_BY_OTHERS:I = 0x3ed

.field public static final SCREEN_ON_BY_PWRKEY:I = 0x3e9

.field public static final SCREEN_ON_BY_UNKNOWN:I = -0x1

.field static final TAG:Ljava/lang/String; = "SamsungWindowManager"

.field public static final TORCH_FILE:Ljava/lang/String; = "/sys/class/camera/flash/rear_flash"

.field static final localLOGV:Z

.field private static mCPUCoreNumBooster:Landroid/os/DVFSHelper;


# instance fields
.field final MAX_SCREENSHOT_CONNECTION:I

.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

.field private final mAccessControlChordLongPress:Ljava/lang/Runnable;

.field mAlwaysComponet:Landroid/content/ComponentName;

.field mAlwaysIntent:Landroid/content/Intent;

.field mAudioManager:Landroid/media/AudioManager;

.field mBlockCollapseStatusBar:Z

.field mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field mBootCompleted:Z

.field mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mCameraRecordKeyConsumedByAccessControlChord:Z

.field private mCameraRecordKeyTime:J

.field private mCameraRecordKeyTriggered:Z

.field mClearCoverComponent:Landroid/content/ComponentName;

.field mContext:Landroid/content/Context;

.field mCoverControlsSleep:Z

.field mCoverOpenedIntent:Landroid/content/Intent;

.field mCoverState:I

.field mDoubleTapBehavior:I

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEasyOneHandEnabled:Z

.field private mEasyOneHandGestureController:Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;

.field private mEasySetupKeyTriggered:Z

.field private final mFactoryTestChordLongPress:Ljava/lang/Runnable;

.field mFlashAnnotateComponent:Landroid/content/ComponentName;

.field mFlashAnnotateServiceComponent:Landroid/content/ComponentName;

.field private mFlashKeyConsumedByScreenshotChord:Z

.field private mFlashKeyTime:J

.field private mFlashKeyTriggered:Z

.field mFlipFolderOpenedIntent:Landroid/content/Intent;

.field mGloveModeIntent:Landroid/content/Intent;

.field mGloveState:I

.field mHandler:Landroid/os/Handler;

.field mHaptics:Lcom/immersion/android/haptics/HapticFeedbackManager;

.field mHasFlashAnnotateComponent:Z

.field private mHasSPenUspFeature:Z

.field mHasUltraSonicPackage:Z

.field mHasVoiceMemoComponent:Z

.field mHoldKeyConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;

.field mHomeDoubleClickBehavior:Z

.field private mHomeKeyConsumedByAccessControlChord:Z

.field private mHomeKeyConsumedByScreenRecordChord:Z

.field private mHomeKeyConsumedByScreenshotChord:Z

.field mHomeKeyDoubleClickConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;

.field mHomeKeyDoubleClickUseRecent:Z

.field private mHomeKeyTime:J

.field private mHomeKeyTriggered:Z

.field mIsDockHomeEnabled:Z

.field mIsEasyModeEnabled:Z

.field mIsEnabledAccessControl:Z

.field mIsKidsModeEnabled:Z

.field mIsSafetyAssuranceEnabled:Z

.field mIsSleepWithCameraOnTop:Z

.field mIsUseAccessControl:Z

.field private mIsVisibleSPenGestureView:Z

.field mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

.field mLastStatusBarTransparent:Z

.field final mLock:Ljava/lang/Object;

.field mMenuLongPressConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;

.field mNetworkSelLongKey:Z

.field mOcrDockIntent:Landroid/content/Intent;

.field mOrientationListenerForPenGesture:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

.field mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field mPenInsertedIntent:Landroid/content/Intent;

.field mPenState:I

.field mPerformEditAfterScreenCapture:Z

.field private mPowerKeyConsumedByAccessControlChord:Z

.field private mPowerKeyConsumedByFactoryTestChord:Z

.field private mPowerKeyConsumedByScreenRecordChord:Z

.field private mPowerKeyConsumedByScreenshotChord:Z

.field mPowerKeyDoubleClickConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;

.field public mPowerKeySingleClickFlag:Z

.field private mPowerKeyTime:J

.field private mPowerKeyTriggered:Z

.field mPowerManager:Landroid/os/PowerManager;

.field private mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

.field mRingtone:Landroid/media/Ringtone;

.field mSPenGestureInputChannel:Landroid/view/InputChannel;

.field mSPenGestureInputEventReceiver:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SPenGestureInputEventReceiver;

.field mSPenGestureView:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

.field mSViewCoverManager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

.field mSVoiceComponent:Landroid/content/ComponentName;

.field private final mSafetyAssuranceChordLongPress:Ljava/lang/Runnable;

.field mSafetyAssuranceTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

.field mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

.field mSamsungCustomReceiver:Landroid/content/BroadcastReceiver;

.field mSamsungPolicyGestureInputEventReceiver:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyGestureInputEventReceiver;

.field mSamsungPolicyInputEventChannel:Landroid/view/InputChannel;

.field mSamsungPolicyInputEventReceiver:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;

.field mSamsungPolicyTouchInputEventToGestureChannel:Landroid/view/InputChannel;

.field mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;

.field mScreenOnReason:I

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

.field mSpassIntent:Landroid/content/Intent;

.field mSpassKeyTouchConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;

.field private mSpenUspFeatureLevel:I

.field mStateGlance:Z

.field mStatusBarHideOnNormalScreen:Z

.field mStatusBarHidingOnFullScreen:Z

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field mStatusBarShowOnFullScreen:Z

.field mStatusBarWindowController:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

.field mSweepDirection:I

.field mTalkingCameraIntent:Landroid/content/Intent;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mTorchlightEnabled:Z

.field mTorchlightOn:Z

.field mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mTspInputEventObserver:Lcom/samsung/android/service/gesture/TspInputEventObserver;

.field private final mTurnOffTorchlight:Ljava/lang/Runnable;

.field mUltraSonicPackageName:Ljava/lang/String;

.field mUltrasonicIntent:Landroid/content/Intent;

.field mVibrator:Landroid/os/SystemVibrator;

.field mVirtualEyeKeyClickConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;

.field mVoiceMemoComponent:Landroid/content/ComponentName;

.field mVoiceMemoIntent:Landroid/content/Intent;

.field mVoiceMemoKeyClickConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;

.field mVoiceTalkComponent:Landroid/content/ComponentName;

.field mVoiceTalkIntent:Landroid/content/Intent;

.field private mVolumeDownKeyConsumedByAccessControlChord:Z

.field private mVolumeDownKeyConsumedBySafetyAssuranceChord:Z

.field private mVolumeDownKeyConsumedByScreenshotChord:Z

.field private mVolumeDownKeyTime:J

.field private mVolumeDownKeyTriggered:Z

.field private mVolumeUpKeyConsumedBySafetyAssuranceChord:Z

.field private mVolumeUpKeyConsumedByScreenRecordChord:Z

.field private mVolumeUpKeyTime:J

.field private mVolumeUpKeyTriggered:Z

.field private final mVolumeUpLongPress:Ljava/lang/Runnable;

.field private mWiFiProtectedSetupKeyConsumedByFactoryTestChord:Z

.field private mWiFiProtectedSetupKeyTime:J

.field private mWiFiProtectedSetupKeyTriggered:Z

.field mWindowManager:Landroid/view/IWindowManager;

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 137
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    sput-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    .line 4565
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCPUCoreNumBooster:Landroid/os/DVFSHelper;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeySingleClickFlag:Z

    .line 161
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBootCompleted:Z

    .line 164
    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    .line 171
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 172
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 173
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    .line 176
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;

    .line 180
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyDoubleClickUseRecent:Z

    .line 181
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyDoubleClickConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;

    .line 185
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceMemoKeyClickConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;

    .line 189
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVirtualEyeKeyClickConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;

    .line 193
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyDoubleClickConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;

    .line 197
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSpassKeyTouchConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;

    .line 201
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;

    invoke-direct {v0, p0, v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mMenuLongPressConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;

    .line 210
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    .line 213
    iput v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenState:I

    .line 214
    iput v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoverState:I

    .line 215
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoverControlsSleep:Z

    .line 216
    iput v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mGloveState:I

    .line 262
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 292
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mEasyOneHandEnabled:Z

    .line 296
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    .line 302
    iput v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mDoubleTapBehavior:I

    .line 303
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeDoubleClickBehavior:Z

    .line 307
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    .line 308
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    .line 312
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsKidsModeEnabled:Z

    .line 316
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    .line 320
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    .line 321
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasFlashAnnotateComponent:Z

    .line 325
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasVoiceMemoComponent:Z

    .line 329
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasUltraSonicPackage:Z

    .line 333
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    .line 337
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    .line 340
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsVisibleSPenGestureView:Z

    .line 341
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasSPenUspFeature:Z

    .line 345
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStateGlance:Z

    .line 346
    iput v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSpenUspFeatureLevel:I

    .line 350
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsSleepWithCameraOnTop:Z

    .line 351
    iput v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenOnReason:I

    .line 368
    iput v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSweepDirection:I

    .line 372
    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 378
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTorchlightOn:Z

    .line 379
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTorchlightEnabled:Z

    .line 383
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mNetworkSelLongKey:Z

    .line 391
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSamsungCustomReceiver:Landroid/content/BroadcastReceiver;

    .line 422
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$2;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 451
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$3;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 1945
    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarWindowController:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    .line 1947
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarShowOnFullScreen:Z

    .line 1948
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarHidingOnFullScreen:Z

    .line 1949
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarHideOnNormalScreen:Z

    .line 1950
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBlockCollapseStatusBar:Z

    .line 2479
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$7;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$7;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    .line 2514
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$8;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$8;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFactoryTestChordLongPress:Ljava/lang/Runnable;

    .line 2566
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$9;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$9;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAccessControlChordLongPress:Ljava/lang/Runnable;

    .line 2605
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$10;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$10;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSafetyAssuranceChordLongPress:Ljava/lang/Runnable;

    .line 2740
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$11;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$11;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenrecordChordLongPress:Ljava/lang/Runnable;

    .line 2754
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    .line 2755
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    .line 2756
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->MAX_SCREENSHOT_CONNECTION:I

    .line 4667
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$12;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$12;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    .line 4675
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$13;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$13;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTurnOffTorchlight:Ljava/lang/Runnable;

    return-void
.end method

.method private TorchModeFlashSet(I)V
    .registers 10
    .param p1, "torchTime"    # I

    .prologue
    const/4 v7, 0x0

    .line 4683
    sget-boolean v4, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_1d

    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Torch Time Out ==> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4684
    :cond_1d
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 4685
    .local v1, "input":Ljava/lang/String;
    const/4 v2, 0x0

    .line 4687
    .local v2, "out":Ljava/io/FileWriter;
    if-lez p1, :cond_4f

    .line 4688
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTorchlightOn:Z

    .line 4689
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTurnOffTorchlight:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4690
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTurnOffTorchlight:Ljava/lang/Runnable;

    int-to-long v6, p1

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4691
    const-string v1, "1"

    .line 4702
    :goto_39
    :try_start_39
    new-instance v3, Ljava/io/FileWriter;

    const-string v4, "/sys/class/camera/flash/rear_flash"

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_40} :catch_5b
    .catchall {:try_start_39 .. :try_end_40} :catchall_6b

    .line 4703
    .end local v2    # "out":Ljava/io/FileWriter;
    .local v3, "out":Ljava/io/FileWriter;
    const/4 v4, 0x0

    :try_start_41
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v1, v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;II)V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_48} :catch_79
    .catchall {:try_start_41 .. :try_end_48} :catchall_76

    .line 4708
    if-eqz v3, :cond_4d

    .line 4710
    :try_start_4a
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_72

    :cond_4d
    :goto_4d
    move-object v2, v3

    .line 4715
    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "out":Ljava/io/FileWriter;
    :cond_4e
    :goto_4e
    return-void

    .line 4693
    :cond_4f
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTorchlightOn:Z

    .line 4694
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTurnOffTorchlight:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4695
    const-string v1, "0"

    goto :goto_39

    .line 4704
    :catch_5b
    move-exception v0

    .line 4705
    .local v0, "e":Ljava/io/IOException;
    :goto_5c
    :try_start_5c
    const-string v4, "SamsungWindowManager"

    const-string v5, "exception occurred. /sys/class/camera/flash/rear_flash"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catchall {:try_start_5c .. :try_end_63} :catchall_6b

    .line 4708
    if-eqz v2, :cond_4e

    .line 4710
    :try_start_65
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_69

    goto :goto_4e

    .line 4711
    :catch_69
    move-exception v4

    goto :goto_4e

    .line 4708
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_6b
    move-exception v4

    :goto_6c
    if-eqz v2, :cond_71

    .line 4710
    :try_start_6e
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_74

    .line 4712
    :cond_71
    :goto_71
    throw v4

    .line 4711
    .end local v2    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    :catch_72
    move-exception v4

    goto :goto_4d

    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "out":Ljava/io/FileWriter;
    :catch_74
    move-exception v5

    goto :goto_71

    .line 4708
    .end local v2    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    :catchall_76
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "out":Ljava/io/FileWriter;
    goto :goto_6c

    .line 4704
    .end local v2    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    :catch_79
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "out":Ljava/io/FileWriter;
    goto :goto_5c
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsVisibleSPenGestureView:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsVisibleSPenGestureView:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)Lcom/samsung/android/service/gesture/TspInputEventObserver;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTspInputEventObserver:Lcom/samsung/android/service/gesture/TspInputEventObserver;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->TorchModeFlashSet(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mEasyOneHandEnabled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mEasyOneHandGestureController:Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;)Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mEasyOneHandGestureController:Lcom/android/internal/policy/impl/sec/EasyOneHandGestureController;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isScreenCaptureEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->takeScreenshot(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isOneTouchReportEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->updateWacomOffset(I)V

    return-void
.end method

.method static synthetic access$903(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->intentType()Z

    move-result v0

    return v0
.end method

.method private applyCoverSwitchState()V
    .registers 4

    .prologue
    .line 2149
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_2a

    .line 2150
    const-string v0, "SamsungWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyCoverSwitchState mCoverState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoverState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , mCoverControlsSleep = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoverControlsSleep:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    :cond_2a
    iget v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoverState:I

    if-nez v0, :cond_45

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoverControlsSleep:Z

    if-eqz v0, :cond_45

    .line 2154
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v0, v1}, Landroid/os/FactoryTest;->isFactoryMode(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 2155
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 2160
    :cond_45
    :goto_45
    return-void

    .line 2157
    :cond_46
    const-string v0, "SamsungWindowManager"

    const-string v1, "isFactoryMode. Prevent LCD off."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45
.end method

.method private cancelPendingAccessControlChordAction()V
    .registers 3

    .prologue
    .line 2563
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAccessControlChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2564
    return-void
.end method

.method private cancelPendingFactoryTestChordAction()V
    .registers 3

    .prologue
    .line 2511
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFactoryTestChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2512
    return-void
.end method

.method private cancelPendingSafetyAssuranceChordAction()V
    .registers 3

    .prologue
    .line 2601
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSafetyAssuranceChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2602
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2603
    :cond_14
    return-void
.end method

.method private cancelPendingScreenrecordChordAction()V
    .registers 3

    .prologue
    .line 2737
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenrecordChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2738
    return-void
.end method

.method private cancelPendingScreenshotChordAction()V
    .registers 3

    .prologue
    .line 2476
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2477
    return-void
.end method

.method private checkFolderKeyFeedback(ILandroid/view/KeyEvent;)Z
    .registers 10
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x5

    .line 3008
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3009
    .local v1, "cr":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 3010
    .local v2, "soundPath":Ljava/lang/String;
    const/4 v0, 0x0

    .line 3012
    .local v0, "bRet":Z
    sget-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_25

    const-string v3, "SamsungWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkFolderKeyFeedback keyCode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3013
    :cond_25
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v3

    if-nez v3, :cond_94

    const/4 v3, 0x3

    if-eq p1, v3, :cond_3b

    const/4 v3, 0x4

    if-eq p1, v3, :cond_3b

    if-eq p1, v6, :cond_3b

    const/16 v3, 0x1b

    if-eq p1, v3, :cond_3b

    const/16 v3, 0x52

    if-ne p1, v3, :cond_94

    .line 3019
    :cond_3b
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v3

    if-nez v3, :cond_77

    .line 3020
    if-ne p1, v6, :cond_70

    .line 3021
    const-string v3, "send_key_sound"

    invoke-static {v1, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3029
    :cond_4b
    :goto_4b
    const/4 v0, 0x1

    .line 3036
    :cond_4c
    :goto_4c
    if-eqz v0, :cond_6f

    .line 3037
    sget-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_6a

    const-string v3, "SamsungWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "soundPath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3038
    :cond_6a
    if-eqz v2, :cond_6f

    .line 3039
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->playSound(Ljava/lang/String;)V

    .line 3042
    :cond_6f
    return v0

    .line 3023
    :cond_70
    const-string v3, "func_key_sound"

    invoke-static {v1, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4b

    .line 3027
    :cond_77
    sget-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_4b

    const-string v3, "SamsungWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keyguard - disable key sound : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 3031
    :cond_94
    const/4 v3, 0x6

    if-ne p1, v3, :cond_4c

    .line 3032
    const-string v3, "end_key_sound"

    invoke-static {v1, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3033
    const/4 v0, 0x1

    goto :goto_4c
.end method

.method private getColorOfCover()I
    .registers 11

    .prologue
    .line 2191
    const-string v3, "/sys/devices/w1_bus_master1/w1_master_check_color"

    .line 2192
    .local v3, "filename":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2193
    .local v1, "color":I
    new-instance v7, Ljava/io/File;

    const-string v8, "/sys/devices/w1_bus_master1/w1_master_check_color"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_33

    .line 2194
    const/4 v5, 0x0

    .line 2196
    .local v5, "reader":Ljava/io/FileReader;
    :try_start_11
    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/sys/devices/w1_bus_master1/w1_master_check_color"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_18} :catch_34
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_18} :catch_3e
    .catchall {:try_start_11 .. :try_end_18} :catchall_48

    .line 2197
    .end local v5    # "reader":Ljava/io/FileReader;
    .local v6, "reader":Ljava/io/FileReader;
    const/16 v7, 0xf

    :try_start_1a
    new-array v0, v7, [C

    .line 2198
    .local v0, "buf":[C
    invoke-virtual {v6, v0}, Ljava/io/FileReader;->read([C)I

    move-result v4

    .line 2199
    .local v4, "n":I
    if-lez v4, :cond_2e

    .line 2200
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    add-int/lit8 v9, v4, -0x1

    invoke-direct {v7, v0, v8, v9}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_2d} :catch_59
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_2d} :catch_56
    .catchall {:try_start_1a .. :try_end_2d} :catchall_53

    move-result v1

    .line 2207
    :cond_2e
    if-eqz v6, :cond_33

    .line 2209
    :try_start_30
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_4f

    .line 2215
    .end local v0    # "buf":[C
    .end local v4    # "n":I
    .end local v6    # "reader":Ljava/io/FileReader;
    :cond_33
    :goto_33
    return v1

    .line 2202
    .restart local v5    # "reader":Ljava/io/FileReader;
    :catch_34
    move-exception v2

    .line 2203
    .local v2, "ex":Ljava/io/IOException;
    :goto_35
    const/4 v1, 0x0

    .line 2207
    if-eqz v5, :cond_33

    .line 2209
    :try_start_38
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_33

    .line 2210
    :catch_3c
    move-exception v7

    goto :goto_33

    .line 2204
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_3e
    move-exception v2

    .line 2205
    .local v2, "ex":Ljava/lang/NumberFormatException;
    :goto_3f
    const/4 v1, 0x0

    .line 2207
    if-eqz v5, :cond_33

    .line 2209
    :try_start_42
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_33

    .line 2210
    :catch_46
    move-exception v7

    goto :goto_33

    .line 2207
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :catchall_48
    move-exception v7

    :goto_49
    if-eqz v5, :cond_4e

    .line 2209
    :try_start_4b
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_51

    .line 2211
    :cond_4e
    :goto_4e
    throw v7

    .line 2210
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v0    # "buf":[C
    .restart local v4    # "n":I
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_4f
    move-exception v7

    goto :goto_33

    .end local v0    # "buf":[C
    .end local v4    # "n":I
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :catch_51
    move-exception v8

    goto :goto_4e

    .line 2207
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catchall_53
    move-exception v7

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    goto :goto_49

    .line 2204
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_56
    move-exception v2

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    goto :goto_3f

    .line 2202
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_59
    move-exception v2

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    goto :goto_35
.end method

.method private getScreenshotChordLongPressDelay()J
    .registers 3

    .prologue
    .line 2427
    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method static getTelephonyExtService()Lcom/android/internal/telephony/ITelephonyExt;
    .registers 3

    .prologue
    .line 1695
    const-string v1, "phoneext"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v0

    .line 1697
    .local v0, "telephonyExtService":Lcom/android/internal/telephony/ITelephonyExt;
    if-nez v0, :cond_13

    .line 1698
    const-string v1, "SamsungWindowManager"

    const-string v2, "Unable to find ITelephony interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    :cond_13
    return-object v0
.end method

.method static getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .registers 1

    .prologue
    .line 1680
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
    .line 1685
    const-string v1, "phone2"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1687
    .local v0, "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_13

    .line 1688
    const-string v1, "SamsungWindowManager"

    const-string v2, "Unable to find ITelephony2 interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    :cond_13
    return-object v0
.end method

.method private getTypeOfCover()I
    .registers 11

    .prologue
    .line 2163
    const-string v2, "/sys/devices/w1_bus_master1/w1_master_check_id"

    .line 2164
    .local v2, "filename":Ljava/lang/String;
    const/4 v6, 0x1

    .line 2165
    .local v6, "type":I
    new-instance v7, Ljava/io/File;

    const-string v8, "/sys/devices/w1_bus_master1/w1_master_check_id"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_33

    .line 2166
    const/4 v4, 0x0

    .line 2168
    .local v4, "reader":Ljava/io/FileReader;
    :try_start_11
    new-instance v5, Ljava/io/FileReader;

    const-string v7, "/sys/devices/w1_bus_master1/w1_master_check_id"

    invoke-direct {v5, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_18} :catch_34
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_18} :catch_3e
    .catchall {:try_start_11 .. :try_end_18} :catchall_48

    .line 2169
    .end local v4    # "reader":Ljava/io/FileReader;
    .local v5, "reader":Ljava/io/FileReader;
    const/16 v7, 0xf

    :try_start_1a
    new-array v0, v7, [C

    .line 2170
    .local v0, "buf":[C
    invoke-virtual {v5, v0}, Ljava/io/FileReader;->read([C)I

    move-result v3

    .line 2171
    .local v3, "n":I
    if-lez v3, :cond_2e

    .line 2172
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    add-int/lit8 v9, v3, -0x1

    invoke-direct {v7, v0, v8, v9}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_2d} :catch_59
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_2d} :catch_56
    .catchall {:try_start_1a .. :try_end_2d} :catchall_53

    move-result v6

    .line 2179
    :cond_2e
    if-eqz v5, :cond_33

    .line 2181
    :try_start_30
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_4f

    .line 2187
    .end local v0    # "buf":[C
    .end local v3    # "n":I
    .end local v5    # "reader":Ljava/io/FileReader;
    :cond_33
    :goto_33
    return v6

    .line 2174
    .restart local v4    # "reader":Ljava/io/FileReader;
    :catch_34
    move-exception v1

    .line 2175
    .local v1, "ex":Ljava/io/IOException;
    :goto_35
    const/4 v6, 0x1

    .line 2179
    if-eqz v4, :cond_33

    .line 2181
    :try_start_38
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_33

    .line 2182
    :catch_3c
    move-exception v7

    goto :goto_33

    .line 2176
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_3e
    move-exception v1

    .line 2177
    .local v1, "ex":Ljava/lang/NumberFormatException;
    :goto_3f
    const/4 v6, 0x1

    .line 2179
    if-eqz v4, :cond_33

    .line 2181
    :try_start_42
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_33

    .line 2182
    :catch_46
    move-exception v7

    goto :goto_33

    .line 2179
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    :catchall_48
    move-exception v7

    :goto_49
    if-eqz v4, :cond_4e

    .line 2181
    :try_start_4b
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_51

    .line 2183
    :cond_4e
    :goto_4e
    throw v7

    .line 2182
    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v0    # "buf":[C
    .restart local v3    # "n":I
    .restart local v5    # "reader":Ljava/io/FileReader;
    :catch_4f
    move-exception v7

    goto :goto_33

    .end local v0    # "buf":[C
    .end local v3    # "n":I
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    :catch_51
    move-exception v8

    goto :goto_4e

    .line 2179
    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :catchall_53
    move-exception v7

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    goto :goto_49

    .line 2176
    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :catch_56
    move-exception v1

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    goto :goto_3f

    .line 2174
    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :catch_59
    move-exception v1

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    goto :goto_35
.end method

.method static getVoIPInterfaceService()Landroid/os/IVoIPInterface;
    .registers 3

    .prologue
    .line 1704
    const-string v1, "voip"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v0

    .line 1706
    .local v0, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-nez v0, :cond_13

    .line 1707
    const-string v1, "SamsungWindowManager"

    const-string v2, "Unable to find IVoIPInterface interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    :cond_13
    return-object v0
.end method

.method private initStatusBarWindowController()V
    .registers 4

    .prologue
    .line 1953
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSamsungPolicyInputEventChannel:Landroid/view/InputChannel;

    if-nez v0, :cond_25

    .line 1954
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const-string v1, "SamsungPolicyInputEventChannel"

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSamsungPolicyInputEventChannel:Landroid/view/InputChannel;

    .line 1957
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSamsungPolicyInputEventChannel:Landroid/view/InputChannel;

    const/4 v2, 0x6

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->setMonitorChannelFilter(Landroid/view/InputChannel;I)V

    .line 1961
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSamsungPolicyInputEventChannel:Landroid/view/InputChannel;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSamsungPolicyInputEventReceiver:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;

    .line 1965
    :cond_25
    return-void
.end method

.method private intentType()Z
    .registers 4

    .prologue
    .line 1696
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "custom_home_intent"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, "result":I
    if-eqz v0, :cond_19

    const-string v2, "android.intent.action.SEARCH_LONG_PRESS"

    :goto_11
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceTalkIntent:Landroid/content/Intent;

    return v0

    :cond_19
    const-string v2, "android.intent.action.VOICE_COMMAND"

    goto :goto_11
.end method

.method private interceptAccessControlChord()V
    .registers 8

    .prologue
    const-wide/16 v5, 0x96

    const/4 v4, 0x1

    .line 2530
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    if-nez v2, :cond_8

    .line 2560
    :cond_7
    :goto_7
    return-void

    .line 2531
    :cond_8
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-eqz v2, :cond_48

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_48

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_48

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-nez v2, :cond_48

    .line 2533
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2534
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_7

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_7

    .line 2537
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByAccessControlChord:Z

    .line 2538
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedByAccessControlChord:Z

    .line 2539
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 2540
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 2541
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 2542
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingSafetyAssuranceChordAction()V

    .line 2543
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAccessControlChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7

    .line 2546
    .end local v0    # "now":J
    :cond_48
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyTriggered:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-nez v2, :cond_7

    .line 2547
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2548
    .restart local v0    # "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_7

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_7

    .line 2551
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByAccessControlChord:Z

    .line 2552
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyConsumedByAccessControlChord:Z

    .line 2553
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 2554
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 2555
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 2556
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingSafetyAssuranceChordAction()V

    .line 2557
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

    .line 2494
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    if-nez v2, :cond_a

    .line 2508
    :cond_9
    :goto_9
    return-void

    .line 2495
    :cond_a
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyTriggered:Z

    if-eqz v2, :cond_9

    .line 2496
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2497
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_9

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_9

    .line 2499
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByFactoryTestChord:Z

    .line 2500
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyConsumedByFactoryTestChord:Z

    .line 2501
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 2502
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 2503
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 2504
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingAccessControlChordAction()V

    .line 2505
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

    .line 2583
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isOneTouchReportChordEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 2598
    :cond_d
    :goto_d
    return-void

    .line 2585
    :cond_e
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-nez v0, :cond_d

    .line 2587
    iget-wide v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTime:J

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-gez v0, :cond_d

    .line 2588
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

    .line 2589
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedBySafetyAssuranceChord:Z

    .line 2590
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyConsumedBySafetyAssuranceChord:Z

    .line 2591
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 2592
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 2593
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 2594
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2595
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

    .line 2701
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isScreenRecordChordEnabled()Z

    move-result v2

    if-nez v2, :cond_a

    .line 2734
    :cond_9
    :goto_9
    return-void

    .line 2702
    :cond_a
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-eqz v2, :cond_b4

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-eqz v2, :cond_b4

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v2, :cond_b4

    .line 2703
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2704
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_78

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_78

    .line 2706
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_62

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

    .line 2707
    :cond_62
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyConsumedByScreenRecordChord:Z

    .line 2708
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByScreenRecordChord:Z

    .line 2709
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 2710
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingSafetyAssuranceChordAction()V

    .line 2711
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenrecordChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9

    .line 2714
    :cond_78
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

    .line 2717
    .end local v0    # "now":J
    :cond_b4
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v2, :cond_9

    .line 2719
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2720
    .restart local v0    # "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_128

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_128

    .line 2722
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_10c

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

    .line 2723
    :cond_10c
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyConsumedByScreenRecordChord:Z

    .line 2724
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByScreenRecordChord:Z

    .line 2725
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 2726
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 2727
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingSafetyAssuranceChordAction()V

    .line 2728
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenrecordChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_9

    .line 2731
    :cond_128
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

    .line 4160
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 4162
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_12

    const/16 v3, 0x80

    :try_start_b
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_e} :catch_13

    move-result-object v3

    if-eqz v3, :cond_12

    .line 4164
    const/4 v2, 0x1

    .line 4169
    :cond_12
    :goto_12
    return v2

    .line 4168
    :catch_13
    move-exception v0

    .line 4169
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_12
.end method

.method private isCoverVerified()Z
    .registers 12

    .prologue
    const/4 v7, 0x0

    .line 2219
    const-string v2, "/sys/devices/w1_bus_master1/w1_master_verify_mac"

    .line 2220
    .local v2, "filename":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2221
    .local v6, "verity":Z
    new-instance v8, Ljava/io/File;

    const-string v9, "/sys/devices/w1_bus_master1/w1_master_verify_mac"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_37

    .line 2222
    const/4 v4, 0x0

    .line 2224
    .local v4, "reader":Ljava/io/FileReader;
    :try_start_12
    new-instance v5, Ljava/io/FileReader;

    const-string v8, "/sys/devices/w1_bus_master1/w1_master_verify_mac"

    invoke-direct {v5, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_19} :catch_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_19} :catch_44
    .catchall {:try_start_12 .. :try_end_19} :catchall_4e

    .line 2225
    .end local v4    # "reader":Ljava/io/FileReader;
    .local v5, "reader":Ljava/io/FileReader;
    const/16 v8, 0xf

    :try_start_1b
    new-array v0, v8, [C

    .line 2226
    .local v0, "buf":[C
    invoke-virtual {v5, v0}, Ljava/io/FileReader;->read([C)I

    move-result v3

    .line 2227
    .local v3, "n":I
    if-lez v3, :cond_32

    .line 2228
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    add-int/lit8 v10, v3, -0x1

    invoke-direct {v8, v0, v9, v10}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_2e} :catch_5f
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_2e} :catch_5c
    .catchall {:try_start_1b .. :try_end_2e} :catchall_59

    move-result v8

    if-nez v8, :cond_38

    const/4 v6, 0x1

    .line 2235
    :cond_32
    :goto_32
    if-eqz v5, :cond_37

    .line 2237
    :try_start_34
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_55

    .line 2243
    .end local v0    # "buf":[C
    .end local v3    # "n":I
    .end local v5    # "reader":Ljava/io/FileReader;
    :cond_37
    :goto_37
    return v6

    .restart local v0    # "buf":[C
    .restart local v3    # "n":I
    .restart local v5    # "reader":Ljava/io/FileReader;
    :cond_38
    move v6, v7

    .line 2228
    goto :goto_32

    .line 2230
    .end local v0    # "buf":[C
    .end local v3    # "n":I
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    :catch_3a
    move-exception v1

    .line 2231
    .local v1, "ex":Ljava/io/IOException;
    :goto_3b
    const/4 v6, 0x0

    .line 2235
    if-eqz v4, :cond_37

    .line 2237
    :try_start_3e
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_37

    .line 2238
    :catch_42
    move-exception v7

    goto :goto_37

    .line 2232
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_44
    move-exception v1

    .line 2233
    .local v1, "ex":Ljava/lang/NumberFormatException;
    :goto_45
    const/4 v6, 0x0

    .line 2235
    if-eqz v4, :cond_37

    .line 2237
    :try_start_48
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_37

    .line 2238
    :catch_4c
    move-exception v7

    goto :goto_37

    .line 2235
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    :catchall_4e
    move-exception v7

    :goto_4f
    if-eqz v4, :cond_54

    .line 2237
    :try_start_51
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_57

    .line 2239
    :cond_54
    :goto_54
    throw v7

    .line 2238
    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v0    # "buf":[C
    .restart local v3    # "n":I
    .restart local v5    # "reader":Ljava/io/FileReader;
    :catch_55
    move-exception v7

    goto :goto_37

    .end local v0    # "buf":[C
    .end local v3    # "n":I
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    :catch_57
    move-exception v8

    goto :goto_54

    .line 2235
    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :catchall_59
    move-exception v7

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    goto :goto_4f

    .line 2232
    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :catch_5c
    move-exception v1

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    goto :goto_45

    .line 2230
    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :catch_5f
    move-exception v1

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    goto :goto_3b
.end method

.method private isOneTouchReportEnabled()Z
    .registers 18

    .prologue
    .line 2643
    const-string v15, "go.police.report"

    .line 2644
    .local v15, "oneTouchReportPackageName":Ljava/lang/String;
    const-string v14, "com.android.vending"

    .line 2646
    .local v14, "oneTouchReportInstaller":Ljava/lang/String;
    const/4 v13, 0x0

    .line 2647
    .local v13, "installerPackage":Ljava/lang/String;
    const/4 v12, 0x0

    .line 2649
    .local v12, "enabled":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isOneTouchReportChordEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 2650
    const/4 v2, 0x0

    .line 2695
    :goto_11
    return v2

    .line 2654
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 2656
    .local v16, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_1a
    const-string v2, "go.police.report"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2658
    const-string v2, "com.android.vending"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_27} :catch_2c

    move-result v2

    if-nez v2, :cond_2f

    .line 2660
    const/4 v2, 0x0

    goto :goto_11

    .line 2662
    :catch_2c
    move-exception v11

    .line 2664
    .local v11, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_11

    .line 2668
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_2f
    const-string v9, "content://go.police.provider.report"

    .line 2669
    .local v9, "customerAgreementPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2671
    .local v1, "cr":Landroid/content/ContentResolver;
    if-eqz v1, :cond_67

    .line 2672
    const-string v2, "content://go.police.provider.report"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2674
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_62

    :try_start_4b
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 2675
    const-string v2, "customer_agreement"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 2677
    .local v8, "customerAgreementColumn":I
    const/4 v2, -0x1

    if-eq v8, v2, :cond_62

    .line 2678
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_5d} :catch_6b
    .catchall {:try_start_4b .. :try_end_5d} :catchall_75

    move-result v10

    .line 2679
    .local v10, "customerAgreementValue":I
    const/4 v2, 0x1

    if-ne v2, v10, :cond_69

    const/4 v12, 0x1

    .line 2689
    .end local v8    # "customerAgreementColumn":I
    .end local v10    # "customerAgreementValue":I
    :cond_62
    :goto_62
    if-eqz v7, :cond_67

    .line 2690
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v7    # "c":Landroid/database/Cursor;
    :cond_67
    :goto_67
    move v2, v12

    .line 2695
    goto :goto_11

    .line 2679
    .restart local v7    # "c":Landroid/database/Cursor;
    .restart local v8    # "customerAgreementColumn":I
    .restart local v10    # "customerAgreementValue":I
    :cond_69
    const/4 v12, 0x0

    goto :goto_62

    .line 2686
    .end local v8    # "customerAgreementColumn":I
    .end local v10    # "customerAgreementValue":I
    :catch_6b
    move-exception v11

    .line 2687
    .restart local v11    # "e":Ljava/lang/Exception;
    :try_start_6c
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_75

    .line 2689
    if-eqz v7, :cond_67

    .line 2690
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_67

    .line 2689
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_75
    move-exception v2

    if-eqz v7, :cond_7b

    .line 2690
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7b
    throw v2
.end method

.method private isPackageAvailable(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 4174
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 4176
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_12

    const/16 v3, 0x80

    :try_start_b
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_e} :catch_13

    move-result-object v3

    if-eqz v3, :cond_12

    .line 4177
    const/4 v2, 0x1

    .line 4182
    :cond_12
    :goto_12
    return v2

    .line 4181
    :catch_13
    move-exception v0

    .line 4182
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_12
.end method

.method private isScreenCaptureEnabled()Z
    .registers 8

    .prologue
    .line 1749
    const/4 v1, 0x1

    .line 1752
    .local v1, "isScreenCaptureEnabled":Z
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v3, :cond_11

    .line 1753
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v4, "enterprise_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1757
    :cond_11
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v3, :cond_48

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/enterprise/RestrictionPolicy;->isScreenCaptureEnabled(Z)Z

    move-result v3

    if-nez v3, :cond_48

    .line 1758
    const-string v3, "SamsungWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mEDM.getRestrictionPolicy().isScreenCaptureEnabledEx(true) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/enterprise/RestrictionPolicy;->isScreenCaptureEnabledEx(Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    const/4 v1, 0x0

    .line 1761
    const/4 v3, 0x0

    .line 1774
    :goto_47
    return v3

    .line 1765
    :cond_48
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    .line 1766
    .local v2, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v2, :cond_52

    .line 1767
    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->isScreenCaptureEnabled()Z
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_51} :catch_54

    move-result v1

    .end local v2    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_52
    :goto_52
    move v3, v1

    .line 1774
    goto :goto_47

    .line 1769
    :catch_54
    move-exception v0

    .line 1771
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 1772
    const/4 v1, 0x1

    goto :goto_52
.end method

.method private isStatusBarExpandEnabled()Z
    .registers 5

    .prologue
    .line 1778
    const/4 v1, 0x1

    .line 1780
    .local v1, "isStatusBarExpandEnabled":Z
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    .line 1781
    .local v2, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v2, :cond_b

    .line 1782
    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->isStatusBarExpandEnabled()Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result v1

    .line 1789
    .end local v2    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_b
    :goto_b
    return v1

    .line 1784
    :catch_c
    move-exception v0

    .line 1786
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 1787
    const/4 v1, 0x1

    goto :goto_b
.end method

.method private playSound(Ljava/lang/String;)V
    .registers 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 2976
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2977
    .local v3, "soundUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 2979
    .local v0, "audioManager":Landroid/media/AudioManager;
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    if-eqz v4, :cond_1d

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 2981
    :try_start_15
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4}, Landroid/media/Ringtone;->stop()V

    .line 2982
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1d} :catch_3a

    .line 2988
    :cond_1d
    :goto_1d
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    .line 2989
    if-eqz v0, :cond_5c

    .line 2990
    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 2992
    .local v2, "masterStreamVolume":I
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    if-eqz v4, :cond_54

    .line 2993
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4, v7}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 2994
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4}, Landroid/media/Ringtone;->play()V

    .line 3003
    .end local v2    # "masterStreamVolume":I
    :goto_39
    return-void

    .line 2983
    :catch_3a
    move-exception v1

    .line 2984
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

    .line 2997
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "masterStreamVolume":I
    :cond_54
    const-string v4, "SamsungWindowManager"

    const-string v5, "There are no ringtones"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 3001
    .end local v2    # "masterStreamVolume":I
    :cond_5c
    const-string v4, "SamsungWindowManager"

    const-string v5, "AudioManager loading fail"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39
.end method

.method private playSoundEffect(Z)V
    .registers 6
    .param p1, "isScreenOn"    # Z

    .prologue
    .line 2960
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 2961
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_2f

    .line 2962
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v1

    if-nez v1, :cond_16

    if-eqz p1, :cond_16

    .line 2963
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 2971
    :goto_15
    return-void

    .line 2966
    :cond_16
    const-string v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keyguard - disable key sound : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 2969
    :cond_2f
    const-string v1, "SamsungWindowManager"

    const-string v2, "Couldn\'t get audio manager"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method private startSGA(Ljava/lang/String;)V
    .registers 7
    .param p1, "gamePkg"    # Ljava/lang/String;

    .prologue
    .line 4814
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 4815
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 4817
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 4819
    if-eqz v1, :cond_22

    .line 4821
    :try_start_d
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_14
    .catch Landroid/content/ActivityNotFoundException; {:try_start_d .. :try_end_14} :catch_15

    .line 4828
    :cond_14
    :goto_14
    return-void

    .line 4822
    :catch_15
    move-exception v0

    .line 4823
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_14

    const-string v3, "SamsungWindowManager"

    const-string v4, "SGA is not installed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 4826
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
    .line 2784
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2785
    :try_start_3
    sget-boolean v4, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_2b

    .line 2786
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

    .line 2790
    :cond_2b
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    if-eqz v4, :cond_4b

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasFlashAnnotateComponent:Z

    if-eqz v4, :cond_4b

    .line 2791
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2792
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2793
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashAnnotateServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2794
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v6}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2812
    :cond_49
    :goto_49
    monitor-exit v5

    .line 2813
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_4a
    return-void

    .line 2796
    :cond_4b
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    const/4 v6, 0x3

    if-lt v4, v6, :cond_59

    .line 2797
    monitor-exit v5

    goto :goto_4a

    .line 2812
    :catchall_56
    move-exception v4

    monitor-exit v5
    :try_end_58
    .catchall {:try_start_3 .. :try_end_58} :catchall_56

    throw v4

    .line 2799
    :cond_59
    :try_start_59
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.android.systemui"

    const-string v6, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v0, v4, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2801
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2802
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2803
    new-instance v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;I)V

    .line 2805
    .local v1, "conn":Landroid/content/ServiceConnection;
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v1, v6, v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 2807
    new-instance v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenshotRunnable;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenshotRunnable;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Landroid/content/ServiceConnection;)V

    .line 2808
    .local v3, "runnable":Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenshotRunnable;
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2809
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_8b
    .catchall {:try_start_59 .. :try_end_8b} :catchall_56

    goto :goto_49
.end method

.method private updateSViewCoverState(ZIIZ)V
    .registers 11
    .param p1, "coverOpen"    # Z
    .param p2, "coverType"    # I
    .param p3, "coverColor"    # I
    .param p4, "isBoot"    # Z

    .prologue
    .line 2247
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSViewCoverManager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    if-eqz v0, :cond_13

    .line 2248
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSViewCoverManager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v5

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->updateCoverState(ZIIZLandroid/content/ComponentName;)V

    .line 2249
    :cond_13
    return-void
.end method

.method private updateWacomOffset(I)V
    .registers 7
    .param p1, "rotation"    # I

    .prologue
    .line 3063
    const/4 v1, 0x0

    .line 3065
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

    .line 3066
    .end local v1    # "out":Ljava/io/OutputStream;
    .local v2, "out":Ljava/io/OutputStream;
    add-int/lit8 v3, p1, 0x30

    :try_start_f
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_12} :catch_4c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_49
    .catchall {:try_start_f .. :try_end_12} :catchall_46

    .line 3073
    if-eqz v2, :cond_17

    .line 3074
    :try_start_14
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_19

    :cond_17
    move-object v1, v2

    .line 3080
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    :cond_18
    :goto_18
    return-void

    .line 3076
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_19
    move-exception v0

    .line 3077
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    .line 3079
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_18

    .line 3067
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1f
    move-exception v3

    .line 3073
    :goto_20
    if-eqz v1, :cond_18

    .line 3074
    :try_start_22
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_18

    .line 3076
    :catch_26
    move-exception v0

    .line 3077
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    .line 3069
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2b
    move-exception v0

    .line 3070
    .local v0, "e":Ljava/io/IOException;
    :goto_2c
    :try_start_2c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_3a

    .line 3073
    if-eqz v1, :cond_18

    .line 3074
    :try_start_31
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_18

    .line 3076
    :catch_35
    move-exception v0

    .line 3077
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    .line 3072
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_3a
    move-exception v3

    .line 3073
    :goto_3b
    if-eqz v1, :cond_40

    .line 3074
    :try_start_3d
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_41

    .line 3078
    :cond_40
    :goto_40
    throw v3

    .line 3076
    :catch_41
    move-exception v0

    .line 3077
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_40

    .line 3072
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catchall_46
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_3b

    .line 3069
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_49
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_2c

    .line 3067
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_4c
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_20
.end method

.method private wakeUpOnHomeIfNeeded()V
    .registers 3

    .prologue
    .line 4484
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isCameraOnTop()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsSleepWithCameraOnTop:Z

    .line 4485
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsSleepWithCameraOnTop:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenOnReason:I

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_26

    iget v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenOnReason:I

    const/16 v1, 0x3ea

    if-eq v0, v1, :cond_26

    iget v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenOnReason:I

    const/16 v1, 0x3eb

    if-eq v0, v1, :cond_26

    iget v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenOnReason:I

    const/16 v1, 0x3ec

    if-eq v0, v1, :cond_26

    .line 4491
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->launchHome()V

    .line 4493
    :cond_26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsSleepWithCameraOnTop:Z

    .line 4494
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenOnReason:I

    .line 4495
    return-void
.end method


# virtual methods
.method public addHomeKeyClickAction(IIZ)V
    .registers 5
    .param p1, "action"    # I
    .param p2, "repeatCount"    # I
    .param p3, "canceled"    # Z

    .prologue
    .line 4148
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyDoubleClickConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSupportHomeDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4149
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyDoubleClickConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->addAction(IIZ)V

    .line 4151
    :cond_f
    return-void
.end method

.method public addPowerKeyClickAction(I)V
    .registers 3
    .param p1, "action"    # I

    .prologue
    .line 3317
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyDoubleClickConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;

    if-eqz v0, :cond_9

    .line 3318
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyDoubleClickConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyDoubleClickConcept;->addAction(I)V

    .line 3320
    :cond_9
    return-void
.end method

.method public addSpassTouchAction(Landroid/view/KeyEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 3414
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSpassKeyTouchConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;

    if-eqz v0, :cond_9

    .line 3415
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSpassKeyTouchConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SpassKeyConcept;->addAction(Landroid/view/KeyEvent;)V

    .line 3417
    :cond_9
    return-void
.end method

.method public addVirtualEyeKeyClickAction(IIZ)V
    .registers 5
    .param p1, "action"    # I
    .param p2, "repeatCount"    # I
    .param p3, "canceled"    # Z

    .prologue
    .line 3854
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVirtualEyeKeyClickConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasUltraSonicPackage:Z

    if-eqz v0, :cond_d

    .line 3855
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVirtualEyeKeyClickConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VirtualEyeKeyClickConcept;->addAction(IIZ)V

    .line 3857
    :cond_d
    return-void
.end method

.method public addVoiceMemoKeyClickAction(IIZ)V
    .registers 5
    .param p1, "action"    # I
    .param p2, "repeatCount"    # I
    .param p3, "canceled"    # Z

    .prologue
    .line 3647
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceMemoKeyClickConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasVoiceMemoComponent:Z

    if-eqz v0, :cond_d

    .line 3648
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceMemoKeyClickConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$VoiceMemoKeyClickConcept;->addAction(IIZ)V

    .line 3650
    :cond_d
    return-void
.end method

.method public checkMenuLongPressIgnore()Z
    .registers 2

    .prologue
    .line 3517
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mMenuLongPressConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;

    # invokes: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->checkMenuLongPressIgnore()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->access$1400(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;)Z

    move-result v0

    return v0
.end method

.method public downloadForSGA(Ljava/lang/String;)V
    .registers 6
    .param p1, "pkgUri"    # Ljava/lang/String;

    .prologue
    .line 4832
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4834
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4835
    const v2, 0x30000020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4836
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_19
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_19} :catch_1a

    .line 4841
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_19
    return-void

    .line 4837
    :catch_1a
    move-exception v0

    .line 4839
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "SamsungWindowManager"

    const-string v3, "There is not samsungApps for Gamekey"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 4844
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHomeDoubleClickBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeDoubleClickBehavior:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4845
    const-string v0, " mDoubleTapBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mDoubleTapBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4846
    const-string v0, " mHomeKeyDoubleClickUseRecent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyDoubleClickUseRecent:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4847
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPenState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4848
    const-string v0, " mCoverState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoverState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4849
    const-string v0, " mCoverControlsSleep="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoverControlsSleep:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4850
    const-string v0, " mGloveState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mGloveState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4851
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPowerKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4852
    const-string v0, " mHomeKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4853
    const-string v0, " mVolumeDownKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4854
    const-string v0, " mVolumeUpKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4855
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFlashKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4856
    const-string v0, " mCameraRecordKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4857
    const-string v0, " mWiFiProtectedSetupKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4858
    const-string v0, " mEasySetupKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mEasySetupKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4859
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsSafetyAssuranceEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4860
    const-string v0, " mIsUseAccessControl="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4861
    const-string v0, " mIsEnabledAccessControl="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4862
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsKidsModeEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsKidsModeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4863
    const-string v0, " mIsEasyModeEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4864
    const-string v0, " mIsDockHomeEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4865
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPerformEditAfterScreenCapture="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4866
    const-string v0, " mHasFlashAnnotateComponent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasFlashAnnotateComponent:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4867
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsVisibleSPenGestureView="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsVisibleSPenGestureView:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4868
    const-string v0, " mHasSPenUspFeature="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasSPenUspFeature:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4869
    const-string v0, " mStateGlance="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStateGlance:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4870
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsSleepWithCameraOnTop="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsSleepWithCameraOnTop:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4871
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSideSyncSourcePresentationActived="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4872
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastStatusBarTransparent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mLastStatusBarTransparent:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4873
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStatusBarShowOnFullScreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarShowOnFullScreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4874
    const-string v0, " mStatusBarHideOnNormalScreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarHideOnNormalScreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4875
    const-string v0, " mBlockCollapseStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBlockCollapseStatusBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4877
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSViewCoverManager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    if-eqz v0, :cond_16d

    .line 4878
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSViewCoverManager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4881
    :cond_16d
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;Landroid/content/Context;)V

    .line 4883
    return-void
.end method

.method public enableSPenGesture()V
    .registers 7

    .prologue
    const/4 v4, -0x1

    .line 566
    iget v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSpenUspFeatureLevel:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5c

    .line 567
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSPenGestureView:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    if-nez v2, :cond_5c

    .line 568
    new-instance v2, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSPenGestureView:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .line 569
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSPenGestureView:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->setVisibility(I)V

    .line 572
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 574
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x833

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 575
    const/16 v2, 0x518

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 578
    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 579
    const-string v2, "SPenGesture"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 580
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 581
    .local v1, "wm":Landroid/view/WindowManager;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 582
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSPenGestureView:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 584
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const-string v3, "SPenGestureView"

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSPenGestureInputChannel:Landroid/view/InputChannel;

    .line 585
    new-instance v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SPenGestureInputEventReceiver;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSPenGestureInputChannel:Landroid/view/InputChannel;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSPenGestureView:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SPenGestureInputEventReceiver;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSPenGestureInputEventReceiver:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SPenGestureInputEventReceiver;

    .line 589
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "wm":Landroid/view/WindowManager;
    :cond_5c
    return-void
.end method

.method public endCallByGamekey()Z
    .registers 8

    .prologue
    .line 4743
    const/4 v1, 0x0

    .line 4745
    .local v1, "hungUp":Z
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4746
    .local v2, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_11

    .line 4748
    :try_start_7
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 4749
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_36

    move-result v1

    .line 4757
    :cond_11
    :goto_11
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isDualSIMMode()Z

    move-result v5

    if-eqz v5, :cond_27

    .line 4758
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getTelephonyService2()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 4759
    .local v3, "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_27

    .line 4761
    :try_start_1d
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v5

    if-eqz v5, :cond_27

    .line 4762
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_26} :catch_43

    move-result v1

    .line 4771
    .end local v3    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    :cond_27
    :goto_27
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v4

    .line 4773
    .local v4, "voipInterfaceService":Landroid/os/IVoIPInterface;
    :try_start_2b
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isVoIPRinging()Z

    move-result v5

    if-eqz v5, :cond_35

    .line 4774
    invoke-interface {v4}, Landroid/os/IVoIPInterface;->hangupVoIPCall()Z
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_34} :catch_50

    move-result v1

    .line 4780
    :cond_35
    :goto_35
    return v1

    .line 4751
    .end local v4    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :catch_36
    move-exception v0

    .line 4752
    .local v0, "ex":Landroid/os/RemoteException;
    sget-boolean v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v5, :cond_11

    const-string v5, "SamsungWindowManager"

    const-string v6, "ITelephony threw RemoteException"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11

    .line 4764
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v3    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    :catch_43
    move-exception v0

    .line 4765
    .restart local v0    # "ex":Landroid/os/RemoteException;
    sget-boolean v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v5, :cond_27

    const-string v5, "SamsungWindowManager"

    const-string v6, "ITelephony2 threw RemoteException"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    .line 4776
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v3    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    .restart local v4    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :catch_50
    move-exception v0

    .line 4777
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
    .line 1739
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1740
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_13

    .line 1741
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    .line 1744
    :cond_13
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    monitor-exit v1

    return-object v0

    .line 1745
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
    .line 3190
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getHapticFeedbackManagerLw()Lcom/immersion/android/haptics/HapticFeedbackManager;
    .registers 2

    .prologue
    .line 2422
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHaptics:Lcom/immersion/android/haptics/HapticFeedbackManager;

    return-object v0
.end method

.method public getPowerKeyLongPressDelay()J
    .registers 5

    .prologue
    .line 1838
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isDisablePopupUI()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1839
    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    mul-long/2addr v0, v2

    .line 1841
    :goto_d
    return-wide v0

    :cond_e
    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v0

    goto :goto_d
.end method

.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 3

    .prologue
    .line 1729
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1730
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_13

    .line 1731
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 1734
    :cond_13
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v1

    return-object v0

    .line 1735
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

    .line 1186
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    .line 1187
    .local v0, "flags":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isScreenShotChordEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4c

    and-int/lit16 v3, v0, 0x400

    if-nez v3, :cond_4c

    .line 1189
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v3, :cond_27

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v3, :cond_27

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-nez v3, :cond_27

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyTriggered:Z

    if-nez v3, :cond_27

    .line 1191
    iget-wide v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    add-long v1, v3, v5

    .line 1256
    :goto_26
    return-wide v1

    .line 1195
    :cond_27
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-eqz v3, :cond_3f

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-nez v3, :cond_3f

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v3, :cond_3f

    .line 1196
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSystemKeyEventRequested(I)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 1197
    iget-wide v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTime:J

    add-long v1, v3, v5

    .line 1199
    .local v1, "timeoutTime":J
    goto :goto_26

    .line 1202
    .end local v1    # "timeoutTime":J
    :cond_3f
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyTriggered:Z

    if-eqz v3, :cond_4c

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-nez v3, :cond_4c

    .line 1203
    iget-wide v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyTime:J

    add-long v1, v3, v5

    .line 1205
    .restart local v1    # "timeoutTime":J
    goto :goto_26

    .line 1209
    .end local v1    # "timeoutTime":J
    :cond_4c
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isScreenRecordChordEnabled()Z

    move-result v3

    if-eqz v3, :cond_70

    and-int/lit16 v3, v0, 0x400

    if-nez v3, :cond_70

    .line 1211
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-eqz v3, :cond_63

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v3, :cond_63

    .line 1212
    iget-wide v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTime:J

    add-long v1, v3, v5

    .line 1214
    .restart local v1    # "timeoutTime":J
    goto :goto_26

    .line 1216
    .end local v1    # "timeoutTime":J
    :cond_63
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v3, :cond_70

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v3, :cond_70

    .line 1217
    iget-wide v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    add-long v1, v3, v5

    .line 1219
    .restart local v1    # "timeoutTime":J
    goto :goto_26

    .line 1223
    .end local v1    # "timeoutTime":J
    :cond_70
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    if-nez v3, :cond_7c

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isOneTouchReportChordEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 1225
    :cond_7c
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-eqz v3, :cond_89

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v3, :cond_89

    .line 1226
    iget-wide v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTime:J

    add-long v1, v3, v5

    .line 1228
    .restart local v1    # "timeoutTime":J
    goto :goto_26

    .line 1232
    .end local v1    # "timeoutTime":J
    :cond_89
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    if-eqz v3, :cond_ac

    and-int/lit16 v3, v0, 0x400

    if-nez v3, :cond_ac

    .line 1233
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-eqz v3, :cond_9e

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v3, :cond_9e

    .line 1234
    iget-wide v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTime:J

    add-long v1, v3, v5

    .line 1236
    .restart local v1    # "timeoutTime":J
    goto :goto_26

    .line 1238
    .end local v1    # "timeoutTime":J
    :cond_9e
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyTriggered:Z

    if-eqz v3, :cond_ac

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-nez v3, :cond_ac

    .line 1239
    iget-wide v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyTime:J

    add-long v1, v3, v5

    .line 1241
    .restart local v1    # "timeoutTime":J
    goto/16 :goto_26

    .line 1245
    .end local v1    # "timeoutTime":J
    :cond_ac
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v3

    if-eqz v3, :cond_d2

    and-int/lit16 v3, v0, 0x400

    if-nez v3, :cond_d2

    .line 1246
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyTriggered:Z

    if-eqz v3, :cond_c4

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-nez v3, :cond_c4

    .line 1247
    iget-wide v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyTime:J

    add-long v1, v3, v5

    .line 1249
    .restart local v1    # "timeoutTime":J
    goto/16 :goto_26

    .line 1250
    .end local v1    # "timeoutTime":J
    :cond_c4
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v3, :cond_d2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyTriggered:Z

    if-nez v3, :cond_d2

    .line 1251
    iget-wide v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    add-long v1, v3, v5

    .line 1253
    .restart local v1    # "timeoutTime":J
    goto/16 :goto_26

    .end local v1    # "timeoutTime":J
    :cond_d2
    move-wide v1, p2

    .line 1256
    goto/16 :goto_26
.end method

.method public getWaitingTimeOfKeyPendingControl(IJ)J
    .registers 12
    .param p1, "flags"    # I
    .param p2, "eventTime"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 996
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 997
    .local v0, "now":J
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->getKeyPendingThresholdTime()I

    move-result v6

    int-to-long v2, v6

    .line 998
    .local v2, "pendingThresholdTime":J
    cmp-long v6, v2, v4

    if-lez v6, :cond_1d

    .line 999
    and-int/lit16 v6, p1, 0x400

    if-nez v6, :cond_1d

    sub-long v6, v0, p2

    cmp-long v6, v6, v2

    if-gez v6, :cond_1d

    .line 1000
    sub-long v4, v0, p2

    sub-long v4, v2, v4

    .line 1003
    :cond_1d
    return-wide v4
.end method

.method public handleMenuLongPress()Z
    .registers 2

    .prologue
    .line 3521
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mMenuLongPressConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;

    # invokes: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->handleMenuLongPress()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;->access$1500(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MenuLongPressConcept;)Z

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

    .line 4462
    if-eqz p2, :cond_19

    .line 4463
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;

    if-nez v0, :cond_18

    .line 4464
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;

    .line 4465
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->updateInfo(IZZ)V

    .line 4466
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->start()V

    .line 4474
    :cond_18
    :goto_18
    return-void

    .line 4469
    :cond_19
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;

    if-eqz v0, :cond_18

    .line 4470
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->updateInfo(IZZ)V

    .line 4471
    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;

    goto :goto_18
.end method

.method public handleVolumeAfterAbort(II)V
    .registers 4
    .param p1, "stream"    # I
    .param p2, "keycode"    # I

    .prologue
    .line 8013
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSamsungVolumeControlThread:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->handleVolume(II)V

    goto :goto_4
.end method

.method public init(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneWindowManager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p3, "windowManager"    # Landroid/view/IWindowManager;
    .param p4, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .param p5, "keyguardViewMediator"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    .prologue
    .line 610
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 611
    iput-object p2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 612
    iput-object p3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 613
    iput-object p4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 614
    iput-object p5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    .line 615
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v7, "power"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    iput-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 617
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v7, 0x1

    const-string v8, "SamsungPhoneWindowManager.mBroadcastWakeLock"

    invoke-virtual {v6, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 619
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v7, 0x1

    const-string v8, "PhoneWindowManager.mSafetyAssuranceWakeLock"

    invoke-virtual {v6, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 621
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v7, 0x1

    const-string v8, "PhoneWindowManager.mSafetyAssuranceTimeoutWakeLock"

    invoke-virtual {v6, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSafetyAssuranceTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 623
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v7, 0x1

    const-string v8, "PhoneWindowManager.mTorchlightWakeLock"

    invoke-virtual {v6, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 625
    const-string v6, "vibrator"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/SystemVibrator;

    iput-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    .line 628
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->initStatusBarWindowController()V

    .line 632
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_64

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    if-nez v6, :cond_64

    .line 634
    new-instance v6, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v6, p0, v7}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mOrientationListenerForPenGesture:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

    .line 639
    :cond_64
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 640
    .local v3, "mSamsungCustomFilter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.SWEEP_LEFT"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 641
    const-string v6, "android.intent.action.SWEEP_RIGHT"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 642
    const-string v6, "android.intent.action.SWEEP_DOWN"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 643
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSamsungCustomReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 646
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 647
    .local v1, "mBootCompleteFilter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 648
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 650
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 651
    .local v2, "mPackageChangeFilter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 652
    const-string v6, "package"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 653
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 655
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1110066

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyDoubleClickUseRecent:Z

    .line 658
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceMemoIntent:Landroid/content/Intent;

    .line 662
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTalkingCameraIntent:Landroid/content/Intent;

    .line 666
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.samsung.UltraSonicCane.UTRASONIC_CANE_ACTION"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUltrasonicIntent:Landroid/content/Intent;

    .line 670
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.samsung.android.secretmode.action.REQ_SHOW_VISUAL_CUE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSpassIntent:Landroid/content/Intent;

    .line 671
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSpassIntent:Landroid/content/Intent;

    new-instance v7, Landroid/content/ComponentName;

    const-string v8, "com.samsung.android.secretmode.service"

    const-string v9, "com.samsung.android.secretmode.service.SecretModeService"

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 674
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->intentType()Z

    .line 675
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceTalkIntent:Landroid/content/Intent;

    const-string v7, "isThisComeFromHomeKeyDoubleClickConcept"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 676
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceTalkIntent:Landroid/content/Intent;

    const-string v7, "CHECK_SCHEDULE_ENABLED"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 677
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.samsung.pen.INSERT"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    .line 678
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.samsung.cover.OPEN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoverOpenedIntent:Landroid/content/Intent;

    .line 679
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.samsung.android.app.always.action.LAUNCH_ALWAYS"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAlwaysIntent:Landroid/content/Intent;

    .line 680
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.samsung.glove.ENABLE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mGloveModeIntent:Landroid/content/Intent;

    .line 681
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.samsung.ocr.ATTACHED"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mOcrDockIntent:Landroid/content/Intent;

    .line 682
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.samsung.flipfolder.OPEN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlipFolderOpenedIntent:Landroid/content/Intent;

    .line 684
    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.vlingo.client.samsung"

    const-string v8, "com.vlingo.client.car.CarActivity"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceTalkComponent:Landroid/content/ComponentName;

    .line 686
    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.vlingo.midas"

    const-string v8, "com.vlingo.midas.gui.ConversationActivity"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSVoiceComponent:Landroid/content/ComponentName;

    .line 688
    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.samsung.android.app.always"

    const-string v8, "com.samsung.android.app.always.ui.MainActivity"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAlwaysComponet:Landroid/content/ComponentName;

    .line 690
    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.sec.spen.flashannotate"

    const-string v8, "com.sec.spen.flashannotate.FlashAnnotateActivity"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashAnnotateComponent:Landroid/content/ComponentName;

    .line 692
    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.sec.spen.flashannotatesvc"

    const-string v8, "com.sec.spen.flashannotatesvc.flashannotateservice"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashAnnotateServiceComponent:Landroid/content/ComponentName;

    .line 694
    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.sec.android.app.voicerecorder"

    const-string v8, "com.sec.android.app.voicerecorder.VoiceRecorderMainActivity"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceMemoComponent:Landroid/content/ComponentName;

    .line 697
    const-string v6, "com.samsung.UltraSonicCane"

    iput-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUltraSonicPackageName:Ljava/lang/String;

    .line 700
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mUltraSonicPackageName:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasUltraSonicPackage:Z

    .line 704
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceMemoComponent:Landroid/content/ComponentName;

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isComponentAvailable(Landroid/content/ComponentName;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasVoiceMemoComponent:Z

    .line 708
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashAnnotateComponent:Landroid/content/ComponentName;

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isComponentAvailable(Landroid/content/ComponentName;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasFlashAnnotateComponent:Z

    .line 711
    new-instance v6, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserver;

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v6, p0, v7}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSettingsObserver:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserver;

    .line 712
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSettingsObserver:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserver;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserver;->observe()V

    .line 715
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v6, :cond_1b3

    .line 716
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    if-eqz v6, :cond_22d

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 719
    .local v0, "looper":Landroid/os/Looper;
    :goto_1aa
    new-instance v6, Lcom/immersion/android/haptics/HapticFeedbackManager;

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v0}, Lcom/immersion/android/haptics/HapticFeedbackManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHaptics:Lcom/immersion/android/haptics/HapticFeedbackManager;

    .line 731
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_1b3
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportGestureWithIRSensor()Z

    move-result v6

    if-eqz v6, :cond_1c2

    .line 732
    new-instance v6, Lcom/samsung/android/service/gesture/TspInputEventObserver;

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/samsung/android/service/gesture/TspInputEventObserver;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTspInputEventObserver:Lcom/samsung/android/service/gesture/TspInputEventObserver;

    .line 736
    :cond_1c2
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportGestureWithIRSensor()Z

    move-result v6

    if-nez v6, :cond_1ce

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportEasyOneHand()Z

    move-result v6

    if-eqz v6, :cond_1dd

    .line 737
    :cond_1ce
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->initTouchControllerForGesture()V

    .line 738
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "any_screen_running"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 744
    :cond_1dd
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 745
    .local v4, "pm":Landroid/content/pm/PackageManager;
    if-eqz v4, :cond_205

    .line 747
    const-string v6, "com.sec.feature.spen_usp"

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSpenUspFeatureLevel:I

    .line 748
    const-string v6, "SamsungWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mSpenUspFeatureLevel : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSpenUspFeatureLevel:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_205
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasSPenUspFeature:Z

    .line 752
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasSPenUspFeature:Z

    if-eqz v6, :cond_220

    .line 753
    iget v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSpenUspFeatureLevel:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_220

    .line 754
    new-instance v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserverForSPen;

    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v6}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserverForSPen;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Landroid/os/Handler;)V

    .line 755
    .local v5, "settingObserverForSPen":Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserverForSPen;
    invoke-virtual {v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserverForSPen;->observe()V

    .line 761
    .end local v5    # "settingObserverForSPen":Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserverForSPen;
    :cond_220
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    iput-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 763
    return-void

    .line 716
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_22d
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto/16 :goto_1aa
.end method

.method initTouchControllerForGesture()V
    .registers 4

    .prologue
    .line 1884
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSamsungPolicyTouchInputEventToGestureChannel:Landroid/view/InputChannel;

    if-nez v0, :cond_1d

    .line 1885
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const-string v1, "SamsungPolicyTouchInputEventToGestureChannel"

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSamsungPolicyTouchInputEventToGestureChannel:Landroid/view/InputChannel;

    .line 1886
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyGestureInputEventReceiver;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSamsungPolicyTouchInputEventToGestureChannel:Landroid/view/InputChannel;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyGestureInputEventReceiver;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSamsungPolicyGestureInputEventReceiver:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyGestureInputEventReceiver;

    .line 1888
    :cond_1d
    return-void
.end method

.method public interceptKeyCombinationBeforeQueueing(Landroid/view/KeyEvent;IZ)V
    .registers 11
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1010
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_15

    move v1, v3

    .line 1011
    .local v1, "down":Z
    :goto_9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    .line 1012
    .local v0, "canceled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 1014
    .local v2, "keyCode":I
    sparse-switch v2, :sswitch_data_1d0

    .line 1183
    :cond_14
    :goto_14
    return-void

    .end local v0    # "canceled":Z
    .end local v1    # "down":Z
    .end local v2    # "keyCode":I
    :cond_15
    move v1, v4

    .line 1010
    goto :goto_9

    .line 1019
    .restart local v0    # "canceled":Z
    .restart local v1    # "down":Z
    .restart local v2    # "keyCode":I
    :sswitch_17
    const/16 v5, 0x19

    if-eq v2, v5, :cond_1f

    const/16 v5, 0xa9

    if-ne v2, v5, :cond_5e

    .line 1021
    :cond_1f
    if-eqz v1, :cond_4f

    .line 1022
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v5, :cond_14

    .line 1023
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    .line 1024
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTime:J

    .line 1025
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 1026
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1027
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedBySafetyAssuranceChord:Z

    .line 1028
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptSafetyAssuranceChord()V

    .line 1029
    if-eqz p3, :cond_14

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_14

    .line 1030
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 1031
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedByAccessControlChord:Z

    .line 1032
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptScreenshotChord()V

    .line 1033
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptAccessControlChord()V

    goto :goto_14

    .line 1037
    :cond_4f
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    .line 1038
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1039
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1040
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingSafetyAssuranceChordAction()V

    .line 1041
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingAccessControlChordAction()V

    goto :goto_14

    .line 1043
    :cond_5e
    const/16 v5, 0x18

    if-eq v2, v5, :cond_66

    const/16 v5, 0xa8

    if-ne v2, v5, :cond_14

    .line 1045
    :cond_66
    if-eqz v1, :cond_94

    .line 1046
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v5, :cond_14

    .line 1047
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    .line 1048
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTime:J

    .line 1049
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 1050
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1051
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingAccessControlChordAction()V

    .line 1052
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyConsumedBySafetyAssuranceChord:Z

    .line 1053
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptSafetyAssuranceChord()V

    .line 1054
    if-eqz p3, :cond_14

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_14

    .line 1055
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyConsumedByScreenRecordChord:Z

    .line 1056
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptScreenRecordChord()V

    goto :goto_14

    .line 1060
    :cond_94
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    .line 1061
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1062
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1063
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingSafetyAssuranceChordAction()V

    .line 1064
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingAccessControlChordAction()V

    goto/16 :goto_14

    .line 1070
    :sswitch_a4
    if-eqz v1, :cond_d5

    .line 1071
    if-eqz p3, :cond_14

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-nez v5, :cond_14

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_14

    .line 1073
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    .line 1074
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    .line 1075
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingAccessControlChordAction()V

    .line 1076
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByScreenshotChord:Z

    .line 1077
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByScreenRecordChord:Z

    .line 1078
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByAccessControlChord:Z

    .line 1079
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByFactoryTestChord:Z

    .line 1080
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptScreenshotChord()V

    .line 1081
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptScreenRecordChord()V

    .line 1082
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptAccessControlChord()V

    .line 1083
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptFactoryTestChord()V

    goto/16 :goto_14

    .line 1086
    :cond_d5
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    .line 1087
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1088
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1089
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingAccessControlChordAction()V

    .line 1090
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingFactoryTestChordAction()V

    goto/16 :goto_14

    .line 1095
    .line 1096
    :sswitch_e5
    if-eqz v1, :cond_113

    .line 1097
    if-eqz p3, :cond_14

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-nez v5, :cond_14

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_14

    .line 1099
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    .line 1100
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTime:J

    .line 1101
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByScreenshotChord:Z

    .line 1102
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByScreenRecordChord:Z

    .line 1103
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByAccessControlChord:Z

    .line 1104
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 1105
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptScreenshotChord()V

    .line 1106
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptScreenRecordChord()V

    .line 1107
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptAccessControlChord()V

    goto/16 :goto_14

    .line 1110
    :cond_113
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    .line 1111
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1112
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1113
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingAccessControlChordAction()V

    goto/16 :goto_14

    .line 1119
    :sswitch_120
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1120
    if-eqz v1, :cond_153

    .line 1121
    if-eqz p3, :cond_14

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyTriggered:Z

    if-nez v5, :cond_14

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_14

    .line 1123
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyTriggered:Z

    .line 1124
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyTime:J

    .line 1125
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 1126
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1127
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1128
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingAccessControlChordAction()V

    .line 1129
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyConsumedByScreenshotChord:Z

    .line 1130
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptScreenshotChord()V

    goto/16 :goto_14

    .line 1133
    :cond_153
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyTriggered:Z

    .line 1134
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1135
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1136
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingAccessControlChordAction()V

    goto/16 :goto_14

    .line 1142
    :sswitch_160
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1143
    if-eqz v1, :cond_193

    .line 1144
    if-eqz p3, :cond_14

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyTriggered:Z

    if-nez v5, :cond_14

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_14

    .line 1146
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyTriggered:Z

    .line 1147
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyTime:J

    .line 1148
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 1149
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1150
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1151
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingAccessControlChordAction()V

    .line 1152
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyConsumedByAccessControlChord:Z

    .line 1153
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptAccessControlChord()V

    goto/16 :goto_14

    .line 1156
    :cond_193
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyTriggered:Z

    .line 1157
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1158
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1159
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingAccessControlChordAction()V

    goto/16 :goto_14

    .line 1165
    :sswitch_1a0
    if-eqz v1, :cond_1bf

    .line 1166
    if-eqz p3, :cond_14

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyTriggered:Z

    if-nez v5, :cond_14

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_14

    .line 1168
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyTriggered:Z

    .line 1169
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyTime:J

    .line 1170
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyConsumedByFactoryTestChord:Z

    .line 1171
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptFactoryTestChord()V

    goto/16 :goto_14

    .line 1174
    :cond_1bf
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyTriggered:Z

    .line 1175
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1176
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 1177
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingAccessControlChordAction()V

    .line 1178
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingFactoryTestChordAction()V

    goto/16 :goto_14

    .line 1014
    nop

    :sswitch_data_1d0
    .sparse-switch
        0x3 -> :sswitch_e5
        0x18 -> :sswitch_17
        0x19 -> :sswitch_17
        0x1a -> :sswitch_a4
        0xa8 -> :sswitch_17
        0xa9 -> :sswitch_17
        0xf4 -> :sswitch_160
        0xfa -> :sswitch_120
        0x108 -> :sswitch_1a0
    .end sparse-switch
.end method

.method public interceptScreenshotChord()V
    .registers 8

    .prologue
    const-wide/16 v5, 0x96

    const/4 v4, 0x1

    .line 2432
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isScreenShotChordEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 2473
    :cond_b
    :goto_b
    return-void

    .line 2434
    :cond_c
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasFolderTypeFeature(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 2436
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_51

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_51

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_51

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-nez v2, :cond_51

    .line 2437
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2438
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    .line 2440
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 2441
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByScreenshotChord:Z

    .line 2442
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 2443
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 2444
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingSafetyAssuranceChordAction()V

    .line 2445
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b

    .line 2448
    .end local v0    # "now":J
    :cond_51
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyTriggered:Z

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasFolderTypeFeature(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 2450
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2451
    .restart local v0    # "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    .line 2453
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyConsumedByScreenshotChord:Z

    .line 2454
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByScreenshotChord:Z

    .line 2455
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 2456
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 2457
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_b

    .line 2461
    .end local v0    # "now":J
    :cond_8c
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v2, :cond_b

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_b

    .line 2462
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2463
    .restart local v0    # "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v2, v5

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    .line 2465
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByScreenshotChord:Z

    .line 2466
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByScreenshotChord:Z

    .line 2467
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 2468
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 2469
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_b
.end method

.method public interceptSpecialKeyTi(Landroid/view/KeyEvent;)Z
    .registers 33
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1428
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v27

    .line 1429
    .local v27, "keyguardOn":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v26

    .line 1430
    .local v26, "keyCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v28

    .line 1431
    .local v28, "repeatCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v21

    .line 1432
    .local v21, "flags":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_49

    const/16 v18, 0x1

    .line 1436
    .local v18, "down":Z
    :goto_1c
    const/16 v2, 0xdd

    move/from16 v0, v26

    if-eq v0, v2, :cond_28

    const/16 v2, 0xdc

    move/from16 v0, v26

    if-ne v0, v2, :cond_4c

    .line 1438
    :cond_28
    if-eqz v18, :cond_112

    if-nez v27, :cond_112

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportSPC()Z

    move-result v2

    if-nez v2, :cond_112

    .line 1439
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v4, "input_method"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/view/inputmethod/InputMethodManager;

    .line 1441
    .local v23, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v23, :cond_47

    .line 1442
    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->setBrightnessWithKeyboard(I)V

    .line 1444
    :cond_47
    const/4 v2, 0x1

    .line 1675
    .end local v23    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :goto_48
    return v2

    .line 1432
    .end local v18    # "down":Z
    :cond_49
    const/16 v18, 0x0

    goto :goto_1c

    .line 1448
    .restart local v18    # "down":Z
    :cond_4c
    const/16 v2, 0xdf

    move/from16 v0, v26

    if-ne v0, v2, :cond_68

    .line 1449
    if-eqz v18, :cond_112

    if-nez v27, :cond_112

    .line 1451
    :try_start_56
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v29

    .line 1452
    .local v29, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v29, :cond_5f

    .line 1453
    invoke-interface/range {v29 .. v29}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_5f} :catch_61

    .line 1459
    .end local v29    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_5f
    :goto_5f
    const/4 v2, 0x1

    goto :goto_48

    .line 1455
    :catch_61
    move-exception v20

    .line 1457
    .local v20, "ex":Landroid/os/RemoteException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_5f

    .line 1462
    .end local v20    # "ex":Landroid/os/RemoteException;
    :cond_68
    const/16 v2, 0xe1

    move/from16 v0, v26

    if-ne v0, v2, :cond_84

    .line 1463
    if-eqz v18, :cond_112

    if-nez v27, :cond_112

    .line 1465
    :try_start_72
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v29

    .line 1466
    .restart local v29    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v29, :cond_7b

    .line 1467
    invoke-interface/range {v29 .. v29}, Lcom/android/internal/statusbar/IStatusBarService;->toggleNotificationPanel()V
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_7b} :catch_7d

    .line 1473
    .end local v29    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_7b
    :goto_7b
    const/4 v2, 0x1

    goto :goto_48

    .line 1469
    :catch_7d
    move-exception v20

    .line 1471
    .restart local v20    # "ex":Landroid/os/RemoteException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_7b

    .line 1477
    .end local v20    # "ex":Landroid/os/RemoteException;
    :cond_84
    const/16 v2, 0xed

    move/from16 v0, v26

    if-ne v0, v2, :cond_115

    .line 1479
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportSPC()Z

    move-result v2

    if-eqz v2, :cond_112

    .line 1483
    if-nez v28, :cond_f3

    .line 1484
    if-eqz v18, :cond_9d

    .line 1485
    const-string v2, "SamsungWindowManager"

    const-string v4, "EzSetup Short down Press"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    :goto_9b
    const/4 v2, 0x1

    goto :goto_48

    .line 1487
    :cond_9d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mEasySetupKeyTriggered:Z

    if-eqz v2, :cond_a9

    .line 1488
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mEasySetupKeyTriggered:Z

    goto :goto_9b

    .line 1490
    :cond_a9
    const-string v2, "SamsungWindowManager"

    const-string v4, "EzSetup Short up Press"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->isShutDownConfirming()Z

    move-result v2

    if-eqz v2, :cond_cb

    .line 1492
    const-string v2, "SamsungWindowManager"

    const-string v4, "Close system window to cancel CONFIRM for Shutdown"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const-string v4, "globalactions"

    invoke-virtual {v2, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->closeSystemWindows(Ljava/lang/String;)V

    goto :goto_9b

    .line 1495
    :cond_cb
    const-string v2, "SamsungWindowManager"

    const-string v4, "Broadcast SPC_APP_KEY_PRESSED"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    const-string v12, "android.intent.action.SPC_APP_KEY_PRESSED"

    .line 1497
    .local v12, "ACTION_SPC_APP_KEY_PRESSED":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v2, "android.intent.action.SPC_APP_KEY_PRESSED"

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1498
    .local v3, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, p1

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_9b

    .line 1505
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v12    # "ACTION_SPC_APP_KEY_PRESSED":Ljava/lang/String;
    :cond_f3
    if-eqz v18, :cond_112

    move/from16 v0, v21

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_112

    .line 1506
    const-string v2, "SamsungWindowManager"

    const-string v4, "EzSetup Long down Press"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mEasySetupKeyTriggered:Z

    .line 1508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1675
    :cond_112
    :goto_112
    const/4 v2, 0x0

    goto/16 :goto_48

    .line 1515
    :cond_115
    const/16 v2, 0x103

    move/from16 v0, v26

    if-ne v0, v2, :cond_14b

    .line 1516
    if-nez v18, :cond_148

    .line 1517
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_128

    const-string v2, "SamsungWindowManager"

    const-string v4, "Broadcast ACTION_BT_APP_KEY_PRESSED"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    :cond_128
    const-string v11, "android.intent.action.BT_APP_KEY_PRESSED"

    .line 1519
    .local v11, "ACTION_BT_APP_KEY_PRESSED":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v2, "android.intent.action.BT_APP_KEY_PRESSED"

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1520
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, p1

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1524
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v11    # "ACTION_BT_APP_KEY_PRESSED":Ljava/lang/String;
    :cond_148
    const/4 v2, 0x1

    goto/16 :goto_48

    .line 1527
    :cond_14b
    const/16 v2, 0x78

    move/from16 v0, v26

    if-ne v0, v2, :cond_163

    .line 1528
    if-eqz v18, :cond_160

    if-nez v28, :cond_160

    .line 1529
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1531
    :cond_160
    const/4 v2, 0x1

    goto/16 :goto_48

    .line 1534
    :cond_163
    const/16 v2, 0xef

    move/from16 v0, v26

    if-ne v0, v2, :cond_324

    .line 1535
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportDMBAntennaDetach()Z

    move-result v2

    if-eqz v2, :cond_2df

    .line 1536
    const-string v2, "service.media.dmb"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1537
    .local v17, "dmb_running":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "dmb_antenna_auto_start"

    const/4 v5, 0x0

    const/4 v6, -0x2

    invoke-static {v2, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_28e

    const/16 v24, 0x1

    .line 1539
    .local v24, "isDmbAutoStarton":Z
    :goto_18a
    const/4 v14, 0x0

    .line 1540
    .local v14, "b_dmb_running":Z
    const/16 v25, 0x0

    .line 1541
    .local v25, "isSecureKeyguard":Z
    const-string v2, ""

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a2

    .line 1542
    const-string v2, "1"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_292

    .line 1543
    const/4 v14, 0x1

    .line 1549
    :cond_1a2
    :goto_1a2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1b5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v25

    .line 1551
    :cond_1b5
    const-string v2, "SamsungWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KEYCODE_DMB_ANT_OPEN dmb_running="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isSecureKeyguard="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isDmbAutoStarton="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    if-nez v18, :cond_236

    if-nez v28, :cond_236

    .line 1557
    :try_start_1eb
    const-string v13, "/efs/FactoryApp/tdmb_det_count"

    .line 1558
    .local v13, "TDMB_DET_PATH":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1559
    .local v30, "strDMBCount":Ljava/lang/String;
    const-string v2, "SamsungWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TDMB_DET_COUNT : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    if-eqz v30, :cond_29f

    const-string v2, ""

    move-object/from16 v0, v30

    if-eq v0, v2, :cond_29f

    .line 1562
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long v15, v4, v6

    .line 1563
    .local v15, "dmb_det_count":J
    const-wide/32 v4, 0xf423f

    cmp-long v2, v15, v4

    if-lez v2, :cond_22f

    .line 1564
    const-wide/16 v15, 0x1

    .line 1566
    :cond_22f
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_236
    .catch Ljava/io/IOException; {:try_start_1eb .. :try_end_236} :catch_2a5
    .catch Ljava/lang/NumberFormatException; {:try_start_1eb .. :try_end_236} :catch_2c2

    .line 1577
    .end local v13    # "TDMB_DET_PATH":Ljava/lang/String;
    .end local v15    # "dmb_det_count":J
    .end local v30    # "strDMBCount":Ljava/lang/String;
    :cond_236
    :goto_236
    if-nez v18, :cond_112

    if-nez v28, :cond_112

    if-nez v14, :cond_112

    if-nez v25, :cond_112

    if-eqz v24, :cond_112

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v2, v4}, Landroid/os/FactoryTest;->isFactoryMode(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Z

    move-result v2

    if-nez v2, :cond_112

    .line 1580
    const-string v2, "SamsungWindowManager"

    const-string v4, "KEYCODE_DMB_ANT_OPEN"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.app.dmb"

    const-string v5, "com.sec.android.app.dmb.activity.DMBFullScreenView"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .line 1584
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v2, "com.sec.android.action.DMB_ANT_OPEN"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1585
    const/high16 v2, 0x10000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1586
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_28b

    .line 1589
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$4;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1595
    :cond_28b
    const/4 v2, 0x1

    goto/16 :goto_48

    .line 1537
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v14    # "b_dmb_running":Z
    .end local v24    # "isDmbAutoStarton":Z
    .end local v25    # "isSecureKeyguard":Z
    :cond_28e
    const/16 v24, 0x0

    goto/16 :goto_18a

    .line 1544
    .restart local v14    # "b_dmb_running":Z
    .restart local v24    # "isDmbAutoStarton":Z
    .restart local v25    # "isSecureKeyguard":Z
    :cond_292
    const-string v2, "0"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a2

    .line 1545
    const/4 v14, 0x0

    goto/16 :goto_1a2

    .line 1568
    .restart local v13    # "TDMB_DET_PATH":Ljava/lang/String;
    .restart local v30    # "strDMBCount":Ljava/lang/String;
    :cond_29f
    :try_start_29f
    const-string v2, "0"

    invoke-static {v13, v2}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a4
    .catch Ljava/io/IOException; {:try_start_29f .. :try_end_2a4} :catch_2a5
    .catch Ljava/lang/NumberFormatException; {:try_start_29f .. :try_end_2a4} :catch_2c2

    goto :goto_236

    .line 1570
    .end local v13    # "TDMB_DET_PATH":Ljava/lang/String;
    .end local v30    # "strDMBCount":Ljava/lang/String;
    :catch_2a5
    move-exception v19

    .line 1571
    .local v19, "e":Ljava/io/IOException;
    const-string v2, "SamsungWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_236

    .line 1572
    .end local v19    # "e":Ljava/io/IOException;
    :catch_2c2
    move-exception v19

    .line 1573
    .local v19, "e":Ljava/lang/NumberFormatException;
    const-string v2, "SamsungWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NumberFormatException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_236

    .line 1599
    .end local v14    # "b_dmb_running":Z
    .end local v17    # "dmb_running":Ljava/lang/String;
    .end local v19    # "e":Ljava/lang/NumberFormatException;
    .end local v24    # "isDmbAutoStarton":Z
    .end local v25    # "isSecureKeyguard":Z
    :cond_2df
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportDTVAntennaDetach()Z

    move-result v2

    if-eqz v2, :cond_112

    .line 1601
    const/16 v25, 0x0

    .line 1602
    .restart local v25    # "isSecureKeyguard":Z
    const-string v2, "SamsungWindowManager"

    const-string v4, "SISO DTV  APPLICATION KEYCODE_DTV_ANTENNA_OPEN"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_301

    .line 1604
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v25

    .line 1606
    :cond_301
    if-nez v18, :cond_112

    if-nez v28, :cond_112

    if-nez v25, :cond_112

    .line 1607
    const-string v2, "SamsungWindowManager"

    const-string v4, "SISO DTV  APPLICATION KEYCODE_DTV_ANTENNA_OPEN TO SEND BROADCAST"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1609
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.sec.mtv.DTV_ANTENNA_OPEN"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1611
    const/4 v2, 0x1

    goto/16 :goto_48

    .line 1614
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v25    # "isSecureKeyguard":Z
    :cond_324
    const/16 v2, 0xf0

    move/from16 v0, v26

    if-ne v0, v2, :cond_382

    .line 1615
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportDMBAntennaDetach()Z

    move-result v2

    if-eqz v2, :cond_35d

    .line 1616
    if-nez v18, :cond_112

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v2, v4}, Landroid/os/FactoryTest;->isFactoryMode(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Z

    move-result v2

    if-nez v2, :cond_112

    .line 1617
    const-string v2, "SamsungWindowManager"

    const-string v4, "KEYCODE_DMB_ANT_CLOSE"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1619
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v2, "com.sec.android.action.DMB_ANT_CLOSE"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1620
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1622
    const/4 v2, 0x1

    goto/16 :goto_48

    .line 1626
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_35d
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportDTVAntennaDetach()Z

    move-result v2

    if-eqz v2, :cond_112

    .line 1627
    if-nez v18, :cond_112

    .line 1628
    const-string v2, "SamsungWindowManager"

    const-string v4, "KEYCODE_DTV_ANT_CLOSE"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1630
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.sec.mtv.DTV_ANTENNA_CLOSE"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1631
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1632
    const/4 v2, 0x1

    goto/16 :goto_48

    .line 1639
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_382
    const/16 v2, 0x102

    move/from16 v0, v26

    if-ne v0, v2, :cond_3a6

    .line 1640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasFolderTypeFeature(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_112

    .line 1641
    if-eqz v18, :cond_112

    .line 1642
    new-instance v3, Landroid/content/Intent;

    const-string v2, "android.settings.DATA_NETWORK_KEY_PRESSED"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1643
    .restart local v3    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_112

    .line 1650
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_3a6
    const/16 v2, 0x10d

    move/from16 v0, v26

    if-ne v0, v2, :cond_112

    .line 1651
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isDualSIMMode()Z

    move-result v2

    if-eqz v2, :cond_112

    .line 1652
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v2

    if-nez v2, :cond_112

    .line 1653
    if-eqz v18, :cond_3e0

    move/from16 v0, v21

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_3e0

    .line 1654
    new-instance v22, Landroid/content/Intent;

    invoke-direct/range {v22 .. v22}, Landroid/content/Intent;-><init>()V

    .line 1655
    .local v22, "i":Landroid/content/Intent;
    const-string v2, "ACTION_NETWORK_LONGPRESS_KEY"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1656
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1657
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mNetworkSelLongKey:Z

    goto/16 :goto_112

    .line 1659
    .end local v22    # "i":Landroid/content/Intent;
    :cond_3e0
    if-nez v18, :cond_112

    .line 1660
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mNetworkSelLongKey:Z

    if-nez v2, :cond_3ff

    .line 1661
    new-instance v22, Landroid/content/Intent;

    invoke-direct/range {v22 .. v22}, Landroid/content/Intent;-><init>()V

    .line 1662
    .restart local v22    # "i":Landroid/content/Intent;
    const-string v2, "ACTION_NETWORK_KEY"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1663
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_112

    .line 1666
    .end local v22    # "i":Landroid/content/Intent;
    :cond_3ff
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mNetworkSelLongKey:Z

    goto/16 :goto_112
.end method

.method public isBlockCollapseStatusBar()Z
    .registers 2

    .prologue
    .line 2022
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBlockCollapseStatusBar:Z

    return v0
.end method

.method public isBlockedKeyBySideSync(Landroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1260
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 1261
    .local v2, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    .line 1262
    .local v1, "flags":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_23

    move v0, v3

    .line 1264
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

    .line 1272
    :goto_22
    return v3

    .end local v0    # "down":Z
    :cond_23
    move v0, v4

    .line 1262
    goto :goto_11

    .restart local v0    # "down":Z
    :cond_25
    move v3, v4

    .line 1272
    goto :goto_22
.end method

.method public isBlockedPowerKeyByKeyTest()Z
    .registers 4

    .prologue
    .line 3194
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;

    const/16 v2, 0x1a

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;->isSystemKeyEventRequested(I)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 3195
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 3196
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.factory.app.ui.UIHardKey"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.android.app.simplefunctiontest.KeypadTest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.factory.app.spcselftest.SpcSelfTestMain"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.android.app.latin.tdfnotifier"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 3202
    :cond_42
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v1, :cond_4d

    const-string v1, "SamsungWindowManager"

    const-string v2, "Skip power key behavior by FactoryTest application"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3203
    :cond_4d
    const/4 v1, 0x1

    .line 3206
    .end local v0    # "componentName":Landroid/content/ComponentName;
    :goto_4e
    return v1

    :cond_4f
    const/4 v1, 0x0

    goto :goto_4e
.end method

.method public isCameraOnTop()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 4498
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 4507
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_20

    .line 4508
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

    .line 4511
    :cond_1f
    const/4 v1, 0x1

    .line 4516
    :cond_20
    return v1
.end method

.method public isCombinationKeyTriggered()Z
    .registers 2

    .prologue
    .line 1411
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyTriggered:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyTriggered:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyTriggered:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyTriggered:Z

    if-eqz v0, :cond_1a

    .line 1414
    :cond_18
    const/4 v0, 0x1

    .line 1416
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public isConsumedKeyCombination(Landroid/view/KeyEvent;)Z
    .registers 11
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v8, 0x19

    const/4 v7, 0x3

    const/16 v6, 0x1a

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1276
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 1277
    .local v2, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    .line 1278
    .local v1, "flags":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_31

    move v0, v3

    .line 1283
    .local v0, "down":Z
    :goto_16
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isScreenShotChordEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_56

    and-int/lit16 v5, v1, 0x400

    if-nez v5, :cond_56

    .line 1285
    if-eq v2, v8, :cond_28

    const/16 v5, 0xa9

    if-ne v2, v5, :cond_33

    :cond_28
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    if-eqz v5, :cond_33

    .line 1288
    if-nez v0, :cond_30

    .line 1289
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 1407
    :cond_30
    :goto_30
    return v3

    .end local v0    # "down":Z
    :cond_31
    move v0, v4

    .line 1278
    goto :goto_16

    .line 1293
    .restart local v0    # "down":Z
    :cond_33
    if-ne v2, v7, :cond_3e

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByScreenshotChord:Z

    if-eqz v5, :cond_3e

    .line 1295
    if-nez v0, :cond_30

    .line 1296
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByScreenshotChord:Z

    goto :goto_30

    .line 1300
    :cond_3e
    if-ne v2, v6, :cond_49

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByScreenshotChord:Z

    if-eqz v5, :cond_49

    .line 1302
    if-nez v0, :cond_30

    .line 1303
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByScreenshotChord:Z

    goto :goto_30

    .line 1307
    :cond_49
    const/16 v5, 0xfa

    if-ne v2, v5, :cond_56

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyConsumedByScreenshotChord:Z

    if-eqz v5, :cond_56

    .line 1309
    if-nez v0, :cond_30

    .line 1310
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlashKeyConsumedByScreenshotChord:Z

    goto :goto_30

    .line 1316
    :cond_56
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isScreenRecordChordEnabled()Z

    move-result v5

    if-eqz v5, :cond_83

    and-int/lit16 v5, v1, 0x400

    if-nez v5, :cond_83

    .line 1318
    const/16 v5, 0x18

    if-ne v2, v5, :cond_6d

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyConsumedByScreenRecordChord:Z

    if-eqz v5, :cond_6d

    .line 1320
    if-nez v0, :cond_30

    .line 1321
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyConsumedByScreenRecordChord:Z

    goto :goto_30

    .line 1325
    :cond_6d
    if-ne v2, v7, :cond_78

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByScreenRecordChord:Z

    if-eqz v5, :cond_78

    .line 1327
    if-nez v0, :cond_30

    .line 1328
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByScreenRecordChord:Z

    goto :goto_30

    .line 1332
    :cond_78
    if-ne v2, v6, :cond_83

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByScreenRecordChord:Z

    if-eqz v5, :cond_83

    .line 1334
    if-nez v0, :cond_30

    .line 1335
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByScreenRecordChord:Z

    goto :goto_30

    .line 1341
    :cond_83
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    if-nez v5, :cond_8f

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isOneTouchReportChordEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_a7

    .line 1343
    :cond_8f
    if-ne v2, v8, :cond_9a

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedBySafetyAssuranceChord:Z

    if-eqz v5, :cond_9a

    .line 1345
    if-nez v0, :cond_30

    .line 1346
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedBySafetyAssuranceChord:Z

    goto :goto_30

    .line 1350
    :cond_9a
    const/16 v5, 0x18

    if-ne v2, v5, :cond_a7

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyConsumedBySafetyAssuranceChord:Z

    if-eqz v5, :cond_a7

    .line 1352
    if-nez v0, :cond_30

    .line 1353
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpKeyConsumedBySafetyAssuranceChord:Z

    goto :goto_30

    .line 1359
    :cond_a7
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    if-eqz v5, :cond_e1

    and-int/lit16 v5, v1, 0x400

    if-nez v5, :cond_e1

    .line 1360
    if-ne v2, v7, :cond_bb

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByAccessControlChord:Z

    if-eqz v5, :cond_bb

    .line 1362
    if-nez v0, :cond_30

    .line 1363
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyConsumedByAccessControlChord:Z

    goto/16 :goto_30

    .line 1367
    :cond_bb
    if-ne v2, v8, :cond_c7

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedByAccessControlChord:Z

    if-eqz v5, :cond_c7

    .line 1369
    if-nez v0, :cond_30

    .line 1370
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeDownKeyConsumedByAccessControlChord:Z

    goto/16 :goto_30

    .line 1374
    :cond_c7
    if-ne v2, v6, :cond_d3

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByAccessControlChord:Z

    if-eqz v5, :cond_d3

    .line 1376
    if-nez v0, :cond_30

    .line 1377
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByAccessControlChord:Z

    goto/16 :goto_30

    .line 1381
    :cond_d3
    const/16 v5, 0xf4

    if-ne v2, v5, :cond_e1

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyConsumedByAccessControlChord:Z

    if-eqz v5, :cond_e1

    .line 1383
    if-nez v0, :cond_30

    .line 1384
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCameraRecordKeyConsumedByAccessControlChord:Z

    goto/16 :goto_30

    .line 1390
    :cond_e1
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v5

    if-eqz v5, :cond_105

    and-int/lit16 v5, v1, 0x400

    if-nez v5, :cond_105

    .line 1391
    if-ne v2, v6, :cond_f7

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByFactoryTestChord:Z

    if-eqz v5, :cond_f7

    .line 1393
    if-nez v0, :cond_30

    .line 1394
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerKeyConsumedByFactoryTestChord:Z

    goto/16 :goto_30

    .line 1398
    :cond_f7
    const/16 v5, 0x108

    if-ne v2, v5, :cond_105

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyConsumedByFactoryTestChord:Z

    if-eqz v5, :cond_105

    .line 1400
    if-nez v0, :cond_30

    .line 1401
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mWiFiProtectedSetupKeyConsumedByFactoryTestChord:Z

    goto/16 :goto_30

    :cond_105
    move v3, v4

    .line 1407
    goto/16 :goto_30
.end method

.method public isCoverOpen()Z
    .registers 2

    .prologue
    .line 2145
    iget v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoverState:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method isDeviceProvisioned()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1814
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
    .line 1832
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    return v0
.end method

.method public isEasyModeEnabled()Z
    .registers 2

    .prologue
    .line 1826
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    return v0
.end method

.method public isEnableAccessControl()Z
    .registers 2

    .prologue
    .line 2577
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    return v0
.end method

.method public isEndCallKeyRequested(Landroid/content/Context;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 4720
    const/4 v0, 0x0

    .line 4721
    .local v0, "bRet":Z
    invoke-static {p1}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasNumericKeyboard(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSystemKeyEventRequested(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 4723
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v1, :cond_19

    .line 4724
    const-string v1, "SamsungWindowManager"

    const-string v2, "isEndCallKeyRequested = true"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4725
    :cond_19
    const/4 v0, 0x1

    .line 4727
    :cond_1a
    return v0
.end method

.method public isGloveModeEnabled()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2268
    iget v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mGloveState:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isGoHomeOnEndCallKey(Landroid/content/Context;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 4731
    const/4 v0, 0x0

    .line 4732
    .local v0, "bRet":Z
    invoke-static {p1}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasNumericKeyboard(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 4733
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v1, :cond_12

    .line 4734
    const-string v1, "SamsungWindowManager"

    const-string v2, "Launch Home! isGoHomeOnEndCallKey "

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4736
    :cond_12
    const/4 v0, 0x1

    .line 4738
    :cond_13
    return v0
.end method

.method public isHomeKeyDoubleClickUseRecent()Z
    .registers 2

    .prologue
    .line 4191
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyDoubleClickUseRecent:Z

    return v0
.end method

.method public isKidsModeEnabled()Z
    .registers 2

    .prologue
    .line 1820
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsKidsModeEnabled:Z

    return v0
.end method

.method public isRingingInDualMode()Z
    .registers 7

    .prologue
    .line 4617
    const/4 v1, 0x0

    .line 4619
    .local v1, "isRinging":Z
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isDualSIMMode()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 4620
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4622
    .local v2, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_18

    .line 4623
    :try_start_d
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v1

    .line 4624
    const-string v4, "SamsungWindowManager"

    const-string v5, "CDMA call ringing in dual mode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_18} :catch_2c

    .line 4630
    :cond_18
    :goto_18
    if-nez v1, :cond_2b

    .line 4631
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getTelephonyService2()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 4633
    .local v3, "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_2b

    .line 4634
    :try_start_20
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v1

    .line 4635
    const-string v4, "SamsungWindowManager"

    const-string v5, "GSM call ringing in dual mode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2b} :catch_35

    .line 4642
    .end local v2    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    .end local v3    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    :cond_2b
    :goto_2b
    return v1

    .line 4626
    .restart local v2    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :catch_2c
    move-exception v0

    .line 4627
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v4, "SamsungWindowManager"

    const-string v5, "RemoteException from getTelephonyService()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18

    .line 4637
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v3    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    :catch_35
    move-exception v0

    .line 4638
    .restart local v0    # "ex":Landroid/os/RemoteException;
    const-string v4, "SamsungWindowManager"

    const-string v5, "RemoteException from getTelephonyService2()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b
.end method

.method public isSideSyncPresentationRunning()Z
    .registers 2

    .prologue
    .line 4560
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    return v0
.end method

.method public isStatusBarHideOnNormalScreen()Z
    .registers 2

    .prologue
    .line 2005
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarHideOnNormalScreen:Z

    return v0
.end method

.method public isStatusBarHidingOnFullScreen()Z
    .registers 2

    .prologue
    .line 1974
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarHidingOnFullScreen:Z

    return v0
.end method

.method public isStatusBarShowOnFullScreen()Z
    .registers 2

    .prologue
    .line 1982
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarShowOnFullScreen:Z

    return v0
.end method

.method public isSupportHomeDoubleClick()Z
    .registers 2

    .prologue
    .line 4187
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeDoubleClickBehavior:Z

    return v0
.end method

.method public isSystemKeyEventRequested(I)Z
    .registers 3
    .param p1, "keyCode"    # I

    .prologue
    .line 3182
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
    .line 3178
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method isVoIPRinging()Z
    .registers 6

    .prologue
    .line 1713
    const/4 v1, 0x0

    .line 1715
    .local v1, "isVoIPRinging":Z
    :try_start_1
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v2

    .line 1716
    .local v2, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-eqz v2, :cond_c

    .line 1717
    invoke-interface {v2}, Landroid/os/IVoIPInterface;->isVoIPRinging()Z

    move-result v1

    .line 1724
    .end local v2    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :goto_b
    return v1

    .line 1719
    .restart local v2    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :cond_c
    const-string v3, "SamsungWindowManager"

    const-string v4, "Unable to find IVoIPInterface interface"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_13} :catch_14

    goto :goto_b

    .line 1721
    .end local v2    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :catch_14
    move-exception v0

    .line 1722
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "SamsungWindowManager"

    const-string v4, "RemoteException from getVoIPInterfaceService()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public isZoomRingKeyEvent(II)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "scanCode"    # I

    .prologue
    .line 4535
    const/16 v0, 0xa8

    if-ne p1, v0, :cond_8

    const/16 v0, 0x225

    if-eq p2, v0, :cond_10

    :cond_8
    const/16 v0, 0xa9

    if-ne p1, v0, :cond_12

    const/16 v0, 0x226

    if-ne p2, v0, :cond_12

    .line 4537
    :cond_10
    const/4 v0, 0x1

    .line 4539
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method launchHome()V
    .registers 3

    .prologue
    .line 4523
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_14

    .line 4526
    :goto_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const-string v1, "homekey"

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->closeSystemWindows(Ljava/lang/String;)V

    .line 4527
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->startHome()V

    .line 4528
    return-void

    .line 4524
    :catch_14
    move-exception v0

    goto :goto_7
.end method

.method public launchingGamekey(Z)Z
    .registers 10
    .param p1, "keyguardOn"    # Z

    .prologue
    const/4 v4, 0x0

    .line 4784
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->endCallByGamekey()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 4785
    const/4 v4, 0x1

    .line 4809
    :cond_8
    :goto_8
    return v4

    .line 4786
    :cond_9
    if-nez p1, :cond_8

    .line 4791
    const-string v1, "com.sec.game.sga"

    .line 4792
    .local v1, "gamePkg":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "samsungapps://ProductDetail/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4794
    .local v3, "pkgUri":Ljava/lang/String;
    const/4 v2, 0x0

    .line 4797
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_21
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_21 .. :try_end_2b} :catch_32

    move-result-object v2

    .line 4802
    :cond_2c
    :goto_2c
    if-eqz v2, :cond_50

    .line 4803
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->startSGA(Ljava/lang/String;)V

    goto :goto_8

    .line 4798
    :catch_32
    move-exception v0

    .line 4799
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v5, :cond_2c

    const-string v5, "SamsungWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not exist. so try to download the SGA apps."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 4805
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_50
    sget-boolean v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v5, :cond_5b

    const-string v5, "SamsungWindowManager"

    const-string v6, "SGA is not installed. so you are moving to Samsung apps."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4806
    :cond_5b
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->downloadForSGA(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public notifyCoverSwitchChanged(JZ)V
    .registers 12
    .param p1, "whenNanos"    # J
    .param p3, "coverOpen"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2109
    if-eqz p3, :cond_a

    move v3, v4

    .line 2110
    .local v3, "newCoverState":I
    :goto_5
    iget v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoverState:I

    if-ne v3, v6, :cond_c

    .line 2142
    :goto_9
    return-void

    .end local v3    # "newCoverState":I
    :cond_a
    move v3, v5

    .line 2109
    goto :goto_5

    .line 2114
    .restart local v3    # "newCoverState":I
    :cond_c
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getTypeOfCover()I

    move-result v1

    .line 2115
    .local v1, "coverType":I
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getColorOfCover()I

    move-result v0

    .line 2116
    .local v0, "coverColor":I
    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-nez v6, :cond_bc

    move v2, v4

    .line 2118
    .local v2, "isBoot":Z
    :goto_1b
    iput v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoverState:I

    .line 2119
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    iget v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoverState:I

    if-nez v7, :cond_bf

    :goto_23
    invoke-virtual {v6, v4}, Landroid/os/PowerManager;->updateCoverState(Z)V

    .line 2121
    sget-boolean v4, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_58

    .line 2122
    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyCoverSwitchChanged : mCoverState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoverState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", coverType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", coverColor = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    :cond_58
    invoke-direct {p0, p3, v1, v0, v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->updateSViewCoverState(ZIIZ)V

    .line 2127
    if-eqz p3, :cond_73

    .line 2129
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v4

    if-eqz v4, :cond_73

    .line 2130
    sget-boolean v4, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_6e

    const-string v4, "SamsungWindowManager"

    const-string v5, "set wakeup reason by cover"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2131
    :cond_6e
    const/16 v4, 0x3ec

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->setReasonOfScreenOn(I)V

    .line 2135
    :cond_73
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoverOpenedIntent:Landroid/content/Intent;

    const-string v5, "coverOpen"

    invoke-virtual {v4, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2136
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoverOpenedIntent:Landroid/content/Intent;

    const-string v5, "coverType"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2137
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoverOpenedIntent:Landroid/content/Intent;

    const-string v5, "coverColor"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2139
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoverOpenedIntent:Landroid/content/Intent;

    const-string v5, "isBoot"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2140
    sget-boolean v4, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_b1

    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cover open = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , broadcasted."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    :cond_b1
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCoverOpenedIntent:Landroid/content/Intent;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_9

    .end local v2    # "isBoot":Z
    :cond_bc
    move v2, v5

    .line 2116
    goto/16 :goto_1b

    .restart local v2    # "isBoot":Z
    :cond_bf
    move v4, v5

    .line 2119
    goto/16 :goto_23
.end method

.method public notifyGloveSwitchChanged(JZ)V
    .registers 8
    .param p1, "whenNanos"    # J
    .param p3, "gloveEnable"    # Z

    .prologue
    .line 2255
    if-eqz p3, :cond_8

    const/4 v0, 0x1

    .line 2256
    .local v0, "newGloveState":I
    :goto_3
    iget v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mGloveState:I

    if-ne v0, v1, :cond_a

    .line 2265
    :goto_7
    return-void

    .line 2255
    .end local v0    # "newGloveState":I
    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    .line 2260
    .restart local v0    # "newGloveState":I
    :cond_a
    iput v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mGloveState:I

    .line 2262
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mGloveModeIntent:Landroid/content/Intent;

    const-string v2, "gloveEnable"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2263
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

    .line 2264
    :cond_35
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mGloveModeIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_7
.end method

.method public notifyHandSwitchChanged(JI)V
    .registers 10
    .param p1, "whenNanos"    # J
    .param p3, "handgripState"    # I

    .prologue
    .line 2291
    move v1, p3

    .line 2292
    .local v1, "mValue":I
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "onehand_switch_state"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2295
    .local v0, "mPrevious":I
    if-eq v0, v1, :cond_42

    .line 2297
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "onehand_switch_state"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2298
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_42

    const-string v2, "SamsungWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handgrip. Previous = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mValue."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    :cond_42
    return-void
.end method

.method public notifyLidSwitchChanged(JZ)V
    .registers 9
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .prologue
    .line 2274
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasFolderTypeFeature(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 2275
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlipFolderOpenedIntent:Landroid/content/Intent;

    const-string v3, "flipOpen"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2276
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_31

    const-string v2, "SamsungWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Flip Folder open = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , broadcasted."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    :cond_31
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFlipFolderOpenedIntent:Landroid/content/Intent;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2279
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2280
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p3, :cond_6a

    const-string v2, "folder_open_sound"

    :goto_44
    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2281
    .local v1, "soundPath":Ljava/lang/String;
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_64

    const-string v2, "SamsungWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "folder soundPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    :cond_64
    if-eqz v1, :cond_69

    .line 2283
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->playSound(Ljava/lang/String;)V

    .line 2286
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "soundPath":Ljava/lang/String;
    :cond_69
    return-void

    .line 2280
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    :cond_6a
    const-string v2, "folder_close_sound"

    goto :goto_44
.end method

.method public notifyOCRDockStateChanged(JZ)V
    .registers 7
    .param p1, "whenNanos"    # J
    .param p3, "ocrDockAttached"    # Z

    .prologue
    .line 2098
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mOcrDockIntent:Landroid/content/Intent;

    const-string v1, "ocrAttached"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2099
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mOcrDockIntent:Landroid/content/Intent;

    const-string v1, "isScreenOn"

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOnFully()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2100
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mOcrDockIntent:Landroid/content/Intent;

    const-string v1, "isKeyguardLocked"

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2101
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_43

    const-string v0, "SamsungWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OCR = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , broadcasted."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    :cond_43
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mOcrDockIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2103
    return-void
.end method

.method public notifyPenSwitchChanged(JZ)V
    .registers 16
    .param p1, "whenNanos"    # J
    .param p3, "penInsert"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2032
    if-eqz p3, :cond_33

    move v2, v6

    .line 2033
    .local v2, "newPenState":I
    :goto_5
    const/4 v3, 0x1

    .line 2034
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

    .line 2035
    :cond_2e
    iget v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenState:I

    if-ne v2, v8, :cond_35

    .line 2093
    :goto_32
    return-void

    .end local v2    # "newPenState":I
    .end local v3    # "playSound":Z
    :cond_33
    move v2, v7

    .line 2032
    goto :goto_5

    .line 2037
    .restart local v2    # "newPenState":I
    .restart local v3    # "playSound":Z
    :cond_35
    iget v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenState:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3b

    .line 2038
    const/4 v3, 0x0

    .line 2040
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

    .line 2042
    :cond_57
    iput v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenState:I

    .line 2044
    const/16 v8, 0x2c

    new-array v0, v8, [B

    fill-array-data v0, :array_12e

    .line 2054
    .local v0, "attach_noti_ivt":[B
    const/16 v8, 0x12

    new-array v1, v8, [B

    fill-array-data v1, :array_148

    .line 2061
    .local v1, "detach_noti_ivt":[B
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "pen_detachment_notification"

    const/4 v10, -0x2

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 2064
    .local v4, "sound":Ljava/lang/String;
    if-eqz v4, :cond_f1

    const-string v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2066
    .local v5, "soundPath":[Ljava/lang/String;
    :goto_7c
    if-eqz p3, :cond_f3

    .line 2068
    if-eqz v3, :cond_8b

    if-eqz v4, :cond_8b

    :try_start_82
    array-length v8, v5

    if-le v8, v6, :cond_8b

    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->playSound(Ljava/lang/String;)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_8b} :catch_12a

    .line 2071
    :cond_8b
    :goto_8b
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v9}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v9

    invoke-virtual {v8, v0, v9}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    .line 2086
    :goto_96
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const-string v9, "penInsert"

    invoke-virtual {v8, v9, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2087
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const-string v9, "isScreenOn"

    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOnFully()Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2088
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const-string v9, "isKeyguardLocked"

    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2090
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const-string v9, "isBoot"

    const-wide/16 v10, 0x0

    cmp-long v10, p1, v10

    if-nez v10, :cond_126

    :goto_c1
    invoke-virtual {v8, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2091
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

    .line 2092
    :cond_e6
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_32

    .line 2064
    .end local v5    # "soundPath":[Ljava/lang/String;
    :cond_f1
    const/4 v5, 0x0

    goto :goto_7c

    .line 2073
    .restart local v5    # "soundPath":[Ljava/lang/String;
    :cond_f3
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v8

    if-eqz v8, :cond_11c

    .line 2074
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/16 v9, 0x1a

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->onWakeKeyWhenKeyguardShowingTq(I)V

    .line 2080
    :goto_102
    if-eqz v3, :cond_10f

    if-eqz v4, :cond_10f

    :try_start_106
    array-length v8, v5

    if-le v8, v6, :cond_10f

    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->playSound(Ljava/lang/String;)V
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_10f} :catch_128

    .line 2083
    :cond_10f
    :goto_10f
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v9}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v9

    invoke-virtual {v8, v1, v9}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    goto/16 :goto_96

    .line 2076
    :cond_11c
    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Landroid/os/PowerManager;->wakeUp(J)V

    goto :goto_102

    :cond_126
    move v6, v7

    .line 2090
    goto :goto_c1

    .line 2081
    :catch_128
    move-exception v8

    goto :goto_10f

    .line 2069
    :catch_12a
    move-exception v8

    goto/16 :goto_8b

    .line 2044
    nop

    :array_12e
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

    .line 2054
    :array_148
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
    .line 936
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 937
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isCameraOnTop()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsSleepWithCameraOnTop:Z

    .line 938
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenOnReason:I

    .line 946
    :cond_f
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    if-nez v0, :cond_20

    .line 948
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mOrientationListenerForPenGesture:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;->disable()V

    .line 951
    :cond_20
    return-void
.end method

.method public onScreenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .registers 4
    .param p1, "screenOnListener"    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .prologue
    const/4 v1, 0x0

    .line 956
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 960
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->wakeUpOnHomeIfNeeded()V

    .line 965
    :cond_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    if-nez v0, :cond_1b

    .line 967
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mOrientationListenerForPenGesture:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;->enable()V

    .line 972
    :cond_1b
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTorchlightOn:Z

    if-eqz v0, :cond_22

    .line 973
    invoke-virtual {p0, v1, v1, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->processTorchlight(IZZ)V

    .line 978
    :cond_22
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSViewCoverManager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    if-eqz v0, :cond_2b

    .line 979
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSViewCoverManager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->releaseCoverOpenWakeLock()V

    .line 982
    :cond_2b
    return-void
.end method

.method public performCPUCoreNumBoost()V
    .registers 8

    .prologue
    .line 4568
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCPUCoreNumBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_26

    .line 4569
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "KEY_CAMERA_LAUNCH_BOOST"

    const/16 v3, 0xe

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCPUCoreNumBooster:Landroid/os/DVFSHelper;

    .line 4571
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCPUCoreNumBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v6

    .line 4572
    .local v6, "coreTable":[I
    if-eqz v6, :cond_26

    .line 4573
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCPUCoreNumBooster:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    const/4 v2, 0x0

    aget v2, v6, v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 4576
    .end local v6    # "coreTable":[I
    :cond_26
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCPUCoreNumBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_31

    .line 4577
    sget-object v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mCPUCoreNumBooster:Landroid/os/DVFSHelper;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 4579
    :cond_31
    return-void
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .registers 16
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "effectId"    # I
    .param p3, "always"    # Z

    .prologue
    const/16 v11, 0x9

    const-wide/16 v9, 0x32

    const/4 v8, -0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2305
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v6}, Landroid/os/SystemVibrator;->hasVibrator()Z

    move-result v6

    if-nez v6, :cond_10

    .line 2416
    :cond_f
    :goto_f
    return v5

    .line 2308
    :cond_10
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "haptic_feedback_enabled"

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-nez v6, :cond_7e

    move v2, v4

    .line 2311
    .local v2, "hapticsDisabled":Z
    :goto_1f
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "psm_switch"

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v4, :cond_80

    move v0, v4

    .line 2314
    .local v0, "PowerSavingModeEnabled":Z
    :goto_2e
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "psm_haptic_feedback"

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v4, :cond_82

    move v1, v4

    .line 2318
    .local v1, "TurnOffHapticFeedbackEnabled":Z
    :goto_3d
    if-nez p3, :cond_84

    if-eqz v0, :cond_43

    if-nez v1, :cond_4d

    :cond_43
    if-nez v2, :cond_4d

    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v6

    if-eqz v6, :cond_84

    .line 2321
    :cond_4d
    sget-boolean v4, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_f

    .line 2322
    const-string v4, "SamsungWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "haptic disabled by policy : hapticsDisabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " PowerSavingModeEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " TurnOffHapticFeedbackEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .end local v0    # "PowerSavingModeEnabled":Z
    .end local v1    # "TurnOffHapticFeedbackEnabled":Z
    .end local v2    # "hapticsDisabled":Z
    :cond_7e
    move v2, v5

    .line 2308
    goto :goto_1f

    .restart local v2    # "hapticsDisabled":Z
    :cond_80
    move v0, v5

    .line 2311
    goto :goto_2e

    .restart local v0    # "PowerSavingModeEnabled":Z
    :cond_82
    move v1, v5

    .line 2314
    goto :goto_3d

    .line 2329
    .restart local v1    # "TurnOffHapticFeedbackEnabled":Z
    :cond_84
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isUseVibetonz()Z

    move-result v6

    if-eqz v6, :cond_d2

    .line 2331
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v6, :cond_b5

    .line 2332
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHaptics:Lcom/immersion/android/haptics/HapticFeedbackManager;

    invoke-virtual {v6}, Lcom/immersion/android/haptics/HapticFeedbackManager;->canPlayHDEffects()Z

    move-result v6

    if-eqz v6, :cond_b5

    const/16 v6, 0x4e20

    if-lt p2, v6, :cond_9e

    const/16 v6, 0x6d60

    if-le p2, v6, :cond_ad

    :cond_9e
    if-eqz p2, :cond_ad

    if-eq p2, v4, :cond_ad

    const/4 v6, 0x3

    if-eq p2, v6, :cond_ad

    const/16 v6, 0x2710

    if-eq p2, v6, :cond_ad

    const/16 v6, 0x2711

    if-ne p2, v6, :cond_b5

    .line 2341
    :cond_ad
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHaptics:Lcom/immersion/android/haptics/HapticFeedbackManager;

    invoke-virtual {v4, p1, p2, p3}, Lcom/immersion/android/haptics/HapticFeedbackManager;->performHapticFeedback(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    move-result v5

    goto/16 :goto_f

    .line 2345
    :cond_b5
    sparse-switch p2, :sswitch_data_104

    .line 2363
    if-lt p2, v11, :cond_f

    const/16 v6, 0x16

    if-gt p2, v6, :cond_f

    .line 2365
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    sget-object v6, Landroid/os/SystemVibrator$MagnitudeType;->TouchMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v5, p2, v6}, Landroid/os/SystemVibrator;->vibrateImmVibe(ILandroid/os/SystemVibrator$MagnitudeType;)V

    move v5, v4

    .line 2367
    goto/16 :goto_f

    .line 2358
    :sswitch_c8
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    sget-object v6, Landroid/os/SystemVibrator$MagnitudeType;->TouchMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v5, v11, v6}, Landroid/os/SystemVibrator;->vibrateImmVibe(ILandroid/os/SystemVibrator$MagnitudeType;)V

    move v5, v4

    .line 2360
    goto/16 :goto_f

    .line 2372
    :cond_d2
    new-array v3, v4, [J

    .line 2373
    .local v3, "pattern":[J
    sparse-switch p2, :sswitch_data_12e

    goto/16 :goto_f

    .line 2379
    :sswitch_d9
    aput-wide v9, v3, v5

    .line 2408
    :goto_db
    array-length v6, v3

    if-ne v6, v4, :cond_fd

    .line 2410
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    aget-wide v7, v3, v5

    invoke-virtual {v6, v7, v8}, Landroid/os/SystemVibrator;->vibrate(J)V

    :goto_e5
    move v5, v4

    .line 2416
    goto/16 :goto_f

    .line 2384
    :sswitch_e8
    aput-wide v9, v3, v5

    goto :goto_db

    .line 2388
    :sswitch_eb
    const-wide/16 v6, 0x64

    aput-wide v6, v3, v5

    goto :goto_db

    .line 2392
    :sswitch_f0
    const-wide/16 v6, 0x1f4

    aput-wide v6, v3, v5

    goto :goto_db

    .line 2399
    :sswitch_f5
    const-wide/16 v6, 0x5dc

    aput-wide v6, v3, v5

    goto :goto_db

    .line 2403
    :sswitch_fa
    aput-wide v9, v3, v5

    goto :goto_db

    .line 2413
    :cond_fd
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/SystemVibrator;

    const/4 v6, -0x1

    invoke-virtual {v5, v3, v6}, Landroid/os/SystemVibrator;->vibrate([JI)V

    goto :goto_e5

    .line 2345
    :sswitch_data_104
    .sparse-switch
        0x0 -> :sswitch_c8
        0x1 -> :sswitch_c8
        0x3 -> :sswitch_c8
        0x2710 -> :sswitch_c8
        0x2711 -> :sswitch_c8
        0x61a8 -> :sswitch_c8
        0x6220 -> :sswitch_c8
        0x622a -> :sswitch_c8
        0x6234 -> :sswitch_c8
        0x623e -> :sswitch_c8
    .end sparse-switch

    .line 2373
    :sswitch_data_12e
    .sparse-switch
        0x0 -> :sswitch_d9
        0x1 -> :sswitch_d9
        0x3 -> :sswitch_d9
        0x9 -> :sswitch_e8
        0xa -> :sswitch_eb
        0xc -> :sswitch_f0
        0xd -> :sswitch_f5
        0xe -> :sswitch_fa
        0x10 -> :sswitch_f5
        0x11 -> :sswitch_f5
        0x12 -> :sswitch_f5
        0x2710 -> :sswitch_d9
        0x2711 -> :sswitch_d9
    .end sparse-switch
.end method

.method public performShowStatusBarOnFullScreen(Z)V
    .registers 4
    .param p1, "show"    # Z

    .prologue
    .line 1999
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarWindowController:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isTopFullScreen()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2000
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarWindowController:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->performShowStatusBarOnFullScreen(ZZ)V

    .line 2002
    :cond_12
    return-void
.end method

.method public performSystemKeyFeedback(Landroid/view/KeyEvent;ZZ)V
    .registers 14
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "isWakeKey"    # Z
    .param p3, "isScreenOn"    # Z

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x4002

    const/16 v7, 0xe

    const/4 v4, 0x0

    .line 2887
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_41

    const/4 v1, 0x1

    .line 2888
    .local v1, "down":Z
    :goto_d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    .line 2889
    .local v0, "canceled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 2890
    .local v2, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    .line 2893
    .local v3, "repeatCount":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_40

    if-eqz v1, :cond_40

    if-nez v3, :cond_40

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isCoverOpen()Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v5

    if-eqz v5, :cond_43

    const-string v5, "SPC_Remote_Controller"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 2957
    :cond_40
    :goto_40
    return-void

    .end local v0    # "canceled":Z
    .end local v1    # "down":Z
    .end local v2    # "keyCode":I
    .end local v3    # "repeatCount":I
    :cond_41
    move v1, v4

    .line 2887
    goto :goto_d

    .line 2901
    .restart local v0    # "canceled":Z
    .restart local v1    # "down":Z
    .restart local v2    # "keyCode":I
    .restart local v3    # "repeatCount":I
    :cond_43
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasFolderTypeFeature(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_53

    if-eqz v1, :cond_53

    invoke-direct {p0, v2, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->checkFolderKeyFeedback(ILandroid/view/KeyEvent;)Z

    move-result v5

    if-nez v5, :cond_40

    .line 2907
    :cond_53
    sparse-switch v2, :sswitch_data_d4

    goto :goto_40

    .line 2909
    :sswitch_57
    if-nez p2, :cond_67

    .line 2910
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isUseVibetonz()Z

    move-result v5

    if-eqz v5, :cond_64

    if-eqz p3, :cond_64

    .line 2911
    invoke-virtual {p0, v9, v7, v4}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2913
    :cond_64
    invoke-direct {p0, p3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->playSoundEffect(Z)V

    .line 2915
    :cond_67
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasFolderTypeFeature(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v5

    if-eqz v5, :cond_40

    if-eqz p3, :cond_40

    .line 2917
    invoke-virtual {p0, v9, v7, v4}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2918
    invoke-direct {p0, p3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->playSoundEffect(Z)V

    goto :goto_40

    .line 2925
    :sswitch_7e
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v5

    if-eqz v5, :cond_8e

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isCameraOnTop()Z

    move-result v5

    if-eqz v5, :cond_8e

    const/16 v5, 0x52

    if-eq v2, v5, :cond_40

    .line 2928
    :cond_8e
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isUseVibetonz()Z

    move-result v5

    if-eqz v5, :cond_a5

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasHardMenuBackKey()Z

    move-result v5

    if-nez v5, :cond_a5

    if-eqz p3, :cond_a5

    .line 2931
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v5

    if-eq v5, v8, :cond_a5

    .line 2932
    invoke-virtual {p0, v9, v7, v4}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2937
    :cond_a5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v4

    if-eq v4, v8, :cond_40

    .line 2938
    invoke-direct {p0, p3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->playSoundEffect(Z)V

    goto :goto_40

    .line 2943
    :sswitch_af
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasQwertyKeyboard(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_40

    .line 2944
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isUseVibetonz()Z

    move-result v5

    if-eqz v5, :cond_c8

    if-eqz p3, :cond_c8

    .line 2946
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v5

    if-eq v5, v8, :cond_c8

    .line 2947
    invoke-virtual {p0, v9, v7, v4}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2951
    :cond_c8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v4

    if-eq v4, v8, :cond_40

    .line 2952
    invoke-direct {p0, p3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->playSoundEffect(Z)V

    goto/16 :goto_40

    .line 2907
    nop

    :sswitch_data_d4
    .sparse-switch
        0x3 -> :sswitch_57
        0x4 -> :sswitch_7e
        0x52 -> :sswitch_7e
        0x54 -> :sswitch_af
        0xbb -> :sswitch_7e
    .end sparse-switch
.end method

.method public processTorchlight(IZZ)V
    .registers 8
    .param p1, "keyCode"    # I
    .param p2, "down"    # Z
    .param p3, "isScreenOn"    # Z

    .prologue
    .line 4649
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTorchlightEnabled:Z

    if-eqz v0, :cond_1e

    if-nez p3, :cond_1e

    .line 4650
    const/16 v0, 0x18

    if-ne p1, v0, :cond_27

    .line 4651
    if-eqz p2, :cond_1f

    .line 4652
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4653
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4665
    :cond_1e
    :goto_1e
    return-void

    .line 4655
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1e

    .line 4658
    :cond_27
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4659
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTorchlightOn:Z

    if-eqz v0, :cond_1e

    .line 4660
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->TorchModeFlashSet(I)V

    .line 4661
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1e
.end method

.method public requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "request"    # Z

    .prologue
    .line 3174
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method public sendSystemKeyToSideSync(Landroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 4544
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v1

    if-nez v1, :cond_54

    .line 4546
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

    .line 4548
    :cond_2a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4549
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.sidesync.source"

    const-string v2, "com.sec.android.sidesync.source.WimpService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4550
    const-string v1, "com.sec.android.intent.action.SYSTEM_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4551
    const-string v1, "KEYCODE"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4552
    const-string v1, "ACTION"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4553
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 4554
    const/4 v1, 0x1

    .line 4556
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_53
    return v1

    :cond_54
    const/4 v1, 0x0

    goto :goto_53
.end method

.method public setBlockCollapseStatusBar(Z)V
    .registers 2
    .param p1, "block"    # Z

    .prologue
    .line 2026
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBlockCollapseStatusBar:Z

    .line 2027
    return-void
.end method

.method public setFocusWindowForSPen(Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 5
    .param p1, "focusWindow"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 592
    iget v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSpenUspFeatureLevel:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_19

    .line 593
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "spengestureservice"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/smartclip/SpenGestureManager;

    .line 594
    .local v0, "SpenManager":Lcom/samsung/android/smartclip/SpenGestureManager;
    if-eqz p1, :cond_18

    .line 595
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/smartclip/SpenGestureManager;->setFocusWindow(I)V

    .line 604
    .end local v0    # "SpenManager":Lcom/samsung/android/smartclip/SpenGestureManager;
    :cond_18
    :goto_18
    return-void

    .line 597
    :cond_19
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHasSPenUspFeature:Z

    if-eqz v1, :cond_18

    .line 598
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSPenGestureView:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    if-eqz v1, :cond_18

    .line 599
    if-eqz p1, :cond_18

    .line 600
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSPenGestureView:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->setFocusedWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    goto :goto_18
.end method

.method public setHomeDownEventSent()V
    .registers 2

    .prologue
    .line 4154
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyDoubleClickConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSupportHomeDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4155
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyDoubleClickConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HomeKeyDoubleClickConcept;->setHomeDownEventSent()V

    .line 4157
    :cond_f
    return-void
.end method

.method public setPropertiesToStatusBarWindowController(ZZ)V
    .registers 4
    .param p1, "topIsFullScreen"    # Z
    .param p2, "openByNotification"    # Z

    .prologue
    .line 1968
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarWindowController:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    if-eqz v0, :cond_9

    .line 1969
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarWindowController:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->setProperties(ZZ)V

    .line 1971
    :cond_9
    return-void
.end method

.method public setReasonOfScreenOn(I)V
    .registers 2
    .param p1, "reason"    # I

    .prologue
    .line 4531
    iput p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenOnReason:I

    .line 4532
    return-void
.end method

.method public setRotationLw(I)V
    .registers 5
    .param p1, "rotation"    # I

    .prologue
    .line 985
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

    .line 987
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    if-nez v0, :cond_27

    .line 989
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->updateWacomOffset(I)V

    .line 992
    :cond_27
    return-void
.end method

.method public setStatusBarHideOnNormalScreen(ZZ)V
    .registers 5
    .param p1, "hide"    # Z
    .param p2, "relayout"    # Z

    .prologue
    .line 2009
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarHideOnNormalScreen:Z

    if-eq v0, p1, :cond_12

    .line 2010
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarHideOnNormalScreen:Z

    .line 2011
    if-eqz p2, :cond_12

    .line 2012
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$6;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$6;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2019
    :cond_12
    return-void
.end method

.method public setStatusBarHidingStateOnFullScreen(Z)V
    .registers 2
    .param p1, "hiding"    # Z

    .prologue
    .line 1978
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarHidingOnFullScreen:Z

    .line 1979
    return-void
.end method

.method public setStatusBarShowOnFullScreen(ZZ)V
    .registers 5
    .param p1, "show"    # Z
    .param p2, "relayout"    # Z

    .prologue
    .line 1986
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarShowOnFullScreen:Z

    if-eq v0, p1, :cond_12

    .line 1987
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarShowOnFullScreen:Z

    .line 1988
    if-eqz p2, :cond_12

    .line 1989
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$5;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$5;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1996
    :cond_12
    return-void
.end method

.method public setTransparentStatusBar(Z)V
    .registers 7
    .param p1, "set"    # Z

    .prologue
    .line 1794
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mLastStatusBarTransparent:Z

    if-ne v2, p1, :cond_5

    .line 1810
    :cond_4
    :goto_4
    return-void

    .line 1798
    :cond_5
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mLastStatusBarTransparent:Z

    .line 1801
    :try_start_7
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 1802
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_4

    .line 1803
    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBarService;->transparentizeStatusBar(Z)V

    .line 1804
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "SamsungWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTransparentStatusBar : set = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_2c} :catch_2d

    goto :goto_4

    .line 1806
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_2d
    move-exception v0

    .line 1808
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_4
.end method

.method public systemReady()V
    .registers 3

    .prologue
    .line 766
    new-instance v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSViewCoverManager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    .line 767
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSViewCoverManager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->setKeyguardMediator(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 768
    return-void
.end method

.method public updateHomeDoubleClickBehavior()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4195
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->intentType()Z

    move-result v0

    if-eqz v0, :cond_b

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeDoubleClickBehavior:Z

    goto :goto_21

    :cond_b
    iget v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mDoubleTapBehavior:I

    if-ne v0, v2, :cond_2b

    .line 4196
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mVoiceTalkComponent:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isComponentAvailable(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSVoiceComponent:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isComponentAvailable(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 4198
    :cond_1f
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeDoubleClickBehavior:Z

    .line 4212
    :goto_21
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeKeyDoubleClickUseRecent:Z

    if-eqz v0, :cond_27

    .line 4213
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeDoubleClickBehavior:Z

    .line 4215
    :cond_27
    return-void

    .line 4200
    :cond_28
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeDoubleClickBehavior:Z

    goto :goto_21

    .line 4202
    :cond_2b
    iget v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mDoubleTapBehavior:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3e

    .line 4203
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mAlwaysComponet:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isComponentAvailable(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 4204
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeDoubleClickBehavior:Z

    goto :goto_21

    .line 4206
    :cond_3b
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeDoubleClickBehavior:Z

    goto :goto_21

    .line 4209
    :cond_3e
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->intentType()Z

    move-result v0

    if-eqz v0, :cond_47

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeDoubleClickBehavior:Z

    goto :goto_21

    :cond_47
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHomeDoubleClickBehavior:Z

    goto :goto_21
.end method

.method public updateSettings()V
    .registers 18

    .prologue
    .line 839
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 840
    .local v12, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 842
    :try_start_d
    const-string v15, "double_tab_launch"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isVoiceTalkDefaultLaunch(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_119

    const/4 v13, 0x1

    :goto_1a
    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-static {v12, v15, v13, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 846
    .local v1, "doubleTapBehavior":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mDoubleTapBehavior:I

    if-eq v13, v1, :cond_2c

    .line 847
    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mDoubleTapBehavior:I

    .line 848
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->updateHomeDoubleClickBehavior()V

    .line 853
    const-string v13, "send_emergency_message"

    const/4 v15, 0x0

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-static {v12, v13, v15, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    if-eqz v13, :cond_11c

    const/4 v7, 0x1

    .line 855
    .local v7, "isSafetyAssuranceEnabled":Z
    :goto_3d
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    if-eq v13, v7, :cond_47

    .line 856
    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    .line 861
    :cond_47
    const-string v13, "access_control_use"

    const/4 v15, 0x0

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-static {v12, v13, v15, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    if-eqz v13, :cond_11f

    const/4 v10, 0x1

    .line 863
    .local v10, "isUseAccessControl":Z
    :goto_55
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    if-eq v13, v10, :cond_5f

    .line 864
    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    .line 867
    :cond_5f
    const-string v13, "access_control_enabled"

    const/4 v15, 0x0

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-static {v12, v13, v15, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    if-eqz v13, :cond_122

    const/4 v5, 0x1

    .line 869
    .local v5, "isEnabledAccessControl":Z
    :goto_6d
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    if-eq v13, v5, :cond_77

    .line 870
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    .line 875
    :cond_77
    const-string v13, "kids_home_mode"

    const/4 v15, 0x0

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-static {v12, v13, v15, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    if-eqz v13, :cond_125

    const/4 v6, 0x1

    .line 877
    .local v6, "isKidsMode":Z
    :goto_85
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsKidsModeEnabled:Z

    if-eq v13, v6, :cond_8f

    .line 878
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsKidsModeEnabled:Z

    .line 883
    :cond_8f
    const-string v13, "easy_mode_switch"

    const/4 v15, 0x0

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-static {v12, v13, v15, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    if-nez v13, :cond_128

    const/4 v3, 0x1

    .line 885
    .local v3, "isEasyMode":Z
    :goto_9d
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    if-eq v13, v3, :cond_a7

    .line 886
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    .line 891
    :cond_a7
    const-string v13, "edit_after_screen_capture"

    const/4 v15, 0x0

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-static {v12, v13, v15, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    if-eqz v13, :cond_12b

    const/4 v11, 0x1

    .line 893
    .local v11, "performEditAfterScreenCapture":Z
    :goto_b5
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    if-eq v13, v11, :cond_bf

    .line 894
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    .line 899
    :cond_bf
    const-string v13, "desk_home_screen_display"

    const/4 v15, 0x0

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-static {v12, v13, v15, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    if-eqz v13, :cond_12d

    const/4 v2, 0x1

    .line 901
    .local v2, "isDockHomeEnabled":Z
    :goto_cd
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    if-eq v13, v2, :cond_d7

    .line 902
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    .line 907
    :cond_d7
    const-string v13, "torchlight_enable"

    const/4 v15, 0x0

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-static {v12, v13, v15, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    if-eqz v13, :cond_12f

    const/4 v9, 0x1

    .line 909
    .local v9, "isTorchlightEnabled":Z
    :goto_e5
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTorchlightEnabled:Z

    if-eq v13, v9, :cond_ef

    .line 910
    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mTorchlightEnabled:Z

    .line 915
    :cond_ef
    const-string v13, "any_screen_enabled"

    const/4 v15, 0x0

    invoke-static {v12, v13, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_131

    const/4 v4, 0x1

    .line 917
    .local v4, "isEasyOneHandEnabled":Z
    :goto_f9
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mEasyOneHandEnabled:Z

    if-eq v13, v4, :cond_103

    .line 918
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mEasyOneHandEnabled:Z

    .line 923
    :cond_103
    const-string v13, "sidesync_source_presentation"

    const/4 v15, 0x0

    invoke-static {v12, v13, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_133

    const/4 v8, 0x1

    .line 926
    .local v8, "isSideSyncSourcePresentationActived":Z
    :goto_10d
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    if-eq v13, v8, :cond_117

    .line 927
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    .line 930
    :cond_117
    monitor-exit v14

    .line 931
    return-void

    .line 842
    .end local v1    # "doubleTapBehavior":I
    .end local v2    # "isDockHomeEnabled":Z
    .end local v3    # "isEasyMode":Z
    .end local v4    # "isEasyOneHandEnabled":Z
    .end local v5    # "isEnabledAccessControl":Z
    .end local v6    # "isKidsMode":Z
    .end local v7    # "isSafetyAssuranceEnabled":Z
    .end local v8    # "isSideSyncSourcePresentationActived":Z
    .end local v9    # "isTorchlightEnabled":Z
    .end local v10    # "isUseAccessControl":Z
    .end local v11    # "performEditAfterScreenCapture":Z
    :cond_119
    const/4 v13, 0x0

    goto/16 :goto_1a

    .line 853
    .restart local v1    # "doubleTapBehavior":I
    :cond_11c
    const/4 v7, 0x0

    goto/16 :goto_3d

    .line 861
    .restart local v7    # "isSafetyAssuranceEnabled":Z
    :cond_11f
    const/4 v10, 0x0

    goto/16 :goto_55

    .line 867
    .restart local v10    # "isUseAccessControl":Z
    :cond_122
    const/4 v5, 0x0

    goto/16 :goto_6d

    .line 875
    .restart local v5    # "isEnabledAccessControl":Z
    :cond_125
    const/4 v6, 0x0

    goto/16 :goto_85

    .line 883
    .restart local v6    # "isKidsMode":Z
    :cond_128
    const/4 v3, 0x0

    goto/16 :goto_9d

    .line 891
    .restart local v3    # "isEasyMode":Z
    :cond_12b
    const/4 v11, 0x0

    goto :goto_b5

    .line 899
    .restart local v11    # "performEditAfterScreenCapture":Z
    :cond_12d
    const/4 v2, 0x0

    goto :goto_cd

    .line 907
    .restart local v2    # "isDockHomeEnabled":Z
    :cond_12f
    const/4 v9, 0x0

    goto :goto_e5

    .line 915
    .restart local v9    # "isTorchlightEnabled":Z
    :cond_131
    const/4 v4, 0x0

    goto :goto_f9

    .line 923
    .restart local v4    # "isEasyOneHandEnabled":Z
    :cond_133
    const/4 v8, 0x0

    goto :goto_10d

    .line 930
    .end local v1    # "doubleTapBehavior":I
    .end local v2    # "isDockHomeEnabled":Z
    .end local v3    # "isEasyMode":Z
    .end local v4    # "isEasyOneHandEnabled":Z
    .end local v5    # "isEnabledAccessControl":Z
    .end local v6    # "isKidsMode":Z
    .end local v7    # "isSafetyAssuranceEnabled":Z
    .end local v9    # "isTorchlightEnabled":Z
    .end local v10    # "isUseAccessControl":Z
    .end local v11    # "performEditAfterScreenCapture":Z
    :catchall_135
    move-exception v13

    monitor-exit v14
    :try_end_137
    .catchall {:try_start_d .. :try_end_137} :catchall_135

    throw v13
.end method

.method public updateTopActivity(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 3186
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$HoldKeyConcept;->updateTopActivity(Landroid/content/ComponentName;)V

    .line 3187
    return-void
.end method
