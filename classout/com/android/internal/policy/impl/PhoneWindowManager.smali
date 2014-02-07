.class public Lcom/android/internal/policy/impl/PhoneWindowManager;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;
    }
.end annotation


# static fields
.field static final APPLICATION_MEDIA_OVERLAY_SUBLAYER:I = -0x1

.field static final APPLICATION_MEDIA_SUBLAYER:I = -0x2

.field static final APPLICATION_PANEL_SUBLAYER:I = 0x1

.field static final APPLICATION_SUB_PANEL_SUBLAYER:I = 0x2

.field static final APPLICATION_WRITINGBUDDY_SUBLAYER:I = 0x1

.field static final DEBUG:Z = false

.field static final DEBUG_INPUT:Z = false

.field static final DEBUG_LAYOUT:Z = false

.field static final DEBUG_STARTING_WINDOW:Z = false

.field private static final DISMISS_KEYGUARD_CONTINUE:I = 0x2

.field private static final DISMISS_KEYGUARD_NONE:I = 0x0

.field private static final DISMISS_KEYGUARD_START:I = 0x1

.field static final DOUBLE_TAP_HOME_NOTHING:I = 0x0

.field static final DOUBLE_TAP_HOME_RECENT_SYSTEM_UI:I = 0x1

.field static final ENABLE_CAR_DOCK_HOME_CAPTURE:Z = true

.field static final ENABLE_DESK_DOCK_HOME_CAPTURE:Z = true

.field static final ENABLE_MIRRORLINK_DOCK_HOME_CAPTURE:Z = true

.field private static final KEYGUARD_SCREENSHOT_CHORD_DELAY_MULTIPLIER:F = 2.5f

.field static final LONG_PRESS_HOME_ASSIST:I = 0x2

.field static final LONG_PRESS_HOME_GLOBAL_ACTION:I = 0x3

.field static final LONG_PRESS_HOME_NOTHING:I = 0x0

.field static final LONG_PRESS_HOME_RECENT_SYSTEM_UI:I = 0x1

.field static final LONG_PRESS_POWER_GLOBAL_ACTIONS:I = 0x1

.field static final LONG_PRESS_POWER_NOTHING:I = 0x0

.field static final LONG_PRESS_POWER_SHUT_OFF:I = 0x2

.field static final LONG_PRESS_POWER_SHUT_OFF_NO_CONFIRM:I = 0x3

.field private static final MSG_DISABLE_POINTER_LOCATION:I = 0x2

.field private static final MSG_DISPATCH_MEDIA_KEY_REPEAT_WITH_WAKE_LOCK:I = 0x4

.field private static final MSG_DISPATCH_MEDIA_KEY_WITH_WAKE_LOCK:I = 0x3

.field private static final MSG_ENABLE_POINTER_LOCATION:I = 0x1

.field private static final MSG_ENABLE_SPEN_GESTURE:I = 0x5

.field private static final MSG_SSRM_NOTIFICATION:I = 0x6

.field static final PRINT_ANIM:Z = false

.field static final RECENT_APPS_BEHAVIOR_DISMISS:I = 0x2

.field static final RECENT_APPS_BEHAVIOR_DISMISS_AND_SWITCH:I = 0x3

.field static final RECENT_APPS_BEHAVIOR_EXIT_TOUCH_MODE_AND_SHOW:I = 0x1

.field static final RECENT_APPS_BEHAVIOR_SHOW_OR_DISMISS:I = 0x0

.field static final SAFE_DEBUG:Z

.field private static final SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field static final SHOW_PROCESSES_ON_ALT_MENU:Z = false

.field static final SHOW_STARTING_ANIMATIONS:Z = true

.field public static final SYSTEM_DIALOG_REASON_ASSIST:Ljava/lang/String; = "assist"

.field public static final SYSTEM_DIALOG_REASON_GLOBAL_ACTIONS:Ljava/lang/String; = "globalactions"

.field public static final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field public static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"

.field static final SYSTEM_UI_CHANGING_LAYOUT:I = 0xe

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

.field private static cpuBooster:Landroid/os/DVFSHelper;

.field static final localLOGV:Z

.field static final mTmpContentFrame:Landroid/graphics/Rect;

.field static final mTmpDisplayFrame:Landroid/graphics/Rect;

.field static final mTmpNavigationFrame:Landroid/graphics/Rect;

.field static final mTmpOverscanFrame:Landroid/graphics/Rect;

.field static final mTmpParentFrame:Landroid/graphics/Rect;

.field static final mTmpVisibleFrame:Landroid/graphics/Rect;

.field static sApplicationLaunchKeyCategories:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static wasTopFullscreen:Z


# instance fields
.field public final ALARM_STARTED:[Ljava/lang/String;

.field public final ALARM_STOPPED:[Ljava/lang/String;

.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field mAccelerometerDefault:Z

.field mAlarmReceivedFlag:Z

.field mAlarmReceiver:Landroid/content/BroadcastReceiver;

.field mAllowAllRotations:I

.field mAllowLockscreenWhenOn:Z

.field final mAllowSystemUiDelay:Ljava/lang/Runnable;

.field mAssistKeyLongPressed:Z

.field mBootMsgDialog:Landroid/app/ProgressDialog;

.field mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field mCanHideNavigationBar:Z

.field mCarDockEnablesAccelerometer:Z

.field mCarDockIntent:Landroid/content/Intent;

.field mCarDockRotation:I

.field private mCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

.field private mCheckPowerKeySingleClick:Ljava/lang/Runnable;

.field private mConsumeBackKeyUp:Z

.field mConsumeSearchKeyUp:Z

.field mContentBottom:I

.field mContentLeft:I

.field mContentRight:I

.field mContentTop:I

.field mContext:Landroid/content/Context;

.field mCoverCloseRotation:I

.field mCurBottom:I

.field mCurLeft:I

.field mCurRight:I

.field mCurTop:I

.field mCurrentAppOrientation:I

.field private mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

.field mDemoHdmiRotation:I

.field mDemoHdmiRotationLock:Z

.field mDeskDockEnablesAccelerometer:Z

.field mDeskDockIntent:Landroid/content/Intent;

.field mDeskDockRotation:I

.field mDismissKeyguard:I

.field mDisplay:Landroid/view/Display;

.field mDockBottom:I

.field mDockLayer:I

.field mDockLeft:I

.field mDockMode:I

.field mDockReceiver:Landroid/content/BroadcastReceiver;

.field mDockRight:I

.field mDockTop:I

.field private mDoubleTapOnHomeBehavior:I

.field mDreamReceiver:Landroid/content/BroadcastReceiver;

.field mDreamingLockscreen:Z

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEasyOneHandEnabled:I

.field private mEnableMultiWindowUISetting:I

.field mEnableShiftMenuBugReports:Z

.field mEndcallBehavior:I

.field private mExtraCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

.field private final mFallbackActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/KeyCharacterMap$FallbackAction;",
            ">;"
        }
    .end annotation
.end field

.field mFocusedApp:Landroid/view/IApplicationToken;

.field mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mForceClearedSystemUiFlags:I

.field mForceStatusBar:Z

.field mForceStatusBarFromKeyguard:Z

.field mForcingShowNavBar:Z

.field mForcingShowNavBarLayer:I

.field mGlobalActionReceiver:Landroid/content/BroadcastReceiver;

.field mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

.field private mGlobalKeyManager:Lcom/android/internal/policy/impl/GlobalKeyManager;

.field private mHDMIObserver:Landroid/os/UEventObserver;

.field mHandler:Landroid/os/Handler;

.field mHaptics:Lcom/immersion/android/haptics/HapticFeedbackManager;

.field mHasNavigationBar:Z

.field mHasSoftInput:Z

.field mHasSystemNavBar:Z

.field mHaveBuiltInKeyboard:Z

.field mHavePendingMediaKeyRepeatWithWakeLock:Z

.field mHdmiPlugged:Z

.field mHeadless:Z

.field mHideLockScreen:Z

.field mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

.field final mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

.field private mHideWindow:Z

.field mHomeConsumed:Z

.field private mHomeDomeButton:Z

.field mHomeDoubleTapPending:Z

.field private final mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field mHomeIntent:Landroid/content/Intent;

.field mHomePressed:Z

.field mHomeUsedToWake:Z

.field mIncallPowerBehavior:I

.field private mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field private mIsFreeStyle:Z

.field private mIsMultiWindowEnabled:Z

.field mKeyboardTapVibePattern:[J

.field mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

.field mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

.field mLandscapeRotation:I

.field mLanguageSwitchKeyPressed:Z

.field mLastFocusNeedsMenu:Z

.field mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mLastSystemUiFlags:I

.field mLastTopIsRemoveNavigation:Z

.field mLidControlsSleep:Z

.field mLidKeyboardAccessibility:I

.field mLidNavigationAccessibility:I

.field mLidOpenRotation:I

.field mLidState:I

.field private final mLock:Ljava/lang/Object;

.field mLockScreenTimeout:I

.field mLockScreenTimerActive:Z

.field private mLongPressOnHomeBehavior:I

.field mLongPressOnPowerBehavior:I

.field mLongPressVibePattern:[J

.field mMenuLongPress:Ljava/lang/Runnable;

.field mMirrorLinkDockEnablesAccelerometer:Z

.field mMirrorLinkDockIntent:Landroid/content/Intent;

.field mMirrorlinkDockRotation:I

.field mMouseConnectReceiver:Landroid/content/BroadcastReceiver;

.field mMouseConnectedDock:I

.field mMouseDockedFlag:Z

.field private mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

.field private mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

.field private mMultiWindowUIIntent:Landroid/content/Intent;

.field mMultiuserReceiver:Landroid/content/BroadcastReceiver;

.field mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

.field mNavigationBarCanMove:Z

.field mNavigationBarHeightForRotation:[I

.field mNavigationBarOnBottom:Z

.field mNavigationBarWidthForRotation:[I

.field private mNeedMove:Z

.field mOldMouseDockedValue:Z

.field mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

.field mOrientationSensorEnabled:Z

.field mOverscanBottom:I

.field mOverscanLeft:I

.field mOverscanRight:I

.field mOverscanScreenHeight:I

.field mOverscanScreenLeft:I

.field mOverscanScreenTop:I

.field mOverscanScreenWidth:I

.field mOverscanTop:I

.field mPendingPowerKeyUpCanceled:Z

.field public mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mPointerLocationInputChannel:Landroid/view/InputChannel;

.field mPointerLocationInputEventReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;

.field mPointerLocationMode:I

.field mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

.field mPortraitRotation:I

.field mPowerDoubleBehavior:Z

.field volatile mPowerKeyHandled:Z

.field private mPowerKeyTime:J

.field private mPowerKeyTriggered:Z

.field private final mPowerLongPress:Ljava/lang/Runnable;

.field mPowerManager:Landroid/os/PowerManager;

.field mPreloadedRecentApps:Z

.field private mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

.field mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

.field mRecentAppsDialogHeldModifiers:I

.field mResettingSystemUiFlags:I

.field mRestrictedOverscanScreenHeight:I

.field mRestrictedOverscanScreenLeft:I

.field mRestrictedOverscanScreenTop:I

.field mRestrictedOverscanScreenWidth:I

.field mRestrictedScreenHeight:I

.field mRestrictedScreenLeft:I

.field mRestrictedScreenTop:I

.field mRestrictedScreenWidth:I

.field private mRotation:I

.field mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

.field mSafeMode:Z

.field mSafeModeDisabledVibePattern:[J

.field mSafeModeEnabledVibePattern:[J

.field private mSavedGravityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/WindowManagerPolicy$WindowState;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

.field mScreenOnEarly:Z

.field mScreenOnFully:Z

.field private mScreenshotChordEnabled:Z

.field mScreenshotConnection:Landroid/content/ServiceConnection;

.field final mScreenshotLock:Ljava/lang/Object;

.field private final mScreenshotRunnable:Ljava/lang/Runnable;

.field final mScreenshotTimeout:Ljava/lang/Runnable;

.field mSearchKeyShortcutPending:Z

.field mSearchManager:Landroid/app/SearchManager;

.field mSeascapeRotation:I

.field private mSecPolicy:Landroid/app/enterprise/SecurityPolicy;

.field mSecondLcdLastRotation:I

.field mSecondLcdUserRotation:I

.field mSecondLcdUserRotationMode:I

.field final mServiceAquireLock:Ljava/lang/Object;

.field mSettingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

.field mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

.field private final mShowGlobalActionDialog:Ljava/lang/Runnable;

.field private mShowOverPinupWindow:Z

.field private mShowPinupWindowForce:Z

.field mShowingDream:Z

.field mShowingLockscreen:Z

.field final mSpecialKeysLock:Ljava/lang/Object;

.field mSpecialKeysMessenger:Landroid/os/Messenger;

.field mStableBottom:I

.field mStableFullscreenBottom:I

.field mStableFullscreenLeft:I

.field mStableFullscreenRight:I

.field mStableFullscreenTop:I

.field mStableLeft:I

.field mStableRight:I

.field mStableTop:I

.field mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

.field mStatusBarHeight:I

.field mStatusBarLayer:I

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field mSystemBooted:Z

.field mSystemBottom:I

.field mSystemLeft:I

.field mSystemReady:Z

.field mSystemRight:I

.field mSystemTop:I

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mTitleBarHeight:I

.field private mTmpWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field private mTopApplicationWindowMode:I

.field private mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopIsFullscreen:Z

.field mTopMaintainSystemUIAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTransparentStatusBar:Z

.field mUiMode:I

.field mUndockedHdmiRotation:I

.field mUnrestrictedScreenHeight:I

.field mUnrestrictedScreenLeft:I

.field mUnrestrictedScreenTop:I

.field mUnrestrictedScreenWidth:I

.field mUpsideDownRotation:I

.field mUserRotation:I

.field mUserRotationMode:I

.field mVibrator:Landroid/os/Vibrator;

.field mVirtualKeyVibePattern:[J

.field private mVolumeDownKeyConsumedByScreenshotChord:Z

.field private mVolumeDownKeyTime:J

.field private mVolumeDownKeyTriggered:Z

.field private mVolumeUpKeyTriggered:Z

.field mWifiDisplayConnected:Z

.field mWifiDisplayReceiver:Landroid/content/BroadcastReceiver;

.field private mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

.field mWindowManager:Landroid/view/IWindowManager;

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field private mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 245
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_9

    move v0, v1

    :cond_9
    sput-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    .line 305
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    .line 306
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v2, 0x40

    const-string v3, "android.intent.category.APP_BROWSER"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 308
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v2, 0x41

    const-string v3, "android.intent.category.APP_EMAIL"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 310
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v2, 0xcf

    const-string v3, "android.intent.category.APP_CONTACTS"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 312
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v2, 0xd0

    const-string v3, "android.intent.category.APP_CALENDAR"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 314
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v2, 0xd1

    const-string v3, "android.intent.category.APP_MUSIC"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 316
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v2, 0xd2

    const-string v3, "android.intent.category.APP_CALCULATOR"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 584
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 585
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 586
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    .line 587
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 588
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 589
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    .line 2666
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_80

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    .line 5452
    sput-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->wasTopFullscreen:Z

    .line 7136
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->cpuBooster:Landroid/os/DVFSHelper;

    return-void

    .line 2666
    :array_80
    .array-data 4
        0x7d3
        0x7da
    .end array-data
.end method

.method public constructor <init>()V
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 333
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    .line 357
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 361
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 364
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 365
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    .line 366
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    .line 367
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    .line 368
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    .line 369
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    .line 370
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    .line 375
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableMultiWindowUISetting:I

    .line 376
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeBackKeyUp:Z

    .line 377
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    .line 378
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsFreeStyle:Z

    .line 380
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 381
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 386
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSavedGravityMap:Ljava/util/HashMap;

    .line 387
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideWindow:Z

    .line 388
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowPinupWindowForce:Z

    .line 389
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowOverPinupWindow:Z

    .line 390
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNeedMove:Z

    .line 391
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 392
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mExtraCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 393
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRotation:I

    .line 394
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;

    .line 396
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 399
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEasyOneHandEnabled:I

    .line 402
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 408
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 409
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 420
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    .line 428
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    .line 434
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseConnectedDock:I

    .line 435
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_STARTED_IN_ALERT"

    aput-object v1, v0, v2

    const-string v1, "com.android.deskclock.ALARM_ALERT"

    aput-object v1, v0, v5

    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->ALARM_STARTED:[Ljava/lang/String;

    .line 440
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_STOPPED_IN_ALERT"

    aput-object v1, v0, v2

    const-string v1, "com.android.deskclock.ALARM_DONE"

    aput-object v1, v0, v5

    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_STOP"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->ALARM_STOPPED:[Ljava/lang/String;

    .line 446
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAlarmReceivedFlag:Z

    .line 447
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOldMouseDockedValue:Z

    .line 448
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    .line 453
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    .line 454
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    .line 456
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSecondLcdUserRotationMode:I

    .line 457
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSecondLcdUserRotation:I

    .line 458
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSecondLcdLastRotation:I

    .line 462
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    .line 469
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 470
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    .line 471
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    .line 472
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 473
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    .line 474
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    .line 476
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    .line 479
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 488
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpecialKeysLock:Ljava/lang/Object;

    .line 575
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 577
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    .line 580
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    .line 582
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    .line 593
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastTopIsRemoveNavigation:Z

    .line 608
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    .line 646
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 647
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    .line 648
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 649
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 651
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    .line 652
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    .line 653
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    .line 654
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    .line 663
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDomeButton:Z

    .line 688
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    .line 732
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    .line 975
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$2;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    .line 1054
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$3;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    .line 1084
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$4;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenuLongPress:Ljava/lang/Runnable;

    .line 1155
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$5;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 3592
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$10;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$10;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowSystemUiDelay:Ljava/lang/Runnable;

    .line 3668
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$11;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$11;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

    .line 5664
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    .line 5665
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 5667
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$15;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$15;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotTimeout:Ljava/lang/Runnable;

    .line 5678
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$16;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$16;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCheckPowerKeySingleClick:Ljava/lang/Runnable;

    .line 6560
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$19;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$19;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    .line 6582
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$20;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    .line 6616
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$21;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseConnectReceiver:Landroid/content/BroadcastReceiver;

    .line 6671
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$22;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$22;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    .line 6686
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$23;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$23;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    .line 6710
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$24;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$24;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWifiDisplayReceiver:Landroid/content/BroadcastReceiver;

    .line 6726
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$25;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$25;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActionReceiver:Landroid/content/BroadcastReceiver;

    .line 6737
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$26;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$26;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowGlobalActionDialog:Ljava/lang/Runnable;

    .line 7278
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    .line 7383
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->enablePointerLocation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->disablePointerLocation()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "x1"    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishScreenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/PhoneWindowManager;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/PhoneWindowManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 242
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableMultiWindowUISetting:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifyToSSRM(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performAuditoryFeedbackForAccessibilityIfNeed()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->takeScreenshot()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/PhoneWindowManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/IBinder;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .prologue
    .line 242
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->waitForKeyguardWindowDrawn(Landroid/os/IBinder;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    return-void
.end method

.method private applyLidSwitchState()V
    .registers 4

    .prologue
    .line 7424
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isBuiltInKeyboardVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->setKeyboardVisibility(Z)V

    .line 7426
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    if-eqz v0, :cond_1a

    .line 7427
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 7429
    :cond_1a
    return-void
.end method

.method private applyStableConstraints(IILandroid/graphics/Rect;)V
    .registers 6
    .param p1, "sysui"    # I
    .param p2, "fl"    # I
    .param p3, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 4135
    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_30

    .line 4138
    and-int/lit16 v0, p2, 0x400

    if-eqz v0, :cond_31

    .line 4139
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    if-ge v0, v1, :cond_12

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 4140
    :cond_12
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    if-ge v0, v1, :cond_1c

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 4141
    :cond_1c
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    if-le v0, v1, :cond_26

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 4142
    :cond_26
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    if-le v0, v1, :cond_30

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 4150
    :cond_30
    :goto_30
    return-void

    .line 4144
    :cond_31
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    if-ge v0, v1, :cond_3b

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 4145
    :cond_3b
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    if-ge v0, v1, :cond_45

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 4146
    :cond_45
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    if-le v0, v1, :cond_4f

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 4147
    :cond_4f
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    if-le v0, v1, :cond_30

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_30
.end method

.method private static awakenDreams()V
    .registers 2

    .prologue
    .line 2589
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v0

    .line 2590
    .local v0, "dreamManager":Landroid/service/dreams/IDreamManager;
    if-eqz v0, :cond_9

    .line 2592
    :try_start_6
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 2597
    :cond_9
    :goto_9
    return-void

    .line 2593
    :catch_a
    move-exception v1

    goto :goto_9
.end method

.method private cancelPendingPowerKeyAction()V
    .registers 3

    .prologue
    .line 940
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v0, :cond_b

    .line 941
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 943
    :cond_b
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v0, :cond_12

    .line 944
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    .line 946
    :cond_12
    return-void
.end method

.method private cancelPendingScreenshotChordAction()V
    .registers 3

    .prologue
    .line 972
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 973
    return-void
.end method

.method private cancelPreloadRecentApps()V
    .registers 5

    .prologue
    .line 3519
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreloadedRecentApps:Z

    if-eqz v2, :cond_10

    .line 3520
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3522
    :try_start_7
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 3523
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_10

    .line 3524
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->cancelPreloadRecentApps()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11

    .line 3532
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_10
    :goto_10
    return-void

    .line 3526
    :catch_11
    move-exception v0

    .line 3527
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "RemoteException when showing recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3529
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_10
.end method

.method private disablePointerLocation()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1738
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputEventReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;

    if-eqz v1, :cond_c

    .line 1739
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputEventReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;->dispose()V

    .line 1740
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputEventReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;

    .line 1743
    :cond_c
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    if-eqz v1, :cond_17

    .line 1744
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 1745
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    .line 1748
    :cond_17
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-eqz v1, :cond_2c

    .line 1749
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1751
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1752
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 1754
    .end local v0    # "wm":Landroid/view/WindowManager;
    :cond_2c
    return-void
.end method

.method private enablePointerLocation()V
    .registers 7

    .prologue
    const/4 v4, -0x1

    .line 1705
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-nez v2, :cond_6a

    .line 1706
    new-instance v2, Lcom/android/internal/widget/PointerLocationView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/PointerLocationView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 1707
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView;->setPrintCoords(Z)V

    .line 1709
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 1712
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x7df

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1713
    const/16 v2, 0x518

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1717
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1718
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x1000000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1719
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1722
    :cond_34
    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1723
    const-string v2, "PointerLocation"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1724
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1726
    .local v1, "wm":Landroid/view/WindowManager;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 1727
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1729
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const-string v3, "PointerLocationView"

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    .line 1731
    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Lcom/android/internal/widget/PointerLocationView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputEventReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;

    .line 1735
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "wm":Landroid/view/WindowManager;
    :cond_6a
    return-void
.end method

.method private finishScreenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .registers 4
    .param p1, "screenOnListener"    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .prologue
    .line 6826
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6827
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    .line 6828
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_13

    .line 6831
    :try_start_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->setEventDispatching(Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_16

    .line 6835
    :goto_d
    if-eqz p1, :cond_12

    .line 6836
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$ScreenOnListener;->onScreenOn()V

    .line 6838
    :cond_12
    return-void

    .line 6828
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0

    .line 6832
    :catch_16
    move-exception v0

    goto :goto_d
.end method

.method static getAudioService()Landroid/media/IAudioService;
    .registers 3

    .prologue
    .line 2654
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 2656
    .local v0, "audioService":Landroid/media/IAudioService;
    if-nez v0, :cond_13

    .line 2657
    const-string v1, "WindowManager"

    const-string v2, "Unable to find IAudioService interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2659
    :cond_13
    return-object v0
.end method

.method static getDreamManager()Landroid/service/dreams/IDreamManager;
    .registers 1

    .prologue
    .line 2600
    const-string v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    return-object v0
.end method

.method static getLongIntArray(Landroid/content/res/Resources;I)[J
    .registers 7
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "resid"    # I

    .prologue
    .line 7222
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 7223
    .local v0, "ar":[I
    if-nez v0, :cond_8

    .line 7224
    const/4 v2, 0x0

    .line 7230
    :cond_7
    return-object v2

    .line 7226
    :cond_8
    array-length v3, v0

    new-array v2, v3, [J

    .line 7227
    .local v2, "out":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    array-length v3, v0

    if-ge v1, v3, :cond_7

    .line 7228
    aget v3, v0, v1

    int-to-long v3, v3

    aput-wide v3, v2, v1

    .line 7227
    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method

.method private getScreenshotChordLongPressDelay()J
    .registers 4

    .prologue
    .line 963
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 965
    const/high16 v0, 0x40200000

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v1

    long-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 968
    :goto_11
    return-wide v0

    :cond_12
    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v0

    goto :goto_11
.end method

.method private getSearchManager()Landroid/app/SearchManager;
    .registers 3

    .prologue
    .line 3498
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    if-nez v0, :cond_10

    .line 3499
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    .line 3501
    :cond_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    return-object v0
.end method

.method static getTelephonyExtService()Lcom/android/internal/telephony/ITelephonyExt;
    .registers 3

    .prologue
    .line 2620
    const-string v1, "phoneext"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v0

    .line 2622
    .local v0, "telephonyExtService":Lcom/android/internal/telephony/ITelephonyExt;
    if-nez v0, :cond_13

    .line 2623
    const-string v1, "WindowManager"

    const-string v2, "Unable to find ITelephony interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2625
    :cond_13
    return-object v0
.end method

.method static getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .registers 1

    .prologue
    .line 2605
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
    .line 2610
    const-string v1, "phone2"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2612
    .local v0, "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_13

    .line 2613
    const-string v1, "WindowManager"

    const-string v2, "Unable to find ITelephony2 interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2615
    :cond_13
    return-object v0
.end method

.method static getVoIPInterfaceService()Landroid/os/IVoIPInterface;
    .registers 3

    .prologue
    .line 2629
    const-string v1, "voip"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v0

    .line 2631
    .local v0, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-nez v0, :cond_13

    .line 2632
    const-string v1, "WindowManager"

    const-string v2, "Unable to find IVoIPInterface interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2634
    :cond_13
    return-object v0
.end method

.method private handleDoubleTapOnHome()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1149
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-ne v0, v1, :cond_a

    .line 1150
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeConsumed:Z

    .line 1151
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->toggleRecentApps()V

    .line 1153
    :cond_a
    return-void
.end method

.method private handleLongPressOnHome()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1114
    :try_start_2
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1115
    .local v1, "phoneServ":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_17

    .line 1116
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_f

    move-result v2

    if-eqz v2, :cond_17

    .line 1146
    .end local v1    # "phoneServ":Lcom/android/internal/telephony/ITelephony;
    :cond_e
    :goto_e
    return-void

    .line 1120
    :catch_f
    move-exception v0

    .line 1121
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "RemoteException from getTelephonyService()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1124
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_17
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isVoIPRinging()Z

    move-result v2

    if-nez v2, :cond_e

    .line 1128
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-eqz v2, :cond_e

    .line 1129
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeConsumed:Z

    .line 1130
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1132
    sget-boolean v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_45

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mLongPressOnHomeBehavior : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    :cond_45
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ne v2, v5, :cond_4d

    .line 1135
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->toggleRecentApps()V

    goto :goto_e

    .line 1138
    :cond_4d
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_56

    .line 1139
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchAssistAction()V

    goto :goto_e

    .line 1141
    :cond_56
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_e

    .line 1142
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowGlobalActionDialog:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_e
.end method

.method private interceptFallback(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z
    .registers 10
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "fallbackEvent"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    const/4 v3, 0x1

    .line 3450
    invoke-virtual {p0, p2, p3, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    move-result v0

    .line 3451
    .local v0, "actions":I
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_14

    .line 3452
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v1

    .line 3454
    .local v1, "delayMillis":J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_14

    .line 3458
    .end local v1    # "delayMillis":J
    :goto_13
    return v3

    :cond_14
    const/4 v3, 0x0

    goto :goto_13
.end method

.method private interceptPowerKeyDown(Z)V
    .registers 6
    .param p1, "handled"    # Z

    .prologue
    .line 921
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 922
    if-nez p1, :cond_11

    .line 926
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getPowerKeyLongPressDelay()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 929
    :cond_11
    return-void
.end method

.method private interceptPowerKeyUp(Z)Z
    .registers 5
    .param p1, "canceled"    # Z

    .prologue
    const/4 v0, 0x0

    .line 932
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v1, :cond_f

    .line 933
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 934
    if-nez p1, :cond_f

    const/4 v0, 0x1

    .line 936
    :cond_f
    return v0
.end method

.method private interceptScreenshotChord()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x96

    .line 949
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordEnabled:Z

    if-eqz v2, :cond_35

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_35

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_35

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_35

    .line 951
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 952
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_35

    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_35

    .line 954
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 955
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 957
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 960
    .end local v0    # "now":J
    :cond_35
    return-void
.end method

.method private isAnyPortrait(I)Z
    .registers 3
    .param p1, "rotation"    # I

    .prologue
    .line 7161
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    if-eq p1, v0, :cond_8

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    if-ne p1, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isArranged(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 4
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 3730
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget v1, Lcom/android/internal/policy/impl/MultiWindowReflector$Gravity;->ARRANGE_CENTER_UPPER_SIP:I

    if-eq v0, v1, :cond_12

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget v1, Lcom/android/internal/policy/impl/MultiWindowReflector$Gravity;->ARRANGE_FULL_UPPER_SIP:I

    if-eq v0, v1, :cond_12

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget v1, Lcom/android/internal/policy/impl/MultiWindowReflector$Gravity;->ARRANGE_BOTTOM_UPPER_SIP:I

    if-ne v0, v1, :cond_14

    .line 3733
    :cond_12
    const/4 v0, 0x1

    .line 3735
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private isBuiltInKeyboardVisible()Z
    .registers 2

    .prologue
    .line 1955
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHaveBuiltInKeyboard:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isEnabledTalkback()Z
    .registers 9

    .prologue
    .line 8283
    const/16 v1, 0x3a

    .line 8284
    .local v1, "ENABLED_SERVICES_SEPARATOR":C
    const-string v0, "com.google.android.marvin.talkback"

    .line 8285
    .local v0, "DEFAULT_SCREENREADER_NAME":Ljava/lang/String;
    new-instance v5, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v6, 0x3a

    invoke-direct {v5, v6}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 8287
    .local v5, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "enabled_accessibility_services"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 8290
    .local v4, "enabledServicesSetting":Ljava/lang/String;
    if-nez v4, :cond_1b

    .line 8291
    const-string v4, ""

    .line 8294
    :cond_1b
    invoke-virtual {v5, v4}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 8296
    :cond_1e
    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 8297
    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 8298
    .local v2, "componentNameString":Ljava/lang/String;
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 8300
    .local v3, "enabledService":Landroid/content/ComponentName;
    if-eqz v3, :cond_1e

    .line 8301
    const-string v6, "com.google.android.marvin.talkback"

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 8302
    const/4 v6, 0x1

    .line 8305
    .end local v2    # "componentNameString":Ljava/lang/String;
    .end local v3    # "enabledService":Landroid/content/ComponentName;
    :goto_3b
    return v6

    :cond_3c
    const/4 v6, 0x0

    goto :goto_3b
.end method

.method private isFilteredByMvp(Landroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 2674
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpecialKeysLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2675
    :try_start_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpecialKeysMessenger:Landroid/os/Messenger;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_25

    if-eqz v4, :cond_23

    .line 2678
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_a
    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 2679
    .local v1, "keyMessage":Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2681
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpecialKeysMessenger:Landroid/os/Messenger;

    invoke-virtual {v4, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_15} :catch_18
    .catchall {:try_start_a .. :try_end_15} :catchall_25

    .line 2682
    const/4 v2, 0x1

    :try_start_16
    monitor-exit v3

    .line 2689
    .end local v1    # "keyMessage":Landroid/os/Message;
    :goto_17
    return v2

    .line 2683
    :catch_18
    move-exception v0

    .line 2684
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "WindowManager"

    const-string v5, "Cannot acknowledge the request"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2685
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpecialKeysMessenger:Landroid/os/Messenger;

    .line 2689
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_23
    monitor-exit v3

    goto :goto_17

    .line 2690
    :catchall_25
    move-exception v2

    monitor-exit v3
    :try_end_27
    .catchall {:try_start_16 .. :try_end_27} :catchall_25

    throw v2
.end method

.method private isGlobalAccessibilityGestureEnabled()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 7609
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enable_accessibility_global_gesture_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_11

    :goto_10
    return v0

    :cond_11
    move v0, v1

    goto :goto_10
.end method

.method private isHidden(I)Z
    .registers 5
    .param p1, "accessibilityMode"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1930
    packed-switch p1, :pswitch_data_14

    move v0, v1

    .line 1936
    :cond_6
    :goto_6
    return v0

    .line 1932
    :pswitch_7
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_6

    .line 1934
    :pswitch_d
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-eq v2, v0, :cond_6

    move v0, v1

    goto :goto_6

    .line 1930
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_7
        :pswitch_d
    .end packed-switch
.end method

.method private isLandscapeOrSeascape(I)Z
    .registers 3
    .param p1, "rotation"    # I

    .prologue
    .line 7157
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    if-eq p1, v0, :cond_8

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    if-ne p1, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isWakeKeyWhenScreenOff(I)Z
    .registers 5
    .param p1, "keyCode"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6442
    sparse-switch p1, :sswitch_data_1a

    .line 6481
    :cond_5
    :goto_5
    return v0

    .line 6451
    :sswitch_6
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_5

    :sswitch_c
    move v0, v1

    .line 6465
    goto :goto_5

    .line 6468
    :sswitch_e
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isCameraKeyWakeKey(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 6472
    goto :goto_5

    :sswitch_18
    move v0, v1

    .line 6479
    goto :goto_5

    .line 6442
    :sswitch_data_1a
    .sparse-switch
        0x18 -> :sswitch_6
        0x19 -> :sswitch_6
        0x1b -> :sswitch_e
        0x4f -> :sswitch_c
        0x55 -> :sswitch_c
        0x56 -> :sswitch_c
        0x57 -> :sswitch_c
        0x58 -> :sswitch_c
        0x59 -> :sswitch_c
        0x5a -> :sswitch_c
        0x5b -> :sswitch_c
        0x7e -> :sswitch_c
        0x7f -> :sswitch_c
        0x82 -> :sswitch_c
        0xa4 -> :sswitch_6
        0xa8 -> :sswitch_6
        0xa9 -> :sswitch_6
        0xef -> :sswitch_18
        0xf0 -> :sswitch_18
        0xf1 -> :sswitch_6
        0xf2 -> :sswitch_6
    .end sparse-switch
.end method

.method private keyguardIsShowingTq()Z
    .registers 2

    .prologue
    .line 6865
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 6866
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    goto :goto_5
.end method

.method private launchAssistAction()V
    .registers 7

    .prologue
    const/4 v5, -0x2

    .line 3482
    const-string v2, "assist"

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 3483
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "search"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v1

    .line 3485
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_29

    .line 3486
    const/high16 v2, 0x34000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3490
    :try_start_1e
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    const/4 v4, -0x2

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_29
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1e .. :try_end_29} :catch_2a

    .line 3495
    :cond_29
    :goto_29
    return-void

    .line 3491
    :catch_2a
    move-exception v0

    .line 3492
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "WindowManager"

    const-string v3, "No activity to handle assist action."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29
.end method

.method private launchAssistLongPressAction()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 3462
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v4, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 3463
    const-string v3, "assist"

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 3466
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3467
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3471
    :try_start_16
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getSearchManager()Landroid/app/SearchManager;

    move-result-object v2

    .line 3472
    .local v2, "searchManager":Landroid/app/SearchManager;
    if-eqz v2, :cond_1f

    .line 3473
    invoke-virtual {v2}, Landroid/app/SearchManager;->stopSearch()V

    .line 3475
    :cond_1f
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    const/4 v5, -0x2

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_16 .. :try_end_2a} :catch_2b

    .line 3479
    .end local v2    # "searchManager":Landroid/app/SearchManager;
    :goto_2a
    return-void

    .line 3476
    :catch_2b
    move-exception v0

    .line 3477
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "WindowManager"

    const-string v4, "No activity to handle assist long press action."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a
.end method

.method private notifySystemUiVisibility(I)V
    .registers 4
    .param p1, "visibility"    # I

    .prologue
    .line 8211
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    if-eqz v0, :cond_e

    .line 8212
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$36;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$36;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8219
    :cond_e
    return-void
.end method

.method private notifyToSSRM(Z)V
    .registers 5
    .param p1, "isTopFullscreen"    # Z

    .prologue
    .line 5454
    sget-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->wasTopFullscreen:Z

    if-ne v1, p1, :cond_5

    .line 5464
    :goto_4
    return-void

    .line 5457
    :cond_5
    sput-boolean p1, Lcom/android/internal/policy/impl/PhoneWindowManager;->wasTopFullscreen:Z

    .line 5459
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5460
    .local v0, "boostIntent":Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5461
    const-string v1, "SSRM_STATUS_NAME"

    const-string v2, "FullScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5462
    const-string v1, "SSRM_STATUS_VALUE"

    sget-boolean v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->wasTopFullscreen:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5463
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_4
.end method

.method private offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 4
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 4948
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 4949
    .local v0, "top":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 4950
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    if-le v1, v0, :cond_13

    .line 4951
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    .line 4953
    :cond_13
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 4954
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenVisibleInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 4955
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    if-le v1, v0, :cond_26

    .line 4956
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    .line 4961
    :cond_26
    return-void
.end method

.method private performAuditoryFeedbackForAccessibilityIfNeed()V
    .registers 5

    .prologue
    .line 7591
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isGlobalAccessibilityGestureEnabled()Z

    move-result v2

    if-nez v2, :cond_7

    .line 7607
    :cond_6
    :goto_6
    return-void

    .line 7594
    :cond_7
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 7596
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSilentMode()Z

    move-result v2

    if-nez v2, :cond_6

    .line 7599
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 7601
    .local v1, "ringTone":Landroid/media/Ringtone;
    if-eqz v1, :cond_29

    .line 7602
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 7603
    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    goto :goto_6

    .line 7605
    :cond_29
    const-string v2, "WindowManager"

    const-string v3, "performAuditoryFeedbackForAccessibilityIfNeed() : Ringtone is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method private preloadRecentApps()V
    .registers 5

    .prologue
    .line 3505
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3507
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 3508
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_c

    .line 3509
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->preloadRecentApps()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_d

    .line 3516
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_c
    :goto_c
    return-void

    .line 3511
    :catch_d
    move-exception v0

    .line 3512
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "RemoteException when preloading recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3514
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_c
.end method

.method private readConfigurationDependentBehaviors()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1415
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 1417
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ltz v0, :cond_19

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_1b

    .line 1423
    :cond_19
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 1426
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 1428
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-ltz v0, :cond_33

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_35

    .line 1430
    :cond_33
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 1432
    :cond_35
    return-void
.end method

.method private readRotation(I)I
    .registers 4
    .param p1, "resID"    # I

    .prologue
    .line 1758
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_9} :catch_17

    move-result v0

    .line 1759
    .local v0, "rotation":I
    sparse-switch v0, :sswitch_data_1a

    .line 1772
    .end local v0    # "rotation":I
    :goto_d
    const/4 v1, -0x1

    :goto_e
    return v1

    .line 1761
    .restart local v0    # "rotation":I
    :sswitch_f
    const/4 v1, 0x0

    goto :goto_e

    .line 1763
    :sswitch_11
    const/4 v1, 0x1

    goto :goto_e

    .line 1765
    :sswitch_13
    const/4 v1, 0x2

    goto :goto_e

    .line 1767
    :sswitch_15
    const/4 v1, 0x3

    goto :goto_e

    .line 1769
    .end local v0    # "rotation":I
    :catch_17
    move-exception v1

    goto :goto_d

    .line 1759
    nop

    :sswitch_data_1a
    .sparse-switch
        0x0 -> :sswitch_f
        0x5a -> :sswitch_11
        0xb4 -> :sswitch_13
        0x10e -> :sswitch_15
    .end sparse-switch
.end method

.method private rotationForSecondLcdOrientationLw(I)I
    .registers 11
    .param p1, "orientation"    # I

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x2

    const/4 v3, 0x1

    .line 8311
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 8312
    :try_start_7
    const-string v2, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "2nd LCD (UserRotation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSecondLcdUserRotation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " UserRotationMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSecondLcdUserRotationMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " last="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSecondLcdLastRotation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8318
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSecondLcdUserRotationMode:I

    if-nez v2, :cond_48

    if-eq p1, v7, :cond_53

    const/4 v2, -0x1

    if-eq p1, v2, :cond_53

    :cond_48
    const/4 v2, 0x4

    if-eq p1, v2, :cond_53

    if-eq p1, v8, :cond_53

    const/4 v2, 0x6

    if-eq p1, v2, :cond_53

    const/4 v2, 0x7

    if-ne p1, v2, :cond_99

    .line 8325
    :cond_53
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->getProposedRotation()I

    move-result v1

    .line 8326
    .local v1, "sensorRot":I
    const-string v2, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sensorRot="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8330
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    if-gez v2, :cond_87

    .line 8334
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x111001e

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_94

    move v2, v3

    :goto_85
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    .line 8337
    :cond_87
    if-ne v1, v7, :cond_8f

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    if-eq v2, v3, :cond_8f

    if-ne p1, v8, :cond_96

    .line 8340
    :cond_8f
    move v0, v1

    .line 8357
    .end local v1    # "sensorRot":I
    .local v0, "preferredSecondRotation":I
    :goto_90
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSecondLcdLastRotation:I

    .line 8358
    monitor-exit v4

    return v0

    .line 8334
    .end local v0    # "preferredSecondRotation":I
    .restart local v1    # "sensorRot":I
    :cond_94
    const/4 v2, 0x0

    goto :goto_85

    .line 8342
    :cond_96
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSecondLcdLastRotation:I

    .restart local v0    # "preferredSecondRotation":I
    goto :goto_90

    .line 8344
    .end local v0    # "preferredSecondRotation":I
    .end local v1    # "sensorRot":I
    :cond_99
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSecondLcdUserRotationMode:I

    if-ne v2, v3, :cond_a3

    const/4 v2, 0x5

    if-eq p1, v2, :cond_a3

    .line 8351
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSecondLcdUserRotation:I

    .restart local v0    # "preferredSecondRotation":I
    goto :goto_90

    .line 8355
    .end local v0    # "preferredSecondRotation":I
    :cond_a3
    const/4 v0, -0x1

    .restart local v0    # "preferredSecondRotation":I
    goto :goto_90

    .line 8359
    .end local v0    # "preferredSecondRotation":I
    :catchall_a5
    move-exception v2

    monitor-exit v4
    :try_end_a7
    .catchall {:try_start_7 .. :try_end_a7} :catchall_a5

    throw v2
.end method

.method static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 6912
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 6914
    :try_start_6
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_e

    .line 6918
    :cond_d
    :goto_d
    return-void

    .line 6915
    :catch_e
    move-exception v0

    goto :goto_d
.end method

.method private setFitAttachedWindowVertical(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 9
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attached"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p3, "windowMode"    # I
    .param p4, "pf"    # Landroid/graphics/Rect;
    .param p5, "df"    # Landroid/graphics/Rect;
    .param p6, "cf"    # Landroid/graphics/Rect;
    .param p7, "vf"    # Landroid/graphics/Rect;

    .prologue
    .line 4119
    if-nez p2, :cond_3

    .line 4131
    :goto_2
    return-void

    .line 4123
    :cond_3
    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p4, Landroid/graphics/Rect;->top:I

    .line 4124
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v0, p4, Landroid/graphics/Rect;->bottom:I

    .line 4125
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v0, p4, Landroid/graphics/Rect;->left:I

    .line 4126
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v0, p4, Landroid/graphics/Rect;->right:I

    .line 4127
    invoke-virtual {p5, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4128
    invoke-virtual {p6, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4129
    invoke-virtual {p7, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2
.end method

.method private takeScreenshot()V
    .registers 9

    .prologue
    .line 5689
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v4

    .line 5690
    :try_start_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v3, :cond_9

    .line 5691
    monitor-exit v4

    .line 5740
    :goto_8
    return-void

    .line 5693
    :cond_9
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.systemui"

    const-string v5, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5695
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 5696
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5697
    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$17;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$17;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 5734
    .local v1, "conn":Landroid/content/ServiceConnection;
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v1, v5, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 5736
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 5737
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotTimeout:Ljava/lang/Runnable;

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5739
    :cond_35
    monitor-exit v4

    goto :goto_8

    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "conn":Landroid/content/ServiceConnection;
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_37
    move-exception v3

    monitor-exit v4
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v3
.end method

.method private toggleMultiWindowTray()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1096
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1097
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->checkHideTrayBar()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1098
    const-string v0, "WindowManager"

    const-string v1, "Bar couldn\'t execute"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    :cond_1c
    :goto_1c
    return-void

    .line 1101
    :cond_1d
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeBackKeyUp:Z

    .line 1103
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1c
.end method

.method private toggleRecentApps()V
    .registers 5

    .prologue
    .line 3535
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3536
    const-string v2, "recentapps"

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 3538
    :try_start_8
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 3539
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_11

    .line 3540
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    .line 3547
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_11
    :goto_11
    return-void

    .line 3542
    :catch_12
    move-exception v0

    .line 3543
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "RemoteException when showing recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3545
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_11
.end method

.method private updateEasyOneHandState(ZZ)V
    .registers 9
    .param p1, "isLeftHand"    # Z
    .param p2, "isShow"    # Z

    .prologue
    .line 8191
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateEasyOneHandState() isLeftHand="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isShow="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8194
    :try_start_22
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.easyonehand"

    const-string v4, "com.sec.android.easyonehand.EasyOneHandService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8195
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.action.EASYONEHAND_SERVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 8196
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "LeftHandMode"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8198
    if-eqz p2, :cond_43

    .line 8199
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 8207
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_42
    return-void

    .line 8201
    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_43
    const-string v3, "ForceHide"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8202
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_4e} :catch_4f

    goto :goto_42

    .line 8204
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_4f
    move-exception v1

    .line 8205
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "WindowManager"

    const-string v4, "Exception updateEasyOneHandService: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_42
.end method

.method private updateLockScreenTimeout()V
    .registers 7

    .prologue
    .line 7397
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v2

    .line 7398
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    if-eqz v1, :cond_2c

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_2c

    const/4 v0, 0x1

    .line 7400
    .local v0, "enable":Z
    :goto_18
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eq v1, v0, :cond_2a

    .line 7401
    if-eqz v0, :cond_2e

    .line 7403
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7408
    :goto_28
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    .line 7410
    :cond_2a
    monitor-exit v2

    .line 7411
    return-void

    .line 7398
    .end local v0    # "enable":Z
    :cond_2c
    const/4 v0, 0x0

    goto :goto_18

    .line 7406
    .restart local v0    # "enable":Z
    :cond_2e
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_28

    .line 7410
    .end local v0    # "enable":Z
    :catchall_36
    move-exception v1

    monitor-exit v2
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw v1
.end method

.method private updateSystemUiVisibilityLw()I
    .registers 12

    .prologue
    const/16 v10, 0x7d4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 7711
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v8, :cond_9

    .line 7786
    :cond_8
    :goto_8
    return v6

    .line 7714
    :cond_9
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v8, v10, :cond_17

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-eq v8, v7, :cond_8

    .line 7723
    :cond_17
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v8

    iget v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    xor-int/lit8 v9, v9, -0x1

    and-int/2addr v8, v9

    iget v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    xor-int/lit8 v9, v9, -0x1

    and-int v3, v8, v9

    .line 7726
    .local v3, "tmpVisibility":I
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBar:Z

    if-eqz v8, :cond_38

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v8

    iget v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBarLayer:I

    if-ge v8, v9, :cond_38

    .line 7727
    and-int/lit8 v3, v3, -0x8

    .line 7729
    :cond_38
    move v5, v3

    .line 7730
    .local v5, "visibility":I
    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    xor-int v0, v5, v8

    .line 7733
    .local v0, "diff":I
    const/4 v4, 0x0

    .line 7734
    .local v4, "topIsRemoveNav":Z
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v8

    if-nez v8, :cond_4a

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportSPC()Z

    move-result v8

    if-eqz v8, :cond_6e

    :cond_4a
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopMaintainSystemUIAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v8, :cond_6e

    .line 7736
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopMaintainSystemUIAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 7737
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v8, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    and-int/lit8 v8, v8, 0x8

    if-nez v8, :cond_60

    iget v8, v1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_ad

    :cond_60
    move v4, v7

    .line 7739
    :goto_61
    iget v7, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7db

    if-ne v7, v8, :cond_af

    .line 7740
    const/4 v4, 0x0

    .line 7746
    :cond_68
    :goto_68
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastTopIsRemoveNavigation:Z

    if-eq v4, v7, :cond_6e

    .line 7747
    or-int/lit8 v0, v0, 0x8

    .line 7757
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_6e
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7, v8}, Landroid/view/WindowManagerPolicy$WindowState;->getNeedsMenuLw(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v2

    .line 7758
    .local v2, "needsMenu":Z
    if-nez v0, :cond_86

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    if-ne v7, v2, :cond_86

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v8

    if-eq v7, v8, :cond_8

    .line 7764
    :cond_86
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v6

    if-nez v6, :cond_92

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportSPC()Z

    move-result v6

    if-eqz v6, :cond_94

    .line 7765
    :cond_92
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastTopIsRemoveNavigation:Z

    .line 7769
    :cond_94
    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    .line 7770
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    .line 7771
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    .line 7772
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/internal/policy/impl/PhoneWindowManager$33;

    invoke-direct {v7, p0, v5, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$33;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;IZ)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v6, v0

    .line 7786
    goto/16 :goto_8

    .end local v2    # "needsMenu":Z
    .restart local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_ad
    move v4, v6

    .line 7737
    goto :goto_61

    .line 7741
    :cond_af
    iget v7, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v7, v10, :cond_68

    .line 7742
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-nez v7, :cond_bb

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    if-eqz v7, :cond_68

    .line 7743
    :cond_bb
    const/4 v4, 0x0

    goto :goto_68
.end method

.method private waitForKeyguard(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .registers 4
    .param p1, "screenOnListener"    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .prologue
    .line 6784
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    if-eqz v0, :cond_1b

    .line 6785
    if-eqz p1, :cond_11

    .line 6786
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$27;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$27;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->onScreenTurnedOn(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V

    .line 6800
    :goto_10
    return-void

    .line 6794
    :cond_11
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->onScreenTurnedOn(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V

    .line 6799
    :goto_17
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishScreenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    goto :goto_10

    .line 6797
    :cond_1b
    const-string v0, "WindowManager"

    const-string v1, "No keyguard mediator!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method private waitForKeyguardWindowDrawn(Landroid/os/IBinder;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .registers 5
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "screenOnListener"    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .prologue
    .line 6804
    if-eqz p1, :cond_11

    .line 6806
    :try_start_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$28;

    invoke-direct {v1, p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$28;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->waitForWindowDrawn(Landroid/os/IBinder;Landroid/os/IRemoteCallback;)Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_10

    move-result v0

    if-eqz v0, :cond_11

    .line 6823
    :goto_f
    return-void

    .line 6816
    :catch_10
    move-exception v0

    .line 6821
    :cond_11
    const-string v0, "WindowManager"

    const-string v1, "No lock screen!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6822
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishScreenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    goto :goto_f
.end method


# virtual methods
.method public addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIII)Landroid/view/View;
    .registers 25
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "theme"    # I
    .param p4, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p5, "nonLocalizedLabel"    # Ljava/lang/CharSequence;
    .param p6, "labelRes"    # I
    .param p7, "icon"    # I
    .param p8, "windowFlags"    # I
    .param p9, "appWindowMode"    # I

    .prologue
    .line 2219
    if-nez p2, :cond_4

    .line 2220
    const/4 v12, 0x0

    .line 2353
    :cond_3
    :goto_3
    return-object v12

    .line 2223
    :cond_4
    const/4 v11, 0x0

    .line 2224
    .local v11, "wm":Landroid/view/WindowManager;
    const/4 v9, 0x0

    .line 2227
    .local v9, "view":Landroid/view/View;
    :try_start_6
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2231
    .local v3, "context":Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getThemeResId()I
    :try_end_b
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_6 .. :try_end_b} :catch_18c
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_b} :catch_1c0
    .catchall {:try_start_6 .. :try_end_b} :catchall_1f2

    move-result v12

    move/from16 v0, p3

    if-ne v0, v12, :cond_12

    if-eqz p6, :cond_1e

    .line 2233
    :cond_12
    const/4 v12, 0x0

    :try_start_13
    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v12}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 2234
    move/from16 v0, p3

    invoke-virtual {v3, v0}, Landroid/content/Context;->setTheme(I)V
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_1e} :catch_206
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_13 .. :try_end_1e} :catch_18c
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_1e} :catch_1c0
    .catchall {:try_start_13 .. :try_end_1e} :catchall_1f2

    .line 2240
    :cond_1e
    :goto_1e
    :try_start_1e
    invoke-static {v3}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v10

    .line 2241
    .local v10, "win":Landroid/view/Window;
    invoke-virtual {v10}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v8

    .line 2242
    .local v8, "ta":Landroid/content/res/TypedArray;
    const/16 v12, 0xc

    const/4 v13, 0x0

    invoke-virtual {v8, v12, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    if-nez v12, :cond_38

    const/16 v12, 0xe

    const/4 v13, 0x0

    invoke-virtual {v8, v12, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_35
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1e .. :try_end_35} :catch_18c
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_35} :catch_1c0
    .catchall {:try_start_1e .. :try_end_35} :catchall_1f2

    move-result v12

    if-eqz v12, :cond_4c

    .line 2246
    :cond_38
    const/4 v12, 0x0

    .line 2347
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_3

    .line 2348
    const-string v13, "WindowManager"

    const-string v14, "view not successfully added to wm, removing view"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2349
    invoke-interface {v11, v9}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_3

    .line 2249
    :cond_4c
    :try_start_4c
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 2250
    .local v6, "r":Landroid/content/res/Resources;
    move/from16 v0, p6

    move-object/from16 v1, p5

    invoke-virtual {v6, v0, v1}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 2252
    const/4 v12, 0x3

    invoke-virtual {v10, v12}, Landroid/view/Window;->setType(I)V

    .line 2258
    or-int/lit8 v12, p8, 0x10

    or-int/lit8 v12, v12, 0x8

    const/high16 v13, 0x20000

    or-int/2addr v12, v13

    or-int/lit8 v13, p8, 0x10

    or-int/lit8 v13, v13, 0x8

    const/high16 v14, 0x20000

    or-int/2addr v13, v14

    invoke-virtual {v10, v12, v13}, Landroid/view/Window;->setFlags(II)V

    .line 2268
    invoke-virtual/range {p4 .. p4}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v12

    if-nez v12, :cond_7b

    .line 2269
    const/high16 v12, 0x20000000

    invoke-virtual {v10, v12}, Landroid/view/Window;->addFlags(I)V

    .line 2272
    :cond_7b
    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-virtual {v10, v12, v13}, Landroid/view/Window;->setLayout(II)V

    .line 2275
    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 2276
    .local v5, "params":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p1

    iput-object v0, v5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2277
    move-object/from16 v0, p2

    iput-object v0, v5, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2278
    invoke-virtual {v10}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v12

    const/16 v13, 0x8

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    iput v12, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2280
    iget v12, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v12, v12, 0x1

    iput v12, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2282
    iget v12, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v12, v12, 0x10

    iput v12, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2283
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Starting "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2286
    invoke-static/range {p9 .. p9}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I
    :try_end_c0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_4c .. :try_end_c0} :catch_18c
    .catch Ljava/lang/RuntimeException; {:try_start_4c .. :try_end_c0} :catch_1c0
    .catchall {:try_start_4c .. :try_end_c0} :catchall_1f2

    move-result v12

    const/high16 v13, 0x2000000

    if-ne v12, v13, :cond_12e

    .line 2287
    move/from16 v0, p9

    and-int/lit16 v12, v0, 0x800

    if-eqz v12, :cond_e0

    .line 2288
    const/4 v12, 0x0

    .line 2347
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_3

    .line 2348
    const-string v13, "WindowManager"

    const-string v14, "view not successfully added to wm, removing view"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2349
    invoke-interface {v11, v9}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto/16 :goto_3

    .line 2290
    :cond_e0
    :try_start_e0
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->arrange:I
    :try_end_ec
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_e0 .. :try_end_ec} :catch_18c
    .catch Ljava/lang/RuntimeException; {:try_start_e0 .. :try_end_ec} :catch_1c0
    .catchall {:try_start_e0 .. :try_end_ec} :catchall_1f2

    and-int/lit16 v2, v12, -0x801

    .line 2291
    .local v2, "arrange":I
    sparse-switch v2, :sswitch_data_20a

    .line 2306
    const/4 v12, 0x0

    .line 2347
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_3

    .line 2348
    const-string v13, "WindowManager"

    const-string v14, "view not successfully added to wm, removing view"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2349
    invoke-interface {v11, v9}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto/16 :goto_3

    .line 2294
    :sswitch_106
    :try_start_106
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;

    invoke-static/range {p9 .. p9}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v7

    .line 2295
    .local v7, "rect":Landroid/graphics/Rect;
    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_157

    .line 2296
    iget v12, v7, Landroid/graphics/Rect;->left:I

    iput v12, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2297
    iget v12, v7, Landroid/graphics/Rect;->top:I

    iput v12, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2298
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v12

    iput v12, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2299
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v12

    iput v12, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2300
    const/16 v12, 0x33

    iput v12, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2311
    .end local v2    # "arrange":I
    .end local v7    # "rect":Landroid/graphics/Rect;
    :cond_12e
    const-string v12, "window"

    invoke-virtual {v3, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Landroid/view/WindowManager;

    move-object v11, v0

    .line 2312
    invoke-virtual {v10}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    .line 2314
    invoke-virtual {v10}, Landroid/view/Window;->isFloating()Z
    :try_end_13f
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_106 .. :try_end_13f} :catch_18c
    .catch Ljava/lang/RuntimeException; {:try_start_106 .. :try_end_13f} :catch_1c0
    .catchall {:try_start_106 .. :try_end_13f} :catchall_1f2

    move-result v12

    if-eqz v12, :cond_16c

    .line 2321
    const/4 v12, 0x0

    .line 2347
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_3

    .line 2348
    const-string v13, "WindowManager"

    const-string v14, "view not successfully added to wm, removing view"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2349
    invoke-interface {v11, v9}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto/16 :goto_3

    .line 2302
    .restart local v2    # "arrange":I
    .restart local v7    # "rect":Landroid/graphics/Rect;
    :cond_157
    const/4 v12, 0x0

    .line 2347
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_3

    .line 2348
    const-string v13, "WindowManager"

    const-string v14, "view not successfully added to wm, removing view"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2349
    invoke-interface {v11, v9}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto/16 :goto_3

    .line 2329
    .end local v2    # "arrange":I
    .end local v7    # "rect":Landroid/graphics/Rect;
    :cond_16c
    :try_start_16c
    invoke-interface {v11, v9, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2333
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    :try_end_172
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_16c .. :try_end_172} :catch_18c
    .catch Ljava/lang/RuntimeException; {:try_start_16c .. :try_end_172} :catch_1c0
    .catchall {:try_start_16c .. :try_end_172} :catchall_1f2

    move-result-object v12

    if-eqz v12, :cond_18a

    move-object v12, v9

    .line 2347
    :goto_176
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_3

    .line 2348
    const-string v13, "WindowManager"

    const-string v14, "view not successfully added to wm, removing view"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2349
    invoke-interface {v11, v9}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto/16 :goto_3

    .line 2333
    :cond_18a
    const/4 v12, 0x0

    goto :goto_176

    .line 2334
    .end local v3    # "context":Landroid/content/Context;
    .end local v5    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "r":Landroid/content/res/Resources;
    .end local v8    # "ta":Landroid/content/res/TypedArray;
    .end local v10    # "win":Landroid/view/Window;
    :catch_18c
    move-exception v4

    .line 2336
    .local v4, "e":Landroid/view/WindowManager$BadTokenException;
    :try_start_18d
    sget-boolean v12, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v12, :cond_1ab

    .line 2337
    const-string v12, "WindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " already running, starting window not displayed"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ab
    .catchall {:try_start_18d .. :try_end_1ab} :catchall_1f2

    .line 2347
    :cond_1ab
    if-eqz v9, :cond_1bd

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    if-nez v12, :cond_1bd

    .line 2348
    const-string v12, "WindowManager"

    const-string v13, "view not successfully added to wm, removing view"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2349
    invoke-interface {v11, v9}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 2353
    .end local v4    # "e":Landroid/view/WindowManager$BadTokenException;
    :cond_1bd
    :goto_1bd
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 2339
    :catch_1c0
    move-exception v4

    .line 2343
    .local v4, "e":Ljava/lang/RuntimeException;
    :try_start_1c1
    sget-boolean v12, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v12, :cond_1df

    .line 2344
    const-string v12, "WindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " failed creating starting window"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1df
    .catchall {:try_start_1c1 .. :try_end_1df} :catchall_1f2

    .line 2347
    :cond_1df
    if-eqz v9, :cond_1bd

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    if-nez v12, :cond_1bd

    .line 2348
    const-string v12, "WindowManager"

    const-string v13, "view not successfully added to wm, removing view"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2349
    invoke-interface {v11, v9}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_1bd

    .line 2347
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :catchall_1f2
    move-exception v12

    if-eqz v9, :cond_205

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_205

    .line 2348
    const-string v13, "WindowManager"

    const-string v14, "view not successfully added to wm, removing view"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2349
    invoke-interface {v11, v9}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_205
    throw v12

    .line 2235
    .restart local v3    # "context":Landroid/content/Context;
    :catch_206
    move-exception v12

    goto/16 :goto_1e

    .line 2291
    nop

    :sswitch_data_20a
    .sparse-switch
        0x1 -> :sswitch_106
        0x8 -> :sswitch_106
    .end sparse-switch
.end method

.method public adjustConfigurationLw(Landroid/content/res/Configuration;II)V
    .registers 7
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "keyboardPresence"    # I
    .param p3, "navigationPresence"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1961
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_39

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHaveBuiltInKeyboard:Z

    .line 1963
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    .line 1964
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readLidState()V

    .line 1965
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyLidSwitchState()V

    .line 1967
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, v1, :cond_20

    if-ne p2, v1, :cond_28

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1970
    :cond_20
    iput v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1971
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    if-nez v0, :cond_28

    .line 1972
    iput v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1976
    :cond_28
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v0, v1, :cond_36

    if-ne p3, v1, :cond_38

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1979
    :cond_36
    iput v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 1981
    :cond_38
    return-void

    .line 1961
    :cond_39
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public adjustSystemUiVisibilityLw(I)I
    .registers 4
    .param p1, "visibility"    # I

    .prologue
    .line 3681
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 3684
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0
.end method

.method public adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V
    .registers 4
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1904
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_26

    .line 1923
    :goto_5
    return-void

    .line 1909
    :sswitch_6
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x18

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1911
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_5

    .line 1915
    :sswitch_15
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_5

    .line 1919
    :sswitch_1c
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, 0x10100

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_5

    .line 1904
    nop

    :sswitch_data_26
    .sparse-switch
        0x7d5 -> :sswitch_15
        0x7d6 -> :sswitch_6
        0x7df -> :sswitch_6
        0x832 -> :sswitch_1c
    .end sparse-switch
.end method

.method public allowAppAnimationsLw()Z
    .registers 2

    .prologue
    .line 5468
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v0

    if-nez v0, :cond_16

    .line 5471
    const/4 v0, 0x0

    .line 5473
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x1

    goto :goto_15
.end method

.method public applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .registers 4
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 4996
    sget v0, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_NORMAL:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;I)V

    .line 4997
    return-void
.end method

.method public applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;I)V
    .registers 14
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "windowMode"    # I

    .prologue
    const/4 v5, 0x2

    const/16 v7, 0x7d4

    const/4 v2, 0x0

    const/4 v8, -0x1

    const/4 v3, 0x1

    .line 5005
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopMaintainSystemUIAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v4, :cond_2c

    .line 5006
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v4, v3, :cond_172

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x63

    if-gt v4, v6, :cond_172

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v4, :cond_172

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v4, :cond_172

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v4, v8, :cond_172

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v4, v8, :cond_172

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_172

    .line 5013
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopMaintainSystemUIAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5027
    :cond_2c
    :goto_2c
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v4, :cond_46

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_46

    .line 5029
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBarLayer:I

    if-gez v4, :cond_46

    .line 5030
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBar:Z

    .line 5031
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBarLayer:I

    .line 5034
    :cond_46
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v4, :cond_153

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v4

    if-eqz v4, :cond_153

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isGoneForLayoutLw()Z

    move-result v4

    if-nez v4, :cond_153

    .line 5036
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_70

    .line 5037
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v4, v7, :cond_188

    .line 5038
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    .line 5043
    :goto_62
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    and-int/lit16 v4, v4, 0x1000

    if-nez v4, :cond_6e

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_70

    .line 5045
    :cond_6e
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTransparentStatusBar:Z

    .line 5049
    :cond_70
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v4, v7, :cond_76

    .line 5050
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingLockscreen:Z

    .line 5052
    :cond_76
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v4, v3, :cond_80

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x63

    if-le v4, v6, :cond_86

    :cond_80
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x832

    if-ne v4, v6, :cond_18c

    :cond_86
    move v0, v3

    .line 5055
    .local v0, "applyWindow":Z
    :goto_87
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7e7

    if-ne v4, v6, :cond_a0

    .line 5058
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamingLockscreen:Z

    if-eqz v4, :cond_9d

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_a0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasDrawnLw()Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 5060
    :cond_9d
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    .line 5061
    const/4 v0, 0x1

    .line 5066
    :cond_a0
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v4, v3, :cond_18f

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v4, :cond_18f

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v4, :cond_18f

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-ne v4, v6, :cond_18f

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ne v4, v6, :cond_18f

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getForcedLocalOrientation()I

    move-result v4

    if-eq v4, v8, :cond_18f

    move v1, v3

    .line 5072
    .local v1, "forcedLocalOrientationWin":Z
    :goto_d7
    if-eqz v0, :cond_f1

    invoke-static {p3}, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->mode(I)I

    move-result v4

    sget v6, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_NORMAL:I

    if-ne v4, v6, :cond_f1

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v4, :cond_f1

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v4, :cond_f1

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v4, v8, :cond_f1

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v4, v8, :cond_f3

    :cond_f1
    if-eqz v1, :cond_153

    .line 5078
    :cond_f3
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5079
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x80000

    and-int/2addr v4, v6

    if-eqz v4, :cond_12a

    .line 5081
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    .line 5082
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingLockscreen:Z

    if-eqz v4, :cond_192

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v4

    if-eqz v4, :cond_192

    move v4, v3

    :goto_109
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    .line 5086
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x200000

    and-int/2addr v4, v6

    if-eqz v4, :cond_12a

    iget-wide v6, p2, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-gez v4, :cond_12a

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_12a

    .line 5094
    const-wide/16 v6, 0x146a

    iput-wide v6, p2, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 5095
    const-wide/16 v6, 0x0

    iput-wide v6, p2, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 5100
    :cond_12a
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x400000

    and-int/2addr v4, v6

    if-eqz v4, :cond_14b

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    if-nez v4, :cond_14b

    .line 5103
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v4, p1, :cond_195

    move v4, v5

    :goto_13a
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    .line 5105
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5106
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingLockscreen:Z

    if-eqz v4, :cond_149

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v4

    if-eqz v4, :cond_149

    move v2, v3

    :cond_149
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    .line 5109
    :cond_14b
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_153

    .line 5110
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    .line 5116
    .end local v0    # "applyWindow":Z
    .end local v1    # "forcedLocalOrientationWin":Z
    :cond_153
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v2, :cond_171

    .line 5117
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v2, v3, :cond_164

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_164

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v2, v5, :cond_171

    :cond_164
    invoke-static {p3}, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->option(I)I

    move-result v2

    sget v3, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_OPTION_COMMON_PINUP:I

    and-int/2addr v2, v3

    if-nez v2, :cond_171

    .line 5119
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5120
    iput p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowMode:I

    .line 5124
    :cond_171
    return-void

    .line 5014
    :cond_172
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v4, v7, :cond_17c

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7db

    if-ne v4, v6, :cond_2c

    .line 5015
    :cond_17c
    if-eqz p1, :cond_2c

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 5020
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopMaintainSystemUIAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    goto/16 :goto_2c

    .line 5040
    :cond_188
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    goto/16 :goto_62

    :cond_18c
    move v0, v2

    .line 5052
    goto/16 :goto_87

    .restart local v0    # "applyWindow":Z
    :cond_18f
    move v1, v2

    .line 5066
    goto/16 :goto_d7

    .restart local v1    # "forcedLocalOrientationWin":Z
    :cond_192
    move v4, v2

    .line 5082
    goto/16 :goto_109

    :cond_195
    move v4, v3

    .line 5103
    goto :goto_13a
.end method

.method public beginLayoutLw(ZIII)V
    .registers 27
    .param p1, "isDefaultDisplay"    # Z
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I
    .param p4, "displayRotation"    # I

    .prologue
    .line 3745
    if-eqz p1, :cond_3a8

    .line 3746
    packed-switch p4, :pswitch_data_4c2

    .line 3766
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    move/from16 v16, v0

    .line 3767
    .local v16, "overscanLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    move/from16 v18, v0

    .line 3768
    .local v18, "overscanTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    move/from16 v17, v0

    .line 3769
    .local v17, "overscanRight":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    .line 3778
    .local v15, "overscanBottom":I
    :goto_1b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    .line 3779
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    .line 3780
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    .line 3781
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    .line 3782
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemLeft:I

    .line 3783
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    .line 3784
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    .line 3785
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    .line 3786
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    .line 3787
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    .line 3788
    sub-int v2, p2, v16

    sub-int v2, v2, v17

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    .line 3789
    sub-int v2, p3, v18

    sub-int/2addr v2, v15

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    .line 3790
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    .line 3791
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    .line 3792
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    .line 3793
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    .line 3794
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    .line 3796
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    .line 3798
    sub-int v2, p2, v17

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    .line 3800
    sub-int v2, p3, v15

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    .line 3802
    const/high16 v2, 0x10000000

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    .line 3803
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    .line 3806
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideWindow:Z

    .line 3807
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowPinupWindowForce:Z

    .line 3808
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowOverPinupWindow:Z

    .line 3812
    sget-object v19, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 3813
    .local v19, "pf":Landroid/graphics/Rect;
    sget-object v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 3814
    .local v11, "df":Landroid/graphics/Rect;
    sget-object v14, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    .line 3815
    .local v14, "of":Landroid/graphics/Rect;
    sget-object v21, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 3816
    .local v21, "vf":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, v21

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, v14, Landroid/graphics/Rect;->left:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 3817
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, v21

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iput v2, v14, Landroid/graphics/Rect;->top:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 3818
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, v21

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, v14, Landroid/graphics/Rect;->right:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 3819
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, v21

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    iput v2, v14, Landroid/graphics/Rect;->bottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 3821
    if-eqz p1, :cond_35f

    .line 3825
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    and-int/lit8 v2, v2, 0xa

    if-nez v2, :cond_3b1

    const/4 v13, 0x1

    .line 3833
    .local v13, "navVisible":Z
    :goto_15f
    if-eqz v13, :cond_3b4

    .line 3834
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    if-eqz v2, :cond_173

    .line 3835
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$FakeWindow;->dismiss()V

    .line 3836
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    .line 3852
    :cond_173
    :goto_173
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v2

    if-nez v2, :cond_17f

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportSPC()Z

    move-result v2

    if-eqz v2, :cond_186

    .line 3857
    :cond_17f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastTopIsRemoveNavigation:Z

    if-eqz v2, :cond_3f8

    .line 3858
    const/4 v13, 0x0

    .line 3869
    :cond_186
    :goto_186
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    if-nez v2, :cond_40f

    const/4 v2, 0x1

    :goto_18d
    or-int/2addr v13, v2

    .line 3871
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_25a

    .line 3876
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v2, :cond_1a0

    move/from16 v0, p2

    move/from16 v1, p3

    if-ge v0, v1, :cond_412

    :cond_1a0
    const/4 v2, 0x1

    :goto_1a1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    .line 3877
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v2, :cond_43b

    .line 3879
    sub-int v2, p3, v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    aget v3, v3, p4

    sub-int v20, v2, v3

    .line 3881
    .local v20, "top":I
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    sub-int v4, p3, v15

    move/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3882
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    .line 3883
    if-eqz v13, :cond_415

    .line 3884
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 3885
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    .line 3886
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    .line 3887
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    .line 3898
    :cond_1f9
    :goto_1f9
    if-eqz v13, :cond_20d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_20d

    .line 3902
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    .line 3934
    .end local v20    # "top":I
    :cond_20d
    :goto_20d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    .line 3935
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    .line 3936
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    .line 3937
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    .line 3938
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    .line 3940
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    invoke-interface/range {v2 .. v7}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3948
    :cond_25a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_35f

    .line 3950
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v14, Landroid/graphics/Rect;->left:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 3951
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v14, Landroid/graphics/Rect;->top:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 3952
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    add-int/2addr v2, v3

    iput v2, v14, Landroid/graphics/Rect;->right:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 3953
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    add-int/2addr v2, v3

    iput v2, v14, Landroid/graphics/Rect;->bottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 3955
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    move-object/from16 v0, v21

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 3956
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, v21

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 3957
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    move-object/from16 v0, v21

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 3958
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, v21

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 3960
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    .line 3963
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v3, v19

    move-object v4, v11

    move-object/from16 v5, v21

    move-object/from16 v6, v21

    move-object/from16 v7, v21

    invoke-interface/range {v2 .. v7}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3966
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    .line 3974
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_33e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isStatusBarShowOnFullScreen()Z

    move-result v2

    if-nez v2, :cond_33e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isStatusBarHidingOnFullScreen()Z

    move-result v2

    if-nez v2, :cond_33e

    .line 3981
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    .line 3983
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    .line 3984
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    .line 3985
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    .line 3986
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    .line 3995
    :cond_33e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_35f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_35f

    .line 3999
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    .line 4003
    .end local v13    # "navVisible":Z
    :cond_35f
    return-void

    .line 3748
    .end local v11    # "df":Landroid/graphics/Rect;
    .end local v14    # "of":Landroid/graphics/Rect;
    .end local v15    # "overscanBottom":I
    .end local v16    # "overscanLeft":I
    .end local v17    # "overscanRight":I
    .end local v18    # "overscanTop":I
    .end local v19    # "pf":Landroid/graphics/Rect;
    .end local v21    # "vf":Landroid/graphics/Rect;
    :pswitch_360
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    move/from16 v16, v0

    .line 3749
    .restart local v16    # "overscanLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    move/from16 v18, v0

    .line 3750
    .restart local v18    # "overscanTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    move/from16 v17, v0

    .line 3751
    .restart local v17    # "overscanRight":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    .line 3752
    .restart local v15    # "overscanBottom":I
    goto/16 :goto_1b

    .line 3754
    .end local v15    # "overscanBottom":I
    .end local v16    # "overscanLeft":I
    .end local v17    # "overscanRight":I
    .end local v18    # "overscanTop":I
    :pswitch_378
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    move/from16 v16, v0

    .line 3755
    .restart local v16    # "overscanLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    move/from16 v18, v0

    .line 3756
    .restart local v18    # "overscanTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    move/from16 v17, v0

    .line 3757
    .restart local v17    # "overscanRight":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    .line 3758
    .restart local v15    # "overscanBottom":I
    goto/16 :goto_1b

    .line 3760
    .end local v15    # "overscanBottom":I
    .end local v16    # "overscanLeft":I
    .end local v17    # "overscanRight":I
    .end local v18    # "overscanTop":I
    :pswitch_390
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    move/from16 v16, v0

    .line 3761
    .restart local v16    # "overscanLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    move/from16 v18, v0

    .line 3762
    .restart local v18    # "overscanTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    move/from16 v17, v0

    .line 3763
    .restart local v17    # "overscanRight":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    .line 3764
    .restart local v15    # "overscanBottom":I
    goto/16 :goto_1b

    .line 3773
    .end local v15    # "overscanBottom":I
    .end local v16    # "overscanLeft":I
    .end local v17    # "overscanRight":I
    .end local v18    # "overscanTop":I
    :cond_3a8
    const/16 v16, 0x0

    .line 3774
    .restart local v16    # "overscanLeft":I
    const/16 v18, 0x0

    .line 3775
    .restart local v18    # "overscanTop":I
    const/16 v17, 0x0

    .line 3776
    .restart local v17    # "overscanRight":I
    const/4 v15, 0x0

    .restart local v15    # "overscanBottom":I
    goto/16 :goto_1b

    .line 3825
    .restart local v11    # "df":Landroid/graphics/Rect;
    .restart local v14    # "of":Landroid/graphics/Rect;
    .restart local v19    # "pf":Landroid/graphics/Rect;
    .restart local v21    # "vf":Landroid/graphics/Rect;
    :cond_3b1
    const/4 v13, 0x0

    goto/16 :goto_15f

    .line 3839
    .restart local v13    # "navVisible":Z
    :cond_3b4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3d0

    .line 3840
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    if-eqz v2, :cond_173

    .line 3841
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$FakeWindow;->dismiss()V

    .line 3842
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    goto/16 :goto_173

    .line 3845
    :cond_3d0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    if-nez v2, :cond_173

    .line 3846
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

    const-string v5, "hidden nav"

    const/16 v6, 0x7e6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-interface/range {v2 .. v10}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->addFakeWindow(Landroid/os/Looper;Landroid/view/InputEventReceiver$Factory;Ljava/lang/String;IIZZZ)Landroid/view/WindowManagerPolicy$FakeWindow;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    goto/16 :goto_173

    .line 3859
    :cond_3f8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopMaintainSystemUIAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_186

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopMaintainSystemUIAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-ne v2, v3, :cond_186

    .line 3861
    const/4 v13, 0x1

    goto/16 :goto_186

    .line 3869
    :cond_40f
    const/4 v2, 0x0

    goto/16 :goto_18d

    .line 3876
    :cond_412
    const/4 v2, 0x0

    goto/16 :goto_1a1

    .line 3890
    .restart local v20    # "top":I
    :cond_415
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    .line 3892
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v2

    if-nez v2, :cond_429

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportSPC()Z

    move-result v2

    if-eqz v2, :cond_1f9

    :cond_429
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastTopIsRemoveNavigation:Z

    if-eqz v2, :cond_1f9

    .line 3894
    sub-int v2, p3, v15

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    goto/16 :goto_1f9

    .line 3906
    .end local v20    # "top":I
    :cond_43b
    sub-int v2, p2, v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    aget v3, v3, p4

    sub-int v12, v2, v3

    .line 3908
    .local v12, "left":I
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    sub-int v4, p2, v17

    move/from16 v0, p3

    invoke-virtual {v2, v12, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 3909
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    .line 3910
    if-eqz v13, :cond_49d

    .line 3911
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 3912
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    .line 3913
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    .line 3914
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    .line 3925
    :cond_487
    :goto_487
    if-eqz v13, :cond_20d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_20d

    .line 3929
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    goto/16 :goto_20d

    .line 3917
    :cond_49d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    .line 3919
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v2

    if-nez v2, :cond_4b1

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportSPC()Z

    move-result v2

    if-eqz v2, :cond_487

    :cond_4b1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastTopIsRemoveNavigation:Z

    if-eqz v2, :cond_487

    .line 3921
    sub-int v2, p2, v17

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    goto :goto_487

    .line 3746
    :pswitch_data_4c2
    .packed-switch 0x1
        :pswitch_360
        :pswitch_378
        :pswitch_390
    .end packed-switch
.end method

.method public beginPostLayoutPolicyLw(II)V
    .registers 6
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 4973
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopMaintainSystemUIAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 4974
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTransparentStatusBar:Z

    .line 4976
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 4977
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    .line 4978
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    .line 4979
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBar:Z

    .line 4980
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBarLayer:I

    .line 4982
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    .line 4983
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    .line 4984
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    .line 4985
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingLockscreen:Z

    .line 4986
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    .line 4988
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 4990
    return-void
.end method

.method public canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .registers 6
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v0, 0x0

    .line 2190
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sget v2, Lcom/android/internal/policy/impl/MultiWindowReflector$LayoutParams;->TYPE_MULTI_WINDOW_CONTROL_BAR:I

    if-eq v1, v2, :cond_13

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sget v2, Lcom/android/internal/policy/impl/MultiWindowReflector$LayoutParams;->TYPE_MULTI_WINDOW_EXTRA_CONTROL_BAR:I

    if-eq v1, v2, :cond_13

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sget v2, Lcom/android/internal/policy/impl/MultiWindowReflector$LayoutParams;->TYPE_MULTI_WINDOW_TRAY_BAR:I

    if-ne v1, v2, :cond_14

    .line 2207
    :cond_13
    :goto_13
    :sswitch_13
    return v0

    .line 2197
    :cond_14
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v1, :sswitch_data_1c

    .line 2207
    const/4 v0, 0x1

    goto :goto_13

    .line 2197
    nop

    :sswitch_data_1c
    .sparse-switch
        0x7d0 -> :sswitch_13
        0x7d4 -> :sswitch_13
        0x7dd -> :sswitch_13
        0x7e3 -> :sswitch_13
        0x7e7 -> :sswitch_13
        0x7e9 -> :sswitch_13
        0x832 -> :sswitch_13
    .end sparse-switch
.end method

.method public canMagnifyWindow(I)Z
    .registers 5
    .param p1, "windowType"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 7844
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportEasyOneHand()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 7845
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEasyOneHandEnabled:I

    if-lez v2, :cond_11

    .line 7846
    sparse-switch p1, :sswitch_data_16

    move v0, v1

    .line 7866
    :goto_10
    :sswitch_10
    return v0

    .line 7858
    :cond_11
    sparse-switch p1, :sswitch_data_24

    move v0, v1

    .line 7866
    goto :goto_10

    .line 7846
    :sswitch_data_16
    .sparse-switch
        0x7e9 -> :sswitch_10
        0x7eb -> :sswitch_10
        0x8a3 -> :sswitch_10
    .end sparse-switch

    .line 7858
    :sswitch_data_24
    .sparse-switch
        0x7db -> :sswitch_10
        0x7dc -> :sswitch_10
        0x7e3 -> :sswitch_10
        0x7eb -> :sswitch_10
    .end sparse-switch
.end method

.method public cancelPendingPowerKey()V
    .registers 1

    .prologue
    .line 7924
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 7925
    return-void
.end method

.method public checkAddPermission(Landroid/view/WindowManager$LayoutParams;[I)I
    .registers 7
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "outAppOp"    # [I

    .prologue
    const/4 v2, 0x0

    .line 1778
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1780
    .local v1, "type":I
    const/4 v3, -0x1

    aput v3, p2, v2

    .line 1782
    const/16 v3, 0x7d0

    if-lt v1, v3, :cond_e

    const/16 v3, 0xbb7

    if-le v1, v3, :cond_f

    .line 1852
    :cond_e
    :goto_e
    return v2

    .line 1788
    :cond_f
    const/16 v3, 0xbb6

    if-eq v1, v3, :cond_e

    .line 1794
    sget v3, Lcom/android/internal/policy/impl/MultiWindowReflector$LayoutParams;->TYPE_MULTI_WINDOW_CONTROL_BAR:I

    if-eq v1, v3, :cond_e

    sget v3, Lcom/android/internal/policy/impl/MultiWindowReflector$LayoutParams;->TYPE_MULTI_WINDOW_EXTRA_CONTROL_BAR:I

    if-eq v1, v3, :cond_e

    sget v3, Lcom/android/internal/policy/impl/MultiWindowReflector$LayoutParams;->TYPE_MULTI_WINDOW_TRAY_BAR:I

    if-eq v1, v3, :cond_e

    sget v3, Lcom/android/internal/policy/impl/MultiWindowReflector$LayoutParams;->TYPE_MULTI_WINDOW_EDIT_MODE:I

    if-eq v1, v3, :cond_e

    sget v3, Lcom/android/internal/policy/impl/MultiWindowReflector$LayoutParams;->TYPE_MULTI_WINDOW_GUIDE_MODE:I

    if-eq v1, v3, :cond_e

    const/16 v3, 0x8a1

    if-eq v1, v3, :cond_e

    .line 1805
    const/16 v3, 0x8fc

    if-eq v1, v3, :cond_e

    .line 1810
    const/4 v0, 0x0

    .line 1811
    .local v0, "permission":Ljava/lang/String;
    sparse-switch v1, :sswitch_data_4c

    .line 1844
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    .line 1846
    :goto_35
    :sswitch_35
    if-eqz v0, :cond_e

    .line 1847
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_e

    .line 1849
    const/4 v2, -0x8

    goto :goto_e

    .line 1837
    :sswitch_41
    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 1838
    const/16 v3, 0x18

    aput v3, p2, v2

    goto :goto_35

    .line 1841
    :sswitch_48
    const-string v0, "com.samsung.android.permission.BIND_KMS"

    .line 1842
    goto :goto_35

    .line 1811
    nop

    :sswitch_data_4c
    .sparse-switch
        0x7d2 -> :sswitch_41
        0x7d3 -> :sswitch_41
        0x7d5 -> :sswitch_35
        0x7d6 -> :sswitch_41
        0x7d7 -> :sswitch_41
        0x7da -> :sswitch_41
        0x7db -> :sswitch_35
        0x7dd -> :sswitch_35
        0x7e7 -> :sswitch_35
        0x832 -> :sswitch_41
        0x833 -> :sswitch_35
        0x834 -> :sswitch_35
        0x835 -> :sswitch_35
        0x89e -> :sswitch_35
        0x89f -> :sswitch_48
    .end sparse-switch
.end method

.method public checkHideTrayBar()Z
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 8226
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_40

    .line 8227
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 8228
    .local v0, "lpApp":Landroid/view/WindowManager$LayoutParams;
    move-object v1, v0

    .line 8230
    .local v1, "lpTopFullApp":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_1b

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v2, v3, :cond_1b

    .line 8232
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 8235
    :cond_1b
    if-eqz v1, :cond_37

    .line 8236
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x480000

    and-int/2addr v2, v5

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_37

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowMode:I

    invoke-static {v2}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v2

    const/high16 v5, 0x1000000

    if-ne v2, v5, :cond_37

    .line 8261
    .end local v0    # "lpApp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "lpTopFullApp":Landroid/view/WindowManager$LayoutParams;
    :cond_36
    :goto_36
    return v3

    .line 8242
    .restart local v0    # "lpApp":Landroid/view/WindowManager$LayoutParams;
    .restart local v1    # "lpTopFullApp":Landroid/view/WindowManager$LayoutParams;
    :cond_37
    if-eqz v0, :cond_40

    .line 8243
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v5, 0x4000000

    and-int/2addr v2, v5

    if-nez v2, :cond_36

    .line 8249
    .end local v0    # "lpApp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "lpTopFullApp":Landroid/view/WindowManager$LayoutParams;
    :cond_40
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    if-eqz v2, :cond_54

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isKidsModeEnabled()Z

    move-result v2

    if-nez v2, :cond_36

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isEasyModeEnabled()Z

    move-result v2

    if-nez v2, :cond_36

    .line 8253
    :cond_54
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    if-eqz v2, :cond_77

    move v2, v3

    :goto_59
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isCoverOpen()Z

    move-result v5

    if-nez v5, :cond_79

    move v5, v3

    :goto_62
    and-int/2addr v2, v5

    if-nez v2, :cond_36

    .line 8257
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isFlashBarTrayHideWindowShown(I)Z

    move-result v2

    if-nez v2, :cond_36

    :cond_75
    move v3, v4

    .line 8261
    goto :goto_36

    :cond_77
    move v2, v4

    .line 8253
    goto :goto_59

    :cond_79
    move v5, v4

    goto :goto_62
.end method

.method public checkShowToOwnerOnly(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 5
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v0, 0x1

    .line 1860
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v1, :sswitch_data_1a

    .line 1867
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_d

    .line 1898
    :cond_c
    :goto_c
    return v0

    :cond_d
    :sswitch_d
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_c

    const/4 v0, 0x0

    goto :goto_c

    .line 1860
    nop

    :sswitch_data_1a
    .sparse-switch
        0x3 -> :sswitch_d
        0x7d0 -> :sswitch_d
        0x7d1 -> :sswitch_d
        0x7d2 -> :sswitch_d
        0x7d4 -> :sswitch_d
        0x7d7 -> :sswitch_d
        0x7d8 -> :sswitch_d
        0x7d9 -> :sswitch_d
        0x7de -> :sswitch_d
        0x7e1 -> :sswitch_d
        0x7e2 -> :sswitch_d
        0x7e3 -> :sswitch_d
        0x7e4 -> :sswitch_d
        0x7e5 -> :sswitch_d
        0x7e6 -> :sswitch_d
        0x7e8 -> :sswitch_d
        0x7e9 -> :sswitch_d
        0x7ea -> :sswitch_d
        0x7eb -> :sswitch_d
        0x7ec -> :sswitch_d
    .end sparse-switch
.end method

.method public closeMultiWindowTrayBar()Z
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 8143
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_a

    .line 8165
    :cond_9
    :goto_9
    return v4

    .line 8146
    :cond_a
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 8150
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 8151
    .local v2, "point":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 8152
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v5}, Landroid/util/MathUtils;->min(II)F

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isStatusBarVisible()Z

    move-result v3

    if-eqz v3, :cond_4b

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    :goto_2c
    int-to-float v3, v3

    sub-float v1, v5, v3

    .line 8154
    .local v1, "min":F
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 8155
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    float-to-int v5, v1

    if-ge v3, v5, :cond_3f

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    float-to-int v5, v1

    if-lt v3, v5, :cond_9

    .line 8156
    :cond_3f
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/internal/policy/impl/PhoneWindowManager$34;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$34;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8163
    const/4 v4, 0x1

    goto :goto_9

    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "min":F
    :cond_4b
    move v3, v4

    .line 8152
    goto :goto_2c
.end method

.method public closeSystemWindows(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 7916
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 7917
    return-void
.end method

.method public createForceHideEnterAnimation(Z)Landroid/view/animation/Animation;
    .registers 4
    .param p1, "onWallpaper"    # Z

    .prologue
    .line 2583
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_c

    const v0, 0x10a003b

    :goto_7
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :cond_c
    const v0, 0x10a0038

    goto :goto_7
.end method

.method createHomeDockIntent()Landroid/content/Intent;
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 7463
    const/4 v2, 0x0

    .line 7468
    .local v2, "intent":Landroid/content/Intent;
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_16

    .line 7470
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    .line 7478
    :cond_9
    :goto_9
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/16 v6, 0xa

    if-ne v5, v6, :cond_50

    .line 7480
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMirrorLinkDockIntent:Landroid/content/Intent;

    move-object v3, v2

    .line 7484
    .end local v2    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    :goto_12
    if-nez v3, :cond_1e

    move-object v2, v3

    .line 7503
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v2    # "intent":Landroid/content/Intent;
    :goto_15
    return-object v4

    .line 7472
    :cond_16
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_9

    .line 7474
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    goto :goto_9

    .line 7488
    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_1e
    const/4 v0, 0x0

    .line 7489
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const v6, 0x10080

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 7492
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_30

    .line 7493
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 7495
    :cond_30
    if-eqz v0, :cond_4e

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_4e

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "android.dock_home"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 7498
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 7499
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v4, v2

    .line 7500
    goto :goto_15

    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_4e
    move-object v2, v3

    .line 7503
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v2    # "intent":Landroid/content/Intent;
    goto :goto_15

    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :cond_50
    move-object v3, v2

    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    goto :goto_12
.end method

.method public dismissKeyguardLw()V
    .registers 3

    .prologue
    .line 6888
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 6889
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$29;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$29;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6901
    :cond_12
    return-void
.end method

.method dispatchMediaKeyRepeatWithWakeLock(Landroid/view/KeyEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 6535
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 6537
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    or-int/lit16 v4, v4, 0x80

    invoke-static {p1, v1, v2, v3, v4}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    move-result-object v0

    .line 6543
    .local v0, "repeatEvent":Landroid/view/KeyEvent;
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 6544
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6545
    return-void
.end method

.method dispatchMediaKeyWithWakeLock(Landroid/view/KeyEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 6509
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    if-eqz v1, :cond_13

    .line 6514
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 6515
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 6516
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6519
    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 6521
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_38

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_38

    .line 6523
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 6525
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6527
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 6528
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6532
    .end local v0    # "msg":Landroid/os/Message;
    :goto_37
    return-void

    .line 6530
    :cond_38
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_37
.end method

.method dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 6548
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 6549
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 6550
    .local v0, "audioService":Landroid/media/IAudioService;
    if-eqz v0, :cond_f

    .line 6552
    :try_start_c
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->dispatchMediaKeyEventUnderWakelock(Landroid/view/KeyEvent;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 6558
    .end local v0    # "audioService":Landroid/media/IAudioService;
    :cond_f
    :goto_f
    return-void

    .line 6553
    .restart local v0    # "audioService":Landroid/media/IAudioService;
    :catch_10
    move-exception v1

    .line 6554
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchMediaKeyEvent threw exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public dispatchUnhandledKey(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .registers 27
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 3395
    const/16 v18, 0x0

    .line 3396
    .local v18, "fallbackEvent":Landroid/view/KeyEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x400

    if-nez v4, :cond_7c

    .line 3397
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v20

    .line 3398
    .local v20, "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v21

    .line 3399
    .local v21, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v22

    .line 3400
    .local v22, "metaState":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_7d

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_7d

    const/16 v19, 0x1

    .line 3405
    .local v19, "initialDown":Z
    :goto_24
    if-eqz v19, :cond_80

    .line 3406
    invoke-virtual/range {v20 .. v22}, Landroid/view/KeyCharacterMap;->getFallbackAction(II)Landroid/view/KeyCharacterMap$FallbackAction;

    move-result-object v17

    .line 3411
    .local v17, "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    :goto_2a
    if-eqz v17, :cond_7c

    .line 3417
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    or-int/lit16 v14, v4, 0x400

    .line 3418
    .local v14, "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    move-object/from16 v0, v17

    iget v9, v0, Landroid/view/KeyCharacterMap$FallbackAction;->keyCode:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    move-object/from16 v0, v17

    iget v11, v0, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v15

    const/16 v16, 0x0

    invoke-static/range {v4 .. v16}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v18

    .line 3425
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptFallback(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z

    move-result v4

    if-nez v4, :cond_6f

    .line 3426
    invoke-virtual/range {v18 .. v18}, Landroid/view/KeyEvent;->recycle()V

    .line 3427
    const/16 v18, 0x0

    .line 3430
    :cond_6f
    if-eqz v19, :cond_8d

    .line 3431
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3446
    .end local v14    # "flags":I
    .end local v17    # "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    .end local v19    # "initialDown":Z
    .end local v20    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v21    # "keyCode":I
    .end local v22    # "metaState":I
    :cond_7c
    :goto_7c
    return-object v18

    .line 3400
    .restart local v20    # "kcm":Landroid/view/KeyCharacterMap;
    .restart local v21    # "keyCode":I
    .restart local v22    # "metaState":I
    :cond_7d
    const/16 v19, 0x0

    goto :goto_24

    .line 3408
    .restart local v19    # "initialDown":Z
    :cond_80
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/KeyCharacterMap$FallbackAction;

    .restart local v17    # "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    goto :goto_2a

    .line 3432
    .restart local v14    # "flags":I
    :cond_8d
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7c

    .line 3433
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 3434
    invoke-virtual/range {v17 .. v17}, Landroid/view/KeyCharacterMap$FallbackAction;->recycle()V

    goto :goto_7c
.end method

.method public doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .registers 5
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 2177
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d4

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public doesForceHideBySViewCover(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .registers 5
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 2183
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x832

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 7930
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSafeMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7931
    const-string v0, " mSystemReady="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7932
    const-string v0, " mSystemBooted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7933
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLidState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7934
    const-string v0, " mLidOpenRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7935
    const-string v0, " mCoverCloseRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverCloseRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7936
    const-string v0, " mHdmiPlugged="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7937
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    if-nez v0, :cond_58

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    if-nez v0, :cond_58

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    if-eqz v0, :cond_85

    .line 7939
    :cond_58
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7940
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7941
    const-string v0, " mResettingSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7942
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7943
    const-string v0, " mForceClearedSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7944
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7946
    :cond_85
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    if-eqz v0, :cond_96

    .line 7947
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastFocusNeedsMenu="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7948
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7950
    :cond_96
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUiMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7951
    const-string v0, " mDockMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7952
    const-string v0, " mCarDockRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7953
    const-string v0, " mDeskDockRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7954
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUserRotationMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7955
    const-string v0, " mUserRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7956
    const-string v0, " mAllowAllRotations="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7957
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCurrentAppOrientation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7958
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCarDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7959
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7960
    const-string v0, " mDeskDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7961
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7962
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLidKeyboardAccessibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7963
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7964
    const-string v0, " mLidNavigationAccessibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7965
    const-string v0, " mLidControlsSleep="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7966
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLongPressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7967
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7968
    const-string v0, " mHasSoftInput="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7969
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mScreenOnEarly="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7970
    const-string v0, " mScreenOnFully="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7971
    const-string v0, " mOrientationSensorEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7972
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mOverscanScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7973
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7974
    const-string v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7975
    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7976
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    if-nez v0, :cond_19a

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    if-nez v0, :cond_19a

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    if-nez v0, :cond_19a

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    if-eqz v0, :cond_1c5

    .line 7978
    :cond_19a
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mOverscan left="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7979
    const-string v0, " top="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7980
    const-string v0, " right="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7981
    const-string v0, " bottom="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7983
    :cond_1c5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRestrictedOverscanScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7984
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7985
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7986
    const-string v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7987
    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7988
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUnrestrictedScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7989
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7990
    const-string v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7991
    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7992
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRestrictedScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7993
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7994
    const-string v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7995
    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7996
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStableFullscreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7997
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7998
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7999
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8000
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStable=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8001
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8002
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8003
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8004
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSystem=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8005
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8006
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8007
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8008
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCur=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8009
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8010
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8011
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8012
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContent=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8013
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8014
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8015
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8016
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDock=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8017
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8018
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8019
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8020
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDockLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8021
    const-string v0, " mStatusBarLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8022
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mShowingLockscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingLockscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8023
    const-string v0, " mShowingDream="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8024
    const-string v0, " mDreamingLockscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamingLockscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8025
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_3af

    .line 8026
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastInputMethodWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8027
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8029
    :cond_3af
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_3c0

    .line 8030
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastInputMethodTargetWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8031
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8033
    :cond_3c0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_3d1

    .line 8034
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8035
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8037
    :cond_3d1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_3e2

    .line 8038
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNavigationBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8039
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8041
    :cond_3e2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_3f3

    .line 8042
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8043
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8045
    :cond_3f3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_404

    .line 8046
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFocusedWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8047
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8049
    :cond_404
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    if-eqz v0, :cond_415

    .line 8050
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFocusedApp="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8051
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8053
    :cond_415
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_426

    .line 8054
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mWinDismissingKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8055
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8057
    :cond_426
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_437

    .line 8058
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopFullscreenOpaqueWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8059
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8061
    :cond_437
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBar:Z

    if-eqz v0, :cond_452

    .line 8062
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForcingShowNavBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8063
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "mForcingShowNavBarLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8064
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBarLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8066
    :cond_452
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopIsFullscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8067
    const-string v0, " mHideLockScreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8068
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForceStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8069
    const-string v0, " mForceStatusBarFromKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8070
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8071
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDismissKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8072
    const-string v0, " mWinDismissingKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 8073
    const-string v0, " mHomePressed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8074
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAllowLockscreenWhenOn="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8075
    const-string v0, " mLockScreenTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8076
    const-string v0, " mLockScreenTimerActive="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8077
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEndcallBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8078
    const-string v0, " mIncallPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8079
    const-string v0, " mLongPressOnHomeBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8080
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLandscapeRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8081
    const-string v0, " mSeascapeRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8082
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPortraitRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8083
    const-string v0, " mUpsideDownRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8084
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDemoHdmiRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDemoHdmiRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8085
    const-string v0, " mDemoHdmiRotationLock="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8087
    const-string v0, "  SAMSUNG States:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8088
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopMaintainSystemUIAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_53e

    .line 8089
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopMaintainSystemUIAppWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8090
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopMaintainSystemUIAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8092
    :cond_53e
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastTopIsRemoveNavigation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastTopIsRemoveNavigation:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8093
    const-string v0, " mTransparentStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTransparentStatusBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8094
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHomeDomeButton="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDomeButton:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8095
    const-string v0, " mHomeUsedToWake="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeUsedToWake:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8097
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 8100
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnableMultiWindowUISetting="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableMultiWindowUISetting:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8103
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEasyOneHandEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEasyOneHandEnabled:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8105
    return-void
.end method

.method public enableKeyguard(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 6852
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    if-eqz v0, :cond_9

    .line 6853
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->setKeyguardEnabled(Z)V

    .line 6855
    :cond_9
    return-void
.end method

.method public enableScreenAfterBoot()V
    .registers 3

    .prologue
    .line 7415
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readLidState()V

    .line 7416
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyLidSwitchState()V

    .line 7418
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWakeFlag(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDomeButton:Z

    .line 7420
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 7421
    return-void
.end method

.method public exitKeyguardSecurely(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
    .registers 3
    .param p1, "callback"    # Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .prologue
    .line 6859
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    if-eqz v0, :cond_9

    .line 6860
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 6862
    :cond_9
    return-void
.end method

.method public finishLayoutLw()V
    .registers 1

    .prologue
    .line 4966
    return-void
.end method

.method public finishPostLayoutPolicyLw()I
    .registers 14

    .prologue
    .line 5129
    const/4 v1, 0x0

    .line 5130
    .local v1, "changes":I
    const/4 v7, 0x0

    .line 5131
    .local v7, "topIsFullscreen":Z
    const/4 v6, 0x0

    .line 5132
    .local v6, "openByNotification":Z
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    if-eqz v10, :cond_18d

    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isCoverOpen()Z

    move-result v10

    if-eqz v10, :cond_18d

    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;

    if-eqz v10, :cond_18d

    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;

    invoke-virtual {v10}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getArrangeState()I

    move-result v10

    sget v11, Lcom/android/internal/policy/impl/MultiWindowReflector$Configuration;->ARRANGE_TOGGLE_MASK:I

    xor-int/lit8 v11, v11, -0x1

    and-int/2addr v10, v11

    const/16 v11, 0x8

    if-lt v10, v11, :cond_18d

    const/4 v3, 0x1

    .line 5134
    .local v3, "isArrangedBySplitMode":Z
    :goto_23
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v10, :cond_190

    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v10}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 5142
    .local v4, "lp":Landroid/view/WindowManager$LayoutParams;
    :goto_2d
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    if-nez v10, :cond_35

    .line 5143
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingLockscreen:Z

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamingLockscreen:Z

    .line 5146
    :cond_35
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v10, :cond_74

    .line 5153
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    if-eqz v10, :cond_193

    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v10, :cond_193

    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v10, :cond_193

    if-nez v3, :cond_193

    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowMode:I

    invoke-static {v10}, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->mode(I)I

    move-result v10

    sget v11, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_FREESTYLE:I

    if-ne v10, v11, :cond_193

    const/4 v5, 0x1

    .line 5160
    .local v5, "needsStatusBarShown":Z
    :goto_52
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    if-eqz v10, :cond_58

    if-eqz v3, :cond_5e

    :cond_58
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    if-nez v10, :cond_5e

    if-eqz v5, :cond_196

    .line 5163
    :cond_5e
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTransparentStatusBar:Z

    invoke-virtual {v10, v11}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->setTransparentStatusBar(Z)V

    .line 5165
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v10

    if-eqz v10, :cond_74

    .line 5166
    or-int/lit8 v1, v1, 0x1

    .line 5168
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifySystemUiVisibility(I)V

    .line 5295
    .end local v5    # "needsStatusBarShown":Z
    :cond_74
    :goto_74
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    .line 5298
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    if-nez v10, :cond_7e

    if-eqz v3, :cond_273

    :cond_7e
    const/4 v10, 0x1

    :goto_7f
    invoke-virtual {v11, v10, v6}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->setPropertiesToStatusBarWindowController(ZZ)V

    .line 5303
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v10, :cond_b3

    .line 5306
    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    if-eqz v10, :cond_276

    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v10

    if-eqz v10, :cond_96

    sget-boolean v10, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwipeLockShowingBeforeTimeout:Z

    if-eqz v10, :cond_276

    .line 5308
    :cond_96
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v10

    if-eqz v10, :cond_a1

    .line 5309
    or-int/lit8 v1, v1, 0x7

    .line 5313
    :cond_a1
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_b3

    .line 5314
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/internal/policy/impl/PhoneWindowManager$13;

    invoke-direct {v11, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$13;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5356
    :cond_b3
    :goto_b3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v10

    and-int/lit8 v10, v10, 0xe

    if-eqz v10, :cond_bd

    .line 5359
    or-int/lit8 v1, v1, 0x1

    .line 5363
    :cond_bd
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->checkHideTrayBar()Z

    move-result v10

    if-eqz v10, :cond_2c9

    .line 5364
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v10, :cond_d5

    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v10}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v10

    if-eqz v10, :cond_d5

    .line 5365
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    .line 5375
    :cond_d5
    :goto_d5
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5379
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 5383
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    if-eqz v10, :cond_18c

    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v10, :cond_18c

    .line 5384
    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowMode:I

    sget v11, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_OPTION_SPLIT_ZONE_MASK:I

    and-int v9, v10, v11

    .line 5385
    .local v9, "zone":I
    sget v0, Lcom/android/internal/policy/impl/MultiWindowReflector$Configuration;->ARRANGE_UNDEFINED:I

    .line 5386
    .local v0, "arrange":I
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;

    if-eqz v10, :cond_f8

    .line 5387
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;

    invoke-virtual {v10}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getArrangeState()I

    move-result v0

    .line 5389
    :cond_f8
    sget v10, Lcom/android/internal/policy/impl/MultiWindowReflector$Configuration;->ARRANGE_TOGGLE_MASK:I

    xor-int/lit8 v10, v10, -0x1

    and-int v2, v0, v10

    .line 5391
    .local v2, "currentLaunchMode":I
    if-eqz v9, :cond_30c

    .line 5394
    sget v10, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_OPTION_SPLIT_ZONE_B:I

    if-ne v9, v10, :cond_2dd

    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v10, :cond_2dd

    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v10}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_134

    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v10}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2dd

    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v10}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v11, -0x2

    if-eq v10, v11, :cond_2dd

    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v10}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v11, -0x2

    if-eq v10, v11, :cond_2dd

    :cond_134
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v10, :cond_2dd

    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v10}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v10

    if-eqz v10, :cond_2dd

    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v10}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-lez v10, :cond_2dd

    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRotation:I

    invoke-direct {p0, v10}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v10

    if-eqz v10, :cond_2dd

    .line 5402
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v10

    if-eqz v10, :cond_15f

    .line 5403
    or-int/lit8 v1, v1, 0x1

    .line 5426
    :cond_15f
    :goto_15f
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mExtraCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v10, :cond_18c

    .line 5427
    sget v10, Lcom/android/internal/policy/impl/MultiWindowReflector$Configuration;->ARRANGE_SPLITED3L:I

    sget v11, Lcom/android/internal/policy/impl/MultiWindowReflector$Configuration;->ARRANGE_SPLITED3R:I

    or-int/2addr v10, v11

    sget v11, Lcom/android/internal/policy/impl/MultiWindowReflector$Configuration;->ARRANGE_SPLITED4:I

    or-int/2addr v10, v11

    and-int/2addr v10, v0

    if-eqz v10, :cond_326

    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowMode:I

    sget v11, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_OPTION_COMMON_RESIZE:I

    and-int/2addr v10, v11

    if-eqz v10, :cond_326

    .line 5431
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    if-eqz v10, :cond_319

    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_319

    .line 5432
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mExtraCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v10

    if-eqz v10, :cond_18c

    .line 5433
    or-int/lit8 v1, v1, 0x1

    .line 5448
    .end local v0    # "arrange":I
    .end local v2    # "currentLaunchMode":I
    .end local v9    # "zone":I
    :cond_18c
    :goto_18c
    return v1

    .line 5132
    .end local v3    # "isArrangedBySplitMode":Z
    .end local v4    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_18d
    const/4 v3, 0x0

    goto/16 :goto_23

    .line 5134
    .restart local v3    # "isArrangedBySplitMode":Z
    :cond_190
    const/4 v4, 0x0

    goto/16 :goto_2d

    .line 5153
    .restart local v4    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_193
    const/4 v5, 0x0

    goto/16 :goto_52

    .line 5171
    .restart local v5    # "needsStatusBarShown":Z
    :cond_196
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v10, :cond_23d

    .line 5180
    iget v10, v4, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    and-int/lit16 v10, v10, 0x1000

    if-nez v10, :cond_1a6

    iget v10, v4, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    and-int/lit16 v10, v10, 0x1000

    if-eqz v10, :cond_1db

    :cond_1a6
    const/4 v8, 0x1

    .line 5183
    .local v8, "topIsTransparentStatusbar":Z
    :goto_1a7
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v10, v8}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->setTransparentStatusBar(Z)V

    .line 5190
    iget v10, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v10, v10, 0x800

    if-eqz v10, :cond_1dd

    const/4 v6, 0x1

    .line 5194
    :goto_1b3
    iget v10, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v10, v10, 0x400

    if-nez v10, :cond_1bf

    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    and-int/lit8 v10, v10, 0x4

    if-eqz v10, :cond_1df

    :cond_1bf
    const/4 v7, 0x1

    .line 5200
    :goto_1c0
    if-eqz v7, :cond_20c

    .line 5203
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isStatusBarShowOnFullScreen()Z

    move-result v10

    if-eqz v10, :cond_1e1

    .line 5204
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v10

    if-eqz v10, :cond_74

    .line 5205
    or-int/lit8 v1, v1, 0x1

    .line 5207
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifySystemUiVisibility(I)V

    goto/16 :goto_74

    .line 5180
    .end local v8    # "topIsTransparentStatusbar":Z
    :cond_1db
    const/4 v8, 0x0

    goto :goto_1a7

    .line 5190
    .restart local v8    # "topIsTransparentStatusbar":Z
    :cond_1dd
    const/4 v6, 0x0

    goto :goto_1b3

    .line 5194
    :cond_1df
    const/4 v7, 0x0

    goto :goto_1c0

    .line 5213
    :cond_1e1
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v10

    if-eqz v10, :cond_74

    .line 5214
    or-int/lit8 v1, v1, 0x1

    .line 5216
    const/4 v10, 0x4

    invoke-direct {p0, v10}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifySystemUiVisibility(I)V

    .line 5220
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isBlockCollapseStatusBar()Z

    move-result v10

    if-eqz v10, :cond_200

    .line 5221
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->setBlockCollapseStatusBar(Z)V

    goto/16 :goto_74

    .line 5226
    :cond_200
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/internal/policy/impl/PhoneWindowManager$12;

    invoke-direct {v11, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$12;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_74

    .line 5249
    :cond_20c
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->setStatusBarShowOnFullScreen(ZZ)V

    .line 5250
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isStatusBarHideOnNormalScreen()Z

    move-result v10

    if-eqz v10, :cond_22c

    .line 5254
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v10

    if-eqz v10, :cond_74

    .line 5255
    or-int/lit8 v1, v1, 0x1

    .line 5257
    const/4 v10, 0x4

    invoke-direct {p0, v10}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifySystemUiVisibility(I)V

    goto/16 :goto_74

    .line 5265
    :cond_22c
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v10

    if-eqz v10, :cond_74

    .line 5266
    or-int/lit8 v1, v1, 0x1

    .line 5268
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifySystemUiVisibility(I)V

    goto/16 :goto_74

    .line 5273
    .end local v8    # "topIsTransparentStatusbar":Z
    :cond_23d
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v10, :cond_74

    if-eqz v3, :cond_74

    .line 5276
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->setTransparentStatusBar(Z)V

    .line 5278
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isStatusBarShowOnFullScreen()Z

    move-result v10

    if-eqz v10, :cond_263

    .line 5279
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v10

    if-eqz v10, :cond_260

    .line 5280
    or-int/lit8 v1, v1, 0x1

    .line 5282
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifySystemUiVisibility(I)V

    .line 5291
    :cond_260
    :goto_260
    const/4 v6, 0x1

    goto/16 :goto_74

    .line 5286
    :cond_263
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v10

    if-eqz v10, :cond_260

    .line 5287
    or-int/lit8 v1, v1, 0x1

    .line 5288
    const/4 v10, 0x4

    invoke-direct {p0, v10}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifySystemUiVisibility(I)V

    goto :goto_260

    .line 5298
    .end local v5    # "needsStatusBarShown":Z
    :cond_273
    const/4 v10, 0x0

    goto/16 :goto_7f

    .line 5321
    :cond_276
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-eqz v10, :cond_28d

    .line 5322
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v10

    if-eqz v10, :cond_285

    .line 5323
    or-int/lit8 v1, v1, 0x7

    .line 5327
    :cond_285
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->setHidden(Z)V

    goto/16 :goto_b3

    .line 5328
    :cond_28d
    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    if-eqz v10, :cond_2b3

    .line 5330
    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_b3

    .line 5332
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v10

    if-eqz v10, :cond_2a1

    .line 5333
    or-int/lit8 v1, v1, 0x7

    .line 5337
    :cond_2a1
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->setHidden(Z)V

    .line 5338
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/internal/policy/impl/PhoneWindowManager$14;

    invoke-direct {v11, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$14;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_b3

    .line 5346
    :cond_2b3
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5347
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v10

    if-eqz v10, :cond_2c1

    .line 5348
    or-int/lit8 v1, v1, 0x7

    .line 5352
    :cond_2c1
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->setHidden(Z)V

    goto/16 :goto_b3

    .line 5368
    :cond_2c9
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v10, :cond_d5

    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v10}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v10

    if-nez v10, :cond_d5

    .line 5369
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    goto/16 :goto_d5

    .line 5405
    .restart local v0    # "arrange":I
    .restart local v2    # "currentLaunchMode":I
    .restart local v9    # "zone":I
    :cond_2dd
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsFreeStyle:Z

    if-eqz v10, :cond_2ff

    .line 5406
    sget v10, Lcom/android/internal/policy/impl/MultiWindowReflector$Configuration;->ARRANGE_UNDEFINED:I

    if-ne v2, v10, :cond_2f2

    .line 5407
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v10

    if-eqz v10, :cond_15f

    .line 5408
    or-int/lit8 v1, v1, 0x1

    goto/16 :goto_15f

    .line 5411
    :cond_2f2
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v10

    if-eqz v10, :cond_15f

    .line 5412
    or-int/lit8 v1, v1, 0x1

    goto/16 :goto_15f

    .line 5416
    :cond_2ff
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v10

    if-eqz v10, :cond_15f

    .line 5417
    or-int/lit8 v1, v1, 0x1

    goto/16 :goto_15f

    .line 5421
    :cond_30c
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v10

    if-eqz v10, :cond_15f

    .line 5422
    or-int/lit8 v1, v1, 0x1

    goto/16 :goto_15f

    .line 5436
    :cond_319
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mExtraCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v10

    if-eqz v10, :cond_18c

    .line 5437
    or-int/lit8 v1, v1, 0x1

    goto/16 :goto_18c

    .line 5441
    :cond_326
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mExtraCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v10

    if-eqz v10, :cond_18c

    .line 5442
    or-int/lit8 v1, v1, 0x1

    goto/16 :goto_18c
.end method

.method public focusChangedLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I
    .registers 5
    .param p1, "lastFocus"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "newFocus"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 5477
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5480
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->setFocusWindowForSPen(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 5483
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v0

    and-int/lit8 v0, v0, 0xe

    if-eqz v0, :cond_13

    .line 5486
    const/4 v0, 0x1

    .line 5488
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getAboveUniverseLayer()I
    .registers 2

    .prologue
    .line 2126
    const/16 v0, 0x7da

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v0

    return v0
.end method

.method public getConfigDisplayHeight(III)I
    .registers 6
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 2169
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    if-nez v0, :cond_c

    .line 2170
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getNonDecorDisplayHeight(III)I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    sub-int/2addr v0, v1

    .line 2172
    :goto_b
    return v0

    :cond_c
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getNonDecorDisplayHeight(III)I

    move-result v0

    goto :goto_b
.end method

.method public getConfigDisplayWidth(III)I
    .registers 5
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 2160
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getNonDecorDisplayWidth(III)I

    move-result v0

    return v0
.end method

.method public getContentInsetHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V
    .registers 11
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "contentInset"    # Landroid/graphics/Rect;

    .prologue
    const v6, 0x10100

    .line 3690
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3691
    .local v2, "fl":I
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v5, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int v3, v4, v5

    .line 3693
    .local v3, "systemUiVisibility":I
    and-int v4, v2, v6

    if-ne v4, v6, :cond_89

    .line 3696
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    if-eqz v4, :cond_3b

    and-int/lit16 v4, v3, 0x200

    if-eqz v4, :cond_3b

    .line 3698
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int v1, v4, v5

    .line 3699
    .local v1, "availRight":I
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int v0, v4, v5

    .line 3704
    .local v0, "availBottom":I
    :goto_23
    and-int/lit16 v4, v3, 0x100

    if-eqz v4, :cond_58

    .line 3705
    and-int/lit16 v4, v2, 0x400

    if-eqz v4, :cond_48

    .line 3706
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    sub-int v7, v0, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 3726
    .end local v0    # "availBottom":I
    .end local v1    # "availRight":I
    :goto_3a
    return-void

    .line 3701
    :cond_3b
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int v1, v4, v5

    .line 3702
    .restart local v1    # "availRight":I
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int v0, v4, v5

    .restart local v0    # "availBottom":I
    goto :goto_23

    .line 3710
    :cond_48
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    sub-int v7, v0, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3a

    .line 3713
    :cond_58
    and-int/lit16 v4, v2, 0x400

    if-nez v4, :cond_61

    const/high16 v4, 0x2000000

    and-int/2addr v4, v2

    if-eqz v4, :cond_65

    .line 3714
    :cond_61
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_3a

    .line 3715
    :cond_65
    and-int/lit16 v4, v3, 0x404

    if-nez v4, :cond_79

    .line 3717
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    sub-int v7, v0, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3a

    .line 3720
    :cond_79
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    sub-int v7, v0, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3a

    .line 3725
    .end local v0    # "availBottom":I
    .end local v1    # "availRight":I
    :cond_89
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_3a
.end method

.method public getFocusedWindow()Landroid/view/WindowManagerPolicy$WindowState;
    .registers 2

    .prologue
    .line 7904
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    return-object v0
.end method

.method public getGlobalSystemUiVisibility()I
    .registers 3

    .prologue
    .line 8276
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 8277
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    :goto_10
    monitor-exit v1

    return v0

    :cond_12
    const/4 v0, 0x4

    goto :goto_10

    .line 8279
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public getHapticFeedbackManagerLw()Lcom/immersion/android/haptics/HapticFeedbackManager;
    .registers 2

    .prologue
    .line 7692
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHaptics:Lcom/immersion/android/haptics/HapticFeedbackManager;

    return-object v0
.end method

.method public getMaxWallpaperLayer()I
    .registers 2

    .prologue
    .line 2122
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v0

    return v0
.end method

.method public getNonDecorDisplayHeight(III)I
    .registers 5
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 2145
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    if-eqz v0, :cond_a

    .line 2147
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    aget v0, v0, p3

    sub-int/2addr p2, v0

    .line 2156
    .end local p2    # "fullHeight":I
    :cond_9
    :goto_9
    return p2

    .line 2149
    .restart local p2    # "fullHeight":I
    :cond_a
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_9

    .line 2152
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v0, :cond_14

    if-ge p1, p2, :cond_9

    .line 2153
    :cond_14
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    aget v0, v0, p3

    sub-int/2addr p2, v0

    goto :goto_9
.end method

.method public getNonDecorDisplayWidth(III)I
    .registers 5
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 2134
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_f

    .line 2137
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v0, :cond_f

    if-le p1, p2, :cond_f

    .line 2138
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    aget v0, v0, p3

    sub-int/2addr p1, v0

    .line 2141
    .end local p1    # "fullWidth":I
    :cond_f
    return p1
.end method

.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 3

    .prologue
    .line 826
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 827
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_13

    .line 828
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 831
    :cond_13
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v1

    return-object v0

    .line 832
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public getSystemDecorRectLw(Landroid/graphics/Rect;)I
    .registers 3
    .param p1, "systemRect"    # Landroid/graphics/Rect;

    .prologue
    .line 4007
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemLeft:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 4008
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 4009
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 4010
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 4011
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    .line 4013
    :goto_1a
    return v0

    .line 4012
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    goto :goto_1a

    .line 4013
    :cond_26
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public getUserRotationMode()I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 7165
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_11

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x1

    goto :goto_10
.end method

.method goHome()Z
    .registers 20

    .prologue
    .line 7545
    :try_start_0
    const-string v1, "persist.sys.uts-test-mode"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_40

    .line 7547
    const-string v1, "WindowManager"

    const-string v2, "UTS-TEST-MODE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7564
    :cond_11
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x2

    invoke-interface/range {v5 .. v17}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;I)I

    move-result v18

    .line 7570
    .local v18, "result":I
    const/4 v1, 0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_76

    .line 7571
    const/4 v1, 0x0

    .line 7577
    .end local v18    # "result":I
    :goto_3f
    return v1

    .line 7549
    :cond_40
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->stopAppSwitches()V

    .line 7550
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows()V

    .line 7551
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v4

    .line 7552
    .local v4, "dock":Landroid/content/Intent;
    if-eqz v4, :cond_11

    .line 7553
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x2

    invoke-interface/range {v1 .. v13}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;I)I
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6d} :catch_75

    move-result v18

    .line 7559
    .restart local v18    # "result":I
    const/4 v1, 0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_11

    .line 7560
    const/4 v1, 0x0

    goto :goto_3f

    .line 7573
    .end local v4    # "dock":Landroid/content/Intent;
    .end local v18    # "result":I
    :catch_75
    move-exception v1

    .line 7577
    :cond_76
    const/4 v1, 0x1

    goto :goto_3f
.end method

.method handleVolumeKey(II)V
    .registers 8
    .param p1, "stream"    # I
    .param p2, "keycode"    # I

    .prologue
    .line 5642
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 5643
    .local v0, "audioService":Landroid/media/IAudioService;
    if-nez v0, :cond_7

    .line 5662
    :goto_6
    return-void

    .line 5651
    :cond_7
    :try_start_7
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5652
    const/16 v2, 0x18

    if-ne p2, v2, :cond_1b

    const/4 v2, 0x1

    :goto_11
    const/4 v3, 0x0

    invoke-interface {v0, p1, v2, v3}, Landroid/media/IAudioService;->adjustStreamVolume(III)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_1d
    .catchall {:try_start_7 .. :try_end_15} :catchall_3c

    .line 5660
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_6

    .line 5652
    :cond_1b
    const/4 v2, -0x1

    goto :goto_11

    .line 5657
    :catch_1d
    move-exception v1

    .line 5658
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1e
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IAudioService.adjustStreamVolume() threw RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_1e .. :try_end_36} :catchall_3c

    .line 5660
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_6

    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_3c
    move-exception v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2
.end method

.method public hasNavigationBar()Z
    .registers 2

    .prologue
    .line 7792
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    return v0
.end method

.method public hasSystemNavBar()Z
    .registers 2

    .prologue
    .line 2130
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    return v0
.end method

.method public hideBootMessages()V
    .registers 3

    .prologue
    .line 7331
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$32;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$32;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7339
    return-void
.end method

.method public inKeyguardRestrictedKeyInputMode()Z
    .registers 2

    .prologue
    .line 6883
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 6884
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isInputRestricted()Z

    move-result v0

    goto :goto_5
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    .line 1229
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1230
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 1231
    iput-object p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 1232
    const-string v0, "1"

    const-string v1, "ro.config.headless"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    .line 1233
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-nez v0, :cond_22

    .line 1235
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    .line 1237
    :cond_22
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 1238
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    .line 1240
    :try_start_35
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-interface {p2}, Landroid/view/IWindowManager;->getRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->setCurrentRotation(I)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3e} :catch_338

    .line 1244
    :goto_3e
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.multiwindow"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    .line 1245
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.multiwindow.freestyle"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsFreeStyle:Z

    .line 1246
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    .line 1247
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    const-string v1, "com.sec.android.app.FlashBarService"

    const-string v2, "com.sec.android.app.FlashBarService.FlashBarService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1248
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "multiwindow"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/multiwindow/impl/MultiWindowManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;

    .line 1251
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSettingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

    .line 1252
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSettingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;->observe()V

    .line 1255
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .line 1256
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->init(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 1259
    new-instance v0, Lcom/android/internal/policy/impl/ShortcutManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Lcom/android/internal/policy/impl/ShortcutManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    .line 1260
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ShortcutManager;->observe()V

    .line 1261
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    .line 1263
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    .line 1264
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1265
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1267
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    .line 1268
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    const-string v1, "android.intent.category.CAR_DOCK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1269
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1271
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    .line 1272
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    const-string v1, "android.intent.category.DESK_DOCK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1273
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1277
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1280
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 1281
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "PhoneWindowManager.mBroadcastWakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1283
    const-string v0, "1"

    const-string v1, "ro.debuggable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 1284
    const v0, 0x10e0010

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    .line 1287
    const v0, 0x10e0058

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverCloseRotation:I

    .line 1290
    const v0, 0x10e0012

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    .line 1292
    const v0, 0x10e0011

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    .line 1294
    const v0, 0x10e0013

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUndockedHdmiRotation:I

    .line 1296
    const v0, 0x10e0044

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMirrorlinkDockRotation:I

    .line 1298
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    .line 1300
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    .line 1302
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMirrorLinkDockEnablesAccelerometer:Z

    .line 1304
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    .line 1306
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    .line 1308
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    .line 1310
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    .line 1313
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 1314
    .local v6, "filter":Landroid/content/IntentFilter;
    sget-object v0, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1315
    sget-object v0, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1316
    sget-object v0, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1317
    sget-object v0, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1318
    const-string v0, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1319
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v8

    .line 1320
    .local v8, "intent":Landroid/content/Intent;
    if-eqz v8, :cond_1fa

    .line 1322
    const-string v0, "android.intent.extra.DOCK_STATE"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    .line 1324
    const-string v0, "persist.sys.dockstate"

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    :cond_1fa
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1fb
    const/4 v0, 0x3

    if-ge v7, v0, :cond_208

    .line 1328
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->ALARM_STARTED:[Ljava/lang/String;

    aget-object v0, v0, v7

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1327
    add-int/lit8 v7, v7, 0x1

    goto :goto_1fb

    .line 1330
    :cond_208
    const/4 v7, 0x0

    :goto_209
    const/4 v0, 0x3

    if-ge v7, v0, :cond_216

    .line 1331
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->ALARM_STOPPED:[Ljava/lang/String;

    aget-object v0, v0, v7

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1330
    add-int/lit8 v7, v7, 0x1

    goto :goto_209

    .line 1333
    :cond_216
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1336
    new-instance v6, Landroid/content/IntentFilter;

    .end local v6    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 1337
    .restart local v6    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1338
    const-string v0, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1339
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1342
    new-instance v6, Landroid/content/IntentFilter;

    .end local v6    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1343
    .restart local v6    # "filter":Landroid/content/IntentFilter;
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1346
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_252

    .line 1347
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_329

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    .line 1350
    .local v9, "looper":Landroid/os/Looper;
    :goto_249
    new-instance v0, Lcom/immersion/android/haptics/HapticFeedbackManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v9}, Lcom/immersion/android/haptics/HapticFeedbackManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHaptics:Lcom/immersion/android/haptics/HapticFeedbackManager;

    .line 1355
    .end local v9    # "looper":Landroid/os/Looper;
    :cond_252
    new-instance v6, Landroid/content/IntentFilter;

    .end local v6    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.SHOW_GLOBAL_ACTIONS"

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1356
    .restart local v6    # "filter":Landroid/content/IntentFilter;
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1359
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    .line 1361
    new-instance v10, Landroid/content/IntentFilter;

    const-string v0, "qualcomm.intent.action.WIFI_DISPLAY_VIDEO"

    invoke-direct {v10, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1363
    .local v10, "wifiDisplayFilter":Landroid/content/IntentFilter;
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWifiDisplayReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v11

    .line 1366
    .local v11, "wifidisplayIntent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070027

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressVibePattern:[J

    .line 1368
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070028

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    .line 1370
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070029

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    .line 1372
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107002a

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    .line 1374
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107002b

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 1377
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordEnabled:Z

    .line 1380
    new-instance v0, Lcom/android/internal/policy/impl/GlobalKeyManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/GlobalKeyManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/internal/policy/impl/GlobalKeyManager;

    .line 1383
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->initializeHdmiState()V

    .line 1386
    new-instance v6, Landroid/content/IntentFilter;

    .end local v6    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 1387
    .restart local v6    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USBHID_MOUSE_EVENT"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1388
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseConnectReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v8

    .line 1389
    if-eqz v8, :cond_31c

    .line 1390
    const-string v0, "android.intent.extra.device_state"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseConnectedDock:I

    .line 1392
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseConnectedDock:I

    if-ne v0, v1, :cond_32f

    .line 1393
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    .line 1397
    :goto_2fe
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOldMouseDockedValue:Z

    .line 1398
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmartDock Connected  :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    :cond_31c
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_333

    .line 1403
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 1407
    :goto_328
    return-void

    .line 1347
    .end local v10    # "wifiDisplayFilter":Landroid/content/IntentFilter;
    .end local v11    # "wifidisplayIntent":Landroid/content/Intent;
    :cond_329
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v9

    goto/16 :goto_249

    .line 1395
    .restart local v10    # "wifiDisplayFilter":Landroid/content/IntentFilter;
    .restart local v11    # "wifidisplayIntent":Landroid/content/Intent;
    :cond_32f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    goto :goto_2fe

    .line 1405
    :cond_333
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurnedOff(I)V

    goto :goto_328

    .line 1241
    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v7    # "i":I
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v10    # "wifiDisplayFilter":Landroid/content/IntentFilter;
    .end local v11    # "wifidisplayIntent":Landroid/content/Intent;
    :catch_338
    move-exception v0

    goto/16 :goto_3e
.end method

.method initializeHdmiState()V
    .registers 13

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 5580
    const/4 v4, 0x0

    .line 5582
    .local v4, "plugged":Z
    new-instance v9, Ljava/io/File;

    const-string v10, "/sys/devices/virtual/switch/hdmi/state"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3f

    .line 5583
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    const-string v10, "DEVPATH=/devices/virtual/switch/hdmi"

    invoke-virtual {v9, v10}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 5585
    const-string v2, "/sys/class/switch/hdmi/state"

    .line 5586
    .local v2, "filename":Ljava/lang/String;
    const/4 v5, 0x0

    .line 5588
    .local v5, "reader":Ljava/io/FileReader;
    :try_start_1a
    new-instance v6, Ljava/io/FileReader;

    const-string v9, "/sys/class/switch/hdmi/state"

    invoke-direct {v6, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_21} :catch_4e
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_21} :catch_6f
    .catchall {:try_start_1a .. :try_end_21} :catchall_90

    .line 5589
    .end local v5    # "reader":Ljava/io/FileReader;
    .local v6, "reader":Ljava/io/FileReader;
    const/16 v9, 0xf

    :try_start_23
    new-array v0, v9, [C

    .line 5590
    .local v0, "buf":[C
    invoke-virtual {v6, v0}, Ljava/io/FileReader;->read([C)I

    move-result v3

    .line 5591
    .local v3, "n":I
    if-le v3, v7, :cond_3a

    .line 5592
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    add-int/lit8 v11, v3, -0x1

    invoke-direct {v9, v0, v10, v11}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_36} :catch_a5
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_36} :catch_a2
    .catchall {:try_start_23 .. :try_end_36} :catchall_9f

    move-result v9

    if-eqz v9, :cond_4c

    move v4, v7

    .line 5599
    :cond_3a
    :goto_3a
    if-eqz v6, :cond_3f

    .line 5601
    :try_start_3c
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_9b

    .line 5609
    .end local v0    # "buf":[C
    .end local v2    # "filename":Ljava/lang/String;
    .end local v3    # "n":I
    .end local v6    # "reader":Ljava/io/FileReader;
    :cond_3f
    :goto_3f
    if-nez v4, :cond_97

    move v9, v7

    :goto_42
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    .line 5610
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-nez v9, :cond_99

    :goto_48
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setHdmiPlugged(Z)V

    .line 5611
    return-void

    .restart local v0    # "buf":[C
    .restart local v2    # "filename":Ljava/lang/String;
    .restart local v3    # "n":I
    .restart local v6    # "reader":Ljava/io/FileReader;
    :cond_4c
    move v4, v8

    .line 5592
    goto :goto_3a

    .line 5594
    .end local v0    # "buf":[C
    .end local v3    # "n":I
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :catch_4e
    move-exception v1

    .line 5595
    .local v1, "ex":Ljava/io/IOException;
    :goto_4f
    :try_start_4f
    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_4f .. :try_end_67} :catchall_90

    .line 5599
    if-eqz v5, :cond_3f

    .line 5601
    :try_start_69
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d

    goto :goto_3f

    .line 5602
    :catch_6d
    move-exception v9

    goto :goto_3f

    .line 5596
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_6f
    move-exception v1

    .line 5597
    .local v1, "ex":Ljava/lang/NumberFormatException;
    :goto_70
    :try_start_70
    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catchall {:try_start_70 .. :try_end_88} :catchall_90

    .line 5599
    if-eqz v5, :cond_3f

    .line 5601
    :try_start_8a
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_8e

    goto :goto_3f

    .line 5602
    :catch_8e
    move-exception v9

    goto :goto_3f

    .line 5599
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    :catchall_90
    move-exception v7

    :goto_91
    if-eqz v5, :cond_96

    .line 5601
    :try_start_93
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_9d

    .line 5603
    :cond_96
    :goto_96
    throw v7

    .end local v2    # "filename":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/FileReader;
    :cond_97
    move v9, v8

    .line 5609
    goto :goto_42

    :cond_99
    move v7, v8

    .line 5610
    goto :goto_48

    .line 5602
    .restart local v0    # "buf":[C
    .restart local v2    # "filename":Ljava/lang/String;
    .restart local v3    # "n":I
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_9b
    move-exception v9

    goto :goto_3f

    .end local v0    # "buf":[C
    .end local v3    # "n":I
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :catch_9d
    move-exception v8

    goto :goto_96

    .line 5599
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catchall_9f
    move-exception v7

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    goto :goto_91

    .line 5596
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_a2
    move-exception v1

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    goto :goto_70

    .line 5594
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_a5
    move-exception v1

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    goto :goto_4f
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .registers 49
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 2712
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v25

    .line 2713
    .local v25, "keyguardOn":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v24

    .line 2714
    .local v24, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v33

    .line 2715
    .local v33, "repeatCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v29

    .line 2716
    .local v29, "metaState":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v19

    .line 2717
    .local v19, "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_aa

    const/16 v17, 0x1

    .line 2718
    .local v17, "down":Z
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v13

    .line 2735
    .local v13, "canceled":Z
    const/16 v3, 0x10a

    move/from16 v0, v24

    if-ne v0, v3, :cond_33

    .line 2736
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    move/from16 v0, v33

    invoke-virtual {v3, v5, v0, v13}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->addVoiceMemoKeyClickAction(IIZ)V

    .line 2739
    :cond_33
    const/16 v3, 0x109

    move/from16 v0, v24

    if-ne v0, v3, :cond_46

    .line 2740
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    move/from16 v0, v33

    invoke-virtual {v3, v5, v0, v13}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->addVirtualEyeKeyClickAction(IIZ)V

    .line 2743
    :cond_46
    const/4 v3, 0x3

    move/from16 v0, v24

    if-ne v0, v3, :cond_e8

    .line 2745
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v3, :cond_61

    .line 2746
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v5, "enterprise_policy"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 2748
    :cond_61
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v3, :cond_d4

    .line 2749
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    .line 2750
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getSecurityPolicy()Landroid/app/enterprise/SecurityPolicy;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSecPolicy:Landroid/app/enterprise/SecurityPolicy;

    .line 2751
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v27

    .line 2752
    .local v27, "lRestPolicy":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v27, :cond_b6

    .line 2753
    const/16 v22, 0x1

    .line 2754
    .local v22, "isAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_ae

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_ae

    .line 2755
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/app/enterprise/RestrictionPolicy;->isHomeKeyEnabled(Z)Z

    move-result v22

    .line 2759
    :goto_9e
    if-nez v22, :cond_b6

    .line 2760
    const-string v3, "WindowManager"

    const-string v5, "home key disabled by edm"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2761
    const-wide/16 v43, -0x1

    .line 3378
    .end local v22    # "isAllowed":Z
    .end local v27    # "lRestPolicy":Landroid/app/enterprise/RestrictionPolicy;
    :cond_a9
    :goto_a9
    return-wide v43

    .line 2717
    .end local v13    # "canceled":Z
    .end local v17    # "down":Z
    :cond_aa
    const/16 v17, 0x0

    goto/16 :goto_1c

    .line 2757
    .restart local v13    # "canceled":Z
    .restart local v17    # "down":Z
    .restart local v22    # "isAllowed":Z
    .restart local v27    # "lRestPolicy":Landroid/app/enterprise/RestrictionPolicy;
    :cond_ae
    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/app/enterprise/RestrictionPolicy;->isHomeKeyEnabled(Z)Z

    move-result v22

    goto :goto_9e

    .line 2764
    .end local v22    # "isAllowed":Z
    :cond_b6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v3}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v3

    if-gtz v3, :cond_ca

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSecPolicy:Landroid/app/enterprise/SecurityPolicy;

    invoke-virtual {v3}, Landroid/app/enterprise/SecurityPolicy;->isDodBannerVisible()Z

    move-result v3

    if-eqz v3, :cond_d4

    .line 2766
    :cond_ca
    const-string v3, "WindowManager"

    const-string v5, "home key disabled by either pwd policy OR DoD Banner"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2767
    const-wide/16 v43, -0x1

    goto :goto_a9

    .line 2772
    .end local v27    # "lRestPolicy":Landroid/app/enterprise/RestrictionPolicy;
    :cond_d4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isBlockHomeKey(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_e8

    .line 2773
    const-string v3, "WindowManager"

    const-string v5, "Home key is blocked by policy"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2774
    const-wide/16 v43, 0x0

    goto :goto_a9

    .line 2779
    :cond_e8
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_13c

    .line 2780
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v3, :cond_105

    .line 2781
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v5, "enterprise_policy"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 2784
    :cond_105
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v3, :cond_13c

    .line 2785
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v26

    .line 2786
    .local v26, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v26, :cond_13c

    .line 2787
    const/16 v22, 0x1

    .line 2788
    .restart local v22    # "isAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_132

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_132

    .line 2789
    const/4 v3, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1, v3}, Landroid/app/enterprise/kioskmode/KioskMode;->isHardwareKeyAllowed(IZ)Z

    move-result v22

    .line 2793
    :goto_12c
    if-nez v22, :cond_13c

    .line 2794
    const-wide/16 v43, 0x0

    goto/16 :goto_a9

    .line 2791
    :cond_132
    const/4 v3, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1, v3}, Landroid/app/enterprise/kioskmode/KioskMode;->isHardwareKeyAllowed(IZ)Z

    move-result v22

    goto :goto_12c

    .line 2825
    .end local v22    # "isAllowed":Z
    .end local v26    # "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_13c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v31

    .line 2826
    .local v31, "now":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v0, p2

    move-wide/from16 v1, v31

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getTimeoutTimeOfKeyCombination(Landroid/view/KeyEvent;J)J

    move-result-wide v38

    .line 2827
    .local v38, "timeoutTime":J
    cmp-long v3, v31, v38

    if-gez v3, :cond_154

    .line 2828
    sub-long v43, v38, v31

    goto/16 :goto_a9

    .line 2830
    :cond_154
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isConsumedKeyCombination(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_164

    .line 2831
    const-wide/16 v43, -0x1

    goto/16 :goto_a9

    .line 2836
    :cond_164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isEnableAccessControl()Z

    move-result v3

    if-eqz v3, :cond_17d

    .line 2837
    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_179

    const-string v3, "WindowManager"

    const-string v5, "interceptKeyTi : Key was blocked by access control"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2838
    :cond_179
    const-wide/16 v43, -0x1

    goto/16 :goto_a9

    .line 2842
    :cond_17d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v3

    if-eqz v3, :cond_1c1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isBlockedKeyBySideSync(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_1c1

    .line 2843
    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_1bd

    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "interceptKeyTi : Key was blocked by sidesync. keycode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", repeatCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2844
    :cond_1bd
    const-wide/16 v43, -0x1

    goto/16 :goto_a9

    .line 2853
    :cond_1c1
    const/4 v3, 0x3

    move/from16 v0, v24

    if-ne v0, v3, :cond_44b

    .line 2855
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v3

    if-eqz v3, :cond_1e6

    .line 2856
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->sendSystemKeyToSideSync(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_1e6

    .line 2857
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeUsedToWake:Z

    if-nez v3, :cond_1e6

    .line 2858
    const-wide/16 v43, -0x1

    goto/16 :goto_a9

    .line 2865
    :cond_1e6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeUsedToWake:Z

    if-eqz v3, :cond_202

    .line 2866
    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_1f7

    const-string v3, "WindowManager"

    const-string v5, "Home key used to wake action"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2867
    :cond_1f7
    if-nez v17, :cond_1fe

    .line 2868
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeUsedToWake:Z

    .line 2870
    :cond_1fe
    const-wide/16 v43, -0x1

    goto/16 :goto_a9

    .line 2874
    :cond_202
    if-eqz p1, :cond_226

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    .line 2876
    .local v12, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_208
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSystemKeyEventRequested(I)Z

    move-result v3

    if-eqz v3, :cond_22c

    .line 2877
    if-eqz v12, :cond_228

    iget v3, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7d0

    if-ne v3, v5, :cond_228

    .line 2878
    const-string v3, "homekey"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 2879
    const-wide/16 v43, 0x64

    goto/16 :goto_a9

    .line 2874
    .end local v12    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_226
    const/4 v12, 0x0

    goto :goto_208

    .line 2882
    .restart local v12    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_228
    const-wide/16 v43, 0x0

    goto/16 :goto_a9

    .line 2887
    :cond_22c
    if-eqz v12, :cond_241

    iget v3, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x89f

    if-eq v3, v5, :cond_241

    .line 2888
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    move/from16 v0, v33

    invoke-virtual {v3, v5, v0, v13}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->addHomeKeyClickAction(IIZ)V

    .line 2894
    :cond_241
    if-nez v17, :cond_31f

    .line 2895
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPreloadRecentApps()V

    .line 2897
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    move/from16 v20, v0

    .line 2898
    .local v20, "homeWasPressed":Z
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 2899
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeConsumed:Z

    if-eqz v3, :cond_260

    .line 2900
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeConsumed:Z

    .line 2901
    const-wide/16 v43, -0x1

    goto/16 :goto_a9

    .line 2904
    :cond_260
    if-eqz v13, :cond_26d

    .line 2905
    const-string v3, "WindowManager"

    const-string v5, "Ignoring HOME; event canceled."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2906
    const-wide/16 v43, -0x1

    goto/16 :goto_a9

    .line 2913
    :cond_26d
    :try_start_26d
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v36

    .line 2914
    .local v36, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v36, :cond_284

    invoke-interface/range {v36 .. v36}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_284

    .line 2915
    const-string v3, "WindowManager"

    const-string v5, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2916
    const-wide/16 v43, -0x1

    goto/16 :goto_a9

    .line 2918
    :cond_284
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isDualSIMMode()Z

    move-result v3

    if-eqz v3, :cond_2ab

    .line 2919
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService2()Lcom/android/internal/telephony/ITelephony;

    move-result-object v37

    .line 2920
    .local v37, "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    if-eqz v37, :cond_2ab

    invoke-interface/range {v37 .. v37}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_2ab

    .line 2921
    const-string v3, "WindowManager"

    const-string v5, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29d
    .catch Landroid/os/RemoteException; {:try_start_26d .. :try_end_29d} :catch_2a1

    .line 2922
    const-wide/16 v43, -0x1

    goto/16 :goto_a9

    .line 2925
    .end local v36    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    .end local v37    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    :catch_2a1
    move-exception v18

    .line 2926
    .local v18, "ex":Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v5, "RemoteException from getPhoneInterface()"

    move-object/from16 v0, v18

    invoke-static {v3, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2930
    .end local v18    # "ex":Landroid/os/RemoteException;
    :cond_2ab
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isVoIPRinging()Z

    move-result v3

    if-eqz v3, :cond_2e2

    .line 2931
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "anykey_mode"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x1

    if-lt v3, v5, :cond_2e2

    .line 2934
    :try_start_2c3
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v42

    .line 2935
    .local v42, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-eqz v42, :cond_2d0

    .line 2936
    invoke-interface/range {v42 .. v42}, Landroid/os/IVoIPInterface;->answerVoIPCall()Z

    .line 2940
    :goto_2cc
    const-wide/16 v43, -0x1

    goto/16 :goto_a9

    .line 2938
    :cond_2d0
    const-string v3, "WindowManager"

    const-string v5, "Unable to find IVoIPInterface interface"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d7
    .catch Landroid/os/RemoteException; {:try_start_2c3 .. :try_end_2d7} :catch_2d8

    goto :goto_2cc

    .line 2941
    .end local v42    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :catch_2d8
    move-exception v18

    .line 2942
    .restart local v18    # "ex":Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v5, "RemoteException from getVoIPInterfaceService()"

    move-object/from16 v0, v18

    invoke-static {v3, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2949
    .end local v18    # "ex":Landroid/os/RemoteException;
    :cond_2e2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-eqz v3, :cond_30c

    .line 2950
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2951
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapPending:Z

    .line 2952
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2954
    const-wide/16 v43, -0x1

    goto/16 :goto_a9

    .line 2957
    :cond_30c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSupportHomeDoubleClick()Z

    move-result v3

    if-nez v3, :cond_31f

    if-eqz v20, :cond_31f

    .line 2959
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchHomeFromHotKey()V

    .line 2960
    const-wide/16 v43, -0x1

    goto/16 :goto_a9

    .line 2967
    .end local v20    # "homeWasPressed":Z
    :cond_31f
    if-eqz v12, :cond_383

    .line 2968
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v40, v0

    .line 2969
    .local v40, "type":I
    const/16 v3, 0x7d4

    move/from16 v0, v40

    if-eq v0, v3, :cond_343

    const/16 v3, 0x7d9

    move/from16 v0, v40

    if-eq v0, v3, :cond_343

    const/16 v3, 0x7e7

    move/from16 v0, v40

    if-eq v0, v3, :cond_343

    const/16 v3, 0x832

    move/from16 v0, v40

    if-eq v0, v3, :cond_343

    const/16 v3, 0x89f

    move/from16 v0, v40

    if-ne v0, v3, :cond_360

    .line 2983
    :cond_343
    const/16 v3, 0x7d9

    move/from16 v0, v40

    if-eq v0, v3, :cond_355

    const/16 v3, 0x7e7

    move/from16 v0, v40

    if-eq v0, v3, :cond_355

    const/16 v3, 0x832

    move/from16 v0, v40

    if-ne v0, v3, :cond_35c

    .line 2986
    :cond_355
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->setHomeDownEventSent()V

    .line 2989
    :cond_35c
    const-wide/16 v43, 0x0

    goto/16 :goto_a9

    .line 2991
    :cond_360
    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    array-length v0, v3

    move/from16 v41, v0

    .line 2992
    .local v41, "typeCount":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_367
    move/from16 v0, v21

    move/from16 v1, v41

    if-ge v0, v1, :cond_383

    .line 2993
    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v3, v3, v21

    move/from16 v0, v40

    if-ne v0, v3, :cond_380

    .line 2996
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->setHomeDownEventSent()V

    .line 2998
    const-wide/16 v43, -0x1

    goto/16 :goto_a9

    .line 2992
    :cond_380
    add-int/lit8 v21, v21, 0x1

    goto :goto_367

    .line 3003
    .end local v21    # "i":I
    .end local v40    # "type":I
    .end local v41    # "typeCount":I
    :cond_383
    if-eqz v17, :cond_3ed

    .line 3005
    if-nez v33, :cond_403

    .line 3008
    :try_start_387
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v36

    .line 3009
    .restart local v36    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v36, :cond_3a8

    invoke-interface/range {v36 .. v36}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_3a8

    .line 3010
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->setHomeDownEventSent()V
    :try_end_39a
    .catch Landroid/os/RemoteException; {:try_start_387 .. :try_end_39a} :catch_39e

    .line 3011
    const-wide/16 v43, 0x0

    goto/16 :goto_a9

    .line 3013
    .end local v36    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :catch_39e
    move-exception v18

    .line 3014
    .restart local v18    # "ex":Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v5, "RemoteException from getTelephonyService()"

    move-object/from16 v0, v18

    invoke-static {v3, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3017
    .end local v18    # "ex":Landroid/os/RemoteException;
    :cond_3a8
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isDualSIMMode()Z

    move-result v3

    if-eqz v3, :cond_3cf

    .line 3019
    :try_start_3ae
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService2()Lcom/android/internal/telephony/ITelephony;

    move-result-object v37

    .line 3020
    .restart local v37    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    if-eqz v37, :cond_3cf

    invoke-interface/range {v37 .. v37}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_3cf

    .line 3021
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->setHomeDownEventSent()V
    :try_end_3c1
    .catch Landroid/os/RemoteException; {:try_start_3ae .. :try_end_3c1} :catch_3c5

    .line 3022
    const-wide/16 v43, 0x0

    goto/16 :goto_a9

    .line 3024
    .end local v37    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    :catch_3c5
    move-exception v18

    .line 3025
    .restart local v18    # "ex":Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v5, "RemoteException from getTelephonyService2()"

    move-object/from16 v0, v18

    invoke-static {v3, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3029
    .end local v18    # "ex":Landroid/os/RemoteException;
    :cond_3cf
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 3036
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapPending:Z

    if-eqz v3, :cond_3f1

    .line 3037
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapPending:Z

    .line 3038
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3039
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleDoubleTapOnHome()V

    .line 3054
    :cond_3ed
    :goto_3ed
    const-wide/16 v43, -0x1

    goto/16 :goto_a9

    .line 3040
    :cond_3f1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v5, 0x1

    if-eq v3, v5, :cond_3ff

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_3ed

    .line 3042
    :cond_3ff
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->preloadRecentApps()V

    goto :goto_3ed

    .line 3044
    :cond_403
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_3ed

    .line 3045
    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_43b

    .line 3046
    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Home long press behavior, keyguardOn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isKidsModeEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isKidsModeEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3049
    :cond_43b
    if-nez v25, :cond_3ed

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isKidsModeEnabled()Z

    move-result v3

    if-nez v3, :cond_3ed

    .line 3050
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleLongPressOnHome()V

    goto :goto_3ed

    .line 3055
    .end local v12    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_44b
    const/16 v3, 0x52

    move/from16 v0, v24

    if-ne v0, v3, :cond_533

    .line 3057
    const/4 v15, 0x1

    .line 3059
    .local v15, "chordBug":I
    if-eqz v17, :cond_48f

    if-nez v33, :cond_48f

    .line 3061
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    move/from16 v0, v19

    invoke-virtual {v3, v0, v5, v6}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getWaitingTimeOfKeyPendingControl(IJ)J

    move-result-wide v43

    .line 3063
    .local v43, "waitingTime":J
    const-wide/16 v5, 0x0

    cmp-long v3, v43, v5

    if-nez v3, :cond_a9

    .line 3066
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    if-eqz v3, :cond_48f

    and-int/lit8 v3, v29, 0x1

    const/4 v5, 0x1

    if-ne v3, v5, :cond_48f

    .line 3067
    new-instance v4, Landroid/content/Intent;

    const-string v3, "android.intent.action.BUG_REPORT"

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3068
    .local v4, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 3070
    const-wide/16 v43, -0x1

    goto/16 :goto_a9

    .line 3089
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v43    # "waitingTime":J
    :cond_48f
    if-eqz v17, :cond_51b

    .line 3090
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->checkMenuLongPressIgnore()Z

    move-result v3

    if-eqz v3, :cond_4f8

    .line 3091
    const/4 v3, 0x7

    move/from16 v0, v33

    if-ne v0, v3, :cond_50b

    if-nez v13, :cond_50b

    .line 3092
    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_4c0

    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "event : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3094
    :cond_4c0
    const/16 v30, 0x0

    .line 3096
    .local v30, "multiWindowDisabled":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_4dd

    .line 3097
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v28

    .line 3099
    .local v28, "lpApp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v28, :cond_4dd

    .line 3100
    move-object/from16 v0, v28

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v5, 0x4000000

    and-int/2addr v3, v5

    if-eqz v3, :cond_4dd

    .line 3101
    const/16 v30, 0x1

    .line 3106
    .end local v28    # "lpApp":Landroid/view/WindowManager$LayoutParams;
    :cond_4dd
    if-nez v30, :cond_50b

    .line 3107
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenuLongPress:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3108
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->handleMenuLongPress()Z

    move-result v3

    if-eqz v3, :cond_50b

    .line 3110
    const-wide/16 v43, -0x1

    goto/16 :goto_a9

    .line 3115
    .end local v30    # "multiWindowDisabled":Z
    :cond_4f8
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_50b

    .line 3116
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenuLongPress:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3265
    .end local v15    # "chordBug":I
    :cond_50b
    :goto_50b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptSpecialKeyTi(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_6c7

    .line 3266
    const-wide/16 v43, -0x1

    goto/16 :goto_a9

    .line 3120
    .restart local v15    # "chordBug":I
    :cond_51b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 3122
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    if-eqz v3, :cond_52f

    .line 3124
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 3125
    const-wide/16 v43, -0x1

    goto/16 :goto_a9

    .line 3129
    :cond_52f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->closeMultiWindowTrayBar()Z

    goto :goto_50b

    .line 3133
    .end local v15    # "chordBug":I
    :cond_533
    const/16 v3, 0x54

    move/from16 v0, v24

    if-ne v0, v3, :cond_55f

    .line 3134
    if-eqz v17, :cond_54b

    .line 3135
    if-nez v33, :cond_547

    .line 3136
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 3137
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 3146
    :cond_547
    const-wide/16 v43, 0x0

    goto/16 :goto_a9

    .line 3140
    :cond_54b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 3141
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    if-eqz v3, :cond_547

    .line 3142
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 3143
    const-wide/16 v43, -0x1

    goto/16 :goto_a9

    .line 3147
    :cond_55f
    const/16 v3, 0xbb

    move/from16 v0, v24

    if-ne v0, v3, :cond_58f

    .line 3157
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    const/16 v5, 0xbb

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSystemKeyEventRequested(I)Z

    move-result v3

    if-eqz v3, :cond_57c

    .line 3158
    const-string v3, "WindowManager"

    const-string v5, "APP_SWITCH event isSystemKeyEventRequested() is true"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3159
    const-wide/16 v43, 0x0

    goto/16 :goto_a9

    .line 3163
    :cond_57c
    if-nez v25, :cond_585

    .line 3164
    if-eqz v17, :cond_589

    if-nez v33, :cond_589

    .line 3165
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->preloadRecentApps()V

    .line 3170
    :cond_585
    :goto_585
    const-wide/16 v43, -0x1

    goto/16 :goto_a9

    .line 3166
    :cond_589
    if-nez v17, :cond_585

    .line 3167
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->toggleRecentApps()V

    goto :goto_585

    .line 3171
    :cond_58f
    const/16 v3, 0xdb

    move/from16 v0, v24

    if-ne v0, v3, :cond_5c4

    .line 3172
    if-eqz v17, :cond_5b2

    .line 3173
    if-nez v33, :cond_5a2

    .line 3174
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    .line 3190
    :cond_59e
    :goto_59e
    const-wide/16 v43, -0x1

    goto/16 :goto_a9

    .line 3175
    :cond_5a2
    const/4 v3, 0x1

    move/from16 v0, v33

    if-ne v0, v3, :cond_59e

    .line 3176
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    .line 3177
    if-nez v25, :cond_59e

    .line 3178
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchAssistLongPressAction()V

    goto :goto_59e

    .line 3182
    :cond_5b2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    if-eqz v3, :cond_5be

    .line 3183
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    goto :goto_59e

    .line 3185
    :cond_5be
    if-nez v25, :cond_59e

    .line 3186
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchAssistAction()V

    goto :goto_59e

    .line 3191
    :cond_5c4
    const/16 v3, 0x78

    move/from16 v0, v24

    if-ne v0, v3, :cond_5dd

    .line 3192
    if-eqz v17, :cond_5d9

    if-nez v33, :cond_5d9

    .line 3193
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3195
    :cond_5d9
    const-wide/16 v43, -0x1

    goto/16 :goto_a9

    .line 3197
    :cond_5dd
    const/4 v3, 0x4

    move/from16 v0, v24

    if-eq v0, v3, :cond_5e8

    const/16 v3, 0x6f

    move/from16 v0, v24

    if-ne v0, v3, :cond_67c

    .line 3198
    :cond_5e8
    if-eqz v17, :cond_646

    .line 3199
    if-nez v33, :cond_602

    .line 3201
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    move/from16 v0, v19

    invoke-virtual {v3, v0, v5, v6}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getWaitingTimeOfKeyPendingControl(IJ)J

    move-result-wide v43

    .line 3203
    .restart local v43    # "waitingTime":J
    const-wide/16 v5, 0x0

    cmp-long v3, v43, v5

    if-eqz v3, :cond_50b

    goto/16 :goto_a9

    .line 3207
    .end local v43    # "waitingTime":J
    :cond_602
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_50b

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableMultiWindowUISetting:I

    if-eqz v3, :cond_50b

    .line 3208
    const/4 v3, 0x7

    move/from16 v0, v33

    if-ne v0, v3, :cond_63a

    if-nez v13, :cond_63a

    .line 3209
    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_633

    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "event : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3210
    :cond_633
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->toggleMultiWindowTray()V

    .line 3211
    const-wide/16 v43, -0x1

    goto/16 :goto_a9

    .line 3212
    :cond_63a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeBackKeyUp:Z

    if-eqz v3, :cond_50b

    if-lez v33, :cond_50b

    .line 3213
    const-wide/16 v43, -0x1

    goto/16 :goto_a9

    .line 3220
    :cond_646
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_50b

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableMultiWindowUISetting:I

    if-eqz v3, :cond_50b

    .line 3221
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeBackKeyUp:Z

    if-eqz v3, :cond_661

    .line 3222
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeBackKeyUp:Z

    .line 3223
    const-wide/16 v43, -0x1

    goto/16 :goto_a9

    .line 3225
    :cond_661
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->closeMultiWindowTrayBar()Z

    move-result v3

    if-eqz v3, :cond_50b

    .line 3226
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 3227
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v3, "com.sec.android.intent.action.BACK_KEY"

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3228
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3229
    const-wide/16 v43, -0x1

    goto/16 :goto_a9

    .line 3237
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_67c
    const/16 v3, 0x1a

    move/from16 v0, v24

    if-ne v0, v3, :cond_50b

    .line 3239
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v3

    if-eqz v3, :cond_69c

    .line 3240
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->sendSystemKeyToSideSync(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_69c

    .line 3241
    const-wide/16 v43, -0x1

    goto/16 :goto_a9

    .line 3246
    :cond_69c
    if-eqz p1, :cond_6c1

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    .line 3247
    .restart local v12    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_6a2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    const/16 v5, 0x1a

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSystemKeyEventRequested(I)Z

    move-result v3

    if-eqz v3, :cond_50b

    .line 3248
    if-eqz v12, :cond_6c3

    iget v3, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7d0

    if-ne v3, v5, :cond_6c3

    .line 3249
    const-string v3, "reason"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 3250
    const-wide/16 v43, 0x64

    goto/16 :goto_a9

    .line 3246
    .end local v12    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_6c1
    const/4 v12, 0x0

    goto :goto_6a2

    .line 3253
    .restart local v12    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_6c3
    const-wide/16 v43, 0x0

    goto/16 :goto_a9

    .line 3274
    .end local v12    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_6c7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    if-eqz v3, :cond_748

    .line 3275
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v23

    .line 3276
    .local v23, "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual/range {v23 .. v24}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v3

    if-eqz v3, :cond_748

    .line 3277
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 3278
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 3279
    if-eqz v17, :cond_707

    if-nez v33, :cond_707

    if-nez v25, :cond_707

    .line 3280
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v29

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/internal/policy/impl/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v35

    .line 3281
    .local v35, "shortcutIntent":Landroid/content/Intent;
    if-eqz v35, :cond_72b

    .line 3282
    const/high16 v3, 0x10000000

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3284
    :try_start_6fe
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_707
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6fe .. :try_end_707} :catch_70b

    .line 3295
    .end local v35    # "shortcutIntent":Landroid/content/Intent;
    :cond_707
    :goto_707
    const-wide/16 v43, -0x1

    goto/16 :goto_a9

    .line 3285
    .restart local v35    # "shortcutIntent":Landroid/content/Intent;
    :catch_70b
    move-exception v18

    .line 3286
    .local v18, "ex":Landroid/content/ActivityNotFoundException;
    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dropping shortcut key combination because the activity to which it is registered was not found: SEARCH+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v24 .. v24}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_707

    .line 3291
    .end local v18    # "ex":Landroid/content/ActivityNotFoundException;
    :cond_72b
    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dropping unregistered shortcut key combination: SEARCH+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v24 .. v24}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_707

    .line 3300
    .end local v23    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v35    # "shortcutIntent":Landroid/content/Intent;
    :cond_748
    if-eqz v17, :cond_7a5

    if-nez v33, :cond_7a5

    if-nez v25, :cond_7a5

    const/high16 v3, 0x10000

    and-int v3, v3, v29

    if-eqz v3, :cond_7a5

    .line 3302
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v23

    .line 3303
    .restart local v23    # "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual/range {v23 .. v24}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v3

    if-eqz v3, :cond_7a5

    .line 3304
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    const v5, -0x70001

    and-int v5, v5, v29

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v3, v0, v1, v5}, Lcom/android/internal/policy/impl/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v35

    .line 3307
    .restart local v35    # "shortcutIntent":Landroid/content/Intent;
    if-eqz v35, :cond_7a5

    .line 3308
    const/high16 v3, 0x10000000

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3310
    :try_start_778
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_781
    .catch Landroid/content/ActivityNotFoundException; {:try_start_778 .. :try_end_781} :catch_785

    .line 3316
    :goto_781
    const-wide/16 v43, -0x1

    goto/16 :goto_a9

    .line 3311
    :catch_785
    move-exception v18

    .line 3312
    .restart local v18    # "ex":Landroid/content/ActivityNotFoundException;
    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dropping shortcut key combination because the activity to which it is registered was not found: META+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v24 .. v24}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_781

    .line 3322
    .end local v18    # "ex":Landroid/content/ActivityNotFoundException;
    .end local v23    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v35    # "shortcutIntent":Landroid/content/Intent;
    :cond_7a5
    if-eqz v17, :cond_7f5

    if-nez v33, :cond_7f5

    if-nez v25, :cond_7f5

    .line 3323
    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 3324
    .local v14, "category":Ljava/lang/String;
    if-eqz v14, :cond_7f5

    .line 3325
    const-string v3, "android.intent.action.MAIN"

    invoke-static {v3, v14}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 3326
    .restart local v4    # "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3328
    :try_start_7c2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_7c9
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7c2 .. :try_end_7c9} :catch_7cd

    .line 3334
    :goto_7c9
    const-wide/16 v43, -0x1

    goto/16 :goto_a9

    .line 3329
    :catch_7cd
    move-exception v18

    .line 3330
    .restart local v18    # "ex":Landroid/content/ActivityNotFoundException;
    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dropping application launch key because the activity to which it is registered was not found: keyCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", category="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7c9

    .line 3339
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v14    # "category":Ljava/lang/String;
    .end local v18    # "ex":Landroid/content/ActivityNotFoundException;
    :cond_7f5
    if-eqz v17, :cond_832

    if-nez v33, :cond_832

    const/16 v3, 0x3d

    move/from16 v0, v24

    if-ne v0, v3, :cond_832

    .line 3340
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    if-nez v3, :cond_84f

    if-nez v25, :cond_84f

    .line 3341
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v3

    and-int/lit16 v0, v3, -0xc2

    move/from16 v34, v0

    .line 3342
    .local v34, "shiftlessModifiers":I
    const/4 v3, 0x2

    move/from16 v0, v34

    invoke-static {v0, v3}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v3

    if-nez v3, :cond_822

    const/high16 v3, 0x10000

    move/from16 v0, v34

    invoke-static {v0, v3}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v3

    if-eqz v3, :cond_84f

    .line 3345
    :cond_822
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    .line 3346
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showOrHideRecentAppsDialog(I)V

    .line 3347
    const-wide/16 v43, -0x1

    goto/16 :goto_a9

    .line 3350
    .end local v34    # "shiftlessModifiers":I
    :cond_832
    if-nez v17, :cond_84f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    if-eqz v3, :cond_84f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    and-int v3, v3, v29

    if-nez v3, :cond_84f

    .line 3352
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    .line 3353
    if-eqz v25, :cond_87e

    const/4 v3, 0x2

    :goto_84a
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showOrHideRecentAppsDialog(I)V

    .line 3358
    :cond_84f
    if-eqz v17, :cond_883

    if-nez v33, :cond_883

    const/16 v3, 0xcc

    move/from16 v0, v24

    if-eq v0, v3, :cond_865

    const/16 v3, 0x3e

    move/from16 v0, v24

    if-ne v0, v3, :cond_883

    move/from16 v0, v29

    and-int/lit16 v3, v0, 0x7000

    if-eqz v3, :cond_883

    .line 3362
    :cond_865
    move/from16 v0, v29

    and-int/lit16 v3, v0, 0xc1

    if-eqz v3, :cond_880

    const/16 v16, -0x1

    .line 3363
    .local v16, "direction":I
    :goto_86d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v5

    move/from16 v0, v16

    invoke-interface {v3, v5, v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->switchKeyboardLayout(II)V

    .line 3364
    const-wide/16 v43, -0x1

    goto/16 :goto_a9

    .line 3353
    .end local v16    # "direction":I
    :cond_87e
    const/4 v3, 0x3

    goto :goto_84a

    .line 3362
    :cond_880
    const/16 v16, 0x1

    goto :goto_86d

    .line 3366
    :cond_883
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    if-eqz v3, :cond_8a0

    if-nez v17, :cond_8a0

    const/16 v3, 0xcc

    move/from16 v0, v24

    if-eq v0, v3, :cond_897

    const/16 v3, 0x3e

    move/from16 v0, v24

    if-ne v0, v3, :cond_8a0

    .line 3369
    :cond_897
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    .line 3370
    const-wide/16 v43, -0x1

    goto/16 :goto_a9

    .line 3373
    :cond_8a0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/internal/policy/impl/GlobalKeyManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v3, v5, v0, v1}, Lcom/android/internal/policy/impl/GlobalKeyManager;->handleGlobalKey(Landroid/content/Context;ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_8b6

    .line 3374
    const-wide/16 v43, -0x1

    goto/16 :goto_a9

    .line 3378
    :cond_8b6
    const-wide/16 v43, 0x0

    goto/16 :goto_a9
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .registers 36
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    .line 5745
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    if-nez v3, :cond_9

    .line 5747
    const/16 v26, 0x0

    .line 6431
    :cond_8
    :goto_8
    return v26

    .line 5750
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_65

    const/4 v13, 0x1

    .line 5751
    .local v13, "down":Z
    :goto_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v12

    .line 5752
    .local v12, "canceled":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v21

    .line 5753
    .local v21, "keyCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v27

    .line 5757
    .local v27, "scanCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_71

    .line 5758
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v3, :cond_39

    .line 5759
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v5, "enterprise_policy"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 5762
    :cond_39
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v3, :cond_71

    .line 5763
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v24

    .line 5764
    .local v24, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v24, :cond_71

    .line 5765
    const/16 v16, 0x1

    .line 5766
    .local v16, "isAllowed":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_67

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_67

    .line 5767
    const/4 v3, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1, v3}, Landroid/app/enterprise/kioskmode/KioskMode;->isHardwareKeyAllowed(IZ)Z

    move-result v16

    .line 5771
    :goto_60
    if-nez v16, :cond_71

    .line 5772
    const/16 v26, 0x0

    goto :goto_8

    .line 5750
    .end local v12    # "canceled":Z
    .end local v13    # "down":Z
    .end local v16    # "isAllowed":Z
    .end local v21    # "keyCode":I
    .end local v24    # "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    .end local v27    # "scanCode":I
    :cond_65
    const/4 v13, 0x0

    goto :goto_10

    .line 5769
    .restart local v12    # "canceled":Z
    .restart local v13    # "down":Z
    .restart local v16    # "isAllowed":Z
    .restart local v21    # "keyCode":I
    .restart local v24    # "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    .restart local v27    # "scanCode":I
    :cond_67
    const/4 v3, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1, v3}, Landroid/app/enterprise/kioskmode/KioskMode;->isHardwareKeyAllowed(IZ)Z

    move-result v16

    goto :goto_60

    .line 5778
    .end local v16    # "isAllowed":Z
    .end local v24    # "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_71
    const/high16 v3, 0x1000000

    and-int v3, v3, p2

    if-eqz v3, :cond_10a

    const/16 v17, 0x1

    .line 5784
    .local v17, "isInjected":Z
    :goto_79
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    if-nez v3, :cond_10e

    const/16 v23, 0x0

    .line 5789
    .local v23, "keyguardActive":Z
    :goto_81
    const/16 v3, 0x1a

    move/from16 v0, v21

    if-ne v0, v3, :cond_9a

    .line 5790
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerDoubleBehavior:Z

    if-eqz v3, :cond_98

    .line 5791
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->addPowerKeyClickAction(I)V

    .line 5793
    :cond_98
    or-int/lit8 p2, p2, 0x1

    .line 5796
    :cond_9a
    const/4 v3, 0x3

    move/from16 v0, v21

    if-ne v0, v3, :cond_a7

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDomeButton:Z

    if-eqz v3, :cond_a7

    .line 5797
    or-int/lit8 p2, p2, 0x1

    .line 5799
    :cond_a7
    and-int/lit8 v3, p2, 0x3

    if-eqz v3, :cond_124

    const/16 v20, 0x1

    .line 5809
    .local v20, "isWakeKey":Z
    :goto_ad
    if-eqz v13, :cond_ca

    move/from16 v0, p2

    and-int/lit16 v3, v0, 0x100

    if-eqz v3, :cond_ca

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_ca

    .line 5814
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isUseVibetonz()Z

    move-result v3

    if-eqz v3, :cond_ca

    .line 5815
    const/4 v3, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 5829
    :cond_ca
    if-eqz p3, :cond_d2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-eqz v3, :cond_d6

    :cond_d2
    if-eqz v17, :cond_127

    if-nez v20, :cond_127

    .line 5830
    :cond_d6
    if-eqz v13, :cond_e2

    const/4 v3, 0x3

    move/from16 v0, v21

    if-ne v0, v3, :cond_e2

    .line 5831
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeUsedToWake:Z

    .line 5834
    :cond_e2
    const/16 v26, 0x1

    .line 5879
    .local v26, "result":I
    :cond_e4
    :goto_e4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptKeyCombinationBeforeQueueing(Landroid/view/KeyEvent;IZ)V

    .line 5883
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isEnableAccessControl()Z

    move-result v3

    if-eqz v3, :cond_1c9

    .line 5884
    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_106

    const-string v3, "WindowManager"

    const-string v5, "interceptKeyTq : Key was blocked by access control"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5885
    :cond_106
    and-int/lit8 v26, v26, -0x2

    .line 5886
    goto/16 :goto_8

    .line 5778
    .end local v17    # "isInjected":Z
    .end local v20    # "isWakeKey":Z
    .end local v23    # "keyguardActive":Z
    .end local v26    # "result":I
    :cond_10a
    const/16 v17, 0x0

    goto/16 :goto_79

    .line 5784
    .restart local v17    # "isInjected":Z
    :cond_10e
    if-eqz p3, :cond_11a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v23

    goto/16 :goto_81

    :cond_11a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v23

    goto/16 :goto_81

    .line 5799
    .restart local v23    # "keyguardActive":Z
    :cond_124
    const/16 v20, 0x0

    goto :goto_ad

    .line 5838
    .restart local v20    # "isWakeKey":Z
    :cond_127
    const/16 v26, 0x0

    .line 5839
    .restart local v26    # "result":I
    if-eqz v13, :cond_e4

    if-eqz v20, :cond_e4

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isWakeKeyWhenScreenOff(I)Z

    move-result v3

    if-eqz v3, :cond_e4

    .line 5841
    const/4 v3, 0x3

    move/from16 v0, v21

    if-ne v0, v3, :cond_141

    .line 5842
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeUsedToWake:Z

    .line 5847
    :cond_141
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v3

    if-eqz v3, :cond_18f

    .line 5848
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isMirrorLessCameraSpecialized()Z

    move-result v3

    if-eqz v3, :cond_154

    .line 5849
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->performCPUCoreNumBoost()V

    .line 5851
    :cond_154
    const/16 v3, 0x1b

    move/from16 v0, v21

    if-ne v0, v3, :cond_19c

    .line 5852
    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_165

    const-string v3, "WindowManager"

    const-string v5, "set wakeup reason by camera"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5853
    :cond_165
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    const/16 v5, 0x3ea

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->setReasonOfScreenOn(I)V

    .line 5855
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows()V

    .line 5856
    new-instance v4, Landroid/content/Intent;

    const-string v3, "android.intent.action.CAMERA_BUTTON"

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5857
    .local v4, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, p1

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5858
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 5866
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_18f
    :goto_18f
    if-eqz v23, :cond_1b1

    .line 5868
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->onWakeKeyWhenKeyguardShowingTq(I)V

    goto/16 :goto_e4

    .line 5861
    :cond_19c
    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_1a7

    const-string v3, "WindowManager"

    const-string v5, "set wakeup reason by powerkey"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5862
    :cond_1a7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    const/16 v5, 0x3e9

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->setReasonOfScreenOn(I)V

    goto :goto_18f

    .line 5869
    :cond_1b1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->maybeShow()Z

    move-result v3

    if-eqz v3, :cond_1c5

    .line 5870
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->requestWakeUpAfterDrawing(Z)V

    goto/16 :goto_e4

    .line 5873
    :cond_1c5
    or-int/lit8 v26, v26, 0x2

    goto/16 :goto_e4

    .line 5891
    :cond_1c9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v3

    if-eqz v3, :cond_201

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isBlockedKeyBySideSync(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_201

    .line 5892
    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_1fd

    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "interceptKeyTq : Key was blocked by sidesync. keycode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5893
    :cond_1fd
    and-int/lit8 v26, v26, -0x2

    .line 5894
    goto/16 :goto_8

    .line 5904
    :cond_201
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/internal/policy/impl/GlobalKeyManager;

    move/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/policy/impl/GlobalKeyManager;->shouldHandleGlobalKey(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 5909
    sparse-switch v21, :sswitch_data_648

    .line 6429
    :cond_212
    :goto_212
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, p3

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->performSystemKeyFeedback(Landroid/view/KeyEvent;ZZ)V

    goto/16 :goto_8

    .line 5919
    :sswitch_221
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isZoomRingKeyEvent(II)Z

    move-result v3

    if-nez v3, :cond_212

    .line 5955
    if-eqz v13, :cond_275

    .line 5956
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v28

    .line 5957
    .local v28, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    const/16 v18, 0x0

    .line 5958
    .local v18, "isRinging":Z
    if-eqz v28, :cond_253

    .line 5960
    :try_start_239
    invoke-interface/range {v28 .. v28}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_253

    .line 5967
    const-string v3, "WindowManager"

    const-string v5, "interceptKeyBeforeQueueing: VOLUME key-down while ringing: Silence ringer!"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5972
    invoke-interface/range {v28 .. v28}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V

    .line 5976
    and-int/lit8 v26, v26, -0x2

    .line 5978
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isDualSIMMode()Z
    :try_end_24e
    .catch Landroid/os/RemoteException; {:try_start_239 .. :try_end_24e} :catch_28a

    move-result v3

    if-eqz v3, :cond_212

    .line 5979
    const/16 v18, 0x1

    .line 6002
    :cond_253
    :goto_253
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isDualSIMMode()Z

    move-result v3

    if-eqz v3, :cond_275

    .line 6003
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService2()Lcom/android/internal/telephony/ITelephony;

    move-result-object v29

    .line 6004
    .local v29, "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    if-eqz v29, :cond_273

    .line 6006
    :try_start_25f
    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_273

    .line 6013
    const-string v3, "WindowManager"

    const-string v5, "interceptKeyBeforeQueueing: VOLUME key-down while ringing2: Silence ringer!"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6018
    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_26f
    .catch Landroid/os/RemoteException; {:try_start_25f .. :try_end_26f} :catch_293

    .line 6022
    and-int/lit8 v26, v26, -0x2

    .line 6023
    const/16 v18, 0x1

    .line 6030
    :cond_273
    :goto_273
    if-nez v18, :cond_212

    .line 6050
    .end local v18    # "isRinging":Z
    .end local v28    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    .end local v29    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    :cond_275
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move/from16 v0, v21

    invoke-virtual {v3, v0, v13, v12}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->handleSamsungVolumeControl(IZZ)V

    .line 6053
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v3, v0, v13, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->processTorchlight(IZZ)V

    goto :goto_212

    .line 5997
    .restart local v18    # "isRinging":Z
    .restart local v28    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :catch_28a
    move-exception v14

    .line 5998
    .local v14, "ex":Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v5, "ITelephony threw RemoteException"

    invoke-static {v3, v5, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_253

    .line 6025
    .end local v14    # "ex":Landroid/os/RemoteException;
    .restart local v29    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    :catch_293
    move-exception v14

    .line 6026
    .restart local v14    # "ex":Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v5, "ITelephony2 threw RemoteException"

    invoke-static {v3, v5, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_273

    .line 6059
    .end local v14    # "ex":Landroid/os/RemoteException;
    .end local v18    # "isRinging":Z
    .end local v28    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    .end local v29    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    :sswitch_29c
    and-int/lit8 v26, v26, -0x2

    .line 6060
    if-eqz v13, :cond_2eb

    .line 6061
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v28

    .line 6062
    .restart local v28    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    const/4 v15, 0x0

    .line 6063
    .local v15, "hungUp":Z
    if-eqz v28, :cond_2ab

    .line 6065
    :try_start_2a7
    invoke-interface/range {v28 .. v28}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_2aa
    .catch Landroid/os/RemoteException; {:try_start_2a7 .. :try_end_2aa} :catch_2d7

    move-result v15

    .line 6070
    :cond_2ab
    :goto_2ab
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isDualSIMMode()Z

    move-result v3

    if-eqz v3, :cond_2bb

    .line 6071
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService2()Lcom/android/internal/telephony/ITelephony;

    move-result-object v29

    .line 6072
    .restart local v29    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    if-eqz v29, :cond_2bb

    .line 6074
    :try_start_2b7
    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_2ba
    .catch Landroid/os/RemoteException; {:try_start_2b7 .. :try_end_2ba} :catch_2e0

    move-result v15

    .line 6080
    .end local v29    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    :cond_2bb
    :goto_2bb
    if-eqz p3, :cond_2bf

    if-eqz v15, :cond_2e9

    :cond_2bf
    const/4 v3, 0x1

    :goto_2c0
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyDown(Z)V

    .line 6082
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isEndCallKeyRequested(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_212

    .line 6083
    or-int/lit8 v26, v26, 0x1

    .line 6084
    goto/16 :goto_212

    .line 6066
    :catch_2d7
    move-exception v14

    .line 6067
    .restart local v14    # "ex":Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v5, "ITelephony threw RemoteException"

    invoke-static {v3, v5, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2ab

    .line 6075
    .end local v14    # "ex":Landroid/os/RemoteException;
    .restart local v29    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    :catch_2e0
    move-exception v14

    .line 6076
    .restart local v14    # "ex":Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v5, "ITelephony2 threw RemoteException"

    invoke-static {v3, v5, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2bb

    .line 6080
    .end local v14    # "ex":Landroid/os/RemoteException;
    .end local v29    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    :cond_2e9
    const/4 v3, 0x0

    goto :goto_2c0

    .line 6087
    .end local v15    # "hungUp":Z
    .end local v28    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_2eb
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyUp(Z)Z

    move-result v3

    if-eqz v3, :cond_212

    .line 6088
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isEndCallKeyRequested(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_305

    .line 6089
    or-int/lit8 v26, v26, 0x1

    .line 6090
    goto/16 :goto_212

    .line 6093
    :cond_305
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isGoHomeOnEndCallKey(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_318

    .line 6094
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchHomeFromHomeKey()V

    goto/16 :goto_212

    .line 6097
    :cond_318
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_326

    .line 6099
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->goHome()Z

    move-result v3

    if-nez v3, :cond_212

    .line 6103
    :cond_326
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_212

    .line 6105
    and-int/lit8 v3, v26, -0x3

    or-int/lit8 v26, v3, 0x4

    goto/16 :goto_212

    .line 6114
    :sswitch_334
    and-int/lit8 v26, v26, -0x2

    .line 6115
    if-eqz v13, :cond_458

    .line 6116
    if-eqz p3, :cond_355

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-nez v3, :cond_355

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_355

    .line 6118
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    .line 6119
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTime:J

    .line 6129
    :cond_355
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDomeButton:Z

    if-eqz v3, :cond_3da

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-nez v3, :cond_3da

    const/16 v19, 0x1

    .line 6132
    .local v19, "isScreenOnPolicy":Z
    :goto_363
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v28

    .line 6133
    .restart local v28    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v30

    .line 6134
    .local v30, "voipInterfaceService":Landroid/os/IVoIPInterface;
    const/4 v15, 0x0

    .line 6135
    .restart local v15    # "hungUp":Z
    const-string v31, "com.amc.ui"

    .line 6136
    .local v31, "voipPackageName":Ljava/lang/String;
    if-eqz v28, :cond_379

    .line 6138
    :try_start_370
    invoke-interface/range {v28 .. v28}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_3dd

    .line 6141
    invoke-interface/range {v28 .. v28}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_379
    .catch Landroid/os/RemoteException; {:try_start_370 .. :try_end_379} :catch_41f

    .line 6163
    :cond_379
    :goto_379
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isDualSIMMode()Z

    move-result v3

    if-eqz v3, :cond_38e

    .line 6164
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService2()Lcom/android/internal/telephony/ITelephony;

    move-result-object v29

    .line 6165
    .restart local v29    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    if-eqz v29, :cond_38e

    .line 6167
    :try_start_385
    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_429

    .line 6170
    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_38e
    .catch Landroid/os/RemoteException; {:try_start_385 .. :try_end_38e} :catch_44b

    .line 6192
    .end local v29    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    :cond_38e
    :goto_38e
    if-eqz p3, :cond_39c

    if-nez v15, :cond_39c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isCombinationKeyTriggered()Z

    move-result v3

    if-eqz v3, :cond_455

    :cond_39c
    const/4 v3, 0x1

    :goto_39d
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyDown(Z)V

    .line 6197
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v3

    if-eqz v3, :cond_3bf

    .line 6198
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v3

    if-nez v3, :cond_3bf

    .line 6199
    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_3bd

    const-string v3, "WindowManager"

    const-string v5, "in interceptKeyBeforeQueueing() KEYCODE_POWER Down event isSideSyncPresentationRunning is true"

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6200
    :cond_3bd
    or-int/lit8 v26, v26, 0x1

    .line 6206
    :cond_3bf
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    const/16 v5, 0x1a

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSystemKeyEventRequested(I)Z

    move-result v3

    if-eqz v3, :cond_212

    .line 6207
    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_3d6

    const-string v3, "WindowManager"

    const-string v5, "in interceptKeyBeforeQueueing() KEYCODE_POWER Down event isSystemKeyEventRequested() is true"

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6208
    :cond_3d6
    or-int/lit8 v26, v26, 0x1

    goto/16 :goto_212

    .line 6129
    .end local v15    # "hungUp":Z
    .end local v19    # "isScreenOnPolicy":Z
    .end local v28    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    .end local v30    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    .end local v31    # "voipPackageName":Ljava/lang/String;
    :cond_3da
    const/16 v19, 0x0

    goto :goto_363

    .line 6142
    .restart local v15    # "hungUp":Z
    .restart local v19    # "isScreenOnPolicy":Z
    .restart local v28    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    .restart local v30    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    .restart local v31    # "voipPackageName":Ljava/lang/String;
    :cond_3dd
    :try_start_3dd
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3ff

    invoke-interface/range {v28 .. v28}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v3

    if-eqz v3, :cond_3ff

    if-nez p3, :cond_3ef

    if-eqz v19, :cond_3ff

    :cond_3ef
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isRingingInDualMode()Z

    move-result v3

    if-nez v3, :cond_3ff

    .line 6149
    invoke-interface/range {v28 .. v28}, Lcom/android/internal/telephony/ITelephony;->endCall()Z

    move-result v15

    goto/16 :goto_379

    .line 6152
    :cond_3ff
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_379

    invoke-interface/range {v30 .. v30}, Landroid/os/IVoIPInterface;->isVoIPDialing()Z

    move-result v3

    if-nez v3, :cond_413

    invoke-interface/range {v30 .. v30}, Landroid/os/IVoIPInterface;->isVoIPActivated()Z

    move-result v3

    if-eqz v3, :cond_379

    :cond_413
    invoke-interface/range {v30 .. v31}, Landroid/os/IVoIPInterface;->getVoIPCallCount(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_379

    .line 6155
    invoke-interface/range {v30 .. v30}, Landroid/os/IVoIPInterface;->hangupVoIPCall()Z
    :try_end_41c
    .catch Landroid/os/RemoteException; {:try_start_3dd .. :try_end_41c} :catch_41f

    move-result v15

    goto/16 :goto_379

    .line 6158
    :catch_41f
    move-exception v14

    .line 6159
    .restart local v14    # "ex":Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v5, "ITelephony threw RemoteException"

    invoke-static {v3, v5, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_379

    .line 6171
    .end local v14    # "ex":Landroid/os/RemoteException;
    .restart local v29    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    :cond_429
    :try_start_429
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_38e

    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v3

    if-eqz v3, :cond_38e

    if-nez p3, :cond_43b

    if-eqz v19, :cond_38e

    :cond_43b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isRingingInDualMode()Z

    move-result v3

    if-nez v3, :cond_38e

    .line 6178
    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_448
    .catch Landroid/os/RemoteException; {:try_start_429 .. :try_end_448} :catch_44b

    move-result v15

    goto/16 :goto_38e

    .line 6180
    :catch_44b
    move-exception v14

    .line 6181
    .restart local v14    # "ex":Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v5, "ITelephony2 threw RemoteException"

    invoke-static {v3, v5, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_38e

    .line 6192
    .end local v14    # "ex":Landroid/os/RemoteException;
    .end local v29    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    :cond_455
    const/4 v3, 0x0

    goto/16 :goto_39d

    .line 6212
    .end local v15    # "hungUp":Z
    .end local v19    # "isScreenOnPolicy":Z
    .end local v28    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    .end local v30    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    .end local v31    # "voipPackageName":Ljava/lang/String;
    :cond_458
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    .line 6219
    if-nez v12, :cond_465

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    if-eqz v3, :cond_4d2

    :cond_465
    const/4 v3, 0x1

    :goto_466
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyUp(Z)Z

    move-result v3

    if-eqz v3, :cond_48f

    .line 6220
    and-int/lit8 v3, v26, -0x3

    or-int/lit8 v26, v3, 0x4

    .line 6223
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportSPC()Z

    move-result v3

    if-eqz v3, :cond_47a

    .line 6224
    and-int/lit8 v26, v26, -0x5

    .line 6226
    :cond_47a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerDoubleBehavior:Z

    if-eqz v3, :cond_48f

    .line 6227
    and-int/lit8 v26, v26, -0x5

    .line 6228
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCheckPowerKeySingleClick:Ljava/lang/Runnable;

    const-wide/16 v6, 0x258

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6235
    :cond_48f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v3

    if-eqz v3, :cond_4b0

    .line 6236
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v3

    if-nez v3, :cond_4b0

    .line 6237
    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_4aa

    const-string v3, "WindowManager"

    const-string v5, "in interceptKeyBeforeQueueing() KEYCODE_POWER up event isSideSyncPresentationRunning is true"

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6238
    :cond_4aa
    or-int/lit8 v26, v26, 0x1

    .line 6239
    if-eqz p3, :cond_4b0

    .line 6240
    and-int/lit8 v26, v26, -0x5

    .line 6247
    :cond_4b0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    const/16 v5, 0x1a

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSystemKeyEventRequested(I)Z

    move-result v3

    if-eqz v3, :cond_4cb

    .line 6248
    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_4c7

    const-string v3, "WindowManager"

    const-string v5, "in interceptKeyBeforeQueueing() KEYCODE_POWER Up event isSystemKeyEventRequested() is true"

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6249
    :cond_4c7
    or-int/lit8 v26, v26, 0x1

    .line 6250
    and-int/lit8 v26, v26, -0x5

    .line 6253
    :cond_4cb
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    goto/16 :goto_212

    .line 6219
    :cond_4d2
    const/4 v3, 0x0

    goto :goto_466

    .line 6261
    :sswitch_4d4
    if-eqz v13, :cond_4f4

    .line 6262
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v28

    .line 6263
    .restart local v28    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v28, :cond_4e2

    .line 6265
    :try_start_4dc
    invoke-interface/range {v28 .. v28}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_4df
    .catch Landroid/os/RemoteException; {:try_start_4dc .. :try_end_4df} :catch_509

    move-result v3

    if-eqz v3, :cond_212

    .line 6275
    :cond_4e2
    :goto_4e2
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isDualSIMMode()Z

    move-result v3

    if-eqz v3, :cond_4f4

    .line 6276
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService2()Lcom/android/internal/telephony/ITelephony;

    move-result-object v29

    .line 6277
    .restart local v29    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    if-eqz v29, :cond_4f4

    .line 6279
    :try_start_4ee
    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_4f1
    .catch Landroid/os/RemoteException; {:try_start_4ee .. :try_end_4f1} :catch_512

    move-result v3

    if-eqz v3, :cond_212

    .line 6292
    .end local v28    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    .end local v29    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    :cond_4f4
    :goto_4f4
    :sswitch_4f4
    const/16 v3, 0x4f

    move/from16 v0, v21

    if-ne v0, v3, :cond_51b

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryPBAPhase()Z

    move-result v3

    if-eqz v3, :cond_51b

    .line 6294
    const-string v3, "WindowManager"

    const-string v5, " KeyEvent.KEYCODE_HEADSETHOOK blocked..."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_212

    .line 6270
    .restart local v28    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :catch_509
    move-exception v14

    .line 6271
    .restart local v14    # "ex":Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v5, "ITelephony threw RemoteException"

    invoke-static {v3, v5, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4e2

    .line 6284
    .end local v14    # "ex":Landroid/os/RemoteException;
    .restart local v29    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    :catch_512
    move-exception v14

    .line 6285
    .restart local v14    # "ex":Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v5, "ITelephony2 threw RemoteException"

    invoke-static {v3, v5, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4f4

    .line 6305
    .end local v14    # "ex":Landroid/os/RemoteException;
    .end local v28    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    .end local v29    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    :cond_51b
    :sswitch_51b
    and-int/lit8 v3, v26, 0x1

    if-nez v3, :cond_212

    .line 6311
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 6312
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    new-instance v6, Landroid/view/KeyEvent;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    invoke-virtual {v3, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v25

    .line 6314
    .local v25, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 6315
    invoke-virtual/range {v25 .. v25}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_212

    .line 6321
    .end local v25    # "msg":Landroid/os/Message;
    :sswitch_541
    if-eqz v13, :cond_212

    .line 6322
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v28

    .line 6323
    .restart local v28    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v28, :cond_55b

    .line 6325
    :try_start_549
    invoke-interface/range {v28 .. v28}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_55b

    .line 6326
    const-string v3, "WindowManager"

    const-string v5, "interceptKeyBeforeQueueing: CALL key-down while ringing: Answer the call!"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6328
    invoke-interface/range {v28 .. v28}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V
    :try_end_559
    .catch Landroid/os/RemoteException; {:try_start_549 .. :try_end_559} :catch_57b

    .line 6332
    and-int/lit8 v26, v26, -0x2

    .line 6338
    :cond_55b
    :goto_55b
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isDualSIMMode()Z

    move-result v3

    if-eqz v3, :cond_212

    .line 6339
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService2()Lcom/android/internal/telephony/ITelephony;

    move-result-object v29

    .line 6340
    .restart local v29    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    if-eqz v29, :cond_212

    .line 6342
    :try_start_567
    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_212

    .line 6343
    const-string v3, "WindowManager"

    const-string v5, "interceptKeyBeforeQueueing: CALL key-down while ringing: Answer the call 2!"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6345
    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V
    :try_end_577
    .catch Landroid/os/RemoteException; {:try_start_567 .. :try_end_577} :catch_584

    .line 6349
    and-int/lit8 v26, v26, -0x2

    goto/16 :goto_212

    .line 6334
    .end local v29    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    :catch_57b
    move-exception v14

    .line 6335
    .restart local v14    # "ex":Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v5, "ITelephony threw RemoteException"

    invoke-static {v3, v5, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_55b

    .line 6351
    .end local v14    # "ex":Landroid/os/RemoteException;
    .restart local v29    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    :catch_584
    move-exception v14

    .line 6352
    .restart local v14    # "ex":Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v5, "ITelephony2 threw RemoteException"

    invoke-static {v3, v5, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_212

    .line 6361
    .end local v14    # "ex":Landroid/os/RemoteException;
    .end local v28    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    .end local v29    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    :sswitch_58e
    const/16 v26, 0x1

    .line 6362
    goto/16 :goto_212

    .line 6366
    :sswitch_592
    const/16 v22, 0x0

    .line 6367
    .local v22, "keyIntercept":Z
    if-nez v13, :cond_5a8

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_5a8

    .line 6368
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->launchingGamekey(Z)Z

    move-result v22

    .line 6371
    :cond_5a8
    if-eqz v22, :cond_5ae

    .line 6372
    and-int/lit8 v26, v26, -0x2

    goto/16 :goto_212

    .line 6374
    :cond_5ae
    or-int/lit8 v26, v26, 0x1

    .line 6377
    goto/16 :goto_212

    .line 6382
    .end local v22    # "keyIntercept":Z
    :sswitch_5b2
    const-string v3, "FakeShutdown"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@unknown : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6383
    const/16 v3, 0x240

    move/from16 v0, v27

    if-ne v0, v3, :cond_5d4

    if-eqz v13, :cond_5f0

    .line 6384
    :cond_5d4
    const-string v3, "FakeShutdown"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_212

    .line 6388
    :cond_5f0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 6389
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/internal/policy/impl/PhoneWindowManager$18;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$18;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_212

    .line 6409
    :sswitch_605
    if-eqz v13, :cond_212

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_212

    .line 6410
    if-eqz p3, :cond_61c

    .line 6411
    const-string v3, "WindowManager"

    const-string v5, "Premium Watch - LCD off"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6412
    and-int/lit8 v3, v26, -0x3

    or-int/lit8 v26, v3, 0x4

    goto/16 :goto_212

    .line 6415
    :cond_61c
    :try_start_61c
    const-string v3, "WindowManager"

    const-string v5, "Premium Watch on"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6416
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 6417
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v3, "com.sec.android.intent.action.START_WATCH"

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6418
    const/high16 v3, 0x10000000

    invoke-virtual {v4, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6419
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_63b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_61c .. :try_end_63b} :catch_63d

    goto/16 :goto_212

    .line 6420
    .end local v4    # "intent":Landroid/content/Intent;
    :catch_63d
    move-exception v14

    .line 6421
    .local v14, "ex":Landroid/content/ActivityNotFoundException;
    const-string v3, "WindowManager"

    const-string v5, "Fail to launch Premium Watch"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_212

    .line 5909
    nop

    :sswitch_data_648
    .sparse-switch
        0x0 -> :sswitch_5b2
        0x5 -> :sswitch_541
        0x6 -> :sswitch_29c
        0x18 -> :sswitch_221
        0x19 -> :sswitch_221
        0x1a -> :sswitch_334
        0x4f -> :sswitch_4f4
        0x55 -> :sswitch_4d4
        0x56 -> :sswitch_51b
        0x57 -> :sswitch_51b
        0x58 -> :sswitch_51b
        0x59 -> :sswitch_51b
        0x5a -> :sswitch_51b
        0x5b -> :sswitch_51b
        0x7e -> :sswitch_4d4
        0x7f -> :sswitch_4d4
        0x82 -> :sswitch_51b
        0xa4 -> :sswitch_221
        0xa8 -> :sswitch_221
        0xa9 -> :sswitch_221
        0xef -> :sswitch_58e
        0xf1 -> :sswitch_221
        0xf2 -> :sswitch_221
        0xf3 -> :sswitch_221
        0x10f -> :sswitch_605
        0x110 -> :sswitch_592
    .end sparse-switch
.end method

.method public interceptMotionBeforeQueueingWhenScreenOff(I)I
    .registers 5
    .param p1, "policyFlags"    # I

    .prologue
    .line 6488
    const/4 v1, 0x0

    .line 6490
    .local v1, "result":I
    and-int/lit8 v2, p1, 0x3

    if-eqz v2, :cond_1a

    const/4 v0, 0x1

    .line 6492
    .local v0, "isWakeMotion":Z
    :goto_6
    if-eqz v0, :cond_19

    .line 6493
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 6495
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->onWakeMotionWhenKeyguardShowingTq()V

    .line 6501
    :cond_19
    :goto_19
    return v1

    .line 6490
    .end local v0    # "isWakeMotion":Z
    :cond_1a
    const/4 v0, 0x0

    goto :goto_6

    .line 6498
    .restart local v0    # "isWakeMotion":Z
    :cond_1c
    or-int/lit8 v1, v1, 0x2

    goto :goto_19
.end method

.method public isCoverOpen()Z
    .registers 2

    .prologue
    .line 1943
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isCoverOpen()Z

    move-result v0

    return v0
.end method

.method isDeviceProvisioned()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1079
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

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

.method isFMActive()Z
    .registers 4

    .prologue
    .line 5629
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 5630
    .local v0, "am":Landroid/media/AudioManager;
    if-nez v0, :cond_15

    .line 5631
    const-string v1, "WindowManager"

    const-string v2, "isFMActive: couldn\'t get AudioManager reference"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5632
    const/4 v1, 0x0

    .line 5634
    :goto_14
    return v1

    :cond_15
    invoke-virtual {v0}, Landroid/media/AudioManager;->isFMActive()Z

    move-result v1

    goto :goto_14
.end method

.method public isFlashBarTrayHideWindowShown(I)Z
    .registers 3
    .param p1, "displayId"    # I

    .prologue
    .line 8265
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    if-eqz v0, :cond_c

    .line 8267
    :try_start_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->isFlashBarTrayHideWindowShown(I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v0

    .line 8272
    :goto_a
    return v0

    .line 8268
    :catch_b
    move-exception v0

    .line 8272
    :cond_c
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isGloveModeEnabled()Z
    .registers 2

    .prologue
    .line 1950
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isGloveModeEnabled()Z

    move-result v0

    return v0
.end method

.method public isKeyguardLocked()Z
    .registers 2

    .prologue
    .line 6872
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    return v0
.end method

.method public isKeyguardSecure()Z
    .registers 2

    .prologue
    .line 6877
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 6878
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v0

    goto :goto_5
.end method

.method isMusicActive()Z
    .registers 4

    .prologue
    .line 5617
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 5618
    .local v0, "am":Landroid/media/AudioManager;
    if-nez v0, :cond_15

    .line 5619
    const-string v1, "WindowManager"

    const-string v2, "isMusicActive: couldn\'t get AudioManager reference"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5620
    const/4 v1, 0x0

    .line 5622
    :goto_14
    return v1

    :cond_15
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    goto :goto_14
.end method

.method public isNavigationBarVisible()Z
    .registers 2

    .prologue
    .line 7808
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 7809
    const/4 v0, 0x1

    .line 7811
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isScreenOnEarly()Z
    .registers 2

    .prologue
    .line 6842
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    return v0
.end method

.method public isScreenOnFully()Z
    .registers 2

    .prologue
    .line 6847
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    return v0
.end method

.method public isStatusBarVisible()Z
    .registers 2

    .prologue
    .line 7798
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v0

    if-nez v0, :cond_16

    .line 7799
    const/4 v0, 0x1

    .line 7801
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 7886
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public isTopFullScreen()Z
    .registers 2

    .prologue
    .line 7908
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    return v0
.end method

.method public isTopLevelWindow(I)Z
    .registers 4
    .param p1, "windowType"    # I

    .prologue
    const/4 v0, 0x1

    .line 7871
    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_d

    const/16 v1, 0x7cf

    if-gt p1, v1, :cond_d

    .line 7873
    const/16 v1, 0x3eb

    if-ne p1, v1, :cond_e

    .line 7875
    :cond_d
    :goto_d
    return v0

    .line 7873
    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method isVoIPRinging()Z
    .registers 6

    .prologue
    .line 2638
    const/4 v1, 0x0

    .line 2640
    .local v1, "isVoIPRinging":Z
    :try_start_1
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v2

    .line 2641
    .local v2, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-eqz v2, :cond_c

    .line 2642
    invoke-interface {v2}, Landroid/os/IVoIPInterface;->isVoIPRinging()Z

    move-result v1

    .line 2649
    .end local v2    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :goto_b
    return v1

    .line 2644
    .restart local v2    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :cond_c
    const-string v3, "WindowManager"

    const-string v4, "Unable to find IVoIPInterface interface"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_13} :catch_14

    goto :goto_b

    .line 2646
    .end local v2    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :catch_14
    move-exception v0

    .line 2647
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v4, "RemoteException from getVoIPInterfaceService()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public keepScreenOnStartedLw()V
    .registers 1

    .prologue
    .line 7698
    return-void
.end method

.method public keepScreenOnStoppedLw()V
    .registers 5

    .prologue
    .line 7702
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v2

    if-nez v2, :cond_16

    .line 7703
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 7704
    .local v0, "curTime":J
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 7706
    .end local v0    # "curTime":J
    :cond_16
    return-void
.end method

.method keyguardOn()Z
    .registers 2

    .prologue
    .line 2663
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->inKeyguardRestrictedKeyInputMode()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public launchHomeFromHomeKey()V
    .registers 1

    .prologue
    .line 7912
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchHomeFromHotKey()V

    .line 7913
    return-void
.end method

.method launchHomeFromHotKey()V
    .registers 3

    .prologue
    .line 3554
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3556
    const-string v0, "WindowManager"

    const-string v1, "Disabled Home Launching Case #1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3585
    :goto_13
    return-void

    .line 3557
    :cond_14
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isInputRestricted()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 3560
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$9;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$9;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    goto :goto_13

    .line 3576
    :cond_2b
    sget-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_36

    const-string v0, "WindowManager"

    const-string v1, "launchHomeFromHotKey"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3579
    :cond_36
    :try_start_36
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3d} :catch_46

    .line 3582
    :goto_3d
    const-string v0, "homekey"

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 3583
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->startDockOrHome()V

    goto :goto_13

    .line 3580
    :catch_46
    move-exception v0

    goto :goto_3d
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 10
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "attached"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 4156
    const/4 v4, 0x0

    sget v5, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_NORMAL:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;I)V

    .line 4157
    return-void
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;I)V
    .registers 53
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "attached"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p4, "baseAttrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p5, "windowMode"    # I

    .prologue
    .line 4165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_11

    .line 4945
    :cond_10
    :goto_10
    return-void

    .line 4168
    :cond_11
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDefaultDisplay()Z

    move-result v33

    .line 4169
    .local v33, "isDefaultDisplay":Z
    if-eqz v33, :cond_591

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_591

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_591

    const/16 v36, 0x1

    .line 4171
    .local v36, "needsToOffsetInputMethodTarget":Z
    :goto_27
    if-eqz v36, :cond_32

    .line 4175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 4178
    :cond_32
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x8a0

    if-ne v2, v3, :cond_7c

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 4179
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v0, v2, Landroid/graphics/Rect;->top:I

    move/from16 v44, v0

    .line 4180
    .local v44, "top":I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int v44, v44, v2

    .line 4181
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move/from16 v0, v44

    if-le v2, v0, :cond_5e

    .line 4182
    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    .line 4184
    :cond_5e
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v0, v2, Landroid/graphics/Rect;->top:I

    move/from16 v44, v0

    .line 4185
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenVisibleInsetsLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int v44, v44, v2

    .line 4186
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move/from16 v0, v44

    if-le v2, v0, :cond_7c

    .line 4187
    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    .line 4191
    .end local v44    # "top":I
    :cond_7c
    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4192
    .local v4, "fl":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move/from16 v16, v0

    .line 4193
    .local v16, "sim":I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v43

    .line 4195
    .local v43, "sysUiFl":I
    sget-object v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 4196
    .local v8, "pf":Landroid/graphics/Rect;
    sget-object v9, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 4197
    .local v9, "df":Landroid/graphics/Rect;
    sget-object v10, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    .line 4198
    .local v10, "of":Landroid/graphics/Rect;
    sget-object v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 4199
    .local v11, "cf":Landroid/graphics/Rect;
    sget-object v12, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 4201
    .local v12, "vf":Landroid/graphics/Rect;
    if-eqz v33, :cond_595

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v2, :cond_595

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_595

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_595

    const/16 v32, 0x1

    .line 4204
    .local v32, "hasNavBar":Z
    :goto_ae
    move/from16 v0, v16

    and-int/lit16 v5, v0, 0xf0

    .line 4207
    .local v5, "adjust":I
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_599

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v2, :cond_599

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v2, :cond_599

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-ne v2, v3, :cond_599

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ne v2, v3, :cond_599

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getForcedLocalOrientation()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_599

    const/16 v31, 0x1

    .line 4214
    .local v31, "forcedLocalOrientationWin":Z
    :goto_102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_59d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-eq v2, v0, :cond_11c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttachedWindowLw()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v2

    move-object/from16 v0, p1

    if-ne v2, v0, :cond_59d

    :cond_11c
    const/16 v34, 0x1

    .line 4216
    .local v34, "isFocused":Z
    :goto_11e
    if-nez v33, :cond_5dd

    .line 4217
    if-eqz p3, :cond_5a1

    .line 4220
    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p3

    move/from16 v13, p5

    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 4600
    :goto_12e
    if-eqz p4, :cond_248

    .line 4601
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_dc8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_dc8

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_dc8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_dc8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-lez v2, :cond_dc8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_dc8

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v3

    if-ne v2, v3, :cond_dc8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, -0x2

    if-eq v2, v3, :cond_dc8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v3, -0x2

    if-eq v2, v3, :cond_dc8

    .line 4609
    if-eqz p3, :cond_197

    invoke-interface/range {p3 .. p3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_1af

    .line 4610
    :cond_197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4611
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4613
    :cond_1af
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4614
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 4627
    :cond_1c7
    :goto_1c7
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_1d7

    .line 4628
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    .line 4631
    :cond_1d7
    move/from16 v0, p5

    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_213

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->hScale:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_213

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->vScale:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_213

    .line 4632
    const/16 v2, -0x2710

    iput v2, v12, Landroid/graphics/Rect;->top:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    .line 4633
    const/16 v2, 0x2710

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 4636
    :cond_213
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isArranged(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_248

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_248

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_248

    .line 4639
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSavedGravityMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 4640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSavedGravityMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4644
    :cond_248
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e0f

    invoke-static/range {p5 .. p5}, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->mode(I)I

    move-result v2

    sget v3, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_NORMAL:I

    if-ne v2, v3, :cond_e0f

    sget v2, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_OPTION_COMMON_RESIZE:I

    and-int v2, v2, p5

    if-eqz v2, :cond_e0f

    and-int/lit16 v2, v4, 0x400

    if-nez v2, :cond_e0f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e0f

    .line 4649
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 4660
    :cond_273
    :goto_273
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    if-eqz v2, :cond_45a

    .line 4662
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_1135

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_1135

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_1135

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_1135

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-lez v2, :cond_1135

    .line 4665
    invoke-static/range {p5 .. p5}, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->mode(I)I

    move-result v2

    sget v3, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_FREESTYLE:I

    if-ne v2, v3, :cond_110c

    .line 4666
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/view/WindowManager;

    .line 4667
    .local v45, "wm":Landroid/view/WindowManager;
    const/16 v35, 0x0

    .line 4668
    .local v35, "isPortrait":Z
    const/16 v28, 0x0

    .line 4669
    .local v28, "currentWinLeft":I
    const/16 v26, 0x0

    .line 4670
    .local v26, "currentWinBottom":I
    const/16 v29, 0x0

    .line 4671
    .local v29, "currentWinWidth":I
    const/16 v27, 0x0

    .line 4672
    .local v27, "currentWinHeight":I
    const/16 v42, 0x0

    .line 4675
    .local v42, "scaleWinHeight":I
    move/from16 v0, p5

    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_ead

    .line 4676
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->hScale:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_e39

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->vScale:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_e39

    .line 4677
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v28, v0

    .line 4678
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v3, v3

    move-object/from16 v0, p2

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->vScale:F

    mul-float/2addr v3, v6

    const/high16 v6, 0x3f000000

    add-float/2addr v3, v6

    float-to-int v3, v3

    add-int v26, v2, v3

    .line 4679
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v29, v0

    .line 4680
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v27, v0

    .line 4722
    :cond_303
    :goto_303
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move/from16 v0, v26

    if-gt v0, v2, :cond_315

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isArranged(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_10d2

    .line 4723
    :cond_315
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 4724
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    .line 4726
    invoke-interface/range {v45 .. v45}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v30

    .line 4727
    .local v30, "disp":Landroid/view/Display;
    invoke-virtual/range {v30 .. v30}, Landroid/view/Display;->getRotation()I

    move-result v37

    .line 4728
    .local v37, "rotation":I
    sget v2, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_OPTION_SPLIT_ZONE_MASK:I

    and-int v46, p5, v2

    .line 4730
    .local v46, "zone":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    move/from16 v0, v37

    if-eq v0, v2, :cond_33d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    move/from16 v0, v37

    if-ne v0, v2, :cond_33f

    .line 4731
    :cond_33d
    const/16 v35, 0x1

    .line 4734
    :cond_33f
    and-int/lit16 v2, v4, 0x200

    if-eqz v2, :cond_f70

    if-eqz v35, :cond_f70

    sget v2, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_OPTION_SPLIT_ZONE_B:I

    move/from16 v0, v46

    if-ne v0, v2, :cond_f70

    .line 4737
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    .line 4738
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    sub-int/2addr v2, v3

    sub-int v2, v2, v27

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4739
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 4740
    sget v2, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_OPTION_SPLIT_ZONE_F:I

    move/from16 v0, v46

    if-ne v0, v2, :cond_f5d

    .line 4741
    move/from16 v0, v28

    iput v0, v8, Landroid/graphics/Rect;->left:I

    .line 4742
    add-int v2, v28, v29

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4747
    :goto_37a
    const/16 v2, 0x10

    if-ne v5, v2, :cond_384

    .line 4748
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    .line 4751
    :cond_384
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isArranged(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_39f

    .line 4752
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSavedGravityMap:Ljava/util/HashMap;

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4754
    :cond_39f
    sget v2, Lcom/android/internal/policy/impl/MultiWindowReflector$Gravity;->ARRANGE_BOTTOM_UPPER_SIP:I

    move-object/from16 v0, p2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 4810
    :goto_3a5
    const/16 v2, 0x30

    if-eq v5, v2, :cond_10cd

    .line 4811
    move/from16 v0, p5

    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_10bf

    .line 4812
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->vScale:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_10a7

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->vScale:F

    move/from16 v40, v0

    .line 4813
    .local v40, "scale":F
    :goto_3be
    const/16 v41, 0x0

    .line 4814
    .local v41, "scaleBottom":I
    iget v2, v8, Landroid/graphics/Rect;->top:I

    move/from16 v0, v27

    int-to-float v3, v0

    mul-float v3, v3, v40

    const/high16 v6, 0x3f000000

    add-float/2addr v3, v6

    float-to-int v3, v3

    add-int v41, v2, v3

    .line 4815
    iget v2, v8, Landroid/graphics/Rect;->top:I

    iput v2, v12, Landroid/graphics/Rect;->top:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 4816
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move/from16 v0, v41

    if-le v0, v2, :cond_10b5

    .line 4817
    iget v2, v8, Landroid/graphics/Rect;->top:I

    add-int v2, v2, v27

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    sub-int v3, v41, v3

    mul-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    div-float v3, v3, v40

    const/high16 v6, 0x3f000000

    add-float/2addr v3, v6

    float-to-int v3, v3

    sub-int/2addr v2, v3

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    .line 4867
    .end local v26    # "currentWinBottom":I
    .end local v27    # "currentWinHeight":I
    .end local v28    # "currentWinLeft":I
    .end local v29    # "currentWinWidth":I
    .end local v30    # "disp":Landroid/view/Display;
    .end local v35    # "isPortrait":Z
    .end local v37    # "rotation":I
    .end local v40    # "scale":F
    .end local v41    # "scaleBottom":I
    .end local v42    # "scaleWinHeight":I
    .end local v45    # "wm":Landroid/view/WindowManager;
    .end local v46    # "zone":I
    :cond_3f3
    :goto_3f3
    if-eqz p3, :cond_45a

    invoke-static/range {p5 .. p5}, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->mode(I)I

    move-result v2

    sget v3, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_FREESTYLE:I

    if-eq v2, v3, :cond_419

    invoke-interface/range {p3 .. p3}, Landroid/view/WindowManagerPolicy$WindowState;->getWindowModeLw()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->mode(I)I

    move-result v2

    sget v3, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_FREESTYLE:I

    if-ne v2, v3, :cond_45a

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x3e9

    if-eq v2, v3, :cond_419

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x3ec

    if-ne v2, v3, :cond_45a

    .line 4872
    :cond_419
    invoke-interface/range {p3 .. p3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_435

    invoke-interface/range {p3 .. p3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_435

    invoke-interface/range {p3 .. p3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_45a

    .line 4873
    :cond_435
    const v2, 0x10500

    and-int/2addr v2, v4

    const v3, 0x10100

    if-ne v2, v3, :cond_115e

    and-int/lit8 v2, v43, 0x4

    if-nez v2, :cond_115e

    .line 4876
    const/16 v18, 0x1

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move v15, v4

    move-object/from16 v17, p3

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    move-object/from16 v23, v12

    move/from16 v24, p5

    invoke-virtual/range {v13 .. v24}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 4887
    :cond_45a
    :goto_45a
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x8a1

    if-ne v2, v3, :cond_475

    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move-object/from16 v19, p3

    move/from16 v20, p5

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    .line 4888
    invoke-direct/range {v17 .. v24}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setFitAttachedWindowVertical(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 4899
    :cond_475
    const/high16 v2, 0x2000000

    and-int v2, v2, p5

    if-eqz v2, :cond_51a

    move/from16 v0, p5

    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_51a

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->hScale:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_51a

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->vScale:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_51a

    .line 4901
    and-int/lit8 v2, p5, 0xf

    if-nez v2, :cond_51a

    const/high16 v2, 0x80000

    and-int v2, v2, p5

    if-nez v2, :cond_51a

    .line 4903
    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    if-ne v2, v3, :cond_4b6

    iget v2, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    if-gt v2, v3, :cond_4b6

    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTitleBarHeight:I

    add-int/2addr v2, v3

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 4904
    :cond_4b6
    iget v2, v9, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    if-ne v2, v3, :cond_4cf

    iget v2, v9, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    if-gt v2, v3, :cond_4cf

    iget v2, v9, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTitleBarHeight:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    .line 4905
    :cond_4cf
    iget v2, v10, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    if-ne v2, v3, :cond_4e8

    iget v2, v10, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    if-gt v2, v3, :cond_4e8

    iget v2, v10, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTitleBarHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    .line 4906
    :cond_4e8
    iget v2, v11, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    if-ne v2, v3, :cond_501

    iget v2, v11, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    if-gt v2, v3, :cond_501

    iget v2, v11, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTitleBarHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    .line 4907
    :cond_501
    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    if-ne v2, v3, :cond_51a

    iget v2, v12, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    if-gt v2, v3, :cond_51a

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTitleBarHeight:I

    add-int/2addr v2, v3

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    :cond_51a
    move-object/from16 v7, p1

    .line 4911
    invoke-interface/range {v7 .. v12}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 4915
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-eq v2, v3, :cond_52f

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0xbb6

    if-ne v2, v3, :cond_545

    :cond_52f
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v2

    if-eqz v2, :cond_545

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenInsetsPendingLw()Z

    move-result v2

    if-nez v2, :cond_545

    .line 4919
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 4920
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 4924
    :cond_545
    invoke-static/range {p5 .. p5}, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->mode(I)I

    move-result v2

    sget v3, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_NORMAL:I

    if-ne v2, v3, :cond_10

    .line 4926
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v2

    if-eqz v2, :cond_575

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x480000

    and-int/2addr v2, v3

    if-eqz v2, :cond_575

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_575

    .line 4929
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideWindow:Z

    .line 4932
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v3, 0x100000

    and-int/2addr v2, v3

    if-eqz v2, :cond_575

    .line 4933
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowPinupWindowForce:Z

    .line 4937
    :cond_575
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    if-eqz v2, :cond_10

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 4940
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowOverPinupWindow:Z

    goto/16 :goto_10

    .line 4169
    .end local v4    # "fl":I
    .end local v5    # "adjust":I
    .end local v8    # "pf":Landroid/graphics/Rect;
    .end local v9    # "df":Landroid/graphics/Rect;
    .end local v10    # "of":Landroid/graphics/Rect;
    .end local v11    # "cf":Landroid/graphics/Rect;
    .end local v12    # "vf":Landroid/graphics/Rect;
    .end local v16    # "sim":I
    .end local v31    # "forcedLocalOrientationWin":Z
    .end local v32    # "hasNavBar":Z
    .end local v34    # "isFocused":Z
    .end local v36    # "needsToOffsetInputMethodTarget":Z
    .end local v43    # "sysUiFl":I
    :cond_591
    const/16 v36, 0x0

    goto/16 :goto_27

    .line 4201
    .restart local v4    # "fl":I
    .restart local v8    # "pf":Landroid/graphics/Rect;
    .restart local v9    # "df":Landroid/graphics/Rect;
    .restart local v10    # "of":Landroid/graphics/Rect;
    .restart local v11    # "cf":Landroid/graphics/Rect;
    .restart local v12    # "vf":Landroid/graphics/Rect;
    .restart local v16    # "sim":I
    .restart local v36    # "needsToOffsetInputMethodTarget":Z
    .restart local v43    # "sysUiFl":I
    :cond_595
    const/16 v32, 0x0

    goto/16 :goto_ae

    .line 4207
    .restart local v5    # "adjust":I
    .restart local v32    # "hasNavBar":Z
    :cond_599
    const/16 v31, 0x0

    goto/16 :goto_102

    .line 4214
    .restart local v31    # "forcedLocalOrientationWin":Z
    :cond_59d
    const/16 v34, 0x0

    goto/16 :goto_11e

    .line 4223
    .restart local v34    # "isFocused":Z
    :cond_5a1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4224
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4225
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4227
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_12e

    .line 4230
    :cond_5dd
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-ne v2, v3, :cond_633

    .line 4231
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4232
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v2, v12, Landroid/graphics/Rect;->top:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4233
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4234
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 4236
    const/16 v2, 0x50

    move-object/from16 v0, p2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 4237
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    .line 4239
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    goto/16 :goto_12e

    .line 4242
    :cond_633
    const v2, 0x10100

    and-int/2addr v2, v4

    const v3, 0x10100

    if-ne v2, v3, :cond_931

    .line 4251
    if-eqz p3, :cond_64c

    .line 4254
    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p3

    move/from16 v13, p5

    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    goto/16 :goto_12e

    .line 4256
    :cond_64c
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7de

    if-eq v2, v3, :cond_664

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e1

    if-eq v2, v3, :cond_664

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x89e

    if-ne v2, v3, :cond_790

    .line 4266
    :cond_664
    if-eqz v32, :cond_774

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    :goto_66a
    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4268
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4269
    if-eqz v32, :cond_77a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    :goto_685
    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4272
    if-eqz v32, :cond_785

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    :goto_696
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 4327
    :goto_69c
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_893

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x63

    if-gt v2, v3, :cond_893

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v2, :cond_893

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v2, :cond_893

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_893

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_893

    const/16 v25, 0x1

    .line 4333
    .local v25, "applyWindow":Z
    :goto_6c7
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_8b1

    .line 4335
    if-nez v25, :cond_6d3

    if-eqz v31, :cond_725

    :cond_6d3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_725

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_701

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_701

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isStatusBarShowOnFullScreen()Z

    move-result v2

    if-nez v2, :cond_701

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isStatusBarHidingOnFullScreen()Z

    move-result v2

    if-eqz v2, :cond_725

    .line 4339
    :cond_701
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v3, v6

    if-eq v2, v3, :cond_725

    .line 4343
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    .line 4347
    :cond_725
    const/16 v2, 0x10

    if-ne v5, v2, :cond_735

    if-nez v34, :cond_897

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v2, v3, :cond_897

    .line 4349
    :cond_735
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 4350
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 4351
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 4352
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    .line 4391
    :cond_74d
    :goto_74d
    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-direct {v0, v1, v4, v11}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyStableConstraints(IILandroid/graphics/Rect;)V

    .line 4392
    const/16 v2, 0x30

    if-eq v5, v2, :cond_92c

    if-eqz v34, :cond_92c

    .line 4393
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    .line 4394
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v2, v12, Landroid/graphics/Rect;->top:I

    .line 4395
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    .line 4396
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_12e

    .line 4266
    .end local v25    # "applyWindow":Z
    :cond_774
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    goto/16 :goto_66a

    .line 4269
    :cond_77a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    goto/16 :goto_685

    .line 4272
    :cond_785
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    goto/16 :goto_696

    .line 4281
    :cond_790
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x2000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_7dc

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_7dc

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-gt v2, v3, :cond_7dc

    .line 4286
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4287
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4288
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4289
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_69c

    .line 4291
    :cond_7dc
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    if-eqz v2, :cond_845

    move/from16 v0, v43

    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_845

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_845

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-gt v2, v3, :cond_845

    .line 4299
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4300
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4301
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4302
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 4306
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    .line 4307
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    .line 4308
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    .line 4309
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_69c

    .line 4311
    :cond_845
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4312
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4313
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4315
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 4320
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    .line 4321
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    .line 4322
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    .line 4323
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_69c

    .line 4327
    :cond_893
    const/16 v25, 0x0

    goto/16 :goto_6c7

    .line 4354
    .restart local v25    # "applyWindow":Z
    :cond_897
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 4355
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 4356
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 4357
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_74d

    .line 4364
    :cond_8b1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 4365
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 4366
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 4367
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    .line 4370
    if-nez v25, :cond_8d7

    if-eqz v31, :cond_910

    :cond_8d7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_910

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_910

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isStatusBarShowOnFullScreen()Z

    move-result v2

    if-nez v2, :cond_910

    .line 4372
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v3, v6

    if-ne v2, v3, :cond_910

    .line 4376
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    .line 4381
    :cond_910
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_74d

    .line 4382
    const/16 v2, 0x10

    if-eq v5, v2, :cond_924

    .line 4383
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_74d

    .line 4385
    :cond_924
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_74d

    .line 4398
    :cond_92c
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_12e

    .line 4401
    .end local v25    # "applyWindow":Z
    :cond_931
    and-int/lit16 v2, v4, 0x100

    if-nez v2, :cond_93b

    move/from16 v0, v43

    and-int/lit16 v2, v0, 0x600

    if-eqz v2, :cond_c58

    .line 4408
    :cond_93b
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7de

    if-eq v2, v3, :cond_953

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e1

    if-eq v2, v3, :cond_953

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x89e

    if-ne v2, v3, :cond_a44

    .line 4411
    :cond_953
    if-eqz v32, :cond_a28

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    :goto_959
    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4413
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4414
    if-eqz v32, :cond_a2e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    :goto_978
    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4417
    if-eqz v32, :cond_a39

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    :goto_98b
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 4504
    :goto_993
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_c4f

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x63

    if-gt v2, v3, :cond_c4f

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v2, :cond_c4f

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v2, :cond_c4f

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_c4f

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_c4f

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_c4f

    const/16 v25, 0x1

    .line 4510
    .restart local v25    # "applyWindow":Z
    :goto_9c4
    if-nez v25, :cond_9c8

    if-eqz v31, :cond_a01

    :cond_9c8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_a01

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_a01

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isStatusBarShowOnFullScreen()Z

    move-result v2

    if-nez v2, :cond_a01

    .line 4512
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v3, v6

    if-ne v2, v3, :cond_a01

    .line 4516
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    .line 4520
    :cond_a01
    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-direct {v0, v1, v4, v11}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyStableConstraints(IILandroid/graphics/Rect;)V

    .line 4522
    const/16 v2, 0x30

    if-eq v5, v2, :cond_c53

    if-eqz v34, :cond_c53

    .line 4523
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    .line 4524
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v2, v12, Landroid/graphics/Rect;->top:I

    .line 4525
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    .line 4526
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_12e

    .line 4411
    .end local v25    # "applyWindow":Z
    :cond_a28
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    goto/16 :goto_959

    .line 4414
    :cond_a2e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    goto/16 :goto_978

    .line 4417
    :cond_a39
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    goto/16 :goto_98b

    .line 4425
    :cond_a44
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e3

    if-eq v2, v3, :cond_a54

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e8

    if-ne v2, v3, :cond_a88

    .line 4428
    :cond_a54
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4429
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4430
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4432
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_993

    .line 4439
    :cond_a88
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7df

    if-eq v2, v3, :cond_a98

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e5

    if-ne v2, v3, :cond_ad8

    :cond_a98
    and-int/lit16 v2, v4, 0x400

    if-eqz v2, :cond_ad8

    .line 4443
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4444
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4445
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4447
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_993

    .line 4449
    :cond_ad8
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e5

    if-eq v2, v3, :cond_ae8

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e9

    if-ne v2, v3, :cond_b24

    .line 4452
    :cond_ae8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4453
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4454
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4456
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_993

    .line 4458
    :cond_b24
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7dd

    if-ne v2, v3, :cond_b68

    .line 4460
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4461
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4462
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4464
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_993

    .line 4466
    :cond_b68
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x2000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_bbc

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_bbc

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-gt v2, v3, :cond_bbc

    .line 4471
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4472
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4473
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4475
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_993

    .line 4477
    :cond_bbc
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    if-eqz v2, :cond_c13

    move/from16 v0, v43

    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_c13

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_c13

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-gt v2, v3, :cond_c13

    .line 4488
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4489
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4490
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4492
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_993

    .line 4495
    :cond_c13
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4496
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4497
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4499
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_993

    .line 4504
    :cond_c4f
    const/16 v25, 0x0

    goto/16 :goto_9c4

    .line 4528
    .restart local v25    # "applyWindow":Z
    :cond_c53
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_12e

    .line 4530
    .end local v25    # "applyWindow":Z
    :cond_c58
    if-eqz p3, :cond_c68

    .line 4535
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p3

    move/from16 v13, p5

    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    goto/16 :goto_12e

    .line 4541
    :cond_c68
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7de

    if-eq v2, v3, :cond_c78

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x89e

    if-ne v2, v3, :cond_cb4

    .line 4547
    :cond_c78
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4548
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4549
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4551
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_12e

    .line 4555
    :cond_cb4
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_d96

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x63

    if-gt v2, v3, :cond_d96

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v2, :cond_d96

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v2, :cond_d96

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_d96

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_d96

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_d96

    const/16 v25, 0x1

    .line 4561
    .restart local v25    # "applyWindow":Z
    :goto_ce5
    if-nez v25, :cond_ce9

    if-eqz v31, :cond_d26

    :cond_ce9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_d26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_d26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isStatusBarShowOnFullScreen()Z

    move-result v2

    if-nez v2, :cond_d26

    and-int/lit16 v2, v4, 0x400

    if-eqz v2, :cond_d26

    .line 4564
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v3, v6

    if-ne v2, v3, :cond_d26

    .line 4568
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    .line 4572
    :cond_d26
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4573
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4574
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4575
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 4576
    const/16 v2, 0x10

    if-ne v5, v2, :cond_d4e

    if-nez v34, :cond_d9a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v2, v3, :cond_d9a

    .line 4578
    :cond_d4e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    .line 4579
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    .line 4580
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 4581
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    .line 4588
    :goto_d76
    const/16 v2, 0x30

    if-eq v5, v2, :cond_dc3

    if-eqz v34, :cond_dc3

    .line 4589
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    .line 4590
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v2, v12, Landroid/graphics/Rect;->top:I

    .line 4591
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    .line 4592
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_12e

    .line 4555
    .end local v25    # "applyWindow":Z
    :cond_d96
    const/16 v25, 0x0

    goto/16 :goto_ce5

    .line 4583
    .restart local v25    # "applyWindow":Z
    :cond_d9a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    .line 4584
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    .line 4585
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 4586
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_d76

    .line 4594
    :cond_dc3
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_12e

    .line 4616
    .end local v25    # "applyWindow":Z
    :cond_dc8
    if-eqz p3, :cond_dd4

    invoke-interface/range {p3 .. p3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_de0

    .line 4617
    :cond_dd4
    move-object/from16 v0, p4

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4618
    move-object/from16 v0, p4

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4620
    :cond_de0
    move-object/from16 v0, p4

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v2, v3

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4621
    move-object/from16 v0, p4

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v2, v3

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 4622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_1c7

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v3

    if-eq v2, v3, :cond_1c7

    .line 4623
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_1c7

    .line 4653
    :cond_e0f
    and-int/lit16 v2, v4, 0x200

    if-eqz v2, :cond_273

    .line 4654
    const/16 v2, -0x2710

    iput v2, v12, Landroid/graphics/Rect;->top:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    .line 4655
    const/16 v2, 0x2710

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    goto/16 :goto_273

    .line 4681
    .restart local v26    # "currentWinBottom":I
    .restart local v27    # "currentWinHeight":I
    .restart local v28    # "currentWinLeft":I
    .restart local v29    # "currentWinWidth":I
    .restart local v35    # "isPortrait":Z
    .restart local v42    # "scaleWinHeight":I
    .restart local v45    # "wm":Landroid/view/WindowManager;
    :cond_e39
    if-eqz p4, :cond_e8f

    move-object/from16 v0, p4

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->hScale:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_e8f

    move-object/from16 v0, p4

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->vScale:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_e8f

    .line 4682
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v0, v2, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    .line 4683
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p4

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->vScale:F

    mul-float/2addr v3, v6

    const/high16 v6, 0x3f000000

    add-float/2addr v3, v6

    float-to-int v3, v3

    add-int v26, v2, v3

    .line 4684
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v29

    .line 4685
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v27

    .line 4686
    move/from16 v0, v27

    int-to-float v2, v0

    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->vScale:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000

    add-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v42, v0

    goto/16 :goto_303

    .line 4688
    :cond_e8f
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v28, v0

    .line 4689
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int v26, v2, v3

    .line 4690
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v29, v0

    .line 4691
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v27, v0

    goto/16 :goto_303

    .line 4693
    :cond_ead
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_ed1

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_ed1

    .line 4695
    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    .line 4696
    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    .line 4697
    iget v2, v8, Landroid/graphics/Rect;->right:I

    iget v3, v8, Landroid/graphics/Rect;->left:I

    sub-int v29, v2, v3

    .line 4698
    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    iget v3, v8, Landroid/graphics/Rect;->top:I

    sub-int v27, v2, v3

    goto/16 :goto_303

    .line 4699
    :cond_ed1
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_edf

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v3, -0x2

    if-eq v2, v3, :cond_ef9

    :cond_edf
    and-int/lit16 v2, v4, 0x200

    if-nez v2, :cond_f3f

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v3, v8, Landroid/graphics/Rect;->right:I

    iget v6, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v6

    if-eq v2, v3, :cond_f3f

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v3, v8, Landroid/graphics/Rect;->bottom:I

    iget v6, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v6

    if-eq v2, v3, :cond_f3f

    .line 4703
    :cond_ef9
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v0, v2, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    .line 4704
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    .line 4705
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v29

    .line 4706
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v27

    .line 4708
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSavedGravityMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Integer;

    .line 4709
    .local v39, "savedGravityObj":Ljava/lang/Integer;
    if-eqz v39, :cond_303

    .line 4710
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v38

    .line 4711
    .local v38, "savedGravity":I
    if-eqz v38, :cond_f31

    and-int/lit8 v2, v38, 0x1

    if-eqz v2, :cond_303

    .line 4712
    :cond_f31
    iget v2, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int v3, v3, v29

    div-int/lit8 v3, v3, 0x2

    add-int v28, v2, v3

    goto/16 :goto_303

    .line 4716
    .end local v38    # "savedGravity":I
    .end local v39    # "savedGravityObj":Ljava/lang/Integer;
    :cond_f3f
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v28, v0

    .line 4717
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int v26, v2, v3

    .line 4718
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v29, v0

    .line 4719
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v27, v0

    goto/16 :goto_303

    .line 4744
    .restart local v30    # "disp":Landroid/view/Display;
    .restart local v37    # "rotation":I
    .restart local v46    # "zone":I
    :cond_f5d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4745
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v8, Landroid/graphics/Rect;->right:I

    goto/16 :goto_37a

    .line 4755
    :cond_f70
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    sub-int/2addr v2, v3

    move/from16 v0, v27

    if-lt v0, v2, :cond_f93

    if-eqz v42, :cond_ff3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move/from16 v0, v42

    if-ge v0, v2, :cond_ff3

    .line 4757
    :cond_f93
    move/from16 v0, p5

    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_fe2

    .line 4758
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    sub-int/2addr v3, v6

    sub-int v3, v3, v42

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4759
    iget v2, v8, Landroid/graphics/Rect;->top:I

    add-int v2, v2, v27

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 4764
    :goto_fb7
    move/from16 v0, v28

    iput v0, v8, Landroid/graphics/Rect;->left:I

    .line 4765
    add-int v2, v28, v29

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4767
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isArranged(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_fda

    .line 4768
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSavedGravityMap:Ljava/util/HashMap;

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4770
    :cond_fda
    sget v2, Lcom/android/internal/policy/impl/MultiWindowReflector$Gravity;->ARRANGE_CENTER_UPPER_SIP:I

    move-object/from16 v0, p2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_3a5

    .line 4761
    :cond_fe2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4762
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto :goto_fb7

    .line 4772
    :cond_ff3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4773
    move/from16 v0, v28

    iput v0, v8, Landroid/graphics/Rect;->left:I

    .line 4774
    iget v2, v8, Landroid/graphics/Rect;->left:I

    add-int v2, v2, v29

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4776
    move/from16 v0, p5

    and-int/lit16 v2, v0, 0x800

    if-nez v2, :cond_1076

    .line 4777
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    if-eqz v2, :cond_1099

    move/from16 v0, v43

    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_1099

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_1099

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-gt v2, v3, :cond_1099

    .line 4781
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 4787
    :goto_1035
    and-int/lit16 v2, v4, 0x200

    if-nez v2, :cond_1052

    .line 4788
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 4789
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    .line 4790
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 4794
    :cond_1052
    const/16 v2, 0x10

    if-eq v5, v2, :cond_1069

    .line 4795
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    .line 4796
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    .line 4799
    :cond_1069
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_1076

    .line 4800
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    .line 4804
    :cond_1076
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isArranged(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_1091

    .line 4805
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSavedGravityMap:Ljava/util/HashMap;

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4807
    :cond_1091
    sget v2, Lcom/android/internal/policy/impl/MultiWindowReflector$Gravity;->ARRANGE_FULL_UPPER_SIP:I

    move-object/from16 v0, p2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_3a5

    .line 4783
    :cond_1099
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto :goto_1035

    .line 4812
    :cond_10a7
    if-eqz p4, :cond_10b1

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->vScale:F

    move/from16 v40, v0

    goto/16 :goto_3be

    :cond_10b1
    const/high16 v40, 0x3f800000

    goto/16 :goto_3be

    .line 4819
    .restart local v40    # "scale":F
    .restart local v41    # "scaleBottom":I
    :cond_10b5
    iget v2, v8, Landroid/graphics/Rect;->top:I

    add-int v2, v2, v27

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3f3

    .line 4822
    .end local v40    # "scale":F
    .end local v41    # "scaleBottom":I
    :cond_10bf
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v2, v12, Landroid/graphics/Rect;->top:I

    .line 4823
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3f3

    .line 4826
    :cond_10cd
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_3f3

    .line 4831
    .end local v30    # "disp":Landroid/view/Display;
    .end local v37    # "rotation":I
    .end local v46    # "zone":I
    :cond_10d2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isArranged(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_3f3

    .line 4832
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4833
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 4834
    move/from16 v0, v28

    iput v0, v8, Landroid/graphics/Rect;->left:I

    .line 4835
    iget v2, v8, Landroid/graphics/Rect;->left:I

    add-int v2, v2, v29

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4838
    const/16 v2, 0x10

    if-eq v5, v2, :cond_3f3

    .line 4839
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    .line 4840
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3f3

    .line 4846
    .end local v26    # "currentWinBottom":I
    .end local v27    # "currentWinHeight":I
    .end local v28    # "currentWinLeft":I
    .end local v29    # "currentWinWidth":I
    .end local v35    # "isPortrait":Z
    .end local v42    # "scaleWinHeight":I
    .end local v45    # "wm":Landroid/view/WindowManager;
    :cond_110c
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isArranged(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_3f3

    .line 4847
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSavedGravityMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 4848
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSavedGravityMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3f3

    .line 4861
    :cond_1135
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isArranged(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_3f3

    .line 4862
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSavedGravityMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 4863
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSavedGravityMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3f3

    .line 4878
    :cond_115e
    const/16 v18, 0x0

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move v15, v4

    move-object/from16 v17, p3

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    move-object/from16 v23, v12

    move/from16 v24, p5

    invoke-virtual/range {v13 .. v24}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    goto/16 :goto_45a
.end method

.method public lockNow(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 7386
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7387
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7388
    if-eqz p1, :cond_16

    .line 7391
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;->setLockOptions(Landroid/os/Bundle;)V

    .line 7393
    :cond_16
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7394
    return-void
.end method

.method public mustBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;II)Z
    .registers 12
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "attachAttrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p4, "windowMode"    # I
    .param p5, "attachedWindowMode"    # I

    .prologue
    const/high16 v5, 0x800000

    const/high16 v4, 0x200000

    const/16 v3, 0x835

    const/16 v2, 0x834

    const/4 v0, 0x1

    .line 8110
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideWindow:Z

    if-eqz v1, :cond_38

    .line 8111
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_38

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-eqz v1, :cond_38

    .line 8112
    and-int/lit16 v1, p4, 0x4000

    if-nez v1, :cond_25

    and-int/lit16 v1, p5, 0x4000

    if-eqz v1, :cond_26

    .line 8139
    :cond_25
    :goto_25
    return v0

    .line 8115
    :cond_26
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v2, :cond_25

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v3, :cond_25

    .line 8117
    if-eqz p3, :cond_38

    iget v1, p3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v2, :cond_25

    iget v1, p3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v3, :cond_25

    .line 8123
    :cond_38
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowOverPinupWindow:Z

    if-eqz v1, :cond_56

    .line 8124
    and-int v1, p4, v5

    if-nez v1, :cond_25

    and-int v1, p5, v5

    if-nez v1, :cond_25

    .line 8127
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v2, :cond_25

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v3, :cond_25

    .line 8129
    if-eqz p3, :cond_56

    iget v1, p3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v2, :cond_25

    iget v1, p3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v3, :cond_25

    .line 8134
    :cond_56
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v0, :cond_62

    and-int v1, p4, v4

    if-nez v1, :cond_25

    and-int v1, p5, v4

    if-nez v1, :cond_25

    .line 8139
    :cond_62
    const/4 v0, 0x0

    goto :goto_25
.end method

.method needSensorRunningLp()Z
    .registers 7

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 841
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq v2, v4, :cond_17

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq v2, v5, :cond_17

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_17

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_19

    :cond_17
    move v0, v1

    .line 877
    :cond_18
    :goto_18
    return v0

    .line 849
    :cond_19
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v2, :cond_22

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3b

    :cond_22
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v2, :cond_33

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v2, v1, :cond_3b

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3b

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v2, v4, :cond_3b

    :cond_33
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMirrorLinkDockEnablesAccelerometer:Z

    if-eqz v2, :cond_3d

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v2, v5, :cond_3d

    :cond_3b
    move v0, v1

    .line 856
    goto :goto_18

    .line 860
    :cond_3d
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasFolderTypeFeature(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 861
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-ne v2, v1, :cond_4d

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-eqz v2, :cond_18

    :cond_4d
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSecondLcdUserRotationMode:I

    if-ne v2, v1, :cond_55

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-eq v2, v1, :cond_18

    :cond_55
    move v0, v1

    .line 877
    goto :goto_18

    .line 866
    :cond_57
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-ne v2, v1, :cond_55

    goto :goto_18
.end method

.method public notifyCoverSwitchChanged(JZ)V
    .registers 5
    .param p1, "whenNanos"    # J
    .param p3, "coverOpen"    # Z

    .prologue
    .line 5534
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-eqz v0, :cond_5

    .line 5536
    :goto_4
    return-void

    .line 5535
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->notifyCoverSwitchChanged(JZ)V

    goto :goto_4
.end method

.method public notifyGloveSwitchChanged(JZ)V
    .registers 5
    .param p1, "whenNanos"    # J
    .param p3, "gloveEnable"    # Z

    .prologue
    .line 5543
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-eqz v0, :cond_5

    .line 5545
    :goto_4
    return-void

    .line 5544
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->notifyGloveSwitchChanged(JZ)V

    goto :goto_4
.end method

.method public notifyHandSwitchChanged(JI)V
    .registers 5
    .param p1, "whenNanos"    # J
    .param p3, "handgripState"    # I

    .prologue
    .line 5563
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-eqz v0, :cond_5

    .line 5565
    :goto_4
    return-void

    .line 5564
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->notifyHandSwitchChanged(JI)V

    goto :goto_4
.end method

.method public notifyLidSwitchChanged(JZ)V
    .registers 9
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5494
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-eqz v3, :cond_7

    .line 5519
    :cond_6
    :goto_6
    return-void

    .line 5497
    :cond_7
    if-eqz p3, :cond_26

    move v0, v1

    .line 5498
    .local v0, "newLidState":I
    :goto_a
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-eq v0, v3, :cond_6

    .line 5502
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    .line 5503
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyLidSwitchState()V

    .line 5504
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 5506
    if-eqz p3, :cond_48

    .line 5507
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 5508
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/16 v2, 0x1a

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->onWakeKeyWhenKeyguardShowingTq(I)V

    goto :goto_6

    .end local v0    # "newLidState":I
    :cond_26
    move v0, v2

    .line 5497
    goto :goto_a

    .line 5510
    .restart local v0    # "newLidState":I
    :cond_28
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasFolderTypeFeature(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    if-eqz v1, :cond_3e

    .line 5511
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4, v2}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_6

    .line 5513
    :cond_3e
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    goto :goto_6

    .line 5516
    :cond_48
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    if-nez v1, :cond_6

    .line 5517
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4, v2}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_6
.end method

.method public notifyOCRDockStateChanged(JZ)V
    .registers 5
    .param p1, "whenNanos"    # J
    .param p3, "ocrDockAttached"    # Z

    .prologue
    .line 5552
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-eqz v0, :cond_5

    .line 5554
    :goto_4
    return-void

    .line 5553
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->notifyOCRDockStateChanged(JZ)V

    goto :goto_4
.end method

.method public notifyPenSwitchChanged(JZ)V
    .registers 5
    .param p1, "whenNanos"    # J
    .param p3, "penInsert"    # Z

    .prologue
    .line 5525
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-eqz v0, :cond_5

    .line 5527
    :goto_4
    return-void

    .line 5526
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->notifyPenSwitchChanged(JZ)V

    goto :goto_4
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .registers 13
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "effectId"    # I
    .param p3, "always"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7615
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    if-eqz v6, :cond_d

    .line 7616
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    move-result v4

    .line 7687
    :cond_c
    :goto_c
    return v4

    .line 7619
    :cond_d
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v6}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 7622
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "haptic_feedback_enabled"

    const/4 v8, -0x2

    invoke-static {v6, v7, v4, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-nez v6, :cond_5c

    move v0, v5

    .line 7624
    .local v0, "hapticsDisabled":Z
    :goto_25
    if-nez p3, :cond_31

    if-nez v0, :cond_c

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v6

    if-nez v6, :cond_c

    .line 7627
    :cond_31
    const/4 v3, 0x0

    .line 7630
    .local v3, "pattern":[J
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v6, :cond_5e

    .line 7631
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHaptics:Lcom/immersion/android/haptics/HapticFeedbackManager;

    invoke-virtual {v6}, Lcom/immersion/android/haptics/HapticFeedbackManager;->canPlayHDEffects()Z

    move-result v6

    if-eqz v6, :cond_5e

    const/16 v6, 0x4e20

    if-lt p2, v6, :cond_46

    const/16 v6, 0x6d60

    if-le p2, v6, :cond_55

    :cond_46
    if-eqz p2, :cond_55

    if-eq p2, v5, :cond_55

    const/4 v6, 0x3

    if-eq p2, v6, :cond_55

    const/16 v6, 0x2710

    if-eq p2, v6, :cond_55

    const/16 v6, 0x2711

    if-ne p2, v6, :cond_5e

    .line 7640
    :cond_55
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHaptics:Lcom/immersion/android/haptics/HapticFeedbackManager;

    invoke-virtual {v4, p1, p2, p3}, Lcom/immersion/android/haptics/HapticFeedbackManager;->performHapticFeedback(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    move-result v4

    goto :goto_c

    .end local v0    # "hapticsDisabled":Z
    .end local v3    # "pattern":[J
    :cond_5c
    move v0, v4

    .line 7622
    goto :goto_25

    .line 7645
    .restart local v0    # "hapticsDisabled":Z
    .restart local v3    # "pattern":[J
    :cond_5e
    sparse-switch p2, :sswitch_data_98

    goto :goto_c

    .line 7647
    :sswitch_62
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressVibePattern:[J

    .line 7673
    :goto_64
    if-eqz p1, :cond_86

    .line 7674
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningUid()I

    move-result v2

    .line 7675
    .local v2, "owningUid":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    .line 7680
    .local v1, "owningPackage":Ljava/lang/String;
    :goto_6e
    array-length v6, v3

    if-ne v6, v5, :cond_91

    .line 7682
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    aget-wide v7, v3, v4

    invoke-virtual {v6, v2, v1, v7, v8}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;J)V

    :goto_78
    move v4, v5

    .line 7687
    goto :goto_c

    .line 7650
    .end local v1    # "owningPackage":Ljava/lang/String;
    .end local v2    # "owningUid":I
    :sswitch_7a
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    .line 7651
    goto :goto_64

    .line 7660
    :sswitch_7d
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    .line 7661
    goto :goto_64

    .line 7663
    :sswitch_80
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    .line 7664
    goto :goto_64

    .line 7666
    :sswitch_83
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 7667
    goto :goto_64

    .line 7677
    :cond_86
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 7678
    .restart local v2    # "owningUid":I
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "owningPackage":Ljava/lang/String;
    goto :goto_6e

    .line 7685
    :cond_91
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const/4 v6, -0x1

    invoke-virtual {v4, v2, v1, v3, v6}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;[JI)V

    goto :goto_78

    .line 7645
    :sswitch_data_98
    .sparse-switch
        0x0 -> :sswitch_62
        0x1 -> :sswitch_7a
        0x3 -> :sswitch_7d
        0x2710 -> :sswitch_80
        0x2711 -> :sswitch_83
        0x61a8 -> :sswitch_7d
        0x6220 -> :sswitch_7d
        0x622a -> :sswitch_7d
        0x6234 -> :sswitch_7d
        0x623e -> :sswitch_7d
    .end sparse-switch
.end method

.method public performShowStatusBarOnFullScreen(Z)V
    .registers 3
    .param p1, "show"    # Z

    .prologue
    .line 7898
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->performShowStatusBarOnFullScreen(Z)V

    .line 7899
    return-void
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .registers 8
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x7

    .line 2387
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sget v3, Lcom/android/internal/policy/impl/MultiWindowReflector$LayoutParams;->TYPE_MULTI_WINDOW_CONTROL_BAR:I

    if-ne v2, v3, :cond_b

    .line 2388
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2454
    :cond_a
    :goto_a
    return v0

    .line 2390
    :cond_b
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sget v3, Lcom/android/internal/policy/impl/MultiWindowReflector$LayoutParams;->TYPE_MULTI_WINDOW_EXTRA_CONTROL_BAR:I

    if-ne v2, v3, :cond_14

    .line 2391
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mExtraCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_a

    .line 2396
    :cond_14
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v2, :sswitch_data_8e

    .line 2444
    :goto_19
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sget v3, Lcom/android/internal/policy/impl/MultiWindowReflector$LayoutParams;->TYPE_MULTI_WINDOW_TRAY_BAR:I

    if-ne v2, v3, :cond_83

    .line 2445
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_80

    move v0, v1

    .line 2446
    goto :goto_a

    .line 2398
    :sswitch_25
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.STATUS_BAR_SERVICE"

    const-string v4, "PhoneWindowManager"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2401
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_3c

    .line 2402
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_3c

    move v0, v1

    .line 2403
    goto :goto_a

    .line 2406
    :cond_3c
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_19

    .line 2409
    :sswitch_3f
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.STATUS_BAR_SERVICE"

    const-string v4, "PhoneWindowManager"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2412
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_56

    .line 2413
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_56

    move v0, v1

    .line 2414
    goto :goto_a

    .line 2417
    :cond_56
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_19

    .line 2421
    :sswitch_59
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.STATUS_BAR_SERVICE"

    const-string v4, "PhoneWindowManager"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 2426
    :sswitch_63
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.STATUS_BAR_SERVICE"

    const-string v4, "PhoneWindowManager"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 2431
    :sswitch_6d
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.STATUS_BAR_SERVICE"

    const-string v4, "PhoneWindowManager"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 2436
    :sswitch_77
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_7d

    move v0, v1

    .line 2437
    goto :goto_a

    .line 2439
    :cond_7d
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_19

    .line 2448
    :cond_80
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_a

    .line 2449
    :cond_83
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sget v2, Lcom/android/internal/policy/impl/MultiWindowReflector$LayoutParams;->TYPE_MULTI_WINDOW_EDIT_MODE:I

    if-ne v1, v2, :cond_a

    .line 2450
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    goto/16 :goto_a

    .line 2396
    nop

    :sswitch_data_8e
    .sparse-switch
        0x7d0 -> :sswitch_25
        0x7d4 -> :sswitch_77
        0x7de -> :sswitch_63
        0x7e1 -> :sswitch_6d
        0x7e3 -> :sswitch_3f
        0x7e8 -> :sswitch_59
    .end sparse-switch
.end method

.method readLidState()V
    .registers 2

    .prologue
    .line 1926
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getLidState()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    .line 1927
    return-void
.end method

.method public removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    .registers 6
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "window"    # Landroid/view/View;

    .prologue
    .line 2364
    if-eqz p2, :cond_f

    .line 2365
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2366
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0, p2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 2368
    .end local v0    # "wm":Landroid/view/WindowManager;
    :cond_f
    return-void
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 4
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v1, 0x0

    .line 2459
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_14

    .line 2460
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2472
    :cond_7
    :goto_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_d

    .line 2473
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2475
    :cond_d
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mExtraCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_13

    .line 2476
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mExtraCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2479
    :cond_13
    return-void

    .line 2461
    :cond_14
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_1b

    .line 2462
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_7

    .line 2463
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_22

    .line 2464
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_7

    .line 2467
    :cond_22
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_29

    .line 2468
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_7

    .line 2469
    :cond_29
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_7

    .line 2470
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_7
.end method

.method public requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "request"    # Z

    .prologue
    .line 7881
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method public rotationForOrientationLw(II)I
    .registers 13
    .param p1, "orientation"    # I
    .param p2, "lastRotation"    # I

    .prologue
    const/4 v9, 0x4

    const/4 v4, 0x0

    const/16 v8, 0xa

    const/4 v7, 0x2

    const/4 v3, 0x1

    .line 6923
    const-string v5, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rotationForOrientationLw(orient="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", last="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "); user="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-ne v2, v3, :cond_b5

    const-string v2, "USER_ROTATION_LOCKED"

    :goto_39
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " sensorRotation="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->getProposedRotation()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " isCoverOpen="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isCoverOpen()Z

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " mLidState="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " mDockMode="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " mHdmiPlugged="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " mAccelerometerDefault="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:Z

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6937
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 6938
    :try_start_97
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->getProposedRotation()I

    move-result v1

    .line 6939
    .local v1, "sensorRotation":I
    if-gez v1, :cond_a0

    .line 6940
    move v1, p2

    .line 6945
    :cond_a0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isCoverOpen()Z

    move-result v2

    if-nez v2, :cond_b8

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverCloseRotation:I

    if-ltz v2, :cond_b8

    .line 6946
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverCloseRotation:I

    .line 7050
    .local v0, "preferredRotation":I
    :goto_ae
    packed-switch p1, :pswitch_data_26c

    .line 7104
    :pswitch_b1
    if-ltz v0, :cond_25e

    .line 7105
    monitor-exit v5
    :try_end_b4
    .catchall {:try_start_97 .. :try_end_b4} :catchall_16e

    .line 7112
    .end local v0    # "preferredRotation":I
    :goto_b4
    return v0

    .line 6923
    .end local v1    # "sensorRotation":I
    :cond_b5
    const-string v2, ""

    goto :goto_39

    .line 6950
    .restart local v1    # "sensorRotation":I
    :cond_b8
    :try_start_b8
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasFolderTypeFeature(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c9

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-ne v2, v3, :cond_c9

    .line 6951
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->rotationForSecondLcdOrientationLw(I)I

    move-result v0

    .restart local v0    # "preferredRotation":I
    goto :goto_ae

    .line 6954
    .end local v0    # "preferredRotation":I
    :cond_c9
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasFolderTypeFeature(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_dc

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-ne v2, v3, :cond_dc

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    if-ltz v2, :cond_dc

    .line 6956
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    .restart local v0    # "preferredRotation":I
    goto :goto_ae

    .line 6957
    .end local v0    # "preferredRotation":I
    :cond_dc
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v2, v7, :cond_f1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-nez v2, :cond_e8

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    if-ltz v2, :cond_f1

    .line 6962
    :cond_e8
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v2, :cond_ee

    move v0, v1

    .restart local v0    # "preferredRotation":I
    :goto_ed
    goto :goto_ae

    .end local v0    # "preferredRotation":I
    :cond_ee
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    goto :goto_ed

    .line 6964
    :cond_f1
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    if-nez v2, :cond_113

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v2, v3, :cond_102

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v6, 0x3

    if-eq v2, v6, :cond_102

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v2, v9, :cond_113

    :cond_102
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-nez v2, :cond_10a

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    if-ltz v2, :cond_113

    .line 6972
    :cond_10a
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v2, :cond_110

    move v0, v1

    .restart local v0    # "preferredRotation":I
    :goto_10f
    goto :goto_ae

    .end local v0    # "preferredRotation":I
    :cond_110
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    goto :goto_10f

    .line 6974
    :cond_113
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v2, v8, :cond_128

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMirrorLinkDockEnablesAccelerometer:Z

    if-nez v2, :cond_11f

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMirrorlinkDockRotation:I

    if-ltz v2, :cond_128

    .line 6979
    :cond_11f
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMirrorLinkDockEnablesAccelerometer:Z

    if-eqz v2, :cond_125

    move v0, v1

    .restart local v0    # "preferredRotation":I
    :goto_124
    goto :goto_ae

    .end local v0    # "preferredRotation":I
    :cond_125
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMirrorlinkDockRotation:I

    goto :goto_124

    .line 6981
    :cond_128
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-eqz v2, :cond_188

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    if-eqz v2, :cond_188

    .line 6984
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    if-ne v2, v3, :cond_171

    .line 6985
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDemoHdmiRotation:I

    .line 6986
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 6987
    .restart local v0    # "preferredRotation":I
    const-string v2, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Smart Dock Orientation Enabled :  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6988
    const-string v2, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Smart Dock Orientation value  :  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ae

    .line 7114
    .end local v0    # "preferredRotation":I
    .end local v1    # "sensorRotation":I
    :catchall_16e
    move-exception v2

    monitor-exit v5
    :try_end_170
    .catchall {:try_start_b8 .. :try_end_170} :catchall_16e

    throw v2

    .line 6989
    .restart local v1    # "sensorRotation":I
    :cond_171
    :try_start_171
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-ne v2, v3, :cond_179

    .line 6990
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_ae

    .line 6991
    .end local v0    # "preferredRotation":I
    :cond_179
    if-nez p1, :cond_17f

    .line 6992
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_ae

    .line 6993
    .end local v0    # "preferredRotation":I
    :cond_17f
    if-ne p1, v3, :cond_185

    .line 6994
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_ae

    .line 6996
    .end local v0    # "preferredRotation":I
    :cond_185
    move v0, v1

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_ae

    .line 7000
    .end local v0    # "preferredRotation":I
    :cond_188
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-eqz v2, :cond_198

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-nez v2, :cond_198

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUndockedHdmiRotation:I

    if-ltz v2, :cond_198

    .line 7006
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUndockedHdmiRotation:I

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_ae

    .line 7007
    .end local v0    # "preferredRotation":I
    :cond_198
    const/16 v2, 0xe

    if-ne p1, v2, :cond_19f

    .line 7009
    move v0, p2

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_ae

    .line 7010
    .end local v0    # "preferredRotation":I
    :cond_19f
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-nez v2, :cond_1b4

    if-eq p1, v7, :cond_1be

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1be

    const/16 v2, 0xb

    if-eq p1, v2, :cond_1be

    const/16 v2, 0xc

    if-eq p1, v2, :cond_1be

    const/16 v2, 0xd

    if-eq p1, v2, :cond_1be

    :cond_1b4
    if-eq p1, v9, :cond_1be

    if-eq p1, v8, :cond_1be

    const/4 v2, 0x6

    if-eq p1, v2, :cond_1be

    const/4 v2, 0x7

    if-ne p1, v2, :cond_1e8

    .line 7022
    :cond_1be
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    if-gez v2, :cond_1d4

    .line 7026
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x111001e

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1e3

    move v2, v3

    :goto_1d2
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    .line 7029
    :cond_1d4
    if-ne v1, v7, :cond_1e0

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    if-eq v2, v3, :cond_1e0

    if-eq p1, v8, :cond_1e0

    const/16 v2, 0xd

    if-ne p1, v2, :cond_1e5

    .line 7033
    :cond_1e0
    move v0, v1

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_ae

    .end local v0    # "preferredRotation":I
    :cond_1e3
    move v2, v4

    .line 7026
    goto :goto_1d2

    .line 7035
    :cond_1e5
    move v0, p2

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_ae

    .line 7037
    .end local v0    # "preferredRotation":I
    :cond_1e8
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-ne v2, v3, :cond_1f3

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1f3

    .line 7043
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_ae

    .line 7047
    .end local v0    # "preferredRotation":I
    :cond_1f3
    const/4 v0, -0x1

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_ae

    .line 7053
    :pswitch_1f6
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_1ff

    .line 7054
    monitor-exit v5

    goto/16 :goto_b4

    .line 7056
    :cond_1ff
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .end local v0    # "preferredRotation":I
    monitor-exit v5

    goto/16 :goto_b4

    .line 7060
    .restart local v0    # "preferredRotation":I
    :pswitch_204
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_20d

    .line 7061
    monitor-exit v5

    goto/16 :goto_b4

    .line 7063
    :cond_20d
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .end local v0    # "preferredRotation":I
    monitor-exit v5

    goto/16 :goto_b4

    .line 7067
    .restart local v0    # "preferredRotation":I
    :pswitch_212
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_21b

    .line 7068
    monitor-exit v5

    goto/16 :goto_b4

    .line 7070
    :cond_21b
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .end local v0    # "preferredRotation":I
    monitor-exit v5

    goto/16 :goto_b4

    .line 7074
    .restart local v0    # "preferredRotation":I
    :pswitch_220
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_229

    .line 7075
    monitor-exit v5

    goto/16 :goto_b4

    .line 7077
    :cond_229
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    .end local v0    # "preferredRotation":I
    monitor-exit v5

    goto/16 :goto_b4

    .line 7082
    .restart local v0    # "preferredRotation":I
    :pswitch_22e
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_237

    .line 7083
    monitor-exit v5

    goto/16 :goto_b4

    .line 7085
    :cond_237
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_241

    .line 7086
    monitor-exit v5

    move v0, p2

    goto/16 :goto_b4

    .line 7088
    :cond_241
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .end local v0    # "preferredRotation":I
    monitor-exit v5

    goto/16 :goto_b4

    .line 7093
    .restart local v0    # "preferredRotation":I
    :pswitch_246
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_24f

    .line 7094
    monitor-exit v5

    goto/16 :goto_b4

    .line 7096
    :cond_24f
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_259

    .line 7097
    monitor-exit v5

    move v0, p2

    goto/16 :goto_b4

    .line 7099
    :cond_259
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .end local v0    # "preferredRotation":I
    monitor-exit v5

    goto/16 :goto_b4

    .line 7108
    .restart local v0    # "preferredRotation":I
    :cond_25e
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isMirrorLessCameraSpecialized()Z

    move-result v2

    if-eqz v2, :cond_268

    .line 7109
    monitor-exit v5

    move v0, v3

    goto/16 :goto_b4

    .line 7112
    :cond_268
    monitor-exit v5
    :try_end_269
    .catchall {:try_start_171 .. :try_end_269} :catchall_16e

    move v0, v4

    goto/16 :goto_b4

    .line 7050
    :pswitch_data_26c
    .packed-switch 0x0
        :pswitch_204
        :pswitch_1f6
        :pswitch_b1
        :pswitch_b1
        :pswitch_b1
        :pswitch_b1
        :pswitch_22e
        :pswitch_246
        :pswitch_220
        :pswitch_212
        :pswitch_b1
        :pswitch_22e
        :pswitch_246
    .end packed-switch
.end method

.method public rotationHasCompatibleMetricsLw(II)Z
    .registers 4
    .param p1, "orientation"    # I
    .param p2, "rotation"    # I

    .prologue
    .line 7119
    packed-switch p1, :pswitch_data_10

    .line 7131
    :pswitch_3
    const/4 v0, 0x1

    :goto_4
    return v0

    .line 7123
    :pswitch_5
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v0

    goto :goto_4

    .line 7128
    :pswitch_a
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v0

    goto :goto_4

    .line 7119
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_a
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_a
        :pswitch_5
        :pswitch_a
        :pswitch_5
    .end packed-switch
.end method

.method public screenTurnedOff(I)V
    .registers 4
    .param p1, "why"    # I

    .prologue
    const/4 v1, 0x0

    .line 6746
    const v0, 0x11170

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 6747
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6748
    const/4 v0, 0x0

    :try_start_b
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    .line 6749
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    .line 6750
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_2a

    .line 6752
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->onScreenTurnedOff(I)V

    .line 6754
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    if-eqz v0, :cond_1f

    .line 6755
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->onScreenTurnedOff(I)V

    .line 6757
    :cond_1f
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6758
    :try_start_22
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 6759
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 6760
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_2d

    .line 6761
    return-void

    .line 6750
    :catchall_2a
    move-exception v0

    :try_start_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v0

    .line 6760
    :catchall_2d
    move-exception v0

    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .registers 4
    .param p1, "screenOnListener"    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .prologue
    const/4 v1, 0x1

    .line 6765
    const v0, 0x11170

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 6772
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->onScreenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 6774
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6775
    const/4 v0, 0x1

    :try_start_10
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    .line 6776
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 6777
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 6778
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_1d

    .line 6780
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->waitForKeyguard(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 6781
    return-void

    .line 6778
    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I
    .registers 8
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "transit"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 2488
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v0, :cond_18

    .line 2489
    if-eq p2, v1, :cond_c

    if-ne p2, v4, :cond_10

    .line 2491
    :cond_c
    const v0, 0x10a0021

    .line 2531
    :goto_f
    return v0

    .line 2492
    :cond_10
    if-eq p2, v2, :cond_14

    if-ne p2, v3, :cond_40

    .line 2494
    :cond_14
    const v0, 0x10a0020

    goto :goto_f

    .line 2496
    :cond_18
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v0, :cond_40

    .line 2498
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v0, :cond_30

    .line 2499
    if-eq p2, v1, :cond_24

    if-ne p2, v4, :cond_28

    .line 2501
    :cond_24
    const v0, 0x10a001b

    goto :goto_f

    .line 2502
    :cond_28
    if-eq p2, v2, :cond_2c

    if-ne p2, v3, :cond_40

    .line 2504
    :cond_2c
    const v0, 0x10a001a

    goto :goto_f

    .line 2507
    :cond_30
    if-eq p2, v1, :cond_34

    if-ne p2, v4, :cond_38

    .line 2509
    :cond_34
    const v0, 0x10a001f

    goto :goto_f

    .line 2510
    :cond_38
    if-eq p2, v2, :cond_3c

    if-ne p2, v3, :cond_40

    .line 2512
    :cond_3c
    const v0, 0x10a001e

    goto :goto_f

    .line 2517
    :cond_40
    const/4 v0, 0x5

    if-ne p2, v0, :cond_4d

    .line 2518
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 2520
    const v0, 0x10a0017

    goto :goto_f

    .line 2522
    :cond_4d
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e7

    if-ne v0, v1, :cond_5f

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamingLockscreen:Z

    if-eqz v0, :cond_5f

    if-ne p2, v2, :cond_5f

    .line 2528
    const/4 v0, -0x1

    goto :goto_f

    .line 2531
    :cond_5f
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public selectRotationAnimationLw([I)V
    .registers 7
    .param p1, "anim"    # [I

    .prologue
    const v4, 0x10a0049

    const v3, 0x10a0048

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2540
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_2d

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v0, :cond_2d

    .line 2541
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    packed-switch v0, :pswitch_data_3e

    .line 2552
    aput v1, p1, v2

    aput v1, p1, v1

    .line 2561
    :goto_1f
    return-void

    .line 2543
    :pswitch_20
    const v0, 0x10a004a

    aput v0, p1, v1

    .line 2544
    aput v3, p1, v2

    goto :goto_1f

    .line 2547
    :pswitch_28
    aput v4, p1, v1

    .line 2548
    aput v3, p1, v2

    goto :goto_1f

    .line 2555
    :cond_2d
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_38

    .line 2556
    aput v4, p1, v1

    .line 2557
    aput v3, p1, v2

    goto :goto_1f

    .line 2559
    :cond_38
    aput v1, p1, v2

    aput v1, p1, v1

    goto :goto_1f

    .line 2541
    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_20
        :pswitch_28
    .end packed-switch
.end method

.method sendCloseSystemWindows()V
    .registers 3

    .prologue
    .line 6904
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 6905
    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 6908
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 6909
    return-void
.end method

.method setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .registers 15
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "fl"    # I
    .param p3, "adjust"    # I
    .param p4, "attached"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p5, "insetDecors"    # Z
    .param p6, "pf"    # Landroid/graphics/Rect;
    .param p7, "df"    # Landroid/graphics/Rect;
    .param p8, "of"    # Landroid/graphics/Rect;
    .param p9, "cf"    # Landroid/graphics/Rect;
    .param p10, "vf"    # Landroid/graphics/Rect;
    .param p11, "windowMode"    # I

    .prologue
    .line 4018
    and-int/lit16 v1, p11, 0x800

    if-eqz v1, :cond_6a

    .line 4019
    const/16 v1, 0x10

    if-eq p3, v1, :cond_5e

    .line 4020
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getOverscanFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p9, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4024
    :goto_f
    if-eqz p5, :cond_66

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    :goto_15
    invoke-virtual {p7, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4025
    if-eqz p5, :cond_68

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getOverscanFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    :goto_1e
    invoke-virtual {p8, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4026
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p10, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4079
    :goto_28
    and-int/lit16 v1, p2, 0x200

    if-eqz v1, :cond_155

    invoke-static {p11}, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->mode(I)I

    move-result v1

    sget v2, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_FREESTYLE:I

    if-ne v1, v2, :cond_155

    and-int/lit16 v1, p11, 0x800

    if-nez v1, :cond_155

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x3ea

    if-ne v1, v2, :cond_155

    .line 4083
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p6, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4086
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_105

    .line 4087
    const/16 v1, -0x2710

    iput v1, p7, Landroid/graphics/Rect;->top:I

    iput v1, p7, Landroid/graphics/Rect;->left:I

    .line 4088
    const/16 v1, 0x2710

    iput v1, p7, Landroid/graphics/Rect;->bottom:I

    iput v1, p7, Landroid/graphics/Rect;->right:I

    .line 4115
    :cond_5d
    :goto_5d
    return-void

    .line 4022
    :cond_5e
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p9, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_f

    :cond_66
    move-object v1, p9

    .line 4024
    goto :goto_15

    :cond_68
    move-object v1, p9

    .line 4025
    goto :goto_1e

    .line 4028
    :cond_6a
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v1

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-le v1, v2, :cond_a3

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v1

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-ge v1, v2, :cond_a3

    .line 4036
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v1, p10, Landroid/graphics/Rect;->left:I

    iput v1, p9, Landroid/graphics/Rect;->left:I

    iput v1, p8, Landroid/graphics/Rect;->left:I

    iput v1, p7, Landroid/graphics/Rect;->left:I

    .line 4037
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v1, p10, Landroid/graphics/Rect;->top:I

    iput v1, p9, Landroid/graphics/Rect;->top:I

    iput v1, p8, Landroid/graphics/Rect;->top:I

    iput v1, p7, Landroid/graphics/Rect;->top:I

    .line 4038
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v1, p10, Landroid/graphics/Rect;->right:I

    iput v1, p9, Landroid/graphics/Rect;->right:I

    iput v1, p8, Landroid/graphics/Rect;->right:I

    iput v1, p7, Landroid/graphics/Rect;->right:I

    .line 4039
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v1, p10, Landroid/graphics/Rect;->bottom:I

    iput v1, p9, Landroid/graphics/Rect;->bottom:I

    iput v1, p8, Landroid/graphics/Rect;->bottom:I

    iput v1, p7, Landroid/graphics/Rect;->bottom:I

    goto :goto_28

    .line 4047
    :cond_a3
    const/16 v1, 0x10

    if-eq p3, v1, :cond_c9

    .line 4048
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getOverscanFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p9, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4064
    :cond_ae
    :goto_ae
    if-eqz p5, :cond_101

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    :goto_b4
    invoke-virtual {p7, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4065
    if-eqz p5, :cond_103

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getOverscanFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    :goto_bd
    invoke-virtual {p8, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4066
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p10, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_28

    .line 4056
    :cond_c9
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p9, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4057
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v1

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-ge v1, v2, :cond_ae

    .line 4058
    iget v1, p9, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    if-ge v1, v2, :cond_e2

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v1, p9, Landroid/graphics/Rect;->left:I

    .line 4059
    :cond_e2
    iget v1, p9, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    if-ge v1, v2, :cond_ec

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v1, p9, Landroid/graphics/Rect;->top:I

    .line 4060
    :cond_ec
    iget v1, p9, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    if-le v1, v2, :cond_f6

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v1, p9, Landroid/graphics/Rect;->right:I

    .line 4061
    :cond_f6
    iget v1, p9, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    if-le v1, v2, :cond_ae

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v1, p9, Landroid/graphics/Rect;->bottom:I

    goto :goto_ae

    :cond_101
    move-object v1, p9

    .line 4064
    goto :goto_b4

    :cond_103
    move-object v1, p9

    .line 4065
    goto :goto_bd

    .line 4090
    :cond_105
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v1, v2

    iput v1, p6, Landroid/graphics/Rect;->bottom:I

    iput v1, p10, Landroid/graphics/Rect;->bottom:I

    iput v1, p9, Landroid/graphics/Rect;->bottom:I

    iput v1, p7, Landroid/graphics/Rect;->bottom:I

    .line 4091
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v1, p7, Landroid/graphics/Rect;->top:I

    .line 4092
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v1, p7, Landroid/graphics/Rect;->left:I

    .line 4093
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v1, v2

    iput v1, p7, Landroid/graphics/Rect;->right:I

    .line 4095
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 4096
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ltz v1, :cond_147

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ltz v1, :cond_147

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-lez v1, :cond_13a

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v1, v2

    iget v2, p7, Landroid/graphics/Rect;->right:I

    if-gt v1, v2, :cond_147

    :cond_13a
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-lez v1, :cond_5d

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v1, v2

    iget v2, p7, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_5d

    .line 4099
    :cond_147
    const/16 v1, -0x2710

    iput v1, p7, Landroid/graphics/Rect;->top:I

    iput v1, p7, Landroid/graphics/Rect;->left:I

    .line 4100
    const/16 v1, 0x2710

    iput v1, p7, Landroid/graphics/Rect;->bottom:I

    iput v1, p7, Landroid/graphics/Rect;->right:I

    goto/16 :goto_5d

    .line 4103
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_155
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x89a

    if-ne v1, v2, :cond_171

    .line 4104
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v1, p6, Landroid/graphics/Rect;->left:I

    .line 4105
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v1, p6, Landroid/graphics/Rect;->top:I

    .line 4106
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v1, p6, Landroid/graphics/Rect;->right:I

    .line 4107
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v1, p6, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_5d

    .line 4109
    :cond_171
    and-int/lit16 v1, p2, 0x100

    if-nez v1, :cond_17e

    .line 4110
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p6, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_5d

    .line 4111
    :cond_17e
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_5d

    .line 4112
    invoke-virtual {p6, p7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_5d
.end method

.method public setCurrentInputMethodTargetLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 2
    .param p1, "inputTargetWindow"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 8222
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    .line 8223
    return-void
.end method

.method public setCurrentOrientationLw(I)V
    .registers 4
    .param p1, "newOrientation"    # I

    .prologue
    .line 7581
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7582
    :try_start_3
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq p1, v0, :cond_f

    .line 7583
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    .line 7584
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 7585
    invoke-static {p1}, Lcom/android/internal/policy/impl/WindowOrientationListener;->setCurrentAppOrientation(I)V

    .line 7587
    :cond_f
    monitor-exit v1

    .line 7588
    return-void

    .line 7587
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public setCurrentUserLw(I)V
    .registers 4
    .param p1, "newUserId"    # I

    .prologue
    const/4 v1, 0x0

    .line 7823
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    if-eqz v0, :cond_a

    .line 7824
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->setCurrentUser(I)V

    .line 7826
    :cond_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v0, :cond_13

    .line 7828
    :try_start_e
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->setCurrentUser(I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_17

    .line 7833
    :cond_13
    :goto_13
    invoke-virtual {p0, v1, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 7834
    return-void

    .line 7829
    :catch_17
    move-exception v0

    goto :goto_13
.end method

.method public setDisplayOverscan(Landroid/view/Display;IIII)V
    .registers 7
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1563
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_e

    .line 1564
    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    .line 1565
    iput p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    .line 1566
    iput p4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    .line 1567
    iput p5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    .line 1569
    :cond_e
    return-void
.end method

.method setHdmiPlugged(Z)V
    .registers 5
    .param p1, "plugged"    # Z

    .prologue
    const/4 v2, 0x1

    .line 5569
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-eq v1, p1, :cond_22

    .line 5570
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    .line 5571
    invoke-virtual {p0, v2, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(ZZ)V

    .line 5572
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.HDMI_PLUGGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5573
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5574
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5575
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5577
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_22
    return-void
.end method

.method public setInitialDisplaySize(Landroid/view/Display;III)V
    .registers 24
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "density"    # I

    .prologue
    .line 1436
    invoke-virtual/range {p1 .. p1}, Landroid/view/Display;->getDisplayId()I

    move-result v9

    if-eqz v9, :cond_e

    .line 1437
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Can only set the default display"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1439
    :cond_e
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    .line 1442
    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_193

    .line 1443
    move/from16 v7, p3

    .line 1444
    .local v7, "shortSize":I
    move/from16 v4, p2

    .line 1445
    .local v4, "longSize":I
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 1446
    const/4 v9, 0x2

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    .line 1447
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x111001f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_187

    .line 1449
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 1450
    const/4 v9, 0x3

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 1470
    :goto_43
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x105000c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    .line 1472
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x105010e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTitleBarHeight:I

    .line 1476
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x105000d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    aput v13, v11, v12

    aput v13, v9, v10

    .line 1480
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x105000e

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    aput v13, v11, v12

    aput v13, v9, v10

    .line 1486
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x105000f

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    aput v17, v15, v16

    aput v17, v13, v14

    aput v17, v11, v12

    aput v17, v9, v10

    .line 1494
    mul-int/lit16 v9, v7, 0xa0

    div-int v8, v9, p4

    .line 1496
    .local v8, "shortSizeDp":I
    const/16 v9, 0x258

    if-ge v8, v9, :cond_1ca

    .line 1498
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    .line 1499
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    .line 1512
    :cond_fc
    :goto_fc
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    if-nez v9, :cond_1fb

    .line 1513
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1110043

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    .line 1518
    const-string v9, "qemu.hw.mainkeys"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1519
    .local v6, "navBarOverride":Ljava/lang/String;
    const-string v9, ""

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_129

    .line 1520
    const-string v9, "ro.hw.nav_keys"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1522
    :cond_129
    const-string v9, ""

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13e

    .line 1523
    const-string v9, "1"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1ec

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    .line 1530
    .end local v6    # "navBarOverride":Ljava/lang/String;
    :cond_13e
    :goto_13e
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    if-eqz v9, :cond_205

    .line 1534
    mul-int/lit16 v9, v4, 0xa0

    div-int v5, v9, p4

    .line 1535
    .local v5, "longSizeDp":I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    aget v9, v9, v10

    mul-int/lit16 v9, v9, 0xa0

    div-int v3, v9, p4

    .line 1537
    .local v3, "barHeightDp":I
    sub-int v9, v8, v3

    mul-int/lit8 v9, v9, 0x10

    div-int v2, v9, v5

    .line 1542
    .local v2, "aspect":I
    const/16 v9, 0x9

    if-ge v2, v9, :cond_202

    const/4 v9, 0x1

    :goto_161
    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    .line 1553
    .end local v2    # "aspect":I
    .end local v3    # "barHeightDp":I
    .end local v5    # "longSizeDp":I
    :goto_165
    const-string v9, "portrait"

    const-string v10, "persist.demo.hdmirotation"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_219

    .line 1554
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDemoHdmiRotation:I

    .line 1558
    :goto_17b
    const-string v9, "persist.demo.hdmirotationlock"

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    .line 1559
    return-void

    .line 1452
    .end local v8    # "shortSizeDp":I
    :cond_187
    const/4 v9, 0x3

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 1453
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    goto/16 :goto_43

    .line 1456
    .end local v4    # "longSize":I
    .end local v7    # "shortSize":I
    :cond_193
    move/from16 v7, p2

    .line 1457
    .restart local v7    # "shortSize":I
    move/from16 v4, p3

    .line 1458
    .restart local v4    # "longSize":I
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 1459
    const/4 v9, 0x2

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 1460
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x111001f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_1be

    .line 1462
    const/4 v9, 0x3

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 1463
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    goto/16 :goto_43

    .line 1465
    :cond_1be
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 1466
    const/4 v9, 0x3

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    goto/16 :goto_43

    .line 1500
    .restart local v8    # "shortSizeDp":I
    :cond_1ca
    const/16 v9, 0x2d0

    if-ge v8, v9, :cond_1da

    .line 1502
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    .line 1503
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    goto/16 :goto_fc

    .line 1505
    :cond_1da
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportSPC()Z

    move-result v9

    if-eqz v9, :cond_fc

    .line 1507
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    .line 1508
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    goto/16 :goto_fc

    .line 1524
    .restart local v6    # "navBarOverride":Ljava/lang/String;
    :cond_1ec
    const-string v9, "0"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13e

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    goto/16 :goto_13e

    .line 1527
    .end local v6    # "navBarOverride":Ljava/lang/String;
    :cond_1fb
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    goto/16 :goto_13e

    .line 1542
    .restart local v2    # "aspect":I
    .restart local v3    # "barHeightDp":I
    .restart local v5    # "longSizeDp":I
    :cond_202
    const/4 v9, 0x0

    goto/16 :goto_161

    .line 1543
    .end local v2    # "aspect":I
    .end local v3    # "barHeightDp":I
    .end local v5    # "longSizeDp":I
    :cond_205
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v9, :cond_212

    .line 1546
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    goto/16 :goto_165

    .line 1548
    :cond_212
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    goto/16 :goto_165

    .line 1556
    :cond_219
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDemoHdmiRotation:I

    goto/16 :goto_17b
.end method

.method public setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 3
    .param p1, "ime"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "target"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 7817
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 7818
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 7819
    return-void
.end method

.method public setRotationLw(I)V
    .registers 8
    .param p1, "rotation"    # I

    .prologue
    .line 7141
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->setCurrentRotation(I)V

    .line 7142
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->setRotationLw(I)V

    .line 7144
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRotation:I

    .line 7147
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->cpuBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_26

    .line 7148
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "ROTATION_BOOSTER"

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->cpuBooster:Landroid/os/DVFSHelper;

    .line 7149
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->cpuBooster:Landroid/os/DVFSHelper;

    const-string v1, "PhoneWindowManager_rotation"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 7151
    :cond_26
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->cpuBooster:Landroid/os/DVFSHelper;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 7152
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->cpuBooster:Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "ROTATION_BOOSTER"

    invoke-virtual {v0, v1, v2}, Landroid/os/DVFSHelper;->onWindowRotationEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 7154
    return-void
.end method

.method public setSafeMode(Z)V
    .registers 5
    .param p1, "safeMode"    # Z

    .prologue
    .line 7215
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    .line 7216
    const/4 v1, 0x0

    if-eqz p1, :cond_c

    const/16 v0, 0x2711

    :goto_7
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 7219
    return-void

    .line 7216
    :cond_c
    const/16 v0, 0x2710

    goto :goto_7
.end method

.method public setSpecialKeysFilter(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 2697
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpecialKeysLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2698
    if-eqz p1, :cond_e

    .line 2699
    :try_start_5
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpecialKeysMessenger:Landroid/os/Messenger;

    .line 2703
    :goto_c
    monitor-exit v1

    .line 2704
    return-void

    .line 2701
    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpecialKeysMessenger:Landroid/os/Messenger;

    goto :goto_c

    .line 2703
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public setUserRotationMode(II)V
    .registers 8
    .param p1, "mode"    # I
    .param p2, "rot"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x2

    .line 7173
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 7176
    .local v0, "res":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasFolderTypeFeature(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-ne v1, v3, :cond_28

    .line 7177
    if-ne p1, v3, :cond_22

    .line 7178
    const-string v1, "user_rotation"

    invoke-static {v0, v1, p2, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 7182
    const-string v1, "accelerometer_rotation_second"

    invoke-static {v0, v1, v4, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 7212
    :goto_21
    return-void

    .line 7187
    :cond_22
    const-string v1, "accelerometer_rotation_second"

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_21

    .line 7196
    :cond_28
    if-ne p1, v3, :cond_35

    .line 7197
    const-string v1, "user_rotation"

    invoke-static {v0, v1, p2, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 7201
    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1, v4, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_21

    .line 7206
    :cond_35
    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_21
.end method

.method public showAssistant()V
    .registers 2

    .prologue
    .line 7838
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->showAssistant()V

    .line 7839
    return-void
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "always"    # Z

    .prologue
    .line 7282
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-eqz v0, :cond_5

    .line 7327
    :goto_4
    return-void

    .line 7283
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$31;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$31;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method

.method showGlobalActionsDialog()V
    .registers 5

    .prologue
    .line 1062
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    if-nez v1, :cond_f

    .line 1063
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/policy/impl/GlobalActions;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    .line 1065
    :cond_f
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v0

    .line 1066
    .local v0, "keyguardShowing":Z
    sget-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v1, :cond_3d

    .line 1067
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showGlobalActionsDialog() : keyguardShowing =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , isDeviceProvisioned()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    :cond_3d
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/policy/impl/GlobalActions;->showDialog(ZZ)V

    .line 1071
    if-eqz v0, :cond_4d

    .line 1074
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->userActivity()V

    .line 1076
    :cond_4d
    return-void
.end method

.method showOrHideRecentAppsDialog(I)V
    .registers 5
    .param p1, "behavior"    # I

    .prologue
    .line 1171
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v1, :cond_10

    .line 1172
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1175
    :cond_10
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_24

    .line 1176
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    .line 1177
    .local v0, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v0, :cond_24

    .line 1178
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/enterprise/kioskmode/KioskMode;->isTaskManagerAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_24

    .line 1223
    .end local v0    # "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    :goto_23
    return-void

    .line 1184
    :cond_24
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$6;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$6;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_23
.end method

.method startDockOrHome()V
    .registers 6

    .prologue
    .line 7507
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->awakenDreams()V

    .line 7509
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v0

    .line 7510
    .local v0, "dock":Landroid/content/Intent;
    sget-boolean v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_12

    const-string v2, "WindowManager"

    const-string v3, "startDockOrHome"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7511
    :cond_12
    if-eqz v0, :cond_25

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDockHomeEnabled()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 7513
    :try_start_1c
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_23
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1c .. :try_end_23} :catch_24

    .line 7526
    :goto_23
    return-void

    .line 7515
    :catch_24
    move-exception v2

    .line 7519
    :cond_25
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getFeatureLevel(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_4a

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowMode:I

    invoke-static {v2}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v2

    const/high16 v3, 0x2000000

    if-ne v2, v3, :cond_4a

    .line 7521
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 7522
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.sec.android.multiwindow.add.recentapp"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7523
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 7525
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4a
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_23
.end method

.method public startHome()V
    .registers 1

    .prologue
    .line 7920
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->startDockOrHome()V

    .line 7921
    return-void
.end method

.method public subWindowTypeToLayerLw(I)I
    .registers 5
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x1

    .line 2101
    sparse-switch p1, :sswitch_data_24

    .line 2117
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sub-window type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    const/4 v0, 0x0

    :goto_1d
    :sswitch_1d
    return v0

    .line 2106
    :sswitch_1e
    const/4 v0, -0x2

    goto :goto_1d

    .line 2108
    :sswitch_20
    const/4 v0, -0x1

    goto :goto_1d

    .line 2110
    :sswitch_22
    const/4 v0, 0x2

    goto :goto_1d

    .line 2101
    :sswitch_data_24
    .sparse-switch
        0x3e8 -> :sswitch_1d
        0x3e9 -> :sswitch_1e
        0x3ea -> :sswitch_22
        0x3eb -> :sswitch_1d
        0x3ec -> :sswitch_20
        0x8a1 -> :sswitch_1d
    .end sparse-switch
.end method

.method public systemBooted()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 7263
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 7264
    const/4 v1, 0x1

    :try_start_5
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    .line 7265
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_25

    .line 7267
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    if-eqz v1, :cond_24

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 7268
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_window_flashbar_shown"

    const/4 v3, -0x2

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 7271
    .local v0, "lastFlashBarVisibility":I
    if-eqz v0, :cond_24

    .line 7272
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateMultiWindowTrayBar(Z)V

    .line 7276
    .end local v0    # "lastFlashBarVisibility":I
    :cond_24
    return-void

    .line 7265
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public systemReady()V
    .registers 4

    .prologue
    .line 7235
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    if-eqz v0, :cond_9

    .line 7237
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->onSystemReady()V

    .line 7240
    :cond_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->systemReady()V

    .line 7242
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7243
    :try_start_11
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 7244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    .line 7245
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$30;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$30;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7253
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_36

    .line 7255
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->needInitializationWhenSystemReady()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 7257
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "missing_phone_lock"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7259
    :cond_35
    return-void

    .line 7253
    :catchall_36
    move-exception v0

    :try_start_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v0
.end method

.method public updateMultiWindowTrayBar(Z)V
    .registers 4
    .param p1, "bInit"    # Z

    .prologue
    .line 8169
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$35;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$35;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8187
    return-void
.end method

.method updateOrientationListenerLp()V
    .registers 3

    .prologue
    .line 891
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->canDetectOrientation()Z

    move-result v1

    if-nez v1, :cond_9

    .line 918
    :cond_8
    :goto_8
    return-void

    .line 900
    :cond_9
    const/4 v0, 0x1

    .line 901
    .local v0, "disable":Z
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v1, :cond_21

    .line 902
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->needSensorRunningLp()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 903
    const/4 v0, 0x0

    .line 905
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-nez v1, :cond_21

    .line 906
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->enable()V

    .line 908
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 913
    :cond_21
    if-eqz v0, :cond_8

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-eqz v1, :cond_8

    .line 914
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->disable()V

    .line 916
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    goto :goto_8
.end method

.method updateRotation(Z)V
    .registers 4
    .param p1, "alwaysSendConfiguration"    # Z

    .prologue
    .line 7434
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    .line 7438
    :goto_6
    return-void

    .line 7435
    :catch_7
    move-exception v0

    goto :goto_6
.end method

.method updateRotation(ZZ)V
    .registers 4
    .param p1, "alwaysSendConfiguration"    # Z
    .param p2, "forceRelayout"    # Z

    .prologue
    .line 7443
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 7447
    :goto_5
    return-void

    .line 7444
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public updateSettings()V
    .registers 15

    .prologue
    .line 1572
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1573
    .local v5, "resolver":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 1576
    .local v7, "updateRotation":Z
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isEnabledTalkback()Z

    move-result v10

    if-eqz v10, :cond_19

    .line 1577
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "multi_window_enabled"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1580
    :cond_19
    const-string v10, "multi_window_enabled"

    const/4 v11, 0x1

    invoke-static {v5, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1585
    .local v0, "enableMultiWindowUISetting":I
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportEasyOneHand()Z

    move-result v10

    if-eqz v10, :cond_44

    .line 1586
    const-string v10, "any_screen_enabled"

    const/4 v11, 0x0

    invoke-static {v5, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1587
    .local v3, "isEasyOneHandEnabled":I
    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEasyOneHandEnabled:I

    if-eq v10, v3, :cond_44

    .line 1588
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEasyOneHandEnabled:I

    .line 1589
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    if-eqz v10, :cond_44

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    if-eqz v10, :cond_44

    .line 1591
    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEasyOneHandEnabled:I

    if-nez v10, :cond_44

    .line 1592
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateEasyOneHandState(ZZ)V

    .line 1599
    .end local v3    # "isEasyOneHandEnabled":I
    :cond_44
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1602
    :try_start_47
    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableMultiWindowUISetting:I

    if-eq v10, v0, :cond_6b

    .line 1603
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableMultiWindowUISetting:I

    .line 1604
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    if-eqz v10, :cond_59

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    if-eqz v10, :cond_59

    .line 1605
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateMultiWindowTrayBar(Z)V

    .line 1608
    :cond_59
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    if-eqz v10, :cond_6b

    .line 1609
    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableMultiWindowUISetting:I

    if-nez v10, :cond_11e

    .line 1610
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v12, Lcom/android/internal/policy/impl/PhoneWindowManager$7;

    invoke-direct {v12, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$7;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v10, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1632
    :cond_6b
    :goto_6b
    const-string v10, "end_button_behavior"

    const/4 v12, 0x2

    const/4 v13, -0x2

    invoke-static {v5, v10, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    iput v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    .line 1636
    const-string v10, "incall_power_button_behavior"

    const/4 v12, 0x1

    const/4 v13, -0x2

    invoke-static {v5, v10, v12, v13}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    iput v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    .line 1640
    const-string v10, "lcd_curtain"

    const/4 v12, 0x0

    invoke-static {v5, v10, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v12, 0x1

    if-ne v10, v12, :cond_12d

    const/4 v10, 0x1

    :goto_8a
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerDoubleBehavior:Z

    .line 1643
    const-string v10, "user_rotation"

    const/4 v12, 0x0

    const/4 v13, -0x2

    invoke-static {v5, v10, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    .line 1646
    .local v8, "userRotation":I
    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    if-eq v10, v8, :cond_9b

    .line 1647
    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    .line 1648
    const/4 v7, 0x1

    .line 1650
    :cond_9b
    const-string v10, "accelerometer_rotation"

    const/4 v12, 0x0

    const/4 v13, -0x2

    invoke-static {v5, v10, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    if-eqz v10, :cond_130

    const/4 v9, 0x0

    .line 1654
    .local v9, "userRotationMode":I
    :goto_a6
    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-eq v10, v9, :cond_b0

    .line 1655
    iput v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    .line 1656
    const/4 v7, 0x1

    .line 1657
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 1661
    :cond_b0
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasFolderTypeFeature(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_cd

    .line 1662
    const-string v10, "accelerometer_rotation_second"

    const/4 v12, 0x0

    const/4 v13, -0x2

    invoke-static {v5, v10, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    if-eqz v10, :cond_133

    const/4 v6, 0x0

    .line 1666
    .local v6, "secondLcdUserRotationMode":I
    :goto_c3
    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSecondLcdUserRotationMode:I

    if-eq v10, v6, :cond_cd

    .line 1667
    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSecondLcdUserRotationMode:I

    .line 1668
    const/4 v7, 0x1

    .line 1669
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 1674
    .end local v6    # "secondLcdUserRotationMode":I
    :cond_cd
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    if-eqz v10, :cond_f5

    .line 1675
    const-string v10, "pointer_location"

    const/4 v12, 0x0

    const/4 v13, -0x2

    invoke-static {v5, v10, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 1677
    .local v4, "pointerLocation":I
    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    if-eq v10, v4, :cond_e7

    .line 1678
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    .line 1679
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_135

    const/4 v10, 0x1

    :goto_e4
    invoke-virtual {v12, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1683
    :cond_e7
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_f5

    .line 1684
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x5

    invoke-virtual {v10, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1689
    .end local v4    # "pointerLocation":I
    :cond_f5
    const-string v10, "screen_off_timeout"

    const/4 v12, 0x0

    const/4 v13, -0x2

    invoke-static {v5, v10, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    iput v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    .line 1691
    const-string v10, "default_input_method"

    const/4 v12, -0x2

    invoke-static {v5, v10, v12}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1693
    .local v2, "imId":Ljava/lang/String;
    if-eqz v2, :cond_137

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_137

    const/4 v1, 0x1

    .line 1694
    .local v1, "hasSoftInput":Z
    :goto_10f
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    if-eq v10, v1, :cond_116

    .line 1695
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    .line 1696
    const/4 v7, 0x1

    .line 1698
    :cond_116
    monitor-exit v11
    :try_end_117
    .catchall {:try_start_47 .. :try_end_117} :catchall_12a

    .line 1699
    if-eqz v7, :cond_11d

    .line 1700
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 1702
    :cond_11d
    return-void

    .line 1619
    .end local v1    # "hasSoftInput":Z
    .end local v2    # "imId":Ljava/lang/String;
    .end local v8    # "userRotation":I
    .end local v9    # "userRotationMode":I
    :cond_11e
    :try_start_11e
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v12, Lcom/android/internal/policy/impl/PhoneWindowManager$8;

    invoke-direct {v12, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$8;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v10, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6b

    .line 1698
    :catchall_12a
    move-exception v10

    monitor-exit v11
    :try_end_12c
    .catchall {:try_start_11e .. :try_end_12c} :catchall_12a

    throw v10

    .line 1640
    :cond_12d
    const/4 v10, 0x0

    goto/16 :goto_8a

    .line 1650
    .restart local v8    # "userRotation":I
    :cond_130
    const/4 v9, 0x1

    goto/16 :goto_a6

    .line 1662
    .restart local v9    # "userRotationMode":I
    :cond_133
    const/4 v6, 0x1

    goto :goto_c3

    .line 1679
    .restart local v4    # "pointerLocation":I
    :cond_135
    const/4 v10, 0x2

    goto :goto_e4

    .line 1693
    .end local v4    # "pointerLocation":I
    .restart local v2    # "imId":Ljava/lang/String;
    :cond_137
    const/4 v1, 0x0

    goto :goto_10f
.end method

.method public updateTopActivity(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 7891
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->updateTopActivity(Landroid/content/ComponentName;)V

    .line 7892
    return-void
.end method

.method public userActivity()V
    .registers 6

    .prologue
    .line 7354
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v1

    .line 7355
    :try_start_3
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eqz v0, :cond_18

    .line 7357
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7358
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7360
    :cond_18
    monitor-exit v1

    .line 7361
    return-void

    .line 7360
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public validateRotationAnimationLw(IIZ)Z
    .registers 8
    .param p1, "exitAnimId"    # I
    .param p2, "enterAnimId"    # I
    .param p3, "forceDefault"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2566
    packed-switch p1, :pswitch_data_1a

    .line 2577
    :cond_5
    :goto_5
    return v1

    .line 2570
    :pswitch_6
    if-eqz p3, :cond_a

    move v1, v2

    .line 2571
    goto :goto_5

    .line 2573
    :cond_a
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 2574
    .local v0, "anim":[I
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->selectRotationAnimationLw([I)V

    .line 2575
    aget v3, v0, v2

    if-ne p1, v3, :cond_18

    aget v3, v0, v1

    if-eq p2, v3, :cond_5

    :cond_18
    move v1, v2

    goto :goto_5

    .line 2566
    :pswitch_data_1a
    .packed-switch 0x10a0049
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public windowTypeToLayerLw(I)I
    .registers 8
    .param p1, "type"    # I

    .prologue
    const/16 v4, 0xc

    const/4 v2, 0x1

    const/4 v1, 0x5

    const/4 v3, 0x3

    const/4 v0, 0x2

    .line 1985
    if-lt p1, v2, :cond_d

    const/16 v5, 0x63

    if-gt p1, v5, :cond_d

    .line 2096
    :goto_c
    :sswitch_c
    return v0

    .line 1990
    :cond_d
    sget v5, Lcom/android/internal/policy/impl/MultiWindowReflector$LayoutParams;->TYPE_MULTI_WINDOW_TRAY_BAR:I

    if-ne p1, v5, :cond_13

    move v0, v1

    .line 1991
    goto :goto_c

    .line 1992
    :cond_13
    sget v5, Lcom/android/internal/policy/impl/MultiWindowReflector$LayoutParams;->TYPE_MULTI_WINDOW_EDIT_MODE:I

    if-eq p1, v5, :cond_1b

    sget v5, Lcom/android/internal/policy/impl/MultiWindowReflector$LayoutParams;->TYPE_MULTI_WINDOW_GUIDE_MODE:I

    if-ne p1, v5, :cond_1d

    :cond_1b
    move v0, v3

    .line 1993
    goto :goto_c

    .line 1996
    :cond_1d
    sparse-switch p1, :sswitch_data_8e

    .line 2095
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown window type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :sswitch_39
    move v0, v2

    .line 1998
    goto :goto_c

    :sswitch_3b
    move v0, v3

    .line 2003
    goto :goto_c

    .line 2005
    :sswitch_3d
    const/4 v0, 0x4

    goto :goto_c

    :sswitch_3f
    move v0, v1

    .line 2008
    goto :goto_c

    .line 2011
    :sswitch_41
    const/16 v0, 0x13

    goto :goto_c

    .line 2014
    :sswitch_44
    const/4 v0, 0x7

    goto :goto_c

    .line 2017
    :sswitch_46
    const/16 v0, 0x8

    goto :goto_c

    .line 2020
    :sswitch_49
    const/16 v0, 0x9

    goto :goto_c

    .line 2023
    :sswitch_4c
    const/16 v0, 0xa

    goto :goto_c

    .line 2027
    :sswitch_4f
    const/16 v0, 0xb

    goto :goto_c

    :sswitch_52
    move v0, v4

    .line 2031
    goto :goto_c

    .line 2033
    :sswitch_54
    const/16 v0, 0xd

    goto :goto_c

    .line 2036
    :sswitch_57
    const/16 v0, 0xe

    goto :goto_c

    .line 2038
    :sswitch_5a
    const/16 v0, 0xf

    goto :goto_c

    .line 2041
    :sswitch_5d
    const/16 v0, 0x10

    goto :goto_c

    .line 2045
    :sswitch_60
    const/16 v0, 0x11

    goto :goto_c

    .line 2049
    :sswitch_63
    const/16 v0, 0x12

    goto :goto_c

    .line 2052
    :sswitch_66
    const/16 v0, 0x13

    goto :goto_c

    .line 2055
    :sswitch_69
    const/16 v0, 0x14

    goto :goto_c

    .line 2059
    :sswitch_6c
    const/16 v0, 0x15

    goto :goto_c

    .line 2062
    :sswitch_6f
    const/16 v0, 0x16

    goto :goto_c

    .line 2066
    :sswitch_72
    const/16 v0, 0x17

    goto :goto_c

    .line 2070
    :sswitch_75
    const/16 v0, 0x18

    goto :goto_c

    .line 2072
    :sswitch_78
    const/16 v0, 0x19

    goto :goto_c

    .line 2074
    :sswitch_7b
    const/16 v0, 0x1a

    goto :goto_c

    .line 2077
    :sswitch_7e
    const/16 v0, 0x1b

    goto :goto_c

    .line 2079
    :sswitch_81
    const/16 v0, 0x1c

    goto :goto_c

    :sswitch_84
    move v0, v3

    .line 2082
    goto :goto_c

    :sswitch_86
    move v0, v1

    .line 2084
    goto :goto_c

    :sswitch_88
    move v0, v4

    .line 2086
    goto :goto_c

    .line 2088
    :sswitch_8a
    const/16 v0, 0xd

    goto :goto_c

    .line 1996
    nop

    :sswitch_data_8e
    .sparse-switch
        0x7d0 -> :sswitch_5a
        0x7d1 -> :sswitch_3d
        0x7d2 -> :sswitch_3b
        0x7d3 -> :sswitch_49
        0x7d4 -> :sswitch_52
        0x7d5 -> :sswitch_41
        0x7d6 -> :sswitch_63
        0x7d7 -> :sswitch_44
        0x7d8 -> :sswitch_3f
        0x7d9 -> :sswitch_54
        0x7da -> :sswitch_6c
        0x7db -> :sswitch_4c
        0x7dc -> :sswitch_4f
        0x7dd -> :sswitch_c
        0x7de -> :sswitch_5d
        0x7df -> :sswitch_78
        0x7e0 -> :sswitch_75
        0x7e1 -> :sswitch_57
        0x7e2 -> :sswitch_7e
        0x7e3 -> :sswitch_66
        0x7e4 -> :sswitch_60
        0x7e5 -> :sswitch_7b
        0x7e6 -> :sswitch_81
        0x7e7 -> :sswitch_46
        0x7e8 -> :sswitch_69
        0x7e9 -> :sswitch_39
        0x7ea -> :sswitch_72
        0x7eb -> :sswitch_6f
        0x7ec -> :sswitch_3f
        0x832 -> :sswitch_57
        0x833 -> :sswitch_6c
        0x834 -> :sswitch_84
        0x835 -> :sswitch_86
        0x836 -> :sswitch_88
        0x837 -> :sswitch_8a
        0x89e -> :sswitch_5d
        0x8a0 -> :sswitch_4f
        0x8a3 -> :sswitch_72
        0x8fc -> :sswitch_c
    .end sparse-switch
.end method
