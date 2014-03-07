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
        Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationPointerEventListener;
    }
.end annotation


# static fields
.field private static final ACTION_REFRESH_HWKEY:Ljava/lang/String; = "com.android.server.enterprise.kioskmode.REFRESH_HWKEY_CACHE"

.field static final APPLICATION_MEDIA_OVERLAY_SUBLAYER:I = -0x1

.field static final APPLICATION_MEDIA_SUBLAYER:I = -0x2

.field static final APPLICATION_PANEL_SUBLAYER:I = 0x1

.field static final APPLICATION_SUB_PANEL_SUBLAYER:I = 0x2

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

.field private static final EXTRA_DOCK_STATE_HMT:I = 0xb

.field private static final HIDE_SVIEW_COVER_ALWAYS:I = 0x1

.field private static final HIDE_SVIEW_COVER_NONE:I = 0x0

.field private static final HIDE_SVIEW_COVER_ONCE:I = 0x2

.field private static final KEYGUARD_SCREENSHOT_CHORD_DELAY_MULTIPLIER:F = 2.5f

.field static final LONG_PRESS_HOME_ASSIST:I = 0x2

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

.field public static final SYSTEM_DIALOG_REASON_COVER:Ljava/lang/String; = "cover"

.field public static final SYSTEM_DIALOG_REASON_GLOBAL_ACTIONS:Ljava/lang/String; = "globalactions"

.field public static final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field public static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"

.field static final SYSTEM_UI_CHANGING_LAYOUT:I = -0x3ffffffa

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

.field private static cpuBooster:Landroid/os/DVFSHelper;

.field static final localLOGV:Z

.field private static mCurrentUser:I

.field static final mTmpContentFrame:Landroid/graphics/Rect;

.field static final mTmpDecorFrame:Landroid/graphics/Rect;

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

.field mAccelerometerDefault:Z

.field mAlarmReceivedFlag:Z

.field mAlarmReceiver:Landroid/content/BroadcastReceiver;

.field mAllowAllRotations:I

.field mAllowLockscreenWhenOn:Z

.field mAssistKeyLongPressed:Z

.field private mBlockedHwKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mBlockedHwKeysReceiver:Landroid/content/BroadcastReceiver;

.field mBootMsgDialog:Landroid/app/ProgressDialog;

.field mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mCanBeForceHide:Z

.field mCanHideNavigationBar:Z

.field mCarDockEnablesAccelerometer:Z

.field mCarDockIntent:Landroid/content/Intent;

.field mCarDockRotation:I

.field private final mClearHideNavigationFlag:Ljava/lang/Runnable;

.field private mConsumeAppSwitchKeyUp:Z

.field private mConsumeBackKeyUp:Z

.field mConsumeMenuKeyUp:Z

.field mConsumeSearchKeyUp:Z

.field mContentBottom:I

.field mContentLeft:I

.field mContentRight:I

.field mContentTop:I

.field mContext:Landroid/content/Context;

.field mCoverCloseRotation:I

.field mCoverManager:Lcom/samsung/android/cover/ICoverManager;

.field mCoverState:Lcom/samsung/android/cover/CoverState;

.field mCurBottom:I

.field mCurLeft:I

.field mCurRight:I

.field mCurTop:I

.field mCurrentAppOrientation:I

.field private mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

.field private mCurrentUserId:I

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

.field private mFloatingPadding:Landroid/graphics/Rect;

.field mFocusedApp:Landroid/view/IApplicationToken;

.field mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mForceClearedSystemUiFlags:I

.field private mForceDefaultOrientation:Z

.field mForceStatusBar:Z

.field mForceStatusBarFromKeyguard:Z

.field mForceTransientBars:Z

.field mForcingShowNavBar:Z

.field mForcingShowNavBarLayer:I

.field mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

.field private mGlobalKeyManager:Lcom/android/internal/policy/impl/GlobalKeyManager;

.field private mHDMIObserver:Landroid/os/UEventObserver;

.field mHandler:Landroid/os/Handler;

.field mHasNavigationBar:Z

.field mHasSoftInput:Z

.field mHaveBuiltInKeyboard:Z

.field mHavePendingMediaKeyRepeatWithWakeLock:Z

.field mHdmiPlugged:Z

.field mHeadless:Z

.field mHideLockScreen:Z

.field mHideLockScreenByCover:Z

.field mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

.field final mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

.field mHideSViewCover:I

.field mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mHomeConsumed:Z

.field mHomeDoubleTapPending:Z

.field private final mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field mHomeIntent:Landroid/content/Intent;

.field mHomePressed:Z

.field mHomeTripleTapPending:Z

.field private final mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mImmersiveModeConfirmation:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

.field mIncallPowerBehavior:I

.field private mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field private mIsIsolatedSplitUsed:Z

.field private mIsKidsLauncherEnabled:Z

.field private mIsMWTrayOpen:Z

.field private mIsMultiWindowEnabled:Z

.field mIsSupportFlipCover:Z

.field mIsSupportSViewCover:Z

.field mKeyboardTapVibePattern:[J

.field mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

.field mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

.field private mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

.field mLandscapeRotation:I

.field mLanguageSwitchKeyPressed:Z

.field mLastFocusNeedsMenu:Z

.field mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mLastSystemUiFlags:I

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

.field private mMinimizeSize:I

.field mMouseConnectReceiver:Landroid/content/BroadcastReceiver;

.field mMouseConnectedDock:I

.field mMouseDockedFlag:Z

.field private mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

.field private mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

.field private mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

.field private mMultiWindowUIIntent:Landroid/content/Intent;

.field mMultiuserReceiver:Landroid/content/BroadcastReceiver;

.field mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

.field mNavigationBarCanMove:Z

.field private final mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

.field mNavigationBarHeightForRotation:[I

.field mNavigationBarOnBottom:Z

.field mNavigationBarWidthForRotation:[I

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

.field mPanelOrientation:I

.field mPendingPowerKeyUpCanceled:Z

.field public mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mPointerLocationMode:I

.field mPointerLocationPointerEventListener:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationPointerEventListener;

.field mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

.field mPortraitRotation:I

.field mPowerConsumed:Z

.field mPowerDoubleTapPending:Z

.field private mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

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

.field mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

.field mSViewCover:Landroid/view/WindowManagerPolicy$WindowState;

.field mSafeMode:Z

.field mSafeModeDisabledVibePattern:[J

.field mSafeModeEnabledVibePattern:[J

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

.field final mServiceAquireLock:Ljava/lang/Object;

.field mSettingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

.field mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

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

.field private final mStatusBarController:Lcom/android/internal/policy/impl/BarController;

.field mStatusBarHeight:I

.field mStatusBarLayer:I

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mStatusBarTransient:Z

.field mSystemBooted:Z

.field mSystemBottom:I

.field private mSystemGestures:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;

.field mSystemLeft:I

.field mSystemReady:Z

.field mSystemRight:I

.field mSystemTop:I

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field private mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field private mTopFullscreenOpaqueWindowStateZoneA:Landroid/view/WindowManagerPolicy$WindowState;

.field private mTopFullscreenOpaqueWindowStateZoneB:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopIsFullscreen:Z

.field mTouchExplorationEnabled:Z

.field mTranslucentDecorEnabled:Z

.field mUiMode:I

.field mUndockedHdmiRotation:I

.field mUnrestrictedScreenHeight:I

.field mUnrestrictedScreenLeft:I

.field mUnrestrictedScreenTop:I

.field mUnrestrictedScreenWidth:I

.field mUpsideDownRotation:I

.field mUserRotation:I

.field mUserRotationMode:I

.field mUserSetupComplete:Z

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


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 165
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_9

    move v0, v1

    :cond_9
    sput-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    .line 227
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    .line 228
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v2, 0x40

    const-string v3, "android.intent.category.APP_BROWSER"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 230
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v2, 0x41

    const-string v3, "android.intent.category.APP_EMAIL"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 232
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v2, 0xcf

    const-string v3, "android.intent.category.APP_CONTACTS"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 234
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v2, 0xd0

    const-string v3, "android.intent.category.APP_CALENDAR"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 236
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v2, 0xd1

    const-string v3, "android.intent.category.APP_MUSIC"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 238
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v2, 0xd2

    const-string v3, "android.intent.category.APP_CALCULATOR"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 402
    sput v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentUser:I

    .line 515
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 516
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 517
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    .line 518
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 519
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 520
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    .line 521
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    .line 2643
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_8a

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    .line 5279
    sput-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->wasTopFullscreen:Z

    .line 6821
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->cpuBooster:Landroid/os/DVFSHelper;

    return-void

    .line 2643
    nop

    :array_8a
    .array-data 4
        0x7d3
        0x7da
    .end array-data
.end method

.method public constructor <init>()V
    .registers 11

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v2, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 255
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    .line 275
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 279
    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 281
    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 282
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    .line 283
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    .line 284
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    .line 285
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    .line 286
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    .line 287
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    .line 290
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    .line 291
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMinimizeSize:I

    .line 293
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableMultiWindowUISetting:I

    .line 294
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeBackKeyUp:Z

    .line 295
    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    .line 296
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsIsolatedSplitUsed:Z

    .line 297
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarTransient:Z

    .line 308
    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 310
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanBeForceHide:Z

    .line 311
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMWTrayOpen:Z

    .line 315
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEasyOneHandEnabled:I

    .line 319
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsKidsLauncherEnabled:Z

    .line 322
    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 328
    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 329
    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 340
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    .line 347
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    .line 352
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseConnectedDock:I

    .line 353
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_STARTED_IN_ALERT"

    aput-object v1, v0, v7

    const-string v1, "com.android.deskclock.ALARM_ALERT"

    aput-object v1, v0, v5

    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT"

    aput-object v1, v0, v9

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->ALARM_STARTED:[Ljava/lang/String;

    .line 358
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_STOPPED_IN_ALERT"

    aput-object v1, v0, v7

    const-string v1, "com.android.deskclock.ALARM_DONE"

    aput-object v1, v0, v5

    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_STOP"

    aput-object v1, v0, v9

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->ALARM_STOPPED:[Ljava/lang/String;

    .line 364
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAlarmReceivedFlag:Z

    .line 365
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOldMouseDockedValue:Z

    .line 366
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    .line 373
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceDefaultOrientation:Z

    .line 375
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    .line 376
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    .line 379
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    .line 385
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 386
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    .line 387
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    .line 388
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 389
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    .line 390
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    .line 391
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTouchExplorationEnabled:Z

    .line 392
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    .line 394
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    .line 397
    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 400
    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    .line 410
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpecialKeysLock:Ljava/lang/Object;

    .line 423
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsSupportFlipCover:Z

    .line 424
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsSupportSViewCover:Z

    .line 429
    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSViewCover:Landroid/view/WindowManagerPolicy$WindowState;

    .line 431
    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 436
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCover:I

    .line 437
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreenByCover:Z

    .line 441
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeAppSwitchKeyUp:Z

    .line 506
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 508
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    .line 511
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    .line 513
    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    .line 535
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    .line 554
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeMenuKeyUp:Z

    .line 558
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeTripleTapPending:Z

    .line 562
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerConsumed:Z

    .line 563
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerDoubleTapPending:Z

    .line 580
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 581
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    .line 582
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 583
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 585
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    .line 586
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    .line 587
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    .line 588
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    .line 591
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPanelOrientation:I

    .line 626
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    .line 642
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserSetupComplete:Z

    .line 674
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    .line 761
    new-instance v0, Lcom/android/internal/policy/impl/BarController;

    const-string v1, "StatusBar"

    const/high16 v2, 0x4000000

    const/high16 v3, 0x10000000

    const/high16 v4, 0x40000000

    const/high16 v6, 0x4000000

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/BarController;-><init>(Ljava/lang/String;IIIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    .line 768
    new-instance v0, Lcom/android/internal/policy/impl/BarController;

    const-string v1, "NavigationBar"

    const/high16 v2, 0x8000000

    const/high16 v3, 0x20000000

    const/high16 v4, -0x80000000

    const/high16 v6, 0x8000000

    move v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/BarController;-><init>(Ljava/lang/String;IIIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    .line 926
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$2;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    .line 996
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$3;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    .line 1089
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$4;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 1105
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$5;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 1121
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$6;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$6;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 3599
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$11;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$11;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    .line 3672
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$12;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$12;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

    .line 5466
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    .line 5467
    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 5469
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$16;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$16;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotTimeout:Ljava/lang/Runnable;

    .line 6158
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$19;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$19;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    .line 6179
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$20;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    .line 6213
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$21;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseConnectReceiver:Landroid/content/BroadcastReceiver;

    .line 6272
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$22;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$22;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    .line 6287
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$23;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$23;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    .line 6326
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceTransientBars:Z

    .line 6361
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$24;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$24;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWifiDisplayReceiver:Landroid/content/BroadcastReceiver;

    .line 6377
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$25;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$25;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockedHwKeysReceiver:Landroid/content/BroadcastReceiver;

    .line 6950
    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    .line 7055
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->enablePointerLocation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->disablePointerLocation()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "x1"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/PhoneWindowManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 162
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEasyOneHandEnabled:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/PhoneWindowManager;ZZ)V
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateEasyOneHandState(ZZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/PhoneWindowManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 162
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableMultiWindowUISetting:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/PhoneWindowManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v0

    return v0
.end method

.method static synthetic access$1802(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 162
    sput p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentUser:I

    return p0
.end method

.method static synthetic access$1902(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/util/Map;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifyToSSRM(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/IBinder;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->waitForKeyguardWindowDrawn(Landroid/os/IBinder;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "x1"    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishScreenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/PhoneWindowManager;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performAuditoryFeedbackForAccessibilityIfNeed()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->takeScreenshot()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleDoubleTapOnHome()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsKidsLauncherEnabled:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->requestKidsQuickPanelOpen()V

    return-void
.end method

.method private applyLidSwitchState()V
    .registers 4

    .prologue
    .line 7097
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    if-eqz v0, :cond_11

    .line 7098
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 7100
    :cond_11
    return-void
.end method

.method private applyMultiWindowScaleFrame(Landroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 14
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "pf"    # Landroid/graphics/Rect;
    .param p3, "df"    # Landroid/graphics/Rect;
    .param p4, "of"    # Landroid/graphics/Rect;
    .param p5, "cf"    # Landroid/graphics/Rect;
    .param p6, "vf"    # Landroid/graphics/Rect;
    .param p7, "dcf"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x1

    .line 4844
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int v0, v3, v4

    .line 4845
    .local v0, "height":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int v2, v3, v4

    .line 4846
    .local v2, "width":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v1, v3, Landroid/content/res/Configuration;->orientation:I

    .line 4848
    .local v1, "orientation":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedOrientation()I

    move-result v3

    if-ne v3, v5, :cond_2a

    const/4 v3, 0x2

    if-eq v1, v3, :cond_32

    :cond_2a
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedOrientation()I

    move-result v3

    if-nez v3, :cond_61

    if-ne v1, v5, :cond_61

    .line 4850
    :cond_32
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v2

    iput v3, p2, Landroid/graphics/Rect;->bottom:I

    .line 4851
    iget v3, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v0

    iput v3, p2, Landroid/graphics/Rect;->right:I

    .line 4857
    :goto_3c
    const/16 v3, -0x2710

    iput v3, p6, Landroid/graphics/Rect;->top:I

    iput v3, p6, Landroid/graphics/Rect;->left:I

    iput v3, p5, Landroid/graphics/Rect;->top:I

    iput v3, p5, Landroid/graphics/Rect;->left:I

    iput v3, p4, Landroid/graphics/Rect;->top:I

    iput v3, p4, Landroid/graphics/Rect;->left:I

    iput v3, p3, Landroid/graphics/Rect;->top:I

    iput v3, p3, Landroid/graphics/Rect;->left:I

    .line 4858
    const/16 v3, 0x2710

    iput v3, p6, Landroid/graphics/Rect;->bottom:I

    iput v3, p6, Landroid/graphics/Rect;->right:I

    iput v3, p5, Landroid/graphics/Rect;->bottom:I

    iput v3, p5, Landroid/graphics/Rect;->right:I

    iput v3, p4, Landroid/graphics/Rect;->bottom:I

    iput v3, p4, Landroid/graphics/Rect;->right:I

    iput v3, p3, Landroid/graphics/Rect;->bottom:I

    iput v3, p3, Landroid/graphics/Rect;->right:I

    .line 4859
    return-void

    .line 4853
    :cond_61
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v0

    iput v3, p2, Landroid/graphics/Rect;->bottom:I

    .line 4854
    iget v3, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v2

    iput v3, p2, Landroid/graphics/Rect;->right:I

    goto :goto_3c
.end method

.method private applyStableConstraints(IILandroid/graphics/Rect;)V
    .registers 6
    .param p1, "sysui"    # I
    .param p2, "fl"    # I
    .param p3, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 4138
    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_30

    .line 4141
    and-int/lit16 v0, p2, 0x400

    if-eqz v0, :cond_31

    .line 4142
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    if-ge v0, v1, :cond_12

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 4143
    :cond_12
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    if-ge v0, v1, :cond_1c

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 4144
    :cond_1c
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    if-le v0, v1, :cond_26

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 4145
    :cond_26
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    if-le v0, v1, :cond_30

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 4153
    :cond_30
    :goto_30
    return-void

    .line 4147
    :cond_31
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    if-ge v0, v1, :cond_3b

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 4148
    :cond_3b
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    if-ge v0, v1, :cond_45

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 4149
    :cond_45
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    if-le v0, v1, :cond_4f

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 4150
    :cond_4f
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    if-le v0, v1, :cond_30

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_30
.end method

.method private areTranslucentBarsAllowed()Z
    .registers 2

    .prologue
    .line 7675
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTouchExplorationEnabled:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static awakenDreams()V
    .registers 2

    .prologue
    .line 2575
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v0

    .line 2576
    .local v0, "dreamManager":Landroid/service/dreams/IDreamManager;
    if-eqz v0, :cond_9

    .line 2578
    :try_start_6
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 2583
    :cond_9
    :goto_9
    return-void

    .line 2579
    :catch_a
    move-exception v1

    goto :goto_9
.end method

.method private canBeGetSViewCoverSize()Z
    .registers 2

    .prologue
    .line 7793
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_12

    .line 7794
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    if-eqz v0, :cond_12

    .line 7795
    const/4 v0, 0x1

    .line 7798
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private canHideNavigationBar()Z
    .registers 2

    .prologue
    .line 1544
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTouchExplorationEnabled:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private cancelPendingPowerKeyAction()V
    .registers 3

    .prologue
    .line 891
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v0, :cond_b

    .line 892
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 894
    :cond_b
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v0, :cond_12

    .line 895
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    .line 897
    :cond_12
    return-void
.end method

.method private cancelPendingScreenshotChordAction()V
    .registers 3

    .prologue
    .line 923
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 924
    return-void
.end method

.method private cancelPreloadRecentApps()V
    .registers 5

    .prologue
    .line 3534
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreloadedRecentApps:Z

    if-eqz v2, :cond_10

    .line 3535
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3537
    :try_start_7
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 3538
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_10

    .line 3539
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->cancelPreloadRecentApps()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11

    .line 3547
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_10
    :goto_10
    return-void

    .line 3541
    :catch_11
    move-exception v0

    .line 3542
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "RemoteException when showing recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3544
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_10
.end method

.method private clearClearableFlagsLw()V
    .registers 3

    .prologue
    .line 7653
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    or-int/lit8 v0, v1, 0x7

    .line 7654
    .local v0, "newVal":I
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    if-eq v0, v1, :cond_f

    .line 7655
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 7656
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reevaluateStatusBarVisibility()V

    .line 7658
    :cond_f
    return-void
.end method

.method private disablePointerLocation()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1722
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationPointerEventListener:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationPointerEventListener;

    if-eqz v1, :cond_e

    .line 1723
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationPointerEventListener:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationPointerEventListener;

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 1725
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationPointerEventListener:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationPointerEventListener;

    .line 1728
    :cond_e
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-eqz v1, :cond_23

    .line 1729
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1731
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1732
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 1734
    .end local v0    # "wm":Landroid/view/WindowManager;
    :cond_23
    return-void
.end method

.method private enablePointerLocation()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 1692
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-nez v2, :cond_60

    .line 1693
    new-instance v2, Lcom/android/internal/widget/PointerLocationView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/PointerLocationView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 1694
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView;->setPrintCoords(Z)V

    .line 1696
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 1699
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x7df

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1700
    const/16 v2, 0x518

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1704
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1705
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x1000000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1706
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1709
    :cond_34
    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1710
    const-string v2, "PointerLocation"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1711
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1713
    .local v1, "wm":Landroid/view/WindowManager;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 1714
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1716
    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationPointerEventListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationPointerEventListener;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationPointerEventListener:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationPointerEventListener;

    .line 1717
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationPointerEventListener:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationPointerEventListener;

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 1719
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "wm":Landroid/view/WindowManager;
    :cond_60
    return-void
.end method

.method private finishScreenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .registers 4
    .param p1, "screenOnListener"    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .prologue
    .line 6504
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6505
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    .line 6506
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_13

    .line 6509
    :try_start_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->setEventDispatching(Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_16

    .line 6513
    :goto_d
    if-eqz p1, :cond_12

    .line 6514
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$ScreenOnListener;->onScreenOn()V

    .line 6516
    :cond_12
    return-void

    .line 6506
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0

    .line 6510
    :catch_16
    move-exception v0

    goto :goto_d
.end method

.method static getAudioService()Landroid/media/IAudioService;
    .registers 3

    .prologue
    .line 2631
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 2633
    .local v0, "audioService":Landroid/media/IAudioService;
    if-nez v0, :cond_13

    .line 2634
    const-string v1, "WindowManager"

    const-string v2, "Unable to find IAudioService interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2636
    :cond_13
    return-object v0
.end method

.method private declared-synchronized getCoverManager()Lcom/samsung/android/cover/ICoverManager;
    .registers 3

    .prologue
    .line 7771
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_1c

    .line 7772
    const-string v0, "cover"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    .line 7773
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_1c

    .line 7774
    const-string v0, "WindowManager"

    const-string v1, "warning: no COVER_MANAGER_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7777
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-object v0

    .line 7771
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static getDreamManager()Landroid/service/dreams/IDreamManager;
    .registers 1

    .prologue
    .line 2586
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
    .line 6889
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 6890
    .local v0, "ar":[I
    if-nez v0, :cond_8

    .line 6891
    const/4 v2, 0x0

    .line 6897
    :cond_7
    return-object v2

    .line 6893
    :cond_8
    array-length v3, v0

    new-array v2, v3, [J

    .line 6894
    .local v2, "out":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    array-length v3, v0

    if-ge v1, v3, :cond_7

    .line 6895
    aget v3, v0, v1

    int-to-long v3, v3

    aput-wide v3, v2, v1

    .line 6894
    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method

.method private getScreenshotChordLongPressDelay()J
    .registers 4

    .prologue
    .line 914
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 916
    const/high16 v0, 0x40200000

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v1

    long-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 919
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
    .line 3513
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    if-nez v0, :cond_10

    .line 3514
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    .line 3516
    :cond_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    return-object v0
.end method

.method static getTelephonyExtService()Lcom/android/internal/telephony/ITelephonyExt;
    .registers 3

    .prologue
    .line 2597
    const-string v1, "phoneext"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v0

    .line 2599
    .local v0, "telephonyExtService":Lcom/android/internal/telephony/ITelephonyExt;
    if-nez v0, :cond_13

    .line 2600
    const-string v1, "WindowManager"

    const-string v2, "Unable to find ITelephony interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2602
    :cond_13
    return-object v0
.end method

.method static getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .registers 1

    .prologue
    .line 2591
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method static getVoIPInterfaceService()Landroid/os/IVoIPInterface;
    .registers 3

    .prologue
    .line 2606
    const-string v1, "voip"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v0

    .line 2608
    .local v0, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-nez v0, :cond_13

    .line 2609
    const-string v1, "WindowManager"

    const-string v2, "Unable to find IVoIPInterface interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2611
    :cond_13
    return-object v0
.end method

.method private handleDoubleTapOnHome()V
    .registers 2

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->launchVoiceCommand()V

    .line 1079
    return-void
.end method

.method private handleDoubleTapOnPower()V
    .registers 4

    .prologue
    .line 1083
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDoubleTapOnPower() / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerConsumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerConsumed:Z

    .line 1085
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->callAccessibilityScreenCurtain()V

    .line 1087
    return-void
.end method

.method private handleLongPressOnHome()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1043
    :try_start_2
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1044
    .local v1, "phoneServ":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_17

    .line 1045
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_f

    move-result v2

    if-eqz v2, :cond_17

    .line 1067
    .end local v1    # "phoneServ":Lcom/android/internal/telephony/ITelephony;
    :cond_e
    :goto_e
    return-void

    .line 1049
    :catch_f
    move-exception v0

    .line 1050
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "RemoteException from getTelephonyService()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1053
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_17
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isVoIPRinging()Z

    move-result v2

    if-nez v2, :cond_e

    .line 1056
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-eqz v2, :cond_e

    .line 1057
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeConsumed:Z

    .line 1058
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1060
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ne v2, v5, :cond_2f

    .line 1061
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->toggleRecentApps()V

    goto :goto_e

    .line 1062
    :cond_2f
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_e

    .line 1063
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchAssistAction()V

    goto :goto_e
.end method

.method private handleLongPressOnMenu()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1029
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeMenuKeyUp:Z

    .line 1030
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isCameraOnTop()Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_12
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    if-eqz v0, :cond_1a

    .line 1031
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1033
    :cond_1a
    return-void
.end method

.method private handleTripleTapOnHome()V
    .registers 2

    .prologue
    .line 1101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeConsumed:Z

    .line 1102
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->sendBroadcastForAccessibility()V

    .line 1103
    return-void
.end method

.method private interceptFallback(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z
    .registers 10
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "fallbackEvent"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    const/4 v3, 0x1

    .line 3464
    invoke-virtual {p0, p2, p3, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    move-result v0

    .line 3465
    .local v0, "actions":I
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_14

    .line 3466
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v1

    .line 3468
    .local v1, "delayMillis":J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_14

    .line 3472
    .end local v1    # "delayMillis":J
    :goto_13
    return v3

    :cond_14
    const/4 v3, 0x0

    goto :goto_13
.end method

.method private interceptPowerKeyDown(Z)V
    .registers 8
    .param p1, "handled"    # Z

    .prologue
    .line 866
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 867
    if-nez p1, :cond_25

    .line 869
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isDisablePopupUI()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 870
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 880
    :goto_18
    return-void

    .line 872
    :cond_19
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_18

    .line 877
    :cond_25
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_18
.end method

.method private interceptPowerKeyUp(Z)Z
    .registers 5
    .param p1, "canceled"    # Z

    .prologue
    const/4 v0, 0x0

    .line 883
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v1, :cond_f

    .line 884
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 885
    if-nez p1, :cond_f

    const/4 v0, 0x1

    .line 887
    :cond_f
    return v0
.end method

.method private interceptScreenshotChord()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x96

    .line 900
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordEnabled:Z

    if-eqz v2, :cond_35

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_35

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_35

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_35

    .line 902
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 903
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_35

    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_35

    .line 905
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 906
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 908
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 911
    .end local v0    # "now":J
    :cond_35
    return-void
.end method

.method private isAnyPortrait(I)Z
    .registers 3
    .param p1, "rotation"    # I

    .prologue
    .line 6841
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

.method private isEnabledTalkback()Z
    .registers 9

    .prologue
    .line 7238
    const/16 v1, 0x3a

    .line 7239
    .local v1, "ENABLED_SERVICES_SEPARATOR":C
    const-string v0, "com.google.android.marvin.talkback"

    .line 7240
    .local v0, "DEFAULT_SCREENREADER_NAME":Ljava/lang/String;
    new-instance v5, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v6, 0x3a

    invoke-direct {v5, v6}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 7242
    .local v5, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "enabled_accessibility_services"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7245
    .local v4, "enabledServicesSetting":Ljava/lang/String;
    if-nez v4, :cond_1b

    .line 7246
    const-string v4, ""

    .line 7249
    :cond_1b
    invoke-virtual {v5, v4}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 7251
    :cond_1e
    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 7252
    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 7253
    .local v2, "componentNameString":Ljava/lang/String;
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 7255
    .local v3, "enabledService":Landroid/content/ComponentName;
    if-eqz v3, :cond_1e

    .line 7256
    const-string v6, "com.google.android.marvin.talkback"

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 7257
    const/4 v6, 0x1

    .line 7260
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

    .line 2651
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpecialKeysLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2652
    :try_start_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpecialKeysMessenger:Landroid/os/Messenger;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_25

    if-eqz v4, :cond_23

    .line 2655
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_a
    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 2656
    .local v1, "keyMessage":Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2658
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpecialKeysMessenger:Landroid/os/Messenger;

    invoke-virtual {v4, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_15} :catch_18
    .catchall {:try_start_a .. :try_end_15} :catchall_25

    .line 2659
    const/4 v2, 0x1

    :try_start_16
    monitor-exit v3

    .line 2666
    .end local v1    # "keyMessage":Landroid/os/Message;
    :goto_17
    return v2

    .line 2660
    :catch_18
    move-exception v0

    .line 2661
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "WindowManager"

    const-string v5, "Cannot acknowledge the request"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2662
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpecialKeysMessenger:Landroid/os/Messenger;

    .line 2666
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_23
    monitor-exit v3

    goto :goto_17

    .line 2667
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

    .line 7446
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

.method private isHardwareKeyAllowed(IZ)Z
    .registers 10
    .param p1, "hwKeyId"    # I
    .param p2, "showMsg"    # Z

    .prologue
    .line 5537
    sget v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentUser:I

    .line 5538
    .local v4, "userId":I
    const/4 v0, 0x1

    .line 5540
    .local v0, "allowed":Z
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_38

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_38

    .line 5541
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 5542
    const/4 v0, 0x0

    .line 5546
    :cond_38
    if-eqz p2, :cond_5f

    if-nez v0, :cond_5f

    .line 5547
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x104027e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5551
    .local v1, "msg":Ljava/lang/String;
    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 5553
    .local v3, "user":Landroid/os/UserHandle;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "edm.intent.action.ACTION_EDM_RESTRICTION_TOAST"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5554
    .local v2, "toastIntent":Landroid/content/Intent;
    const-string v5, "message"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5555
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5558
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "toastIntent":Landroid/content/Intent;
    .end local v3    # "user":Landroid/os/UserHandle;
    :cond_5f
    return v0
.end method

.method private isHidden(I)Z
    .registers 5
    .param p1, "accessibilityMode"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1908
    packed-switch p1, :pswitch_data_14

    move v0, v1

    .line 1914
    :cond_6
    :goto_6
    return v0

    .line 1910
    :pswitch_7
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_6

    .line 1912
    :pswitch_d
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-eq v2, v0, :cond_6

    move v0, v1

    goto :goto_6

    .line 1908
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_7
        :pswitch_d
    .end packed-switch
.end method

.method private isImmersiveMode(I)Z
    .registers 4
    .param p1, "vis"    # I

    .prologue
    .line 7661
    const/16 v0, 0x1800

    .line 7662
    .local v0, "flags":I
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_16

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_16

    and-int/lit16 v1, p1, 0x1800

    if-eqz v1, :cond_16

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method private isLandscapeOrSeascape(I)Z
    .registers 3
    .param p1, "rotation"    # I

    .prologue
    .line 6837
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

.method private isSupportAndAttachedSViewCover()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 7781
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsSupportSViewCover:Z

    if-eqz v1, :cond_1e

    .line 7782
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v1, v1, Lcom/samsung/android/cover/CoverState;->type:I

    if-eq v1, v0, :cond_1d

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v1, v1, Lcom/samsung/android/cover/CoverState;->type:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1d

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v1, v1, Lcom/samsung/android/cover/CoverState;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1e

    .line 7789
    :cond_1d
    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private isWakeKeyWhenScreenOff(I)Z
    .registers 5
    .param p1, "keyCode"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6062
    sparse-switch p1, :sswitch_data_e

    .line 6085
    :cond_5
    :goto_5
    return v0

    .line 6067
    :sswitch_6
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_5

    :sswitch_c
    move v0, v1

    .line 6083
    goto :goto_5

    .line 6062
    :sswitch_data_e
    .sparse-switch
        0x18 -> :sswitch_6
        0x19 -> :sswitch_6
        0x1b -> :sswitch_c
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
        0xde -> :sswitch_c
    .end sparse-switch
.end method

.method private keyguardIsShowingTq()Z
    .registers 2

    .prologue
    .line 6543
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 6544
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v0

    goto :goto_5
.end method

.method private launchAssistAction()V
    .registers 7

    .prologue
    .line 3496
    const-string v2, "assist"

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 3497
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "search"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    const/4 v5, -0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v1

    .line 3499
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_41

    .line 3500
    const/high16 v2, 0x34000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3503
    sget-boolean v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_3a

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launchAssistAction() is called. intent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3505
    :cond_3a
    :try_start_3a
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_41
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3a .. :try_end_41} :catch_42

    .line 3510
    :cond_41
    :goto_41
    return-void

    .line 3506
    :catch_42
    move-exception v0

    .line 3507
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "WindowManager"

    const-string v3, "No activity to handle assist action."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_41
.end method

.method private launchAssistLongPressAction()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 3476
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v4, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 3477
    const-string v3, "assist"

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 3480
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3481
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3485
    :try_start_16
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getSearchManager()Landroid/app/SearchManager;

    move-result-object v2

    .line 3486
    .local v2, "searchManager":Landroid/app/SearchManager;
    if-eqz v2, :cond_1f

    .line 3487
    invoke-virtual {v2}, Landroid/app/SearchManager;->stopSearch()V

    .line 3489
    :cond_1f
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_26
    .catch Landroid/content/ActivityNotFoundException; {:try_start_16 .. :try_end_26} :catch_27

    .line 3493
    .end local v2    # "searchManager":Landroid/app/SearchManager;
    :goto_26
    return-void

    .line 3490
    :catch_27
    move-exception v0

    .line 3491
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "WindowManager"

    const-string v4, "No activity to handle assist long press action."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26
.end method

.method private notifySystemUiVisibility(I)V
    .registers 4
    .param p1, "visibility"    # I

    .prologue
    .line 7320
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    if-eqz v0, :cond_e

    .line 7321
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$35;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$35;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7328
    :cond_e
    return-void
.end method

.method private notifyToSSRM(Z)V
    .registers 5
    .param p1, "isTopFullscreen"    # Z

    .prologue
    .line 5281
    sget-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->wasTopFullscreen:Z

    if-ne v1, p1, :cond_5

    .line 5291
    :goto_4
    return-void

    .line 5284
    :cond_5
    sput-boolean p1, Lcom/android/internal/policy/impl/PhoneWindowManager;->wasTopFullscreen:Z

    .line 5286
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5287
    .local v0, "boostIntent":Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5288
    const-string v1, "SSRM_STATUS_NAME"

    const-string v2, "FullScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5289
    const-string v1, "SSRM_STATUS_VALUE"

    sget-boolean v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->wasTopFullscreen:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5290
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_4
.end method

.method private offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 4
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 4863
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 4864
    .local v0, "top":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 4865
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    if-le v1, v0, :cond_13

    .line 4866
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    .line 4868
    :cond_13
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 4869
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenVisibleInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 4870
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    if-le v1, v0, :cond_26

    .line 4871
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    .line 4876
    :cond_26
    return-void
.end method

.method private performAuditoryFeedbackForAccessibilityIfNeed()V
    .registers 5

    .prologue
    .line 7431
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isGlobalAccessibilityGestureEnabled()Z

    move-result v2

    if-nez v2, :cond_7

    .line 7443
    :cond_6
    :goto_6
    return-void

    .line 7434
    :cond_7
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 7436
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSilentMode()Z

    move-result v2

    if-nez v2, :cond_6

    .line 7439
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 7441
    .local v1, "ringTone":Landroid/media/Ringtone;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 7442
    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    goto :goto_6
.end method

.method private preloadRecentApps()V
    .registers 5

    .prologue
    .line 3520
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3522
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 3523
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_c

    .line 3524
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->preloadRecentApps()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_d

    .line 3531
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_c
    :goto_c
    return-void

    .line 3526
    :catch_d
    move-exception v0

    .line 3527
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "RemoteException when preloading recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3529
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_c
.end method

.method private readConfigurationDependentBehaviors()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1423
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 1425
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ltz v0, :cond_1a

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-le v0, v4, :cond_1c

    .line 1427
    :cond_1a
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 1430
    :cond_1c
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ne v0, v3, :cond_31

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1432
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 1435
    :cond_31
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 1437
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-ltz v0, :cond_48

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-le v0, v3, :cond_4a

    .line 1439
    :cond_48
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 1441
    :cond_4a
    return-void
.end method

.method private readRotation(I)I
    .registers 4
    .param p1, "resID"    # I

    .prologue
    .line 1738
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_9} :catch_17

    move-result v0

    .line 1739
    .local v0, "rotation":I
    sparse-switch v0, :sswitch_data_1a

    .line 1752
    .end local v0    # "rotation":I
    :goto_d
    const/4 v1, -0x1

    :goto_e
    return v1

    .line 1741
    .restart local v0    # "rotation":I
    :sswitch_f
    const/4 v1, 0x0

    goto :goto_e

    .line 1743
    :sswitch_11
    const/4 v1, 0x1

    goto :goto_e

    .line 1745
    :sswitch_13
    const/4 v1, 0x2

    goto :goto_e

    .line 1747
    :sswitch_15
    const/4 v1, 0x3

    goto :goto_e

    .line 1749
    .end local v0    # "rotation":I
    :catch_17
    move-exception v1

    goto :goto_d

    .line 1739
    nop

    :sswitch_data_1a
    .sparse-switch
        0x0 -> :sswitch_f
        0x5a -> :sswitch_11
        0xb4 -> :sswitch_13
        0x10e -> :sswitch_15
    .end sparse-switch
.end method

.method private requestKidsQuickPanelOpen()V
    .registers 4

    .prologue
    .line 6316
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6317
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.kidsplat.quickpanel.PANEL_OPEN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6318
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6319
    return-void
.end method

.method private requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 3
    .param p1, "swipeTarget"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 6324
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;Z)V

    .line 6325
    return-void
.end method

.method private requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;Z)V
    .registers 8
    .param p1, "swipeTarget"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "force"    # Z

    .prologue
    .line 6331
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v3

    if-nez v3, :cond_14

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_14

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 6332
    :cond_14
    const-string v3, "WindowManager"

    const-string v4, "Not showing transient bar, becuase Factory mode"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6359
    :goto_1b
    return-void

    .line 6336
    :cond_1c
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 6337
    :try_start_23
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/BarController;->checkShowTransientBarLw()Z

    move-result v2

    .line 6338
    .local v2, "sb":Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/BarController;->checkShowTransientBarLw()Z

    move-result v1

    .line 6340
    .local v1, "nb":Z
    if-eqz p2, :cond_48

    .line 6341
    const/4 v2, 0x1

    .line 6342
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceTransientBars:Z

    .line 6347
    :goto_35
    if-nez v2, :cond_39

    if-eqz v1, :cond_65

    .line 6348
    :cond_39
    if-eqz v2, :cond_4c

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 6349
    .local v0, "barTarget":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_3d
    xor-int v3, v2, v1

    if-eqz v3, :cond_4f

    if-eq v0, p1, :cond_4f

    .line 6351
    monitor-exit v4

    goto :goto_1b

    .line 6358
    .end local v0    # "barTarget":Landroid/view/WindowManagerPolicy$WindowState;
    .end local v1    # "nb":Z
    .end local v2    # "sb":Z
    :catchall_45
    move-exception v3

    monitor-exit v4
    :try_end_47
    .catchall {:try_start_23 .. :try_end_47} :catchall_45

    throw v3

    .line 6344
    .restart local v1    # "nb":Z
    .restart local v2    # "sb":Z
    :cond_48
    const/4 v3, 0x0

    :try_start_49
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceTransientBars:Z

    goto :goto_35

    .line 6348
    :cond_4c
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_3d

    .line 6353
    .restart local v0    # "barTarget":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_4f
    if-eqz v2, :cond_56

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/BarController;->showTransient()V

    .line 6354
    :cond_56
    if-eqz v1, :cond_5d

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/BarController;->showTransient()V

    .line 6355
    :cond_5d
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->confirmCurrentPrompt()V

    .line 6356
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    .line 6358
    .end local v0    # "barTarget":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_65
    monitor-exit v4
    :try_end_66
    .catchall {:try_start_49 .. :try_end_66} :catchall_45

    goto :goto_1b
.end method

.method static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 6596
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 6598
    :try_start_6
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_e

    .line 6602
    :cond_d
    :goto_d
    return-void

    .line 6599
    :catch_e
    move-exception v0

    goto :goto_d
.end method

.method private shouldMoveUpWindow(Landroid/view/WindowManagerPolicy$WindowState;Z)Z
    .registers 11
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "isPortrait"    # Z

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 7332
    if-nez p1, :cond_6

    .line 7363
    :cond_5
    :goto_5
    return v4

    .line 7334
    :cond_6
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-lez v5, :cond_5

    .line 7337
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    .line 7338
    .local v1, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_56

    if-eqz v1, :cond_56

    .line 7339
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackBoxBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 7340
    .local v2, "winHeight":I
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int v0, v5, v6

    .line 7343
    .local v0, "heightUpperInputMethod":I
    if-eqz p2, :cond_5c

    .line 7344
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    and-int/lit8 v5, v5, 0x3

    if-eqz v5, :cond_56

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 7356
    .end local v0    # "heightUpperInputMethod":I
    .end local v2    # "winHeight":I
    :cond_56
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v5, :cond_77

    move v4, v3

    .line 7357
    goto :goto_5

    .line 7348
    .restart local v0    # "heightUpperInputMethod":I
    .restart local v2    # "winHeight":I
    :cond_5c
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    if-ne v5, v3, :cond_56

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    if-eq v5, v7, :cond_56

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_56

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v5

    if-nez v5, :cond_56

    goto :goto_5

    .line 7358
    .end local v0    # "heightUpperInputMethod":I
    .end local v2    # "winHeight":I
    :cond_77
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    if-ne v5, v7, :cond_5

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v5

    if-nez v5, :cond_5

    .line 7360
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGroupId()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getGroupId()I

    move-result v6

    if-ne v5, v6, :cond_98

    :goto_95
    move v4, v3

    goto/16 :goto_5

    :cond_98
    move v3, v4

    goto :goto_95
.end method

.method private takeScreenshot()V
    .registers 9

    .prologue
    .line 5482
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v4

    .line 5483
    :try_start_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v3, :cond_9

    .line 5484
    monitor-exit v4

    .line 5533
    :goto_8
    return-void

    .line 5486
    :cond_9
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.systemui"

    const-string v5, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5488
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 5489
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5490
    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$17;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$17;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 5527
    .local v1, "conn":Landroid/content/ServiceConnection;
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v1, v5, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 5529
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 5530
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotTimeout:Ljava/lang/Runnable;

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5532
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

.method private toggleRecentApps()V
    .registers 5

    .prologue
    .line 3550
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3551
    const-string v2, "recentapps"

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 3553
    :try_start_8
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 3554
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_11

    .line 3555
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    .line 3562
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_11
    :goto_11
    return-void

    .line 3557
    :catch_12
    move-exception v0

    .line 3558
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "RemoteException when showing recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3560
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_11
.end method

.method private updateEasyOneHandState(ZZ)V
    .registers 9
    .param p1, "isLeftHand"    # Z
    .param p2, "isShow"    # Z

    .prologue
    .line 8199
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

    .line 8202
    :try_start_22
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.easyonehand"

    const-string v4, "com.sec.android.easyonehand.EasyOneHandService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8203
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.action.EASYONEHAND_SERVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 8204
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "LeftHandMode"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8206
    if-eqz p2, :cond_43

    .line 8207
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 8215
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_42
    return-void

    .line 8209
    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_43
    const-string v3, "ForceHide"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8210
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_4e} :catch_4f

    goto :goto_42

    .line 8212
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_4f
    move-exception v1

    .line 8213
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "WindowManager"

    const-string v4, "Exception updateEasyOneHandService: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_42
.end method

.method private updateLockScreenTimeout()V
    .registers 7

    .prologue
    .line 7069
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v2

    .line 7070
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    if-eqz v1, :cond_2c

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_2c

    const/4 v0, 0x1

    .line 7072
    .local v0, "enable":Z
    :goto_18
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eq v1, v0, :cond_2a

    .line 7073
    if-eqz v0, :cond_2e

    .line 7075
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7080
    :goto_28
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    .line 7082
    :cond_2a
    monitor-exit v2

    .line 7083
    return-void

    .line 7070
    .end local v0    # "enable":Z
    :cond_2c
    const/4 v0, 0x0

    goto :goto_18

    .line 7078
    .restart local v0    # "enable":Z
    :cond_2e
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_28

    .line 7082
    .end local v0    # "enable":Z
    :catchall_36
    move-exception v1

    monitor-exit v2
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw v1
.end method

.method private updateSystemBarsLw(Landroid/view/WindowManagerPolicy$WindowState;II)I
    .registers 24
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "oldVis"    # I
    .param p3, "vis"    # I

    .prologue
    .line 7569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    if-eqz v18, :cond_187

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v18

    if-eqz v18, :cond_187

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    move/from16 v18, v0

    if-nez v18, :cond_187

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 7573
    .local v15, "transWin":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSViewCover:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    if-eqz v18, :cond_48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSViewCover:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v18

    if-eqz v18, :cond_48

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCover:I

    move/from16 v18, v0

    if-nez v18, :cond_48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    if-nez v18, :cond_48

    .line 7575
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSViewCover:Landroid/view/WindowManagerPolicy$WindowState;

    .line 7578
    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p3

    move/from16 v2, p2

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/internal/policy/impl/BarController;->applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    move-result p3

    .line 7579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p3

    move/from16 v2, p2

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/internal/policy/impl/BarController;->applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    move-result p3

    .line 7582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    if-eqz v18, :cond_88

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_88

    .line 7584
    or-int/lit8 p3, p3, 0x4

    .line 7589
    :cond_88
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v18, v0

    const/16 v19, 0x7d0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_18d

    const/4 v14, 0x1

    .line 7590
    .local v14, "statusBarHasFocus":Z
    :goto_9b
    if-eqz v14, :cond_a9

    .line 7591
    const v6, -0x3fffe7fa

    .line 7597
    .local v6, "flags":I
    const v18, 0x3fffe7f9

    and-int v18, v18, p3

    and-int v19, p2, v6

    or-int p3, v18, v19

    .line 7600
    .end local v6    # "flags":I
    :cond_a9
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v18

    if-nez v18, :cond_b4

    .line 7601
    const v18, 0x3fffffff

    and-int p3, p3, v18

    .line 7605
    :cond_b4
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x1000

    move/from16 v18, v0

    if-eqz v18, :cond_190

    const/4 v10, 0x1

    .line 7607
    .local v10, "immersiveSticky":Z
    :goto_bd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    if-eqz v18, :cond_193

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x400

    move/from16 v18, v0

    if-eqz v18, :cond_193

    const/4 v9, 0x1

    .line 7611
    .local v9, "hideStatusBarWM":Z
    :goto_de
    and-int/lit8 v18, p3, 0x4

    if-eqz v18, :cond_196

    const/4 v8, 0x1

    .line 7613
    .local v8, "hideStatusBarSysui":Z
    :goto_e3
    and-int/lit8 v18, p3, 0x2

    if-eqz v18, :cond_199

    const/4 v7, 0x1

    .line 7616
    .local v7, "hideNavBarSysui":Z
    :goto_e8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    if-eqz v18, :cond_19c

    if-nez v9, :cond_108

    if-eqz v8, :cond_f6

    if-nez v10, :cond_108

    :cond_f6
    if-nez v14, :cond_108

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceTransientBars:Z

    move/from16 v18, v0

    if-nez v18, :cond_108

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarTransient:Z

    move/from16 v18, v0

    if-eqz v18, :cond_19c

    :cond_108
    const/16 v17, 0x1

    .line 7624
    .local v17, "transientStatusBarAllowed":Z
    :goto_10a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1a0

    if-eqz v7, :cond_1a0

    if-eqz v10, :cond_1a0

    const/16 v16, 0x1

    .line 7628
    .local v16, "transientNavBarAllowed":Z
    :goto_118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/BarController;->isTransientShowRequested()Z

    move-result v18

    if-eqz v18, :cond_1a4

    if-nez v17, :cond_1a4

    if-eqz v8, :cond_1a4

    const/4 v5, 0x1

    .line 7630
    .local v5, "denyTransientStatus":Z
    :goto_129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/BarController;->isTransientShowRequested()Z

    move-result v18

    if-eqz v18, :cond_1a6

    if-nez v16, :cond_1a6

    const/4 v4, 0x1

    .line 7632
    .local v4, "denyTransientNav":Z
    :goto_138
    if-nez v5, :cond_13c

    if-eqz v4, :cond_13f

    .line 7634
    :cond_13c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->clearClearableFlagsLw()V

    .line 7637
    :cond_13f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/BarController;->updateVisibilityLw(ZII)I

    move-result p3

    .line 7640
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isImmersiveMode(I)Z

    move-result v12

    .line 7641
    .local v12, "oldImmersiveMode":Z
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isImmersiveMode(I)Z

    move-result v11

    .line 7642
    .local v11, "newImmersiveMode":Z
    if-eqz p1, :cond_174

    if-eq v12, v11, :cond_174

    .line 7643
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v13

    .line 7644
    .local v13, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v11}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->immersiveModeChanged(Ljava/lang/String;Z)V

    .line 7647
    .end local v13    # "pkg":Ljava/lang/String;
    :cond_174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/BarController;->updateVisibilityLw(ZII)I

    move-result p3

    .line 7649
    return p3

    .line 7569
    .end local v4    # "denyTransientNav":Z
    .end local v5    # "denyTransientStatus":Z
    .end local v7    # "hideNavBarSysui":Z
    .end local v8    # "hideStatusBarSysui":Z
    .end local v9    # "hideStatusBarWM":Z
    .end local v10    # "immersiveSticky":Z
    .end local v11    # "newImmersiveMode":Z
    .end local v12    # "oldImmersiveMode":Z
    .end local v14    # "statusBarHasFocus":Z
    .end local v15    # "transWin":Landroid/view/WindowManagerPolicy$WindowState;
    .end local v16    # "transientNavBarAllowed":Z
    .end local v17    # "transientStatusBarAllowed":Z
    :cond_187
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    goto/16 :goto_20

    .line 7589
    .restart local v15    # "transWin":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_18d
    const/4 v14, 0x0

    goto/16 :goto_9b

    .line 7605
    .restart local v14    # "statusBarHasFocus":Z
    :cond_190
    const/4 v10, 0x0

    goto/16 :goto_bd

    .line 7607
    .restart local v10    # "immersiveSticky":Z
    :cond_193
    const/4 v9, 0x0

    goto/16 :goto_de

    .line 7611
    .restart local v9    # "hideStatusBarWM":Z
    :cond_196
    const/4 v8, 0x0

    goto/16 :goto_e3

    .line 7613
    .restart local v8    # "hideStatusBarSysui":Z
    :cond_199
    const/4 v7, 0x0

    goto/16 :goto_e8

    .line 7616
    .restart local v7    # "hideNavBarSysui":Z
    :cond_19c
    const/16 v17, 0x0

    goto/16 :goto_10a

    .line 7624
    .restart local v17    # "transientStatusBarAllowed":Z
    :cond_1a0
    const/16 v16, 0x0

    goto/16 :goto_118

    .line 7628
    .restart local v16    # "transientNavBarAllowed":Z
    :cond_1a4
    const/4 v5, 0x0

    goto :goto_129

    .line 7630
    .restart local v5    # "denyTransientStatus":Z
    :cond_1a6
    const/4 v4, 0x0

    goto :goto_138
.end method

.method private updateSystemUiVisibilityLw()I
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 7519
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_b

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 7520
    .local v4, "win":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_7
    if-nez v4, :cond_e

    move v0, v5

    .line 7564
    :goto_a
    return v0

    .line 7519
    .end local v4    # "win":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_b
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_7

    .line 7523
    .restart local v4    # "win":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_e
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7d4

    if-ne v6, v7, :cond_1f

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1f

    move v0, v5

    .line 7530
    goto :goto_a

    .line 7533
    :cond_1f
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v6, v7

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    xor-int/lit8 v7, v7, -0x1

    and-int v2, v6, v7

    .line 7536
    .local v2, "tmpVisibility":I
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBar:Z

    if-eqz v6, :cond_3c

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBarLayer:I

    if-ge v6, v7, :cond_3c

    .line 7537
    and-int/lit8 v2, v2, -0x8

    .line 7539
    :cond_3c
    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-direct {p0, v4, v6, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemBarsLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    move-result v3

    .line 7540
    .local v3, "visibility":I
    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    xor-int v0, v3, v6

    .line 7541
    .local v0, "diff":I
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4, v6}, Landroid/view/WindowManagerPolicy$WindowState;->getNeedsMenuLw(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v1

    .line 7542
    .local v1, "needsMenu":Z
    if-nez v0, :cond_5c

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    if-ne v6, v1, :cond_5c

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v7

    if-ne v6, v7, :cond_5c

    move v0, v5

    .line 7544
    goto :goto_a

    .line 7546
    :cond_5c
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    .line 7547
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    .line 7548
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    .line 7549
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/internal/policy/impl/PhoneWindowManager$36;

    invoke-direct {v6, p0, v3, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$36;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;IZ)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a
.end method

.method private waitForKeyguard(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .registers 4
    .param p1, "screenOnListener"    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .prologue
    .line 6460
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_1b

    .line 6461
    if-eqz p1, :cond_11

    .line 6462
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$27;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$27;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->onScreenTurnedOn(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$ShowListener;)V

    .line 6476
    :goto_10
    return-void

    .line 6470
    :cond_11
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->onScreenTurnedOn(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$ShowListener;)V

    .line 6475
    :goto_17
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishScreenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    goto :goto_10

    .line 6473
    :cond_1b
    const-string v0, "WindowManager"

    const-string v1, "No keyguard interface!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method private waitForKeyguardWindowDrawn(Landroid/os/IBinder;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .registers 6
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "screenOnListener"    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .prologue
    .line 6480
    if-eqz p1, :cond_1b

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-nez v0, :cond_1b

    .line 6482
    :try_start_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$28;

    invoke-direct {v1, p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$28;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->waitForWindowDrawn(Landroid/os/IBinder;Landroid/os/IRemoteCallback;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 6501
    :goto_13
    return-void

    .line 6492
    :cond_14
    const-string v0, "WindowManager"

    const-string v1, "No lock screen! waitForWindowDrawn false"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1b} :catch_37

    .line 6499
    :cond_1b
    :goto_1b
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No lock screen! windowToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6500
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishScreenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    goto :goto_13

    .line 6494
    :catch_37
    move-exception v0

    goto :goto_1b
.end method


# virtual methods
.method public addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILcom/samsung/android/multiwindow/MultiWindowStyle;)Landroid/view/View;
    .registers 24
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "theme"    # I
    .param p4, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p5, "nonLocalizedLabel"    # Ljava/lang/CharSequence;
    .param p6, "labelRes"    # I
    .param p7, "icon"    # I
    .param p8, "logo"    # I
    .param p9, "windowFlags"    # I
    .param p10, "mwStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 2194
    if-nez p2, :cond_4

    .line 2195
    const/4 v10, 0x0

    .line 2307
    :cond_3
    :goto_3
    return-object v10

    .line 2198
    :cond_4
    const/4 v9, 0x0

    .line 2199
    .local v9, "wm":Landroid/view/WindowManager;
    const/4 v7, 0x0

    .line 2202
    .local v7, "view":Landroid/view/View;
    :try_start_6
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2206
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getThemeResId()I
    :try_end_b
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_6 .. :try_end_b} :catch_125
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_b} :catch_153
    .catchall {:try_start_6 .. :try_end_b} :catchall_17f

    move-result v10

    move/from16 v0, p3

    if-ne v0, v10, :cond_12

    if-eqz p6, :cond_1c

    .line 2208
    :cond_12
    const/4 v10, 0x0

    :try_start_13
    invoke-virtual {v2, p2, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 2209
    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/content/Context;->setTheme(I)V
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_1c} :catch_193
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_13 .. :try_end_1c} :catch_125
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_1c} :catch_153
    .catchall {:try_start_13 .. :try_end_1c} :catchall_17f

    .line 2215
    :cond_1c
    :goto_1c
    :try_start_1c
    invoke-static {v2}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v8

    .line 2216
    .local v8, "win":Landroid/view/Window;
    invoke-virtual {v8}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v6

    .line 2217
    .local v6, "ta":Landroid/content/res/TypedArray;
    const/16 v10, 0xc

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-nez v10, :cond_36

    const/16 v10, 0xe

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_33
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1c .. :try_end_33} :catch_125
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_33} :catch_153
    .catchall {:try_start_1c .. :try_end_33} :catchall_17f

    move-result v10

    if-eqz v10, :cond_4a

    .line 2221
    :cond_36
    const/4 v10, 0x0

    .line 2301
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-nez v11, :cond_3

    .line 2302
    const-string v11, "WindowManager"

    const-string v12, "view not successfully added to wm, removing view"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2303
    invoke-interface {v9, v7}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_3

    .line 2224
    :cond_4a
    :try_start_4a
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 2225
    .local v5, "r":Landroid/content/res/Resources;
    move/from16 v0, p6

    move-object/from16 v1, p5

    invoke-virtual {v5, v0, v1}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 2227
    const/4 v10, 0x3

    invoke-virtual {v8, v10}, Landroid/view/Window;->setType(I)V

    .line 2233
    or-int/lit8 v10, p9, 0x10

    or-int/lit8 v10, v10, 0x8

    const/high16 v11, 0x20000

    or-int/2addr v10, v11

    or-int/lit8 v11, p9, 0x10

    or-int/lit8 v11, v11, 0x8

    const/high16 v12, 0x20000

    or-int/2addr v11, v12

    invoke-virtual {v8, v10, v11}, Landroid/view/Window;->setFlags(II)V

    .line 2243
    move/from16 v0, p7

    invoke-virtual {v8, v0}, Landroid/view/Window;->setDefaultIcon(I)V

    .line 2244
    move/from16 v0, p8

    invoke-virtual {v8, v0}, Landroid/view/Window;->setDefaultLogo(I)V

    .line 2246
    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-virtual {v8, v10, v11}, Landroid/view/Window;->setLayout(II)V

    .line 2249
    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 2250
    .local v4, "params":Landroid/view/WindowManager$LayoutParams;
    iput-object p1, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2251
    iput-object p2, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2252
    invoke-virtual {v8}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v10

    const/16 v11, 0x8

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2254
    iget v10, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v10, v10, 0x1

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2256
    iget v10, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v10, v10, 0x10

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2258
    invoke-virtual/range {p4 .. p4}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v10

    if-nez v10, :cond_aa

    .line 2259
    iget v10, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v10, v10, 0x80

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2262
    :cond_aa
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Starting "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2265
    invoke-virtual/range {p10 .. p10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I
    :try_end_c3
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_4a .. :try_end_c3} :catch_125
    .catch Ljava/lang/RuntimeException; {:try_start_4a .. :try_end_c3} :catch_153
    .catchall {:try_start_4a .. :try_end_c3} :catchall_17f

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_dc

    .line 2266
    const/4 v10, 0x0

    .line 2301
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-nez v11, :cond_3

    .line 2302
    const-string v11, "WindowManager"

    const-string v12, "view not successfully added to wm, removing view"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2303
    invoke-interface {v9, v7}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto/16 :goto_3

    .line 2269
    :cond_dc
    :try_start_dc
    const-string v10, "window"

    invoke-virtual {v2, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Landroid/view/WindowManager;

    move-object v9, v0

    .line 2270
    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    .line 2272
    invoke-virtual {v8}, Landroid/view/Window;->isFloating()Z
    :try_end_ed
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_dc .. :try_end_ed} :catch_125
    .catch Ljava/lang/RuntimeException; {:try_start_dc .. :try_end_ed} :catch_153
    .catchall {:try_start_dc .. :try_end_ed} :catchall_17f

    move-result v10

    if-eqz v10, :cond_105

    .line 2279
    const/4 v10, 0x0

    .line 2301
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-nez v11, :cond_3

    .line 2302
    const-string v11, "WindowManager"

    const-string v12, "view not successfully added to wm, removing view"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2303
    invoke-interface {v9, v7}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto/16 :goto_3

    .line 2287
    :cond_105
    :try_start_105
    invoke-interface {v9, v7, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2291
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    :try_end_10b
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_105 .. :try_end_10b} :catch_125
    .catch Ljava/lang/RuntimeException; {:try_start_105 .. :try_end_10b} :catch_153
    .catchall {:try_start_105 .. :try_end_10b} :catchall_17f

    move-result-object v10

    if-eqz v10, :cond_123

    move-object v10, v7

    .line 2301
    :goto_10f
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-nez v11, :cond_3

    .line 2302
    const-string v11, "WindowManager"

    const-string v12, "view not successfully added to wm, removing view"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2303
    invoke-interface {v9, v7}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto/16 :goto_3

    .line 2291
    :cond_123
    const/4 v10, 0x0

    goto :goto_10f

    .line 2292
    .end local v2    # "context":Landroid/content/Context;
    .end local v4    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "r":Landroid/content/res/Resources;
    .end local v6    # "ta":Landroid/content/res/TypedArray;
    .end local v8    # "win":Landroid/view/Window;
    :catch_125
    move-exception v3

    .line 2294
    .local v3, "e":Landroid/view/WindowManager$BadTokenException;
    :try_start_126
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " already running, starting window not displayed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13e
    .catchall {:try_start_126 .. :try_end_13e} :catchall_17f

    .line 2301
    if-eqz v7, :cond_150

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-nez v10, :cond_150

    .line 2302
    const-string v10, "WindowManager"

    const-string v11, "view not successfully added to wm, removing view"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2303
    invoke-interface {v9, v7}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 2307
    .end local v3    # "e":Landroid/view/WindowManager$BadTokenException;
    :cond_150
    :goto_150
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 2295
    :catch_153
    move-exception v3

    .line 2299
    .local v3, "e":Ljava/lang/RuntimeException;
    :try_start_154
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " failed creating starting window"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_16c
    .catchall {:try_start_154 .. :try_end_16c} :catchall_17f

    .line 2301
    if-eqz v7, :cond_150

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-nez v10, :cond_150

    .line 2302
    const-string v10, "WindowManager"

    const-string v11, "view not successfully added to wm, removing view"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2303
    invoke-interface {v9, v7}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_150

    .line 2301
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :catchall_17f
    move-exception v10

    if-eqz v7, :cond_192

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-nez v11, :cond_192

    .line 2302
    const-string v11, "WindowManager"

    const-string v12, "view not successfully added to wm, removing view"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2303
    invoke-interface {v9, v7}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_192
    throw v10

    .line 2210
    .restart local v2    # "context":Landroid/content/Context;
    :catch_193
    move-exception v10

    goto/16 :goto_1c
.end method

.method public adjustConfigurationLw(Landroid/content/res/Configuration;II)V
    .registers 7
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "keyboardPresence"    # I
    .param p3, "navigationPresence"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1942
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_39

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHaveBuiltInKeyboard:Z

    .line 1944
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    .line 1945
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readLidState()V

    .line 1946
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyLidSwitchState()V

    .line 1948
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, v1, :cond_20

    if-ne p2, v1, :cond_28

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1951
    :cond_20
    iput v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1952
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    if-nez v0, :cond_28

    .line 1953
    iput v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1957
    :cond_28
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v0, v1, :cond_36

    if-ne p3, v1, :cond_38

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1960
    :cond_36
    iput v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 1962
    :cond_38
    return-void

    .line 1942
    :cond_39
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public adjustSystemUiVisibilityLw(I)I
    .registers 4
    .param p1, "visibility"    # I

    .prologue
    .line 3683
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/policy/impl/BarController;->adjustSystemUiVisibilityLw(II)V

    .line 3684
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/policy/impl/BarController;->adjustSystemUiVisibilityLw(II)V

    .line 3688
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 3691
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
    .line 1888
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_1e

    .line 1901
    :goto_5
    return-void

    .line 1892
    :sswitch_6
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x18

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1894
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_5

    .line 1897
    :sswitch_15
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, 0x10100

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_5

    .line 1888
    :sswitch_data_1e
    .sparse-switch
        0x7d6 -> :sswitch_6
        0x7df -> :sswitch_6
        0x832 -> :sswitch_15
    .end sparse-switch
.end method

.method public allowAppAnimationsLw()Z
    .registers 2

    .prologue
    .line 5295
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_14
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    if-eqz v0, :cond_1a

    .line 5298
    :cond_18
    const/4 v0, 0x0

    .line 5300
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x1

    goto :goto_19
.end method

.method public applyCoverSwitchState(ZZ)Z
    .registers 8
    .param p1, "coverOpen"    # Z
    .param p2, "isBoot"    # Z

    .prologue
    const/4 v2, 0x1

    .line 7849
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsSupportFlipCover:Z

    if-nez v3, :cond_b

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsSupportSViewCover:Z

    if-nez v3, :cond_b

    .line 7850
    const/4 v2, 0x0

    .line 7869
    :cond_a
    :goto_a
    return v2

    .line 7852
    :cond_b
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isSupportAndAttachedSViewCover()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 7853
    if-eqz p1, :cond_21

    .line 7854
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->dismissCoverUIOnNextActivity()V

    .line 7855
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_21

    .line 7856
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3, v2}, Landroid/view/WindowManagerPolicy$WindowState;->disableHideSViewCoverOnce(Z)V

    .line 7861
    :cond_21
    :try_start_21
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getCoverManager()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    .line 7862
    .local v0, "cm":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v0, :cond_a

    .line 7863
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/cover/ICoverManager;->updateCoverSwitchState(ZZ)V

    .line 7864
    invoke-interface {v0}, Lcom/samsung/android/cover/ICoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_30} :catch_31

    goto :goto_a

    .line 7866
    .end local v0    # "cm":Lcom/samsung/android/cover/ICoverManager;
    :catch_31
    move-exception v1

    .line 7867
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v4, "RemoteException in applyCoverSwitchState: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method

.method public applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .registers 14
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v10, 0x3

    const/4 v7, -0x1

    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v3, 0x1

    .line 4916
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v4, :cond_13

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v4, v4, 0x20

    if-nez v4, :cond_1f

    :cond_13
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_2b

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7db

    if-ne v4, v6, :cond_2b

    .line 4919
    :cond_1f
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBarLayer:I

    if-gez v4, :cond_2b

    .line 4920
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBar:Z

    .line 4921
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBarLayer:I

    .line 4924
    :cond_2b
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v4, :cond_104

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v4

    if-eqz v4, :cond_104

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isGoneForLayoutLw()Z

    move-result v4

    if-nez v4, :cond_104

    .line 4926
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_49

    .line 4927
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7d4

    if-ne v4, v6, :cond_187

    .line 4928
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    .line 4937
    :cond_49
    :goto_49
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7d4

    if-ne v4, v6, :cond_51

    .line 4938
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingLockscreen:Z

    .line 4940
    :cond_51
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v4, v3, :cond_5b

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x63

    if-le v4, v6, :cond_67

    :cond_5b
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isWearableHMTSupported()Z

    move-result v4

    if-eqz v4, :cond_18f

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7ef

    if-ne v4, v6, :cond_18f

    :cond_67
    move v0, v3

    .line 4943
    .local v0, "applyWindow":Z
    :goto_68
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7e7

    if-ne v4, v6, :cond_81

    .line 4946
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamingLockscreen:Z

    if-eqz v4, :cond_7e

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_81

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasDrawnLw()Z

    move-result v4

    if-eqz v4, :cond_81

    .line 4948
    :cond_7e
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    .line 4949
    const/4 v0, 0x1

    .line 4952
    :cond_81
    if-eqz v0, :cond_104

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v4, :cond_104

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v4, :cond_104

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v4, v7, :cond_104

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v4, v7, :cond_104

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    if-eq v4, v5, :cond_104

    .line 4962
    sget v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentUser:I

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v4, v6, :cond_b1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v4

    if-eqz v4, :cond_b1

    .line 4963
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 4966
    :cond_b1
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x80000

    and-int/2addr v4, v6

    if-eqz v4, :cond_db

    .line 4968
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    .line 4969
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    .line 4971
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x200000

    and-int/2addr v4, v6

    if-eqz v4, :cond_db

    iget-wide v6, p2, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-gez v4, :cond_db

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_db

    .line 4978
    const-wide/16 v6, 0x146a

    iput-wide v6, p2, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 4979
    const-wide/16 v6, 0x0

    iput-wide v6, p2, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 4983
    :cond_db
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x400000

    and-int/2addr v4, v6

    if-eqz v4, :cond_fc

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    if-nez v4, :cond_fc

    .line 4986
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v4, p1, :cond_192

    move v4, v5

    :goto_eb
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    .line 4988
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 4989
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingLockscreen:Z

    if-eqz v4, :cond_195

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v4

    if-eqz v4, :cond_195

    move v4, v3

    :goto_fa
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    .line 4991
    :cond_fc
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_104

    .line 4992
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    .line 4998
    .end local v0    # "applyWindow":Z
    :cond_104
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isSupportAndAttachedSViewCover()Z

    move-result v4

    if-eqz v4, :cond_156

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v4, v4, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v4, :cond_156

    .line 4999
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreenByCover:Z

    .line 5000
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v4, :cond_150

    .line 5001
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v4, v3, :cond_198

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x63

    if-gt v4, v6, :cond_198

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x80000

    and-int/2addr v4, v6

    if-eqz v4, :cond_198

    move v0, v3

    .line 5004
    .restart local v0    # "applyWindow":Z
    :goto_128
    if-eqz v0, :cond_150

    .line 5005
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getCoverMode()I

    move-result v2

    if-ne v2, v3, :cond_19a

    .line 5006
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCover:I

    .line 5007
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5008
    sget-boolean v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_150

    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Hide sview cover always : SViewCoverWindow = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5018
    .end local v0    # "applyWindow":Z
    :cond_150
    :goto_150
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreenByCover:Z

    if-eqz v2, :cond_156

    .line 5019
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    .line 5025
    :cond_156
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    .line 5026
    .local v1, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v2, :cond_174

    .line 5027
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v2, v3, :cond_16a

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v2, v10, :cond_16a

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v2, v5, :cond_174

    :cond_16a
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    if-eq v2, v5, :cond_174

    .line 5029
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5030
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 5034
    :cond_174
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v2, p1, :cond_186

    .line 5035
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    if-ne v2, v3, :cond_1d2

    .line 5036
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v2

    if-ne v2, v10, :cond_1c7

    .line 5037
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneA:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5048
    :cond_186
    :goto_186
    return-void

    .line 4931
    .end local v1    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_187
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarTransient:Z

    if-nez v4, :cond_49

    .line 4933
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    goto/16 :goto_49

    :cond_18f
    move v0, v2

    .line 4940
    goto/16 :goto_68

    .restart local v0    # "applyWindow":Z
    :cond_192
    move v4, v3

    .line 4986
    goto/16 :goto_eb

    :cond_195
    move v4, v2

    .line 4989
    goto/16 :goto_fa

    .end local v0    # "applyWindow":Z
    :cond_198
    move v0, v2

    .line 5001
    goto :goto_128

    .line 5009
    .restart local v0    # "applyWindow":Z
    :cond_19a
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getCoverMode()I

    move-result v2

    if-ne v2, v5, :cond_150

    .line 5010
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->willBeHideSViewCoverOnce()Z

    move-result v2

    if-eqz v2, :cond_150

    .line 5011
    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCover:I

    .line 5012
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5013
    sget-boolean v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_150

    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Hide sview cover once : SViewCoverWindow = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_150

    .line 5039
    .end local v0    # "applyWindow":Z
    .restart local v1    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_1c7
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_186

    .line 5040
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneB:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_186

    .line 5042
    :cond_1d2
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    if-nez v2, :cond_186

    .line 5043
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneA:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5044
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneB:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_186
.end method

.method public beginLayoutLw(ZIII)V
    .registers 42
    .param p1, "isDefaultDisplay"    # Z
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I
    .param p4, "displayRotation"    # I

    .prologue
    .line 3740
    if-eqz p1, :cond_512

    .line 3741
    packed-switch p4, :pswitch_data_64e

    .line 3761
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    move/from16 v26, v0

    .line 3762
    .local v26, "overscanLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    move/from16 v28, v0

    .line 3763
    .local v28, "overscanTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    move/from16 v27, v0

    .line 3764
    .local v27, "overscanRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    move/from16 v25, v0

    .line 3773
    .local v25, "overscanBottom":I
    :goto_1d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    .line 3774
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    .line 3775
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    .line 3776
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    .line 3777
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemLeft:I

    .line 3778
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    .line 3779
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    .line 3780
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    .line 3781
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    .line 3782
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    .line 3783
    sub-int v2, p2, v26

    sub-int v2, v2, v27

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    .line 3784
    sub-int v2, p3, v28

    sub-int v2, v2, v25

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    .line 3785
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    .line 3786
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    .line 3787
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemGestures:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    iput v3, v2, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    .line 3788
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemGestures:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    iput v3, v2, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenHeight:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    .line 3789
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

    .line 3791
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

    .line 3793
    sub-int v2, p2, v27

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

    .line 3795
    sub-int v2, p3, v25

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

    .line 3797
    const/high16 v2, 0x10000000

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    .line 3798
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    .line 3801
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanBeForceHide:Z

    .line 3805
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->doesForceHideBySViewCover()Z

    move-result v2

    if-eqz v2, :cond_1df

    if-eqz p1, :cond_1df

    .line 3806
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canBeGetSViewCoverSize()Z

    move-result v2

    if-eqz v2, :cond_1df

    .line 3808
    packed-switch p4, :pswitch_data_658

    .line 3825
    const/4 v14, 0x0

    .local v14, "coverRight":I
    move v13, v14

    .line 3826
    .local v13, "coverLeft":I
    const/4 v15, 0x0

    .line 3827
    .local v15, "coverTop":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v2, v2, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    sub-int v12, p3, v2

    .line 3830
    .local v12, "coverBottom":I
    :goto_12d
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemLeft:I

    .line 3831
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    .line 3832
    sub-int v2, p2, v14

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    .line 3833
    sub-int v2, p3, v12

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    .line 3834
    add-int v2, v26, v13

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    .line 3835
    add-int v2, v28, v15

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    .line 3836
    sub-int v2, p2, v26

    sub-int v2, v2, v27

    sub-int/2addr v2, v13

    sub-int/2addr v2, v14

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    .line 3837
    sub-int v2, p3, v28

    sub-int v2, v2, v25

    sub-int/2addr v2, v15

    sub-int/2addr v2, v12

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    .line 3838
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    .line 3839
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    .line 3840
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    .line 3841
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    .line 3842
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

    .line 3844
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

    .line 3846
    sub-int v2, p2, v27

    sub-int/2addr v2, v14

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

    .line 3848
    sub-int v2, p3, v25

    sub-int/2addr v2, v12

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

    .line 3855
    .end local v12    # "coverBottom":I
    .end local v13    # "coverLeft":I
    .end local v14    # "coverRight":I
    .end local v15    # "coverTop":I
    :cond_1df
    sget-object v29, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 3856
    .local v29, "pf":Landroid/graphics/Rect;
    sget-object v17, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 3857
    .local v17, "df":Landroid/graphics/Rect;
    sget-object v24, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    .line 3858
    .local v24, "of":Landroid/graphics/Rect;
    sget-object v36, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 3859
    .local v36, "vf":Landroid/graphics/Rect;
    sget-object v16, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    .line 3860
    .local v16, "dcf":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, v36

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v24

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v29

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 3861
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, v36

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v24

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v29

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 3862
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, v36

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v24

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v29

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 3863
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, v36

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v24

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v29

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 3864
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->setEmpty()V

    .line 3866
    if-eqz p1, :cond_4b9

    .line 3869
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    move/from16 v32, v0

    .line 3870
    .local v32, "sysui":I
    and-int/lit8 v2, v32, 0x2

    if-nez v2, :cond_543

    const/16 v23, 0x1

    .line 3871
    .local v23, "navVisible":Z
    :goto_24a
    const/high16 v2, -0x80000000

    and-int v2, v2, v32

    if-eqz v2, :cond_547

    const/16 v22, 0x1

    .line 3872
    .local v22, "navTranslucent":Z
    :goto_252
    move/from16 v0, v32

    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_54b

    const/16 v18, 0x1

    .line 3873
    .local v18, "immersive":Z
    :goto_25a
    move/from16 v0, v32

    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_54f

    const/16 v19, 0x1

    .line 3874
    .local v19, "immersiveSticky":Z
    :goto_262
    if-nez v18, :cond_266

    if-eqz v19, :cond_553

    :cond_266
    const/16 v21, 0x1

    .line 3875
    .local v21, "navAllowedHidden":Z
    :goto_268
    if-nez v19, :cond_557

    const/4 v2, 0x1

    :goto_26b
    and-int v22, v22, v2

    .line 3876
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v2

    and-int v22, v22, v2

    .line 3882
    if-nez v23, :cond_277

    if-eqz v21, :cond_55a

    .line 3883
    :cond_277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    if-eqz v2, :cond_289

    .line 3884
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$FakeWindow;->dismiss()V

    .line 3885
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    .line 3897
    :cond_289
    :goto_289
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v2

    if-nez v2, :cond_583

    const/4 v2, 0x1

    :goto_290
    or-int v23, v23, v2

    .line 3899
    const/16 v35, 0x0

    .line 3900
    .local v35, "updateSysUiVisibility":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_360

    .line 3901
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/BarController;->isTransientShowing()Z

    move-result v34

    .line 3906
    .local v34, "transientNavBarShowing":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v2, :cond_2ae

    move/from16 v0, p2

    move/from16 v1, p3

    if-ge v0, v1, :cond_586

    :cond_2ae
    const/4 v2, 0x1

    :goto_2af
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    .line 3907
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v2, :cond_5c1

    .line 3909
    sub-int v2, p3, v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    aget v3, v3, p4

    sub-int v33, v2, v3

    .line 3911
    .local v33, "top":I
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    sub-int v4, p3, v25

    move/from16 v0, v33

    move/from16 v1, p2

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3912
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    .line 3913
    if-eqz v34, :cond_589

    .line 3914
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    .line 3924
    :goto_2e5
    if-eqz v23, :cond_305

    if-nez v22, :cond_305

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_305

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/BarController;->wasRecentlyTranslucent()Z

    move-result v2

    if-nez v2, :cond_305

    .line 3929
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    .line 3958
    .end local v33    # "top":I
    :cond_305
    :goto_305
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    .line 3959
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    .line 3960
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    .line 3961
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    .line 3962
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    .line 3964
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    move-object/from16 v8, v16

    invoke-interface/range {v2 .. v8}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3967
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/BarController;->checkHiddenLw()Z

    move-result v2

    if-eqz v2, :cond_360

    .line 3968
    const/16 v35, 0x1

    .line 3975
    .end local v34    # "transientNavBarShowing":Z
    :cond_360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_4b4

    .line 3977
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, v24

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v29

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 3978
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, v24

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v29

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 3979
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    add-int/2addr v2, v3

    move-object/from16 v0, v24

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v29

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 3980
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    add-int/2addr v2, v3

    move-object/from16 v0, v24

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v29

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 3982
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    move-object/from16 v0, v36

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 3983
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, v36

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 3984
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    move-object/from16 v0, v36

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 3985
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, v36

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 3987
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    .line 3990
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v3, v29

    move-object/from16 v4, v17

    move-object/from16 v5, v36

    move-object/from16 v6, v36

    move-object/from16 v7, v36

    move-object/from16 v8, v16

    invoke-interface/range {v2 .. v8}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3993
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    .line 3995
    const/high16 v2, 0x4000000

    and-int v2, v2, v32

    if-eqz v2, :cond_645

    const/16 v30, 0x1

    .line 3996
    .local v30, "statusBarTransient":Z
    :goto_404
    const/high16 v2, 0x40000000

    and-int v2, v2, v32

    if-eqz v2, :cond_649

    const/16 v31, 0x1

    .line 3997
    .local v31, "statusBarTranslucent":Z
    :goto_40c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v2

    and-int v31, v31, v2

    .line 4001
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_479

    if-nez v30, :cond_479

    .line 4005
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    .line 4008
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v2, :cond_449

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_449

    .line 4009
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    .line 4013
    :cond_449
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    .line 4014
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    .line 4015
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    .line 4016
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    .line 4025
    :cond_479
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_4a8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_4a8

    if-nez v30, :cond_4a8

    if-nez v31, :cond_4a8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/BarController;->wasRecentlyTranslucent()Z

    move-result v2

    if-nez v2, :cond_4a8

    .line 4031
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    .line 4033
    :cond_4a8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/BarController;->checkHiddenLw()Z

    move-result v2

    if-eqz v2, :cond_4b4

    .line 4034
    const/16 v35, 0x1

    .line 4037
    .end local v30    # "statusBarTransient":Z
    .end local v31    # "statusBarTranslucent":Z
    :cond_4b4
    if-eqz v35, :cond_4b9

    .line 4038
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    .line 4043
    .end local v18    # "immersive":Z
    .end local v19    # "immersiveSticky":Z
    .end local v21    # "navAllowedHidden":Z
    .end local v22    # "navTranslucent":Z
    .end local v23    # "navVisible":Z
    .end local v32    # "sysui":I
    .end local v35    # "updateSysUiVisibility":Z
    :cond_4b9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarTransient:Z

    .line 4044
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsIsolatedSplitUsed:Z

    .line 4046
    return-void

    .line 3743
    .end local v16    # "dcf":Landroid/graphics/Rect;
    .end local v17    # "df":Landroid/graphics/Rect;
    .end local v24    # "of":Landroid/graphics/Rect;
    .end local v25    # "overscanBottom":I
    .end local v26    # "overscanLeft":I
    .end local v27    # "overscanRight":I
    .end local v28    # "overscanTop":I
    .end local v29    # "pf":Landroid/graphics/Rect;
    .end local v36    # "vf":Landroid/graphics/Rect;
    :pswitch_4c4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    move/from16 v26, v0

    .line 3744
    .restart local v26    # "overscanLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    move/from16 v28, v0

    .line 3745
    .restart local v28    # "overscanTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    move/from16 v27, v0

    .line 3746
    .restart local v27    # "overscanRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    move/from16 v25, v0

    .line 3747
    .restart local v25    # "overscanBottom":I
    goto/16 :goto_1d

    .line 3749
    .end local v25    # "overscanBottom":I
    .end local v26    # "overscanLeft":I
    .end local v27    # "overscanRight":I
    .end local v28    # "overscanTop":I
    :pswitch_4de
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    move/from16 v26, v0

    .line 3750
    .restart local v26    # "overscanLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    move/from16 v28, v0

    .line 3751
    .restart local v28    # "overscanTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    move/from16 v27, v0

    .line 3752
    .restart local v27    # "overscanRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    move/from16 v25, v0

    .line 3753
    .restart local v25    # "overscanBottom":I
    goto/16 :goto_1d

    .line 3755
    .end local v25    # "overscanBottom":I
    .end local v26    # "overscanLeft":I
    .end local v27    # "overscanRight":I
    .end local v28    # "overscanTop":I
    :pswitch_4f8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    move/from16 v26, v0

    .line 3756
    .restart local v26    # "overscanLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    move/from16 v28, v0

    .line 3757
    .restart local v28    # "overscanTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    move/from16 v27, v0

    .line 3758
    .restart local v27    # "overscanRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    move/from16 v25, v0

    .line 3759
    .restart local v25    # "overscanBottom":I
    goto/16 :goto_1d

    .line 3768
    .end local v25    # "overscanBottom":I
    .end local v26    # "overscanLeft":I
    .end local v27    # "overscanRight":I
    .end local v28    # "overscanTop":I
    :cond_512
    const/16 v26, 0x0

    .line 3769
    .restart local v26    # "overscanLeft":I
    const/16 v28, 0x0

    .line 3770
    .restart local v28    # "overscanTop":I
    const/16 v27, 0x0

    .line 3771
    .restart local v27    # "overscanRight":I
    const/16 v25, 0x0

    .restart local v25    # "overscanBottom":I
    goto/16 :goto_1d

    .line 3810
    :pswitch_51c
    const/4 v13, 0x0

    .line 3811
    .restart local v13    # "coverLeft":I
    const/4 v12, 0x0

    .restart local v12    # "coverBottom":I
    move v15, v12

    .line 3812
    .restart local v15    # "coverTop":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v2, v2, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    sub-int v14, p2, v2

    .line 3813
    .restart local v14    # "coverRight":I
    goto/16 :goto_12d

    .line 3815
    .end local v12    # "coverBottom":I
    .end local v13    # "coverLeft":I
    .end local v14    # "coverRight":I
    .end local v15    # "coverTop":I
    :pswitch_529
    const/4 v14, 0x0

    .restart local v14    # "coverRight":I
    move v13, v14

    .line 3816
    .restart local v13    # "coverLeft":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v2, v2, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    sub-int v15, p3, v2

    .line 3817
    .restart local v15    # "coverTop":I
    const/4 v12, 0x0

    .line 3818
    .restart local v12    # "coverBottom":I
    goto/16 :goto_12d

    .line 3820
    .end local v12    # "coverBottom":I
    .end local v13    # "coverLeft":I
    .end local v14    # "coverRight":I
    .end local v15    # "coverTop":I
    :pswitch_536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v2, v2, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    sub-int v13, p2, v2

    .line 3821
    .restart local v13    # "coverLeft":I
    const/4 v12, 0x0

    .restart local v12    # "coverBottom":I
    move v15, v12

    .line 3822
    .restart local v15    # "coverTop":I
    const/4 v14, 0x0

    .line 3823
    .restart local v14    # "coverRight":I
    goto/16 :goto_12d

    .line 3870
    .end local v12    # "coverBottom":I
    .end local v13    # "coverLeft":I
    .end local v14    # "coverRight":I
    .end local v15    # "coverTop":I
    .restart local v16    # "dcf":Landroid/graphics/Rect;
    .restart local v17    # "df":Landroid/graphics/Rect;
    .restart local v24    # "of":Landroid/graphics/Rect;
    .restart local v29    # "pf":Landroid/graphics/Rect;
    .restart local v32    # "sysui":I
    .restart local v36    # "vf":Landroid/graphics/Rect;
    :cond_543
    const/16 v23, 0x0

    goto/16 :goto_24a

    .line 3871
    .restart local v23    # "navVisible":Z
    :cond_547
    const/16 v22, 0x0

    goto/16 :goto_252

    .line 3872
    .restart local v22    # "navTranslucent":Z
    :cond_54b
    const/16 v18, 0x0

    goto/16 :goto_25a

    .line 3873
    .restart local v18    # "immersive":Z
    :cond_54f
    const/16 v19, 0x0

    goto/16 :goto_262

    .line 3874
    .restart local v19    # "immersiveSticky":Z
    :cond_553
    const/16 v21, 0x0

    goto/16 :goto_268

    .line 3875
    .restart local v21    # "navAllowedHidden":Z
    :cond_557
    const/4 v2, 0x0

    goto/16 :goto_26b

    .line 3887
    :cond_55a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    if-nez v2, :cond_289

    .line 3888
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

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-interface/range {v2 .. v11}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->addFakeWindow(Landroid/os/Looper;Landroid/view/InputEventReceiver$Factory;Ljava/lang/String;IIIZZZ)Landroid/view/WindowManagerPolicy$FakeWindow;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    goto/16 :goto_289

    .line 3897
    :cond_583
    const/4 v2, 0x0

    goto/16 :goto_290

    .line 3906
    .restart local v34    # "transientNavBarShowing":Z
    .restart local v35    # "updateSysUiVisibility":Z
    :cond_586
    const/4 v2, 0x0

    goto/16 :goto_2af

    .line 3915
    .restart local v33    # "top":I
    :cond_589
    if-eqz v23, :cond_5b7

    .line 3916
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    .line 3917
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    .line 3918
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    .line 3919
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    goto/16 :goto_2e5

    .line 3922
    :cond_5b7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    goto/16 :goto_2e5

    .line 3933
    .end local v33    # "top":I
    :cond_5c1
    sub-int v2, p2, v27

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    aget v3, v3, p4

    sub-int v20, v2, v3

    .line 3935
    .local v20, "left":I
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    sub-int v4, p2, v27

    move/from16 v0, v20

    move/from16 v1, p3

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 3936
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    .line 3937
    if-eqz v34, :cond_60f

    .line 3938
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    .line 3948
    :goto_5ed
    if-eqz v23, :cond_305

    if-nez v22, :cond_305

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_305

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/BarController;->wasRecentlyTranslucent()Z

    move-result v2

    if-nez v2, :cond_305

    .line 3953
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    goto/16 :goto_305

    .line 3939
    :cond_60f
    if-eqz v23, :cond_63c

    .line 3940
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    .line 3941
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    .line 3942
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    .line 3943
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    goto :goto_5ed

    .line 3946
    :cond_63c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    goto :goto_5ed

    .line 3995
    .end local v20    # "left":I
    .end local v34    # "transientNavBarShowing":Z
    :cond_645
    const/16 v30, 0x0

    goto/16 :goto_404

    .line 3996
    .restart local v30    # "statusBarTransient":Z
    :cond_649
    const/16 v31, 0x0

    goto/16 :goto_40c

    .line 3741
    nop

    :pswitch_data_64e
    .packed-switch 0x1
        :pswitch_4c4
        :pswitch_4de
        :pswitch_4f8
    .end packed-switch

    .line 3808
    :pswitch_data_658
    .packed-switch 0x1
        :pswitch_51c
        :pswitch_529
        :pswitch_536
    .end packed-switch
.end method

.method public beginPostLayoutPolicyLw(II)V
    .registers 6
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 4887
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 4888
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    .line 4889
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    .line 4890
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBar:Z

    .line 4891
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBarLayer:I

    .line 4893
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    .line 4894
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    .line 4895
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    .line 4896
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingLockscreen:Z

    .line 4897
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    .line 4900
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 4901
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCover:I

    .line 4902
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreenByCover:Z

    .line 4906
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 4908
    return-void
.end method

.method public canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .registers 6
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v0, 0x0

    .line 2162
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x898

    if-eq v1, v2, :cond_d

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x899

    if-ne v1, v2, :cond_e

    .line 2182
    :cond_d
    :goto_d
    :sswitch_d
    return v0

    .line 2168
    :cond_e
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v1, :sswitch_data_16

    .line 2182
    const/4 v0, 0x1

    goto :goto_d

    .line 2168
    nop

    :sswitch_data_16
    .sparse-switch
        0x7d0 -> :sswitch_d
        0x7d4 -> :sswitch_d
        0x7dd -> :sswitch_d
        0x7e3 -> :sswitch_d
        0x7e7 -> :sswitch_d
        0x7e9 -> :sswitch_d
        0x7ed -> :sswitch_d
        0x832 -> :sswitch_d
        0x833 -> :sswitch_d
    .end sparse-switch
.end method

.method public canBeForceHiddenBySViewCover(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .registers 7
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 7811
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getCoverMode()I

    move-result v0

    .line 7812
    .local v0, "coverMode":I
    if-nez v0, :cond_f

    .line 7813
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v3, :sswitch_data_1c

    :cond_d
    move v1, v2

    .line 7830
    :goto_e
    :sswitch_e
    return v1

    .line 7823
    :cond_f
    const/4 v3, 0x2

    if-ne v0, v3, :cond_19

    .line 7824
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->willBeHideSViewCoverOnce()Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_e

    .line 7827
    :cond_19
    if-ne v0, v2, :cond_d

    goto :goto_e

    .line 7813
    :sswitch_data_1c
    .sparse-switch
        0x7d0 -> :sswitch_e
        0x7d4 -> :sswitch_e
        0x7dd -> :sswitch_e
        0x7e3 -> :sswitch_e
        0x7e4 -> :sswitch_e
        0x832 -> :sswitch_e
        0x833 -> :sswitch_e
    .end sparse-switch
.end method

.method public canMagnifyWindow(I)Z
    .registers 5
    .param p1, "windowType"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 7730
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportEasyOneHand()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 7731
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEasyOneHandEnabled:I

    if-lez v2, :cond_11

    .line 7732
    sparse-switch p1, :sswitch_data_16

    move v0, v1

    .line 7752
    :goto_10
    :sswitch_10
    return v0

    .line 7744
    :cond_11
    sparse-switch p1, :sswitch_data_24

    move v0, v1

    .line 7752
    goto :goto_10

    .line 7732
    :sswitch_data_16
    .sparse-switch
        0x7e9 -> :sswitch_10
        0x7eb -> :sswitch_10
        0x8ca -> :sswitch_10
    .end sparse-switch

    .line 7744
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
    .line 7925
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 7926
    return-void
.end method

.method public checkAddPermission(Landroid/view/WindowManager$LayoutParams;[I)I
    .registers 7
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "outAppOp"    # [I

    .prologue
    const/4 v2, 0x0

    .line 1758
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1760
    .local v1, "type":I
    const/4 v3, -0x1

    aput v3, p2, v2

    .line 1762
    const/16 v3, 0x7d0

    if-lt v1, v3, :cond_e

    const/16 v3, 0xbb7

    if-le v1, v3, :cond_f

    .line 1829
    :cond_e
    :goto_e
    return v2

    .line 1768
    :cond_f
    const/16 v3, 0xbb6

    if-eq v1, v3, :cond_e

    .line 1774
    const/16 v3, 0x8fc

    if-eq v1, v3, :cond_e

    .line 1779
    const/4 v0, 0x0

    .line 1780
    .local v0, "permission":Ljava/lang/String;
    sparse-switch v1, :sswitch_data_3a

    .line 1821
    :cond_1b
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    .line 1823
    :goto_1d
    :sswitch_1d
    if-eqz v0, :cond_e

    .line 1824
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_e

    .line 1826
    const/4 v2, -0x8

    goto :goto_e

    .line 1809
    :sswitch_29
    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 1810
    const/16 v3, 0x18

    aput v3, p2, v2

    goto :goto_1d

    .line 1813
    :sswitch_30
    const-string v0, "com.samsung.android.permission.BIND_KMS"

    .line 1814
    goto :goto_1d

    .line 1817
    :sswitch_33
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isWearableHMTSupported()Z

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_1d

    .line 1780
    :sswitch_data_3a
    .sparse-switch
        0x7d2 -> :sswitch_29
        0x7d3 -> :sswitch_29
        0x7d5 -> :sswitch_1d
        0x7d6 -> :sswitch_29
        0x7d7 -> :sswitch_29
        0x7da -> :sswitch_29
        0x7db -> :sswitch_1d
        0x7dd -> :sswitch_1d
        0x7e7 -> :sswitch_1d
        0x7ee -> :sswitch_1d
        0x7ef -> :sswitch_33
        0x7f0 -> :sswitch_33
        0x830 -> :sswitch_1d
        0x831 -> :sswitch_1d
        0x833 -> :sswitch_29
        0x834 -> :sswitch_1d
        0x835 -> :sswitch_1d
        0x8cb -> :sswitch_30
    .end sparse-switch
.end method

.method public checkShowToOwnerOnly(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 5
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v0, 0x1

    .line 1837
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v1, :sswitch_data_1a

    .line 1844
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_d

    .line 1881
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

    .line 1837
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
        0x7ed -> :sswitch_d
        0x7ee -> :sswitch_d
        0x832 -> :sswitch_d
        0x833 -> :sswitch_d
    .end sparse-switch
.end method

.method public closeMultiWindowTrayBar()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 7201
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_a

    .line 7218
    :cond_9
    :goto_9
    return v0

    .line 7204
    :cond_a
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 7208
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMWTrayOpen:Z

    if-eqz v1, :cond_9

    .line 7209
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$33;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$33;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7216
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public closeSystemWindows(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 7921
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 7922
    return-void
.end method

.method public createForceHideEnterAnimation(Z)Landroid/view/animation/Animation;
    .registers 4
    .param p1, "onWallpaper"    # Z

    .prologue
    .line 2569
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_c

    const v0, 0x10a0056

    :goto_7
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :cond_c
    const v0, 0x10a0053

    goto :goto_7
.end method

.method createHomeDockIntent()Landroid/content/Intent;
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 7134
    const/4 v2, 0x0

    .line 7139
    .local v2, "intent":Landroid/content/Intent;
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_e

    .line 7141
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    move-object v3, v2

    .line 7149
    .end local v2    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    :goto_a
    if-nez v3, :cond_17

    move-object v2, v3

    .line 7169
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v2    # "intent":Landroid/content/Intent;
    :goto_d
    return-object v4

    .line 7143
    :cond_e
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4b

    .line 7145
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    move-object v3, v2

    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    goto :goto_a

    .line 7153
    :cond_17
    const/4 v0, 0x0

    .line 7154
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const v6, 0x10080

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v5, v3, v6, v7}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 7158
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_2b

    .line 7159
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 7161
    :cond_2b
    if-eqz v0, :cond_49

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_49

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "android.dock_home"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 7164
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 7165
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v4, v2

    .line 7166
    goto :goto_d

    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_49
    move-object v2, v3

    .line 7169
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v2    # "intent":Landroid/content/Intent;
    goto :goto_d

    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :cond_4b
    move-object v3, v2

    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    goto :goto_a
.end method

.method public dismissKeyguardLw()V
    .registers 3

    .prologue
    .line 6572
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 6573
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$29;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$29;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6585
    :cond_16
    return-void
.end method

.method dispatchMediaKeyRepeatWithWakeLock(Landroid/view/KeyEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 6133
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 6135
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    or-int/lit16 v4, v4, 0x80

    invoke-static {p1, v1, v2, v3, v4}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    move-result-object v0

    .line 6141
    .local v0, "repeatEvent":Landroid/view/KeyEvent;
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 6142
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6143
    return-void
.end method

.method dispatchMediaKeyWithWakeLock(Landroid/view/KeyEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 6107
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    if-eqz v1, :cond_13

    .line 6112
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 6113
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 6114
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6117
    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 6119
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_38

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_38

    .line 6121
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 6123
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6125
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 6126
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6130
    .end local v0    # "msg":Landroid/os/Message;
    :goto_37
    return-void

    .line 6128
    :cond_38
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_37
.end method

.method dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 6146
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 6147
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 6148
    .local v0, "audioService":Landroid/media/IAudioService;
    if-eqz v0, :cond_f

    .line 6150
    :try_start_c
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->dispatchMediaKeyEventUnderWakelock(Landroid/view/KeyEvent;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 6156
    .end local v0    # "audioService":Landroid/media/IAudioService;
    :cond_f
    :goto_f
    return-void

    .line 6151
    .restart local v0    # "audioService":Landroid/media/IAudioService;
    :catch_10
    move-exception v1

    .line 6152
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
    .registers 28
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 3409
    const/16 v19, 0x0

    .line 3410
    .local v19, "fallbackEvent":Landroid/view/KeyEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x400

    if-nez v4, :cond_80

    .line 3411
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v21

    .line 3412
    .local v21, "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v22

    .line 3413
    .local v22, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v23

    .line 3414
    .local v23, "metaState":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_81

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_81

    const/16 v20, 0x1

    .line 3419
    .local v20, "initialDown":Z
    :goto_24
    if-eqz v20, :cond_84

    .line 3420
    invoke-virtual/range {v21 .. v23}, Landroid/view/KeyCharacterMap;->getFallbackAction(II)Landroid/view/KeyCharacterMap$FallbackAction;

    move-result-object v18

    .line 3425
    .local v18, "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    :goto_2a
    if-eqz v18, :cond_80

    .line 3431
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    or-int/lit16 v14, v4, 0x400

    .line 3432
    .local v14, "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    move-object/from16 v0, v18

    iget v9, v0, Landroid/view/KeyCharacterMap$FallbackAction;->keyCode:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    move-object/from16 v0, v18

    iget v11, v0, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v16

    const/16 v17, 0x0

    invoke-static/range {v4 .. v17}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v19

    .line 3439
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptFallback(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z

    move-result v4

    if-nez v4, :cond_73

    .line 3440
    invoke-virtual/range {v19 .. v19}, Landroid/view/KeyEvent;->recycle()V

    .line 3441
    const/16 v19, 0x0

    .line 3444
    :cond_73
    if-eqz v20, :cond_91

    .line 3445
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3460
    .end local v14    # "flags":I
    .end local v18    # "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    .end local v20    # "initialDown":Z
    .end local v21    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v22    # "keyCode":I
    .end local v23    # "metaState":I
    :cond_80
    :goto_80
    return-object v19

    .line 3414
    .restart local v21    # "kcm":Landroid/view/KeyCharacterMap;
    .restart local v22    # "keyCode":I
    .restart local v23    # "metaState":I
    :cond_81
    const/16 v20, 0x0

    goto :goto_24

    .line 3422
    .restart local v20    # "initialDown":Z
    :cond_84
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/KeyCharacterMap$FallbackAction;

    .restart local v18    # "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    goto :goto_2a

    .line 3446
    .restart local v14    # "flags":I
    :cond_91
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_80

    .line 3447
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 3448
    invoke-virtual/range {v18 .. v18}, Landroid/view/KeyCharacterMap$FallbackAction;->recycle()V

    goto :goto_80
.end method

.method public doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .registers 5
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 2156
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

.method public doesForceHideBySViewCover()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 7803
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isSupportAndAttachedSViewCover()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->canGlobalActionsShow()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 7804
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v1, v1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v1, :cond_16

    const/4 v0, 0x1

    .line 7806
    :cond_16
    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 7944
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSafeMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7945
    const-string v0, " mSystemReady="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7946
    const-string v0, " mSystemBooted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7947
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLidState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7948
    const-string v0, " mLidOpenRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7949
    const-string v0, " mCoverCloseRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverCloseRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7950
    const-string v0, " mHdmiPlugged="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7951
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    if-nez v0, :cond_58

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    if-nez v0, :cond_58

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    if-eqz v0, :cond_85

    .line 7953
    :cond_58
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7954
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7955
    const-string v0, " mResettingSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7956
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7957
    const-string v0, " mForceClearedSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7958
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7960
    :cond_85
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    if-eqz v0, :cond_96

    .line 7961
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastFocusNeedsMenu="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7962
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7964
    :cond_96
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUiMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7965
    const-string v0, " mDockMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7966
    const-string v0, " mCarDockRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7967
    const-string v0, " mDeskDockRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7968
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUserRotationMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7969
    const-string v0, " mUserRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7970
    const-string v0, " mAllowAllRotations="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7971
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCurrentAppOrientation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7972
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCarDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7973
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7974
    const-string v0, " mDeskDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7975
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7976
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLidKeyboardAccessibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7977
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7978
    const-string v0, " mLidNavigationAccessibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7979
    const-string v0, " mLidControlsSleep="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7980
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLongPressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7981
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7982
    const-string v0, " mHasSoftInput="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7983
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mScreenOnEarly="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7984
    const-string v0, " mScreenOnFully="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7985
    const-string v0, " mOrientationSensorEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7986
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mOverscanScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7987
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7988
    const-string v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7989
    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7990
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    if-nez v0, :cond_19a

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    if-nez v0, :cond_19a

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    if-nez v0, :cond_19a

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    if-eqz v0, :cond_1c5

    .line 7992
    :cond_19a
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mOverscan left="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7993
    const-string v0, " top="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7994
    const-string v0, " right="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7995
    const-string v0, " bottom="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7997
    :cond_1c5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRestrictedOverscanScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7998
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7999
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8000
    const-string v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8001
    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8002
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUnrestrictedScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8003
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8004
    const-string v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8005
    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8006
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRestrictedScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8007
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8008
    const-string v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8009
    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8010
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStableFullscreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8011
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8012
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8013
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8014
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStable=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8015
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8016
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8017
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8018
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSystem=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8019
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8020
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8021
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8022
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCur=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8023
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8024
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8025
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8026
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContent=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8027
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8028
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8029
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8030
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDock=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8031
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8032
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8033
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8034
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDockLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8035
    const-string v0, " mStatusBarLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8036
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mShowingLockscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingLockscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8037
    const-string v0, " mShowingDream="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8038
    const-string v0, " mDreamingLockscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamingLockscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8039
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_3af

    .line 8040
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastInputMethodWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8041
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8043
    :cond_3af
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_3c0

    .line 8044
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastInputMethodTargetWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8045
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8047
    :cond_3c0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_3d1

    .line 8048
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8049
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8051
    :cond_3d1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_3e2

    .line 8052
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNavigationBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8053
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8055
    :cond_3e2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_3f3

    .line 8056
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8057
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8059
    :cond_3f3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_404

    .line 8060
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFocusedWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8061
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8063
    :cond_404
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    if-eqz v0, :cond_415

    .line 8064
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFocusedApp="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8065
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8067
    :cond_415
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_426

    .line 8068
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mWinDismissingKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8069
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8071
    :cond_426
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_437

    .line 8072
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopFullscreenOpaqueWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8073
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8075
    :cond_437
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBar:Z

    if-eqz v0, :cond_452

    .line 8076
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForcingShowNavBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8077
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "mForcingShowNavBarLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8078
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBarLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8080
    :cond_452
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopIsFullscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8081
    const-string v0, " mHideLockScreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8082
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForceStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8083
    const-string v0, " mForceStatusBarFromKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8084
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8085
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDismissKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8086
    const-string v0, " mWinDismissingKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 8087
    const-string v0, " mHomePressed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8088
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAllowLockscreenWhenOn="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8089
    const-string v0, " mLockScreenTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8090
    const-string v0, " mLockScreenTimerActive="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8091
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEndcallBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8092
    const-string v0, " mIncallPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8093
    const-string v0, " mLongPressOnHomeBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8094
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLandscapeRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8095
    const-string v0, " mSeascapeRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8096
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPortraitRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8097
    const-string v0, " mUpsideDownRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8098
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDemoHdmiRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDemoHdmiRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 8099
    const-string v0, " mDemoHdmiRotationLock="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8100
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUndockedHdmiRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUndockedHdmiRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8101
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/policy/impl/BarController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 8102
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/policy/impl/BarController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 8104
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 8105
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;Landroid/content/Context;)V

    .line 8108
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsSupportFlipCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsSupportFlipCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8109
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsSupportSViewCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsSupportSViewCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8110
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHideSViewCoverWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8113
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEasyOneHandEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEasyOneHandEnabled:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8115
    return-void
.end method

.method public enableKeyguard(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 6530
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_9

    .line 6531
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setKeyguardEnabled(Z)V

    .line 6533
    :cond_9
    return-void
.end method

.method public enableScreenAfterBoot()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 7088
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readLidState()V

    .line 7089
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyLidSwitchState()V

    .line 7091
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getCoverState()I

    move-result v0

    if-ne v0, v1, :cond_17

    move v0, v1

    :goto_10
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyCoverSwitchState(ZZ)Z

    .line 7093
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 7094
    return-void

    .line 7091
    :cond_17
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public exitKeyguardSecurely(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
    .registers 3
    .param p1, "callback"    # Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .prologue
    .line 6537
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_9

    .line 6538
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 6540
    :cond_9
    return-void
.end method

.method public finishLayoutLw()V
    .registers 1

    .prologue
    .line 4881
    return-void
.end method

.method public finishPostLayoutPolicyLw()I
    .registers 11

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 5053
    const/4 v0, 0x0

    .line 5054
    .local v0, "changes":I
    const/4 v3, 0x0

    .line 5055
    .local v3, "topIsFullscreen":Z
    const/4 v2, 0x0

    .line 5057
    .local v2, "openByNotification":Z
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v7, :cond_12c

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 5065
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    :goto_10
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    if-nez v7, :cond_18

    .line 5066
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingLockscreen:Z

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamingLockscreen:Z

    .line 5069
    :cond_18
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v7, :cond_53

    .line 5073
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    if-nez v7, :cond_24

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    if-eqz v7, :cond_132

    .line 5075
    :cond_24
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v7, v5}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 5076
    or-int/lit8 v0, v0, 0x1

    .line 5078
    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifySystemUiVisibility(I)V

    .line 5082
    :cond_31
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v7, :cond_12f

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v7

    if-eqz v7, :cond_12f

    move v3, v5

    .line 5084
    :goto_3e
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    if-eqz v7, :cond_53

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/BarController;->isTransientShowing()Z

    move-result v7

    if-eqz v7, :cond_53

    .line 5085
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    iget v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-virtual {v7, v6, v8, v9}, Lcom/android/internal/policy/impl/BarController;->updateVisibilityLw(ZII)I

    .line 5148
    :cond_53
    :goto_53
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eq v7, v3, :cond_62

    .line 5149
    if-nez v3, :cond_5b

    .line 5151
    or-int/lit8 v0, v0, 0x1

    .line 5153
    :cond_5b
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    .line 5155
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v7, v3, v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->setOpenByNotification(ZZ)V

    .line 5161
    :cond_62
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v7, :cond_8e

    .line 5164
    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    if-eqz v7, :cond_191

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isSecure()Z

    move-result v7

    if-nez v7, :cond_191

    .line 5165
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4, v5}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 5166
    or-int/lit8 v0, v0, 0x7

    .line 5170
    :cond_7c
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 5171
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/internal/policy/impl/PhoneWindowManager$14;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$14;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v4, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5218
    :cond_8e
    :goto_8e
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v4

    const v7, -0x3ffffffa

    and-int/2addr v4, v7

    if-eqz v4, :cond_9a

    .line 5221
    or-int/lit8 v0, v0, 0x1

    .line 5225
    :cond_9a
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isSupportAndAttachedSViewCover()Z

    move-result v4

    if-eqz v4, :cond_d2

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v4, v4, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v4, :cond_d2

    .line 5226
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSViewCover:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_d2

    .line 5228
    const-string v4, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "finishPostLayoutPolicyLw: mHideSViewCover="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCover:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5231
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCover:I

    if-eqz v4, :cond_1e7

    .line 5232
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSViewCover:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4, v5}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v4

    if-eqz v4, :cond_d2

    .line 5233
    or-int/lit8 v0, v0, 0x1

    .line 5245
    :cond_d2
    :goto_d2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->needHideTrayBar()Z

    move-result v4

    if-eqz v4, :cond_1f3

    .line 5246
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_f5

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_f5

    .line 5247
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_f0

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-nez v4, :cond_f5

    .line 5248
    :cond_f0
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4, v5, v5, v5}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(ZZZ)Z

    .line 5257
    :cond_f5
    :goto_f5
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_122

    .line 5258
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_206

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    if-ne v4, v5, :cond_206

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v4

    if-nez v4, :cond_206

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsIsolatedSplitUsed:Z

    if-nez v4, :cond_206

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->isPreviewScaleEnabled()Z

    move-result v4

    if-nez v4, :cond_206

    .line 5262
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4, v6}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 5270
    :cond_122
    :goto_122
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5274
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 5275
    return v0

    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_12c
    move-object v1, v4

    .line 5057
    goto/16 :goto_10

    .restart local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_12f
    move v3, v6

    .line 5082
    goto/16 :goto_3e

    .line 5088
    :cond_132
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v7, :cond_53

    .line 5095
    iget v7, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v7, v7, 0x400

    if-nez v7, :cond_142

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_162

    :cond_142
    move v3, v5

    .line 5098
    :goto_143
    iget v7, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v7, v7, 0x2000

    if-nez v7, :cond_14d

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarTransient:Z

    if-eqz v7, :cond_164

    :cond_14d
    move v2, v5

    .line 5105
    :goto_14e
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/BarController;->isTransientShowing()Z

    move-result v7

    if-eqz v7, :cond_166

    .line 5106
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v7, v5}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    move-result v7

    if-eqz v7, :cond_53

    .line 5107
    or-int/lit8 v0, v0, 0x1

    goto/16 :goto_53

    :cond_162
    move v3, v6

    .line 5095
    goto :goto_143

    :cond_164
    move v2, v6

    .line 5098
    goto :goto_14e

    .line 5113
    :cond_166
    if-eqz v3, :cond_182

    .line 5115
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v7, v6}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    move-result v7

    if-eqz v7, :cond_53

    .line 5116
    or-int/lit8 v0, v0, 0x1

    .line 5118
    const/4 v7, 0x4

    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifySystemUiVisibility(I)V

    .line 5120
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/internal/policy/impl/PhoneWindowManager$13;

    invoke-direct {v8, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$13;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_53

    .line 5138
    :cond_182
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v7, v5}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    move-result v7

    if-eqz v7, :cond_53

    .line 5139
    or-int/lit8 v0, v0, 0x1

    .line 5141
    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifySystemUiVisibility(I)V

    goto/16 :goto_53

    .line 5178
    :cond_191
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-eqz v7, :cond_1b1

    .line 5179
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreenByCover:Z

    if-eqz v4, :cond_1af

    move v4, v6

    :goto_19c
    invoke-interface {v7, v4}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v4

    if-eqz v4, :cond_1a4

    .line 5183
    or-int/lit8 v0, v0, 0x7

    .line 5187
    :cond_1a4
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    if-nez v4, :cond_8e

    .line 5188
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setHidden(Z)V

    goto/16 :goto_8e

    :cond_1af
    move v4, v5

    .line 5179
    goto :goto_19c

    .line 5190
    :cond_1b1
    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    if-eqz v7, :cond_1d4

    .line 5192
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    if-ne v4, v5, :cond_8e

    .line 5194
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4, v5}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v4

    if-eqz v4, :cond_1c3

    .line 5195
    or-int/lit8 v0, v0, 0x7

    .line 5199
    :cond_1c3
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v4, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setHidden(Z)V

    .line 5200
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/internal/policy/impl/PhoneWindowManager$15;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$15;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v4, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_8e

    .line 5208
    :cond_1d4
    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5209
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4, v5}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v4

    if-eqz v4, :cond_1e0

    .line 5210
    or-int/lit8 v0, v0, 0x7

    .line 5214
    :cond_1e0
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v4, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setHidden(Z)V

    goto/16 :goto_8e

    .line 5236
    :cond_1e7
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSViewCover:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4, v5}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v4

    if-eqz v4, :cond_d2

    .line 5237
    or-int/lit8 v0, v0, 0x1

    goto/16 :goto_d2

    .line 5252
    :cond_1f3
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_f5

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-nez v4, :cond_f5

    .line 5253
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4, v5}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    goto/16 :goto_f5

    .line 5264
    :cond_206
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4, v6, v5, v5}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(ZZZ)Z

    goto/16 :goto_122
.end method

.method public focusChangedLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I
    .registers 5
    .param p1, "lastFocus"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "newFocus"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 5304
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5306
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->setFocusedWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 5308
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v0

    const v1, -0x3ffffffa

    and-int/2addr v0, v1

    if-eqz v0, :cond_15

    .line 5311
    const/4 v0, 0x1

    .line 5313
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public getAboveUniverseLayer()I
    .registers 2

    .prologue
    .line 2117
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
    .line 2151
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getNonDecorDisplayHeight(III)I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getConfigDisplayWidth(III)I
    .registers 5
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 2143
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

    .line 3697
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3698
    .local v2, "fl":I
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v5, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int v3, v4, v5

    .line 3700
    .local v3, "systemUiVisibility":I
    and-int v4, v2, v6

    if-ne v4, v6, :cond_8b

    .line 3703
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v4

    if-eqz v4, :cond_3d

    and-int/lit16 v4, v3, 0x200

    if-eqz v4, :cond_3d

    .line 3705
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int v1, v4, v5

    .line 3706
    .local v1, "availRight":I
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int v0, v4, v5

    .line 3711
    .local v0, "availBottom":I
    :goto_25
    and-int/lit16 v4, v3, 0x100

    if-eqz v4, :cond_5a

    .line 3712
    and-int/lit16 v4, v2, 0x400

    if-eqz v4, :cond_4a

    .line 3713
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    sub-int v7, v0, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 3733
    .end local v0    # "availBottom":I
    .end local v1    # "availRight":I
    :goto_3c
    return-void

    .line 3708
    :cond_3d
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int v1, v4, v5

    .line 3709
    .restart local v1    # "availRight":I
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int v0, v4, v5

    .restart local v0    # "availBottom":I
    goto :goto_25

    .line 3717
    :cond_4a
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    sub-int v7, v0, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3c

    .line 3720
    :cond_5a
    and-int/lit16 v4, v2, 0x400

    if-nez v4, :cond_63

    const/high16 v4, 0x2000000

    and-int/2addr v4, v2

    if-eqz v4, :cond_67

    .line 3721
    :cond_63
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_3c

    .line 3722
    :cond_67
    and-int/lit16 v4, v3, 0x404

    if-nez v4, :cond_7b

    .line 3724
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    sub-int v7, v0, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3c

    .line 3727
    :cond_7b
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    sub-int v7, v0, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3c

    .line 3732
    .end local v0    # "availBottom":I
    .end local v1    # "availRight":I
    :cond_8b
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_3c
.end method

.method public getContentRectLw(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 4058
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 4059
    return-void
.end method

.method public getFloatingWindowPadding()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 4835
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getGlobalSystemUiVisibility()I
    .registers 4

    .prologue
    .line 8154
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 8155
    const/4 v0, 0x4

    .line 8156
    .local v0, "visibility":I
    :try_start_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/BarController;->isTransientShowing()Z

    move-result v1

    if-nez v1, :cond_19

    .line 8157
    const/4 v0, 0x0

    .line 8158
    :cond_19
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifySystemUiVisibility(I)V

    .line 8160
    monitor-exit v2

    return v0

    .line 8161
    :catchall_1e
    move-exception v1

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public getMaxWallpaperLayer()I
    .registers 2

    .prologue
    .line 2112
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v0

    return v0
.end method

.method public getMinimizeSize()I
    .registers 2

    .prologue
    .line 4839
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMinimizeSize:I

    return v0
.end method

.method public getNonDecorDisplayHeight(III)I
    .registers 5
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 2132
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_f

    .line 2135
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v0, :cond_a

    if-ge p1, p2, :cond_f

    .line 2136
    :cond_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    aget v0, v0, p3

    sub-int/2addr p2, v0

    .line 2139
    .end local p2    # "fullHeight":I
    :cond_f
    return p2
.end method

.method public getNonDecorDisplayWidth(III)I
    .registers 5
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 2121
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_f

    .line 2124
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v0, :cond_f

    if-le p1, p2, :cond_f

    .line 2125
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    aget v0, v0, p3

    sub-int/2addr p1, v0

    .line 2128
    .end local p1    # "fullWidth":I
    :cond_f
    return p1
.end method

.method public getSViewCoverHeight(Landroid/view/DisplayInfo;)I
    .registers 3
    .param p1, "info"    # Landroid/view/DisplayInfo;

    .prologue
    .line 7882
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_9

    .line 7883
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 7885
    :goto_8
    return v0

    :cond_9
    iget v0, p1, Landroid/view/DisplayInfo;->appHeight:I

    goto :goto_8
.end method

.method public getSViewCoverWidth(Landroid/view/DisplayInfo;)I
    .registers 3
    .param p1, "info"    # Landroid/view/DisplayInfo;

    .prologue
    .line 7874
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_9

    .line 7875
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 7877
    :goto_8
    return v0

    :cond_9
    iget v0, p1, Landroid/view/DisplayInfo;->appWidth:I

    goto :goto_8
.end method

.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 3

    .prologue
    .line 780
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 781
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_13

    .line 782
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 785
    :cond_13
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v1

    return-object v0

    .line 786
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public getSystemDecorLayerLw()I
    .registers 2

    .prologue
    .line 4051
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    .line 4053
    :goto_a
    return v0

    .line 4052
    :cond_b
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    goto :goto_a

    .line 4053
    :cond_16
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getTopFullscreenOpaqueWindowState()Landroid/view/WindowManagerPolicy$WindowState;
    .registers 2

    .prologue
    .line 7901
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    return-object v0
.end method

.method public getUserRotationMode()I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 6845
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
    .line 7385
    :try_start_0
    const-string v1, "persist.sys.uts-test-mode"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_40

    .line 7387
    const-string v1, "WindowManager"

    const-string v2, "UTS-TEST-MODE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7404
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

    .line 7410
    .local v18, "result":I
    const/4 v1, 0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_76

    .line 7411
    const/4 v1, 0x0

    .line 7417
    .end local v18    # "result":I
    :goto_3f
    return v1

    .line 7389
    :cond_40
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->stopAppSwitches()V

    .line 7390
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows()V

    .line 7391
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v4

    .line 7392
    .local v4, "dock":Landroid/content/Intent;
    if-eqz v4, :cond_11

    .line 7393
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

    .line 7399
    .restart local v18    # "result":I
    const/4 v1, 0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_11

    .line 7400
    const/4 v1, 0x0

    goto :goto_3f

    .line 7413
    .end local v4    # "dock":Landroid/content/Intent;
    .end local v18    # "result":I
    :catch_75
    move-exception v1

    .line 7417
    :cond_76
    const/4 v1, 0x1

    goto :goto_3f
.end method

.method handleVolumeKey(II)V
    .registers 9
    .param p1, "stream"    # I
    .param p2, "keycode"    # I

    .prologue
    const/16 v5, 0x18

    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 5434
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 5435
    .local v0, "audioService":Landroid/media/IAudioService;
    if-nez v0, :cond_b

    .line 5464
    :goto_a
    return-void

    .line 5444
    :cond_b
    :try_start_b
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5445
    const/4 v4, 0x3

    if-ne p1, v4, :cond_26

    .line 5446
    if-ne p2, v5, :cond_24

    :goto_15
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1, v2, v3}, Landroid/media/IAudioService;->adjustLocalOrRemoteStreamVolume(IILjava/lang/String;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1e} :catch_33
    .catchall {:try_start_b .. :try_end_1e} :catchall_54

    .line 5462
    :goto_1e
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_a

    :cond_24
    move v2, v3

    .line 5446
    goto :goto_15

    .line 5452
    :cond_26
    if-ne p2, v5, :cond_52

    :goto_28
    const/4 v3, 0x0

    :try_start_29
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, p1, v2, v3, v4}, Landroid/media/IAudioService;->adjustStreamVolume(IIILjava/lang/String;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_32} :catch_33
    .catchall {:try_start_29 .. :try_end_32} :catchall_54

    goto :goto_1e

    .line 5459
    :catch_33
    move-exception v1

    .line 5460
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_34
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IAudioService.adjust*StreamVolume() threw RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_34 .. :try_end_4c} :catchall_54

    .line 5462
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_a

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_52
    move v2, v3

    .line 5452
    goto :goto_28

    .line 5462
    :catchall_54
    move-exception v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2
.end method

.method public hasNavigationBar()Z
    .registers 2

    .prologue
    .line 7682
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    return v0
.end method

.method public hideBootMessages()V
    .registers 3

    .prologue
    .line 7003
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$32;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$32;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7011
    return-void
.end method

.method public inKeyguardRestrictedKeyInputMode()Z
    .registers 2

    .prologue
    .line 6561
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 6562
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result v0

    goto :goto_5
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    .line 1197
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1198
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 1199
    iput-object p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 1200
    const-string v6, "1"

    const-string v7, "ro.config.headless"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    .line 1201
    new-instance v6, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 1202
    new-instance v6, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v6, p0, v7, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    .line 1204
    :try_start_29
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-interface {p2}, Landroid/view/IWindowManager;->getRotation()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->setCurrentRotation(I)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_32} :catch_329

    .line 1208
    :goto_32
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.sec.feature.multiwindow"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    .line 1209
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    .line 1210
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    const-string v7, "com.sec.android.app.FlashBarService"

    const-string v8, "com.sec.android.app.FlashBarService.MultiWindowTrayService"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1213
    new-instance v6, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v6, p0, v7}, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSettingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

    .line 1214
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSettingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;->observe()V

    .line 1215
    new-instance v6, Lcom/android/internal/policy/impl/ShortcutManager;

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v6, p1, v7}, Lcom/android/internal/policy/impl/ShortcutManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    .line 1216
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/ShortcutManager;->observe()V

    .line 1217
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0018

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    .line 1219
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    .line 1220
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const-string v7, "android.intent.category.HOME"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1221
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const/high16 v7, 0x10200000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1223
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    .line 1224
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    const-string v7, "android.intent.category.CAR_DOCK"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1225
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    const/high16 v7, 0x10200000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1227
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    .line 1228
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    const-string v7, "android.intent.category.DESK_DOCK"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1229
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    const/high16 v7, 0x10200000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1233
    const-string v6, "phone"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    iput-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1236
    const-string v6, "power"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    iput-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 1237
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v7, 0x1

    const-string v8, "PhoneWindowManager.mBroadcastWakeLock"

    invoke-virtual {v6, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1239
    const-string v6, "1"

    const-string v7, "ro.debuggable"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 1240
    const v6, 0x10e0014

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    .line 1243
    const v6, 0x10e0070

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverCloseRotation:I

    .line 1246
    const v6, 0x10e0016

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    .line 1248
    const v6, 0x10e0015

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    .line 1250
    const v6, 0x10e0017

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUndockedHdmiRotation:I

    .line 1252
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1110022

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    .line 1254
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1110021

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    .line 1256
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e001b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    .line 1258
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e001c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    .line 1260
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1110023

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    .line 1262
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x111002c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    .line 1264
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    .line 1267
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1268
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v6, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1269
    sget-object v6, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1270
    sget-object v6, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1271
    sget-object v6, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1272
    const-string v6, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1273
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v6, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 1274
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_1a9

    .line 1276
    const-string v6, "android.intent.extra.DOCK_STATE"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    .line 1279
    :cond_1a9
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1aa
    const/4 v6, 0x3

    if-ge v1, v6, :cond_1b7

    .line 1280
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->ALARM_STARTED:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1279
    add-int/lit8 v1, v1, 0x1

    goto :goto_1aa

    .line 1282
    :cond_1b7
    const/4 v1, 0x0

    :goto_1b8
    const/4 v6, 0x3

    if-ge v1, v6, :cond_1c5

    .line 1283
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->ALARM_STOPPED:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1282
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b8

    .line 1285
    :cond_1c5
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v6, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1288
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1289
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1290
    const-string v6, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1291
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v6, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1294
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.USER_SWITCHED"

    invoke-direct {v0, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1295
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v6, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1298
    new-instance v6, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;

    new-instance v7, Lcom/android/internal/policy/impl/PhoneWindowManager$8;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$8;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-direct {v6, p1, v7}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemGestures:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;

    .line 1343
    new-instance v6, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    .line 1344
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemGestures:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;

    invoke-interface {v6, v7}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 1347
    new-instance v3, Landroid/content/IntentFilter;

    const-string v6, "com.android.server.enterprise.kioskmode.REFRESH_HWKEY_CACHE"

    invoke-direct {v3, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1348
    .local v3, "kioskFilter":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockedHwKeysReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1351
    const-string v6, "vibrator"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Vibrator;

    iput-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    .line 1354
    new-instance v4, Landroid/content/IntentFilter;

    const-string v6, "org.codeaurora.intent.action.WIFI_DISPLAY_VIDEO"

    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1356
    .local v4, "wifiDisplayFilter":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWifiDisplayReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v5

    .line 1359
    .local v5, "wifidisplayIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x107001c

    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressVibePattern:[J

    .line 1361
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x107001d

    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    .line 1363
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x107001e

    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    .line 1365
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x107001f

    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    .line 1367
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1070020

    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 1370
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x111001e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordEnabled:Z

    .line 1373
    new-instance v6, Lcom/android/internal/policy/impl/GlobalKeyManager;

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/internal/policy/impl/GlobalKeyManager;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/internal/policy/impl/GlobalKeyManager;

    .line 1376
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.sec.feature.cover.flip"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsSupportFlipCover:Z

    .line 1378
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.sec.feature.cover.sview"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsSupportSViewCover:Z

    .line 1380
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsSupportFlipCover:Z

    if-nez v6, :cond_2b0

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsSupportSViewCover:Z

    if-eqz v6, :cond_2bd

    .line 1381
    :cond_2b0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getCoverManager()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    .line 1382
    new-instance v6, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v6}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 1387
    :cond_2bd
    new-instance v6, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-direct {v6}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;-><init>()V

    iput-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .line 1388
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-virtual {v6, v7, p0, v8, v9}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->init(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    .line 1392
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->initializeHdmiState()V

    .line 1394
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1395
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.USBHID_MOUSE_EVENT"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1396
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseConnectReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v6, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 1397
    if-eqz v2, :cond_313

    .line 1398
    const-string v6, "android.intent.extra.device_state"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseConnectedDock:I

    .line 1400
    const/4 v6, 0x1

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseConnectedDock:I

    if-ne v6, v7, :cond_320

    .line 1401
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    .line 1405
    :goto_2f5
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOldMouseDockedValue:Z

    .line 1406
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SmartDock Connected  :  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    :cond_313
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v6}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v6

    if-eqz v6, :cond_324

    .line 1411
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 1415
    :goto_31f
    return-void

    .line 1403
    :cond_320
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    goto :goto_2f5

    .line 1413
    :cond_324
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurnedOff(I)V

    goto :goto_31f

    .line 1205
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "i":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "kioskFilter":Landroid/content/IntentFilter;
    .end local v4    # "wifiDisplayFilter":Landroid/content/IntentFilter;
    .end local v5    # "wifidisplayIntent":Landroid/content/Intent;
    :catch_329
    move-exception v6

    goto/16 :goto_32
.end method

.method initializeHdmiState()V
    .registers 13

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 5382
    const/4 v4, 0x0

    .line 5384
    .local v4, "plugged":Z
    new-instance v9, Ljava/io/File;

    const-string v10, "/sys/devices/virtual/switch/hdmi/state"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3f

    .line 5385
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    const-string v10, "DEVPATH=/devices/virtual/switch/hdmi"

    invoke-virtual {v9, v10}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 5387
    const-string v2, "/sys/class/switch/hdmi/state"

    .line 5388
    .local v2, "filename":Ljava/lang/String;
    const/4 v5, 0x0

    .line 5390
    .local v5, "reader":Ljava/io/FileReader;
    :try_start_1a
    new-instance v6, Ljava/io/FileReader;

    const-string v9, "/sys/class/switch/hdmi/state"

    invoke-direct {v6, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_21} :catch_4e
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_21} :catch_6f
    .catchall {:try_start_1a .. :try_end_21} :catchall_90

    .line 5391
    .end local v5    # "reader":Ljava/io/FileReader;
    .local v6, "reader":Ljava/io/FileReader;
    const/16 v9, 0xf

    :try_start_23
    new-array v0, v9, [C

    .line 5392
    .local v0, "buf":[C
    invoke-virtual {v6, v0}, Ljava/io/FileReader;->read([C)I

    move-result v3

    .line 5393
    .local v3, "n":I
    if-le v3, v7, :cond_3a

    .line 5394
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

    .line 5401
    :cond_3a
    :goto_3a
    if-eqz v6, :cond_3f

    .line 5403
    :try_start_3c
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_9b

    .line 5411
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

    .line 5412
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-nez v9, :cond_99

    :goto_48
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setHdmiPlugged(Z)V

    .line 5413
    return-void

    .restart local v0    # "buf":[C
    .restart local v2    # "filename":Ljava/lang/String;
    .restart local v3    # "n":I
    .restart local v6    # "reader":Ljava/io/FileReader;
    :cond_4c
    move v4, v8

    .line 5394
    goto :goto_3a

    .line 5396
    .end local v0    # "buf":[C
    .end local v3    # "n":I
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :catch_4e
    move-exception v1

    .line 5397
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

    .line 5401
    if-eqz v5, :cond_3f

    .line 5403
    :try_start_69
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d

    goto :goto_3f

    .line 5404
    :catch_6d
    move-exception v9

    goto :goto_3f

    .line 5398
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_6f
    move-exception v1

    .line 5399
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

    .line 5401
    if-eqz v5, :cond_3f

    .line 5403
    :try_start_8a
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_8e

    goto :goto_3f

    .line 5404
    :catch_8e
    move-exception v9

    goto :goto_3f

    .line 5401
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    :catchall_90
    move-exception v7

    :goto_91
    if-eqz v5, :cond_96

    .line 5403
    :try_start_93
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_9d

    .line 5405
    :cond_96
    :goto_96
    throw v7

    .end local v2    # "filename":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/FileReader;
    :cond_97
    move v9, v8

    .line 5411
    goto :goto_42

    :cond_99
    move v7, v8

    .line 5412
    goto :goto_48

    .line 5404
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

    .line 5401
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catchall_9f
    move-exception v7

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    goto :goto_91

    .line 5398
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_a2
    move-exception v1

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    goto :goto_70

    .line 5396
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
    .registers 47
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 2674
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v26

    .line 2675
    .local v26, "keyguardOn":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v25

    .line 2676
    .local v25, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v33

    .line 2677
    .local v33, "repeatCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v29

    .line 2678
    .local v29, "metaState":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v19

    .line 2679
    .local v19, "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_53

    const/16 v17, 0x1

    .line 2680
    .local v17, "down":Z
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v13

    .line 2690
    .local v13, "canceled":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_60

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    if-eqz v3, :cond_60

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_60

    .line 2692
    const/16 v21, 0x1

    .line 2693
    .local v21, "isAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_56

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_56

    .line 2694
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v21

    .line 2698
    :goto_4e
    if-nez v21, :cond_60

    .line 2699
    const-wide/16 v5, -0x1

    .line 3392
    .end local v21    # "isAllowed":Z
    :goto_52
    return-wide v5

    .line 2679
    .end local v13    # "canceled":Z
    .end local v17    # "down":Z
    :cond_53
    const/16 v17, 0x0

    goto :goto_1c

    .line 2696
    .restart local v13    # "canceled":Z
    .restart local v17    # "down":Z
    .restart local v21    # "isAllowed":Z
    :cond_56
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v21

    goto :goto_4e

    .line 2730
    .end local v21    # "isAllowed":Z
    :cond_60
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v31

    .line 2731
    .local v31, "now":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v0, p2

    move-wide/from16 v1, v31

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getTimeoutTimeOfKeyCombination(Landroid/view/KeyEvent;J)J

    move-result-wide v38

    .line 2732
    .local v38, "timeoutTime":J
    cmp-long v3, v31, v38

    if-gez v3, :cond_77

    .line 2733
    sub-long v5, v38, v31

    goto :goto_52

    .line 2735
    :cond_77
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isConsumedKeyCombination(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_86

    .line 2736
    const-wide/16 v5, -0x1

    goto :goto_52

    .line 2741
    :cond_86
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isEnableAccessControl()Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 2742
    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_9b

    const-string v3, "WindowManager"

    const-string v5, "interceptKeyTi : Key was blocked by access control"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2743
    :cond_9b
    const-wide/16 v5, -0x1

    goto :goto_52

    .line 2748
    :cond_9e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v3

    if-eqz v3, :cond_e2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isBlockedKeyBySideSync(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_e2

    .line 2749
    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_de

    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "interceptKeyTi : Key was blocked by sidesync. keycode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

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

    .line 2750
    :cond_de
    const-wide/16 v5, -0x1

    goto/16 :goto_52

    .line 2758
    :cond_e2
    const/4 v3, 0x3

    move/from16 v0, v25

    if-ne v0, v3, :cond_3b2

    .line 2760
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v3, :cond_fd

    .line 2761
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v5, "enterprise_policy"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 2763
    :cond_fd
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v3, :cond_16e

    .line 2764
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    .line 2765
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getSecurityPolicy()Landroid/app/enterprise/SecurityPolicy;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSecPolicy:Landroid/app/enterprise/SecurityPolicy;

    .line 2766
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v27

    .line 2767
    .local v27, "lRestPolicy":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v27, :cond_14f

    .line 2768
    const/16 v21, 0x1

    .line 2769
    .restart local v21    # "isAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_147

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_147

    .line 2770
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/app/enterprise/RestrictionPolicy;->isHomeKeyEnabled(Z)Z

    move-result v21

    .line 2774
    :goto_13a
    if-nez v21, :cond_14f

    .line 2775
    const-string v3, "WindowManager"

    const-string v5, "home key disabled by edm"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2776
    const-wide/16 v5, -0x1

    goto/16 :goto_52

    .line 2772
    :cond_147
    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/app/enterprise/RestrictionPolicy;->isHomeKeyEnabled(Z)Z

    move-result v21

    goto :goto_13a

    .line 2779
    .end local v21    # "isAllowed":Z
    :cond_14f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v3}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v3

    if-gtz v3, :cond_163

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSecPolicy:Landroid/app/enterprise/SecurityPolicy;

    invoke-virtual {v3}, Landroid/app/enterprise/SecurityPolicy;->isDodBannerVisible()Z

    move-result v3

    if-eqz v3, :cond_16e

    .line 2781
    :cond_163
    const-string v3, "WindowManager"

    const-string v5, "home key disabled by either pwd policy OR DoD Banner"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2782
    const-wide/16 v5, -0x1

    goto/16 :goto_52

    .line 2788
    .end local v27    # "lRestPolicy":Landroid/app/enterprise/RestrictionPolicy;
    :cond_16e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v3

    if-eqz v3, :cond_188

    .line 2789
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->sendSystemKeyToSideSync(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_188

    .line 2791
    const-wide/16 v5, -0x1

    goto/16 :goto_52

    .line 2799
    :cond_188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isBlockHomeKey(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_19d

    .line 2800
    const-string v3, "WindowManager"

    const-string v5, "Home key is blocked by policy"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2801
    const-wide/16 v5, -0x1

    goto/16 :goto_52

    .line 2805
    :cond_19d
    if-eqz p1, :cond_1c1

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    .line 2806
    .local v12, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_1a3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSystemKeyEventRequested(I)Z

    move-result v3

    if-eqz v3, :cond_1c7

    .line 2807
    if-eqz v12, :cond_1c3

    iget v3, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7d0

    if-ne v3, v5, :cond_1c3

    .line 2808
    const-string v3, "homekey"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 2809
    const-wide/16 v5, 0x64

    goto/16 :goto_52

    .line 2805
    .end local v12    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_1c1
    const/4 v12, 0x0

    goto :goto_1a3

    .line 2812
    .restart local v12    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_1c3
    const-wide/16 v5, 0x0

    goto/16 :goto_52

    .line 2819
    :cond_1c7
    if-nez v17, :cond_2b9

    .line 2820
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPreloadRecentApps()V

    .line 2823
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    if-nez v3, :cond_1d6

    .line 2824
    const-wide/16 v5, -0x1

    goto/16 :goto_52

    .line 2827
    :cond_1d6
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 2828
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeConsumed:Z

    if-eqz v3, :cond_1ea

    .line 2829
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeConsumed:Z

    .line 2830
    const-wide/16 v5, -0x1

    goto/16 :goto_52

    .line 2833
    :cond_1ea
    if-eqz v13, :cond_1f7

    .line 2834
    const-string v3, "WindowManager"

    const-string v5, "Ignoring HOME; event canceled."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2835
    const-wide/16 v5, -0x1

    goto/16 :goto_52

    .line 2842
    :cond_1f7
    :try_start_1f7
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v37

    .line 2843
    .local v37, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v37, :cond_218

    invoke-interface/range {v37 .. v37}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_218

    .line 2844
    const-string v3, "WindowManager"

    const-string v5, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20a
    .catch Landroid/os/RemoteException; {:try_start_1f7 .. :try_end_20a} :catch_20e

    .line 2845
    const-wide/16 v5, -0x1

    goto/16 :goto_52

    .line 2847
    .end local v37    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :catch_20e
    move-exception v18

    .line 2848
    .local v18, "ex":Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v5, "RemoteException from getPhoneInterface()"

    move-object/from16 v0, v18

    invoke-static {v3, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2852
    .end local v18    # "ex":Landroid/os/RemoteException;
    :cond_218
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isVoIPRinging()Z

    move-result v23

    .line 2853
    .local v23, "isVoIPRinging":Z
    const/16 v22, 0x0

    .line 2854
    .local v22, "isAnyKeyMode":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "anykey_mode"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x1

    if-ge v3, v5, :cond_264

    .line 2856
    const/16 v22, 0x0

    .line 2861
    :goto_232
    if-eqz v23, :cond_23f

    .line 2862
    if-eqz v22, :cond_23f

    .line 2864
    :try_start_236
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v42

    .line 2865
    .local v42, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-eqz v42, :cond_267

    .line 2866
    invoke-interface/range {v42 .. v42}, Landroid/os/IVoIPInterface;->answerVoIPCall()Z
    :try_end_23f
    .catch Landroid/os/RemoteException; {:try_start_236 .. :try_end_23f} :catch_26f

    .line 2888
    .end local v42    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :cond_23f
    :goto_23f
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeTripleTapPending:Z

    if-eqz v3, :cond_27a

    .line 2889
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2890
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2892
    const-wide/16 v5, -0x1

    goto/16 :goto_52

    .line 2858
    :cond_264
    const/16 v22, 0x1

    goto :goto_232

    .line 2868
    .restart local v42    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :cond_267
    :try_start_267
    const-string v3, "WindowManager"

    const-string v5, "Unable to find IVoIPInterface interface"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26e
    .catch Landroid/os/RemoteException; {:try_start_267 .. :try_end_26e} :catch_26f

    goto :goto_23f

    .line 2870
    .end local v42    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :catch_26f
    move-exception v18

    .line 2871
    .restart local v18    # "ex":Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v5, "RemoteException from getVoIPInterfaceService()"

    move-object/from16 v0, v18

    invoke-static {v3, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23f

    .line 2893
    .end local v18    # "ex":Landroid/os/RemoteException;
    :cond_27a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDoubleTapOnHomeEnabled()Z

    move-result v3

    if-nez v3, :cond_28e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isTripleTapOnHomeEnabled()Z

    move-result v3

    if-eqz v3, :cond_2b2

    .line 2895
    :cond_28e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2896
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapPending:Z

    .line 2897
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2899
    const-wide/16 v5, -0x1

    goto/16 :goto_52

    .line 2903
    :cond_2b2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchHomeFromHotKey()V

    .line 2904
    const-wide/16 v5, -0x1

    goto/16 :goto_52

    .line 2908
    .end local v22    # "isAnyKeyMode":Z
    .end local v23    # "isVoIPRinging":Z
    :cond_2b9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->setFingerPrintPending()V

    .line 2912
    const/16 v34, 0x0

    .line 2918
    .local v34, "sendToKeyguard":Z
    if-eqz v12, :cond_314

    .line 2919
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v40, v0

    .line 2920
    .local v40, "type":I
    const/16 v3, 0x7d4

    move/from16 v0, v40

    if-eq v0, v3, :cond_2ec

    const/16 v3, 0x7ed

    move/from16 v0, v40

    if-eq v0, v3, :cond_2ec

    const/16 v3, 0x7d9

    move/from16 v0, v40

    if-eq v0, v3, :cond_2ec

    const/16 v3, 0x7e7

    move/from16 v0, v40

    if-eq v0, v3, :cond_2ec

    const/16 v3, 0x832

    move/from16 v0, v40

    if-eq v0, v3, :cond_2ec

    const/16 v3, 0x8cb

    move/from16 v0, v40

    if-ne v0, v3, :cond_2f4

    .line 2934
    :cond_2ec
    const/16 v3, 0x7d4

    move/from16 v0, v40

    if-ne v0, v3, :cond_30d

    .line 2935
    const/16 v34, 0x1

    .line 2941
    :cond_2f4
    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    array-length v0, v3

    move/from16 v41, v0

    .line 2942
    .local v41, "typeCount":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_2fb
    move/from16 v0, v20

    move/from16 v1, v41

    if-ge v0, v1, :cond_314

    .line 2943
    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v3, v3, v20

    move/from16 v0, v40

    if-ne v0, v3, :cond_311

    .line 2945
    const-wide/16 v5, -0x1

    goto/16 :goto_52

    .line 2937
    .end local v20    # "i":I
    .end local v41    # "typeCount":I
    :cond_30d
    const-wide/16 v5, 0x0

    goto/16 :goto_52

    .line 2942
    .restart local v20    # "i":I
    .restart local v41    # "typeCount":I
    :cond_311
    add-int/lit8 v20, v20, 0x1

    goto :goto_2fb

    .line 2951
    .end local v20    # "i":I
    .end local v40    # "type":I
    .end local v41    # "typeCount":I
    :cond_314
    if-nez v33, :cond_395

    .line 2954
    :try_start_316
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v37

    .line 2955
    .restart local v37    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v37, :cond_330

    invoke-interface/range {v37 .. v37}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_31f
    .catch Landroid/os/RemoteException; {:try_start_316 .. :try_end_31f} :catch_326

    move-result v3

    if-eqz v3, :cond_330

    .line 2956
    const-wide/16 v5, 0x0

    goto/16 :goto_52

    .line 2958
    .end local v37    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :catch_326
    move-exception v18

    .line 2959
    .restart local v18    # "ex":Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v5, "RemoteException from getTelephonyService()"

    move-object/from16 v0, v18

    invoke-static {v3, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2962
    .end local v18    # "ex":Landroid/os/RemoteException;
    :cond_330
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 2968
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapPending:Z

    if-eqz v3, :cond_369

    .line 2969
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapPending:Z

    .line 2970
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2973
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isTripleTapOnHomeEnabled()Z

    move-result v3

    if-eqz v3, :cond_360

    .line 2974
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeTripleTapPending:Z

    .line 2997
    :cond_35a
    :goto_35a
    if-eqz v34, :cond_3ae

    const-wide/16 v5, 0x0

    goto/16 :goto_52

    .line 2976
    :cond_360
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeConsumed:Z

    .line 2977
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleDoubleTapOnHome()V

    goto :goto_35a

    .line 2979
    :cond_369
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeTripleTapPending:Z

    if-eqz v3, :cond_383

    .line 2980
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeTripleTapPending:Z

    .line 2981
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2982
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleTripleTapOnHome()V

    goto :goto_35a

    .line 2984
    :cond_383
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v5, 0x1

    if-eq v3, v5, :cond_391

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_35a

    .line 2986
    :cond_391
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->preloadRecentApps()V

    goto :goto_35a

    .line 2988
    :cond_395
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_35a

    .line 2990
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeTripleTapPending:Z

    .line 2992
    if-nez v26, :cond_35a

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeConsumed:Z

    if-nez v3, :cond_35a

    .line 2993
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleLongPressOnHome()V

    goto :goto_35a

    .line 2999
    :cond_3ae
    const-wide/16 v5, -0x1

    goto/16 :goto_52

    .line 3000
    .end local v12    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v34    # "sendToKeyguard":Z
    :cond_3b2
    const/16 v3, 0x52

    move/from16 v0, v25

    if-ne v0, v3, :cond_4a4

    .line 3002
    const/4 v15, 0x1

    .line 3004
    .local v15, "chordBug":I
    if-eqz v17, :cond_3e2

    if-nez v33, :cond_3e2

    .line 3005
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    if-eqz v3, :cond_43f

    and-int/lit8 v3, v29, 0x1

    const/4 v5, 0x1

    if-ne v3, v5, :cond_43f

    .line 3006
    new-instance v4, Landroid/content/Intent;

    const-string v3, "android.intent.action.BUG_REPORT"

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3007
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

    .line 3009
    const-wide/16 v5, -0x1

    goto/16 :goto_52

    .line 3028
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_3e2
    if-eqz v17, :cond_491

    .line 3029
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->checkMenuLongPressIgnore()Z

    move-result v3

    if-eqz v3, :cond_485

    .line 3030
    const/4 v3, 0x7

    move/from16 v0, v33

    if-ne v0, v3, :cond_43f

    if-nez v13, :cond_43f

    .line 3031
    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_413

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

    .line 3033
    :cond_413
    const/16 v30, 0x0

    .line 3035
    .local v30, "multiWindowDisabled":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_430

    .line 3036
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v28

    .line 3038
    .local v28, "lpApp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v28, :cond_430

    .line 3039
    move-object/from16 v0, v28

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v5, 0x100000

    and-int/2addr v3, v5

    if-eqz v3, :cond_430

    .line 3040
    const/16 v30, 0x1

    .line 3045
    .end local v28    # "lpApp":Landroid/view/WindowManager$LayoutParams;
    :cond_430
    if-nez v30, :cond_43f

    .line 3046
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleLongPressOnMenu()V

    .line 3047
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->handleMenuLongPress()Z

    move-result v3

    if-eqz v3, :cond_43f

    .line 3288
    .end local v15    # "chordBug":I
    .end local v30    # "multiWindowDisabled":Z
    :cond_43f
    :goto_43f
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    if-eqz v3, :cond_729

    .line 3289
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v24

    .line 3290
    .local v24, "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual/range {v24 .. v25}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v3

    if-eqz v3, :cond_729

    .line 3291
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 3292
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 3293
    if-eqz v17, :cond_481

    if-nez v33, :cond_481

    if-nez v26, :cond_481

    .line 3294
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v29

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/internal/policy/impl/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v36

    .line 3295
    .local v36, "shortcutIntent":Landroid/content/Intent;
    if-eqz v36, :cond_70b

    .line 3296
    const/high16 v3, 0x10000000

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3298
    :try_start_476
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v36

    invoke-virtual {v3, v0, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_481
    .catch Landroid/content/ActivityNotFoundException; {:try_start_476 .. :try_end_481} :catch_6ea

    .line 3309
    .end local v36    # "shortcutIntent":Landroid/content/Intent;
    :cond_481
    :goto_481
    const-wide/16 v5, -0x1

    goto/16 :goto_52

    .line 3053
    .end local v24    # "kcm":Landroid/view/KeyCharacterMap;
    .restart local v15    # "chordBug":I
    :cond_485
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_43f

    .line 3054
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleLongPressOnMenu()V

    goto :goto_43f

    .line 3058
    :cond_491
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeMenuKeyUp:Z

    if-eqz v3, :cond_4a0

    .line 3059
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeMenuKeyUp:Z

    .line 3060
    const-wide/16 v5, -0x1

    goto/16 :goto_52

    .line 3063
    :cond_4a0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->closeMultiWindowTrayBar()Z

    goto :goto_43f

    .line 3067
    .end local v15    # "chordBug":I
    :cond_4a4
    const/16 v3, 0x54

    move/from16 v0, v25

    if-ne v0, v3, :cond_4d0

    .line 3071
    if-eqz v17, :cond_4bc

    .line 3072
    if-nez v33, :cond_4b8

    .line 3073
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 3074
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 3083
    :cond_4b8
    const-wide/16 v5, 0x0

    goto/16 :goto_52

    .line 3077
    :cond_4bc
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 3078
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    if-eqz v3, :cond_4b8

    .line 3079
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 3080
    const-wide/16 v5, -0x1

    goto/16 :goto_52

    .line 3084
    :cond_4d0
    const/16 v3, 0xbb

    move/from16 v0, v25

    if-eq v0, v3, :cond_4dc

    const/16 v3, 0xe0

    move/from16 v0, v25

    if-ne v0, v3, :cond_5b6

    .line 3086
    :cond_4dc
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v3, :cond_4f2

    .line 3087
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v5, "enterprise_policy"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 3089
    :cond_4f2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v3, :cond_52f

    .line 3090
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    .line 3091
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getSecurityPolicy()Landroid/app/enterprise/SecurityPolicy;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSecPolicy:Landroid/app/enterprise/SecurityPolicy;

    .line 3092
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v3}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v3

    if-gtz v3, :cond_524

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSecPolicy:Landroid/app/enterprise/SecurityPolicy;

    invoke-virtual {v3}, Landroid/app/enterprise/SecurityPolicy;->isDodBannerVisible()Z

    move-result v3

    if-eqz v3, :cond_52f

    .line 3094
    :cond_524
    const-string v3, "WindowManager"

    const-string v5, "recent apps key disabled by either pwd policy OR DoD Banner"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3095
    const-wide/16 v5, -0x1

    goto/16 :goto_52

    .line 3100
    :cond_52f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    const/16 v5, 0xbb

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSystemKeyEventRequested(I)Z

    move-result v3

    if-eqz v3, :cond_53f

    .line 3101
    const-wide/16 v5, 0x0

    goto/16 :goto_52

    .line 3111
    :cond_53f
    if-nez v26, :cond_548

    .line 3112
    if-eqz v17, :cond_59d

    .line 3113
    if-nez v33, :cond_54c

    .line 3114
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->preloadRecentApps()V

    .line 3146
    :cond_548
    :goto_548
    const-wide/16 v5, -0x1

    goto/16 :goto_52

    .line 3117
    :cond_54c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_548

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableMultiWindowUISetting:I

    if-eqz v3, :cond_548

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_548

    .line 3119
    const/4 v3, 0x7

    move/from16 v0, v33

    if-ne v0, v3, :cond_548

    if-nez v13, :cond_548

    .line 3120
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->closeMultiWindowTrayBar()Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeAppSwitchKeyUp:Z

    .line 3121
    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_58e

    .line 3122
    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MultiWindowTrayBar toggle / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeAppSwitchKeyUp:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3125
    :cond_58e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeAppSwitchKeyUp:Z

    if-nez v3, :cond_548

    .line 3126
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->toggleMultiWindowTray()Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeAppSwitchKeyUp:Z

    goto :goto_548

    .line 3134
    :cond_59d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeAppSwitchKeyUp:Z

    if-eqz v3, :cond_5ac

    .line 3135
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPreloadRecentApps()V

    .line 3136
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeAppSwitchKeyUp:Z

    goto :goto_548

    .line 3139
    :cond_5ac
    if-nez v13, :cond_5b2

    .line 3140
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->toggleRecentApps()V

    goto :goto_548

    .line 3142
    :cond_5b2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPreloadRecentApps()V

    goto :goto_548

    .line 3147
    :cond_5b6
    const/16 v3, 0xdb

    move/from16 v0, v25

    if-ne v0, v3, :cond_5eb

    .line 3148
    if-eqz v17, :cond_5d9

    .line 3149
    if-nez v33, :cond_5c9

    .line 3150
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    .line 3166
    :cond_5c5
    :goto_5c5
    const-wide/16 v5, -0x1

    goto/16 :goto_52

    .line 3151
    :cond_5c9
    const/4 v3, 0x1

    move/from16 v0, v33

    if-ne v0, v3, :cond_5c5

    .line 3152
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    .line 3153
    if-nez v26, :cond_5c5

    .line 3154
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchAssistLongPressAction()V

    goto :goto_5c5

    .line 3158
    :cond_5d9
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    if-eqz v3, :cond_5e5

    .line 3159
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    goto :goto_5c5

    .line 3161
    :cond_5e5
    if-nez v26, :cond_5c5

    .line 3162
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchAssistAction()V

    goto :goto_5c5

    .line 3167
    :cond_5eb
    const/16 v3, 0x78

    move/from16 v0, v25

    if-ne v0, v3, :cond_604

    .line 3168
    if-eqz v17, :cond_600

    if-nez v33, :cond_600

    .line 3169
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3171
    :cond_600
    const-wide/16 v5, -0x1

    goto/16 :goto_52

    .line 3211
    :cond_604
    const/4 v3, 0x4

    move/from16 v0, v25

    if-eq v0, v3, :cond_60f

    const/16 v3, 0x6f

    move/from16 v0, v25

    if-ne v0, v3, :cond_69b

    .line 3213
    :cond_60f
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isWearableHMTSupported()Z

    move-result v3

    if-eqz v3, :cond_62f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/16 v5, 0xb

    if-ne v3, v5, :cond_62f

    .line 3214
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move/from16 v0, v17

    move/from16 v1, v33

    invoke-virtual {v3, v0, v1, v13}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isHMTButtonClick(ZIZ)Z

    move-result v3

    if-eqz v3, :cond_62f

    .line 3215
    const-wide/16 v5, -0x1

    goto/16 :goto_52

    .line 3219
    :cond_62f
    if-eqz v17, :cond_665

    .line 3220
    if-eqz v33, :cond_43f

    .line 3228
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_43f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableMultiWindowUISetting:I

    if-eqz v3, :cond_43f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_43f

    .line 3229
    const/4 v3, 0x7

    move/from16 v0, v33

    if-ne v0, v3, :cond_659

    if-nez v13, :cond_659

    .line 3230
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->toggleMultiWindowTray()Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeBackKeyUp:Z

    .line 3231
    const-wide/16 v5, -0x1

    goto/16 :goto_52

    .line 3232
    :cond_659
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeBackKeyUp:Z

    if-eqz v3, :cond_43f

    if-lez v33, :cond_43f

    .line 3233
    const-wide/16 v5, -0x1

    goto/16 :goto_52

    .line 3240
    :cond_665
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_43f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableMultiWindowUISetting:I

    if-eqz v3, :cond_43f

    .line 3241
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeBackKeyUp:Z

    if-eqz v3, :cond_680

    .line 3242
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeBackKeyUp:Z

    .line 3243
    const-wide/16 v5, -0x1

    goto/16 :goto_52

    .line 3245
    :cond_680
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->closeMultiWindowTrayBar()Z

    move-result v3

    if-eqz v3, :cond_43f

    .line 3246
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 3247
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v3, "com.sec.android.intent.action.BACK_KEY"

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3248
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3249
    const-wide/16 v5, -0x1

    goto/16 :goto_52

    .line 3257
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_69b
    const/16 v3, 0x1a

    move/from16 v0, v25

    if-ne v0, v3, :cond_6da

    .line 3259
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v3

    if-eqz v3, :cond_6bb

    .line 3260
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->sendSystemKeyToSideSync(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_6bb

    .line 3261
    const-wide/16 v5, -0x1

    goto/16 :goto_52

    .line 3266
    :cond_6bb
    if-eqz p1, :cond_6d4

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    .line 3267
    .restart local v12    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_6c1
    if-eqz v12, :cond_6d6

    iget v3, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7d0

    if-ne v3, v5, :cond_6d6

    .line 3268
    const-string v3, "reason"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 3269
    const-wide/16 v5, 0x64

    goto/16 :goto_52

    .line 3266
    .end local v12    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_6d4
    const/4 v12, 0x0

    goto :goto_6c1

    .line 3272
    .restart local v12    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_6d6
    const-wide/16 v5, 0x0

    goto/16 :goto_52

    .line 3278
    .end local v12    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_6da
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_43f

    .line 3279
    const-wide/16 v5, -0x1

    goto/16 :goto_52

    .line 3299
    .restart local v24    # "kcm":Landroid/view/KeyCharacterMap;
    .restart local v36    # "shortcutIntent":Landroid/content/Intent;
    :catch_6ea
    move-exception v18

    .line 3300
    .local v18, "ex":Landroid/content/ActivityNotFoundException;
    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dropping shortcut key combination because the activity to which it is registered was not found: SEARCH+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v25 .. v25}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_481

    .line 3305
    .end local v18    # "ex":Landroid/content/ActivityNotFoundException;
    :cond_70b
    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dropping unregistered shortcut key combination: SEARCH+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v25 .. v25}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_481

    .line 3314
    .end local v24    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v36    # "shortcutIntent":Landroid/content/Intent;
    :cond_729
    if-eqz v17, :cond_788

    if-nez v33, :cond_788

    if-nez v26, :cond_788

    const/high16 v3, 0x10000

    and-int v3, v3, v29

    if-eqz v3, :cond_788

    .line 3316
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v24

    .line 3317
    .restart local v24    # "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual/range {v24 .. v25}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v3

    if-eqz v3, :cond_788

    .line 3318
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    const v5, -0x70001

    and-int v5, v5, v29

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v3, v0, v1, v5}, Lcom/android/internal/policy/impl/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v36

    .line 3321
    .restart local v36    # "shortcutIntent":Landroid/content/Intent;
    if-eqz v36, :cond_788

    .line 3322
    const/high16 v3, 0x10000000

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3324
    :try_start_759
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v36

    invoke-virtual {v3, v0, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_764
    .catch Landroid/content/ActivityNotFoundException; {:try_start_759 .. :try_end_764} :catch_768

    .line 3330
    :goto_764
    const-wide/16 v5, -0x1

    goto/16 :goto_52

    .line 3325
    :catch_768
    move-exception v18

    .line 3326
    .restart local v18    # "ex":Landroid/content/ActivityNotFoundException;
    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dropping shortcut key combination because the activity to which it is registered was not found: META+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v25 .. v25}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_764

    .line 3336
    .end local v18    # "ex":Landroid/content/ActivityNotFoundException;
    .end local v24    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v36    # "shortcutIntent":Landroid/content/Intent;
    :cond_788
    if-eqz v17, :cond_7da

    if-nez v33, :cond_7da

    if-nez v26, :cond_7da

    .line 3337
    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 3338
    .local v14, "category":Ljava/lang/String;
    if-eqz v14, :cond_7da

    .line 3339
    const-string v3, "android.intent.action.MAIN"

    invoke-static {v3, v14}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 3340
    .restart local v4    # "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3342
    :try_start_7a5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_7ae
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7a5 .. :try_end_7ae} :catch_7b2

    .line 3348
    :goto_7ae
    const-wide/16 v5, -0x1

    goto/16 :goto_52

    .line 3343
    :catch_7b2
    move-exception v18

    .line 3344
    .restart local v18    # "ex":Landroid/content/ActivityNotFoundException;
    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dropping application launch key because the activity to which it is registered was not found: keyCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

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

    goto :goto_7ae

    .line 3353
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v14    # "category":Ljava/lang/String;
    .end local v18    # "ex":Landroid/content/ActivityNotFoundException;
    :cond_7da
    if-eqz v17, :cond_817

    if-nez v33, :cond_817

    const/16 v3, 0x3d

    move/from16 v0, v25

    if-ne v0, v3, :cond_817

    .line 3354
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    if-nez v3, :cond_834

    if-nez v26, :cond_834

    .line 3355
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v3

    and-int/lit16 v0, v3, -0xc2

    move/from16 v35, v0

    .line 3356
    .local v35, "shiftlessModifiers":I
    const/4 v3, 0x2

    move/from16 v0, v35

    invoke-static {v0, v3}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v3

    if-nez v3, :cond_807

    const/high16 v3, 0x10000

    move/from16 v0, v35

    invoke-static {v0, v3}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v3

    if-eqz v3, :cond_834

    .line 3359
    :cond_807
    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    .line 3360
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showOrHideRecentAppsDialog(I)V

    .line 3361
    const-wide/16 v5, -0x1

    goto/16 :goto_52

    .line 3364
    .end local v35    # "shiftlessModifiers":I
    :cond_817
    if-nez v17, :cond_834

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    if-eqz v3, :cond_834

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    and-int v3, v3, v29

    if-nez v3, :cond_834

    .line 3366
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    .line 3367
    if-eqz v26, :cond_863

    const/4 v3, 0x2

    :goto_82f
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showOrHideRecentAppsDialog(I)V

    .line 3372
    :cond_834
    if-eqz v17, :cond_868

    if-nez v33, :cond_868

    const/16 v3, 0xcc

    move/from16 v0, v25

    if-eq v0, v3, :cond_84a

    const/16 v3, 0x3e

    move/from16 v0, v25

    if-ne v0, v3, :cond_868

    move/from16 v0, v29

    and-int/lit16 v3, v0, 0x7000

    if-eqz v3, :cond_868

    .line 3376
    :cond_84a
    move/from16 v0, v29

    and-int/lit16 v3, v0, 0xc1

    if-eqz v3, :cond_865

    const/16 v16, -0x1

    .line 3377
    .local v16, "direction":I
    :goto_852
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v5

    move/from16 v0, v16

    invoke-interface {v3, v5, v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->switchKeyboardLayout(II)V

    .line 3378
    const-wide/16 v5, -0x1

    goto/16 :goto_52

    .line 3367
    .end local v16    # "direction":I
    :cond_863
    const/4 v3, 0x3

    goto :goto_82f

    .line 3376
    :cond_865
    const/16 v16, 0x1

    goto :goto_852

    .line 3380
    :cond_868
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    if-eqz v3, :cond_885

    if-nez v17, :cond_885

    const/16 v3, 0xcc

    move/from16 v0, v25

    if-eq v0, v3, :cond_87c

    const/16 v3, 0x3e

    move/from16 v0, v25

    if-ne v0, v3, :cond_885

    .line 3383
    :cond_87c
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    .line 3384
    const-wide/16 v5, -0x1

    goto/16 :goto_52

    .line 3387
    :cond_885
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/internal/policy/impl/GlobalKeyManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v3, v5, v0, v1}, Lcom/android/internal/policy/impl/GlobalKeyManager;->handleGlobalKey(Landroid/content/Context;ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_89b

    .line 3388
    const-wide/16 v5, -0x1

    goto/16 :goto_52

    .line 3392
    :cond_89b
    const-wide/16 v5, 0x0

    goto/16 :goto_52
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .registers 29
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    .line 5564
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    move/from16 v21, v0

    if-nez v21, :cond_b

    .line 5566
    const/16 v16, 0x0

    .line 6051
    :cond_a
    :goto_a
    return v16

    .line 5569
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v21

    if-nez v21, :cond_5a

    const/4 v6, 0x1

    .line 5570
    .local v6, "down":Z
    :goto_12
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v5

    .line 5571
    .local v5, "canceled":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v13

    .line 5572
    .local v13, "keyCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v17

    .line 5576
    .local v17, "scanCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    move-object/from16 v21, v0

    if-eqz v21, :cond_67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_67

    .line 5578
    const/4 v10, 0x1

    .line 5579
    .local v10, "isAllowed":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v21

    if-nez v21, :cond_5c

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v21

    if-nez v21, :cond_5c

    .line 5580
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v13, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v10

    .line 5584
    :goto_55
    if-nez v10, :cond_67

    .line 5585
    const/16 v16, 0x0

    goto :goto_a

    .line 5569
    .end local v5    # "canceled":Z
    .end local v6    # "down":Z
    .end local v10    # "isAllowed":Z
    .end local v13    # "keyCode":I
    .end local v17    # "scanCode":I
    :cond_5a
    const/4 v6, 0x0

    goto :goto_12

    .line 5582
    .restart local v5    # "canceled":Z
    .restart local v6    # "down":Z
    .restart local v10    # "isAllowed":Z
    .restart local v13    # "keyCode":I
    .restart local v17    # "scanCode":I
    :cond_5c
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v13, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v10

    goto :goto_55

    .line 5589
    .end local v10    # "isAllowed":Z
    :cond_67
    const/high16 v21, 0x1000000

    and-int v21, v21, p2

    if-eqz v21, :cond_ed

    const/4 v11, 0x1

    .line 5595
    .local v11, "isInjected":Z
    :goto_6e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    move-object/from16 v21, v0

    if-nez v21, :cond_ef

    const/4 v14, 0x0

    .line 5600
    .local v14, "keyguardActive":Z
    :goto_77
    const/16 v21, 0x1a

    move/from16 v0, v21

    if-eq v13, v0, :cond_8b

    const/16 v21, 0x3

    move/from16 v0, v21

    if-ne v13, v0, :cond_8d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    move/from16 v21, v0

    if-nez v21, :cond_8d

    .line 5601
    :cond_8b
    or-int/lit8 p2, p2, 0x1

    .line 5603
    :cond_8d
    and-int/lit8 v21, p2, 0x3

    if-eqz v21, :cond_109

    const/4 v12, 0x1

    .line 5614
    .local v12, "isWakeKey":Z
    :goto_92
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    move/from16 v21, v0

    if-nez v21, :cond_10b

    .line 5615
    if-eqz v6, :cond_b1

    if-eqz p3, :cond_b1

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v21

    if-nez v21, :cond_b1

    .line 5616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->performSystemKeyFeedback(Landroid/view/KeyEvent;)V

    .line 5640
    :cond_b1
    :goto_b1
    if-eqz p3, :cond_bb

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    move/from16 v21, v0

    if-eqz v21, :cond_bf

    :cond_bb
    if-eqz v11, :cond_134

    if-nez v12, :cond_134

    .line 5642
    :cond_bf
    const/16 v16, 0x1

    .line 5654
    .local v16, "result":I
    :cond_c1
    :goto_c1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptKeyCombinationBeforeQueueing(Landroid/view/KeyEvent;IZ)V

    .line 5658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isEnableAccessControl()Z

    move-result v21

    if-eqz v21, :cond_14f

    .line 5659
    sget-boolean v21, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v21, :cond_e9

    const-string v21, "WindowManager"

    const-string v22, "interceptKeyTq : Key was blocked by access control"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5660
    :cond_e9
    and-int/lit8 v16, v16, -0x2

    .line 5661
    goto/16 :goto_a

    .line 5589
    .end local v11    # "isInjected":Z
    .end local v12    # "isWakeKey":Z
    .end local v14    # "keyguardActive":Z
    .end local v16    # "result":I
    :cond_ed
    const/4 v11, 0x0

    goto :goto_6e

    .line 5595
    .restart local v11    # "isInjected":Z
    :cond_ef
    if-eqz p3, :cond_fd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v14

    goto/16 :goto_77

    :cond_fd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v14

    goto/16 :goto_77

    .line 5603
    .restart local v14    # "keyguardActive":Z
    :cond_109
    const/4 v12, 0x0

    goto :goto_92

    .line 5620
    .restart local v12    # "isWakeKey":Z
    :cond_10b
    if-eqz v6, :cond_b1

    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x100

    move/from16 v21, v0

    if-eqz v21, :cond_b1

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v21

    if-nez v21, :cond_b1

    .line 5625
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isUseVibetonz()Z

    move-result v21

    if-eqz v21, :cond_b1

    .line 5626
    const/16 v21, 0x0

    const/16 v22, 0xe

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    goto/16 :goto_b1

    .line 5646
    :cond_134
    const/16 v16, 0x0

    .line 5647
    .restart local v16    # "result":I
    if-eqz v6, :cond_c1

    if-eqz v12, :cond_c1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isWakeKeyWhenScreenOff(I)Z

    move-result v21

    if-eqz v21, :cond_c1

    .line 5648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->performCPUBoost()V

    .line 5649
    or-int/lit8 v16, v16, 0x2

    goto/16 :goto_c1

    .line 5666
    :cond_14f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v21

    if-eqz v21, :cond_18d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isBlockedKeyBySideSync(Landroid/view/KeyEvent;)Z

    move-result v21

    if-eqz v21, :cond_18d

    .line 5667
    sget-boolean v21, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v21, :cond_189

    const-string v21, "WindowManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "interceptKeyTq : Key was blocked by sidesync. keycode="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5668
    :cond_189
    and-int/lit8 v16, v16, -0x2

    .line 5669
    goto/16 :goto_a

    .line 5675
    :cond_18d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/internal/policy/impl/GlobalKeyManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v13, v1}, Lcom/android/internal/policy/impl/GlobalKeyManager;->shouldHandleGlobalKey(ILandroid/view/KeyEvent;)Z

    move-result v21

    if-nez v21, :cond_a

    .line 5680
    sparse-switch v13, :sswitch_data_552

    goto/16 :goto_a

    .line 6032
    :sswitch_1a2
    const/16 v21, 0x240

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    if-eqz v6, :cond_a

    .line 6033
    const-string v21, "FakeShutdown"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "!@unknown : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6035
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 6036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    new-instance v22, Lcom/android/internal/policy/impl/PhoneWindowManager$18;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$18;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_a

    .line 5717
    :sswitch_1e4
    if-eqz v6, :cond_20c

    .line 5718
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v18

    .line 5719
    .local v18, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v18, :cond_20c

    .line 5721
    :try_start_1ec
    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v21

    if-eqz v21, :cond_20c

    .line 5728
    const-string v21, "WindowManager"

    const-string v22, "interceptKeyBeforeQueueing: VOLUME key-down while ringing: Silence ringer!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5733
    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_1fc
    .catch Landroid/os/RemoteException; {:try_start_1ec .. :try_end_1fc} :catch_200

    .line 5737
    and-int/lit8 v16, v16, -0x2

    goto/16 :goto_a

    .line 5753
    :catch_200
    move-exception v7

    .line 5754
    .local v7, "ex":Landroid/os/RemoteException;
    const-string v21, "WindowManager"

    const-string v22, "ITelephony threw RemoteException"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5771
    .end local v7    # "ex":Landroid/os/RemoteException;
    .end local v18    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_20c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13, v6, v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->handleSamsungVolumeControl(IZZ)V

    goto/16 :goto_a

    .line 5778
    :sswitch_219
    and-int/lit8 v16, v16, -0x2

    .line 5779
    if-eqz v6, :cond_247

    .line 5780
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v18

    .line 5781
    .restart local v18    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    const/4 v8, 0x0

    .line 5782
    .local v8, "hungUp":Z
    if-eqz v18, :cond_228

    .line 5784
    :try_start_224
    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_227
    .catch Landroid/os/RemoteException; {:try_start_224 .. :try_end_227} :catch_237

    move-result v8

    .line 5789
    :cond_228
    :goto_228
    if-eqz p3, :cond_22c

    if-eqz v8, :cond_244

    :cond_22c
    const/16 v21, 0x1

    :goto_22e
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyDown(Z)V

    goto/16 :goto_a

    .line 5785
    :catch_237
    move-exception v7

    .line 5786
    .restart local v7    # "ex":Landroid/os/RemoteException;
    const-string v21, "WindowManager"

    const-string v22, "ITelephony threw RemoteException"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_228

    .line 5789
    .end local v7    # "ex":Landroid/os/RemoteException;
    :cond_244
    const/16 v21, 0x0

    goto :goto_22e

    .line 5791
    .end local v8    # "hungUp":Z
    .end local v18    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_247
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyUp(Z)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 5792
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_25f

    .line 5794
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->goHome()Z

    move-result v21

    if-nez v21, :cond_a

    .line 5798
    :cond_25f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x2

    if-eqz v21, :cond_a

    .line 5800
    and-int/lit8 v21, v16, -0x3

    or-int/lit8 v16, v21, 0x4

    goto/16 :goto_a

    .line 5808
    :sswitch_26f
    and-int/lit8 v16, v16, -0x2

    .line 5809
    if-eqz v6, :cond_3b2

    .line 5810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    move-object/from16 v21, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isImmersiveMode(I)Z

    move-result v24

    move-object/from16 v0, v21

    move/from16 v1, p3

    move-wide/from16 v2, v22

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->onPowerKeyDown(ZJZ)V

    .line 5812
    if-eqz p3, :cond_2be

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    move/from16 v21, v0

    if-nez v21, :cond_2be

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x400

    move/from16 v21, v0

    if-nez v21, :cond_2be

    .line 5814
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    .line 5815
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v21

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTime:J

    .line 5824
    :cond_2be
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v18

    .line 5825
    .restart local v18    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    const/4 v8, 0x0

    .line 5827
    .restart local v8    # "hungUp":Z
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v19

    .line 5828
    .local v19, "voipInterfaceService":Landroid/os/IVoIPInterface;
    const-string v20, "com.amc.ui"

    .line 5830
    .local v20, "voipPackageName":Ljava/lang/String;
    if-eqz v18, :cond_2d4

    .line 5832
    :try_start_2cb
    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v21

    if-eqz v21, :cond_35e

    .line 5835
    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_2d4
    .catch Landroid/os/RemoteException; {:try_start_2cb .. :try_end_2d4} :catch_3a0

    .line 5862
    :cond_2d4
    :goto_2d4
    if-eqz p3, :cond_2e4

    if-nez v8, :cond_2e4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isCombinationKeyTriggered()Z

    move-result v21

    if-eqz v21, :cond_3ae

    :cond_2e4
    const/16 v21, 0x1

    :goto_2e6
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyDown(Z)V

    .line 5867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v21

    if-eqz v21, :cond_30c

    .line 5868
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v21

    if-nez v21, :cond_30c

    .line 5869
    sget-boolean v21, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v21, :cond_30a

    const-string v21, "WindowManager"

    const-string v22, "in interceptKeyBeforeQueueing() KEYCODE_POWER Down event isSideSyncPresentationRunning is true"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5870
    :cond_30a
    or-int/lit8 v16, v16, 0x1

    .line 5875
    :cond_30c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    const/16 v22, 0x1a

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSystemKeyEventRequested(I)Z

    move-result v21

    if-eqz v21, :cond_31c

    .line 5876
    or-int/lit8 v16, v16, 0x1

    .line 5881
    :cond_31c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerDoubleTapPending:Z

    move/from16 v21, v0

    if-eqz v21, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerConsumed:Z

    move/from16 v21, v0

    if-nez v21, :cond_a

    and-int/lit8 v21, v16, 0x1

    if-nez v21, :cond_a

    .line 5882
    const-string v21, "WindowManager"

    const-string v22, "call handleDoubleTapOnPower()"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5883
    and-int/lit8 v16, v16, -0x5

    .line 5884
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerDoubleTapPending:Z

    .line 5885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5886
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleDoubleTapOnPower()V

    .line 5887
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyDown(Z)V

    goto/16 :goto_a

    .line 5836
    :cond_35e
    :try_start_35e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x2

    if-eqz v21, :cond_37e

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v21

    if-eqz v21, :cond_37e

    if-nez p3, :cond_378

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    move/from16 v21, v0

    if-nez v21, :cond_37e

    .line 5842
    :cond_378
    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/ITelephony;->endCall()Z

    move-result v8

    goto/16 :goto_2d4

    .line 5845
    :cond_37e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x2

    if-eqz v21, :cond_2d4

    invoke-interface/range {v19 .. v19}, Landroid/os/IVoIPInterface;->isVoIPDialing()Z

    move-result v21

    if-nez v21, :cond_394

    invoke-interface/range {v19 .. v19}, Landroid/os/IVoIPInterface;->isVoIPActivated()Z

    move-result v21

    if-eqz v21, :cond_2d4

    :cond_394
    invoke-interface/range {v19 .. v20}, Landroid/os/IVoIPInterface;->getVoIPCallCount(Ljava/lang/String;)I

    move-result v21

    if-lez v21, :cond_2d4

    .line 5848
    invoke-interface/range {v19 .. v19}, Landroid/os/IVoIPInterface;->hangupVoIPCall()Z
    :try_end_39d
    .catch Landroid/os/RemoteException; {:try_start_35e .. :try_end_39d} :catch_3a0

    move-result v8

    goto/16 :goto_2d4

    .line 5851
    :catch_3a0
    move-exception v7

    .line 5852
    .restart local v7    # "ex":Landroid/os/RemoteException;
    const-string v21, "WindowManager"

    const-string v22, "ITelephony threw RemoteException"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2d4

    .line 5862
    .end local v7    # "ex":Landroid/os/RemoteException;
    :cond_3ae
    const/16 v21, 0x0

    goto/16 :goto_2e6

    .line 5891
    .end local v8    # "hungUp":Z
    .end local v18    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    .end local v19    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    .end local v20    # "voipPackageName":Ljava/lang/String;
    :cond_3b2
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    .line 5894
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerConsumed:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3e4

    .line 5895
    const-string v21, "WindowManager"

    const-string v22, "already power is consumed"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5896
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerConsumed:Z

    .line 5897
    and-int/lit8 v16, v16, -0x5

    .line 5898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_a

    .line 5909
    :cond_3e4
    if-nez v5, :cond_3ee

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_486

    :cond_3ee
    const/16 v21, 0x1

    :goto_3f0
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyUp(Z)Z

    move-result v21

    if-eqz v21, :cond_3fe

    .line 5910
    and-int/lit8 v21, v16, -0x3

    or-int/lit8 v16, v21, 0x4

    .line 5914
    :cond_3fe
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v21

    if-eqz v21, :cond_421

    .line 5915
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v21

    if-nez v21, :cond_421

    .line 5916
    sget-boolean v21, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v21, :cond_41b

    const-string v21, "WindowManager"

    const-string v22, "in interceptKeyBeforeQueueing() KEYCODE_POWER up event isSideSyncPresentationRunning is true"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5917
    :cond_41b
    or-int/lit8 v16, v16, 0x1

    .line 5918
    if-eqz p3, :cond_421

    .line 5919
    and-int/lit8 v16, v16, -0x5

    .line 5926
    :cond_421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    const/16 v22, 0x1a

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSystemKeyEventRequested(I)Z

    move-result v21

    if-eqz v21, :cond_433

    .line 5927
    or-int/lit8 v16, v16, 0x1

    .line 5928
    and-int/lit8 v16, v16, -0x5

    .line 5931
    :cond_433
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    .line 5934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDoubleTapOnPowerEnabled()Z

    move-result v21

    if-eqz v21, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    move/from16 v21, v0

    if-nez v21, :cond_a

    and-int/lit8 v21, v16, 0x1

    if-nez v21, :cond_a

    .line 5935
    const-string v21, "WindowManager"

    const-string v22, "in isDoubleTapOnPowerEnabled"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5936
    and-int/lit8 v16, v16, -0x5

    .line 5937
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerDoubleTapPending:Z

    .line 5938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    const-wide/16 v23, 0x1f4

    invoke-virtual/range {v21 .. v24}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_a

    .line 5909
    :cond_486
    const/16 v21, 0x0

    goto/16 :goto_3f0

    .line 5949
    :sswitch_48a
    if-eqz v6, :cond_498

    .line 5950
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v18

    .line 5951
    .restart local v18    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v18, :cond_498

    .line 5953
    :try_start_492
    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_495
    .catch Landroid/os/RemoteException; {:try_start_492 .. :try_end_495} :catch_4ad

    move-result v21

    if-eqz v21, :cond_a

    .line 5965
    .end local v18    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_498
    :goto_498
    :sswitch_498
    const/16 v21, 0x4f

    move/from16 v0, v21

    if-ne v13, v0, :cond_4ba

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryPBAPhase()Z

    move-result v21

    if-eqz v21, :cond_4ba

    .line 5967
    const-string v21, "WindowManager"

    const-string v22, " KeyEvent.KEYCODE_HEADSETHOOK blocked..."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 5958
    .restart local v18    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :catch_4ad
    move-exception v7

    .line 5959
    .restart local v7    # "ex":Landroid/os/RemoteException;
    const-string v21, "WindowManager"

    const-string v22, "ITelephony threw RemoteException"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_498

    .line 5979
    .end local v7    # "ex":Landroid/os/RemoteException;
    .end local v18    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_4ba
    :sswitch_4ba
    and-int/lit8 v21, v16, 0x1

    if-nez v21, :cond_a

    .line 5985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    new-instance v23, Landroid/view/KeyEvent;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    invoke-virtual/range {v21 .. v23}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .line 5988
    .local v15, "msg":Landroid/os/Message;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 5989
    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_a

    .line 5995
    .end local v15    # "msg":Landroid/os/Message;
    :sswitch_4e8
    if-eqz v6, :cond_a

    .line 5996
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v18

    .line 5997
    .restart local v18    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v18, :cond_a

    .line 5999
    :try_start_4f0
    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v21

    if-eqz v21, :cond_a

    .line 6000
    const-string v21, "WindowManager"

    const-string v22, "interceptKeyBeforeQueueing: CALL key-down while ringing: Answer the call!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6002
    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V
    :try_end_500
    .catch Landroid/os/RemoteException; {:try_start_4f0 .. :try_end_500} :catch_504

    .line 6006
    and-int/lit8 v16, v16, -0x2

    goto/16 :goto_a

    .line 6008
    :catch_504
    move-exception v7

    .line 6009
    .restart local v7    # "ex":Landroid/os/RemoteException;
    const-string v21, "WindowManager"

    const-string v22, "ITelephony threw RemoteException"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a

    .line 6017
    .end local v7    # "ex":Landroid/os/RemoteException;
    .end local v18    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :sswitch_512
    if-nez v6, :cond_a

    .line 6018
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v21

    if-nez v21, :cond_526

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_547

    .line 6019
    :cond_526
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 6020
    .local v9, "intent":Landroid/content/Intent;
    const-string v21, "com.sec.android.intent.action.VOICE_WAKEUP_KEY"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    sget-object v22, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v23, "com.sec.android.permission.HANDLE_VOICE_WAKEUP_KEY"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v9, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 6024
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->launchVoiceCommand()V

    goto/16 :goto_a

    .line 5680
    :sswitch_data_552
    .sparse-switch
        0x0 -> :sswitch_1a2
        0x5 -> :sswitch_4e8
        0x6 -> :sswitch_219
        0x18 -> :sswitch_1e4
        0x19 -> :sswitch_1e4
        0x1a -> :sswitch_26f
        0x4f -> :sswitch_498
        0x55 -> :sswitch_48a
        0x56 -> :sswitch_4ba
        0x57 -> :sswitch_4ba
        0x58 -> :sswitch_4ba
        0x59 -> :sswitch_4ba
        0x5a -> :sswitch_4ba
        0x5b -> :sswitch_4ba
        0x7e -> :sswitch_48a
        0x7f -> :sswitch_48a
        0x82 -> :sswitch_4ba
        0xa4 -> :sswitch_1e4
        0xde -> :sswitch_4ba
        0x11d -> :sswitch_512
    .end sparse-switch
.end method

.method public interceptMotionBeforeQueueingWhenScreenOff(I)I
    .registers 5
    .param p1, "policyFlags"    # I

    .prologue
    .line 6092
    const/4 v1, 0x0

    .line 6094
    .local v1, "result":I
    and-int/lit8 v2, p1, 0x3

    if-eqz v2, :cond_b

    const/4 v0, 0x1

    .line 6096
    .local v0, "isWakeMotion":Z
    :goto_6
    if-eqz v0, :cond_a

    .line 6097
    or-int/lit8 v1, v1, 0x2

    .line 6099
    :cond_a
    return v1

    .line 6094
    .end local v0    # "isWakeMotion":Z
    :cond_b
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isCoverOpen()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1924
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_b

    .line 1925
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    .line 1927
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public isDefaultOrientationForced()Z
    .registers 2

    .prologue
    .line 1549
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceDefaultOrientation:Z

    return v0
.end method

.method isDeviceProvisioned()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1023
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

.method public isGloveModeEnabled()Z
    .registers 2

    .prologue
    .line 1934
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isGloveModeEnabled()Z

    move-result v0

    return v0
.end method

.method public isKeyguardHidden()Z
    .registers 2

    .prologue
    .line 6567
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 6568
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isKeyguardHidden()Z

    move-result v0

    goto :goto_5
.end method

.method public isKeyguardLocked()Z
    .registers 2

    .prologue
    .line 6550
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    return v0
.end method

.method public isKeyguardSecure()Z
    .registers 2

    .prologue
    .line 6555
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 6556
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isSecure()Z

    move-result v0

    goto :goto_5
.end method

.method isMusicActive()Z
    .registers 4

    .prologue
    .line 5421
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 5422
    .local v0, "am":Landroid/media/AudioManager;
    if-nez v0, :cond_15

    .line 5423
    const-string v1, "WindowManager"

    const-string v2, "isMusicActive: couldn\'t get AudioManager reference"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5424
    const/4 v1, 0x0

    .line 5426
    :goto_14
    return v1

    :cond_15
    invoke-virtual {v0}, Landroid/media/AudioManager;->isLocalOrRemoteMusicActive()Z

    move-result v1

    goto :goto_14
.end method

.method public isNavigationBarVisible()Z
    .registers 2

    .prologue
    .line 7698
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 7699
    const/4 v0, 0x1

    .line 7701
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isNeedLayoutCoverApplication(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .registers 5
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v1, 0x1

    .line 7835
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isSupportAndAttachedSViewCover()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 7836
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getCoverMode()I

    move-result v0

    .line 7837
    .local v0, "coverMode":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_15

    .line 7838
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->willBeHideSViewCoverOnce()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 7845
    .end local v0    # "coverMode":I
    :cond_14
    :goto_14
    return v1

    .line 7841
    .restart local v0    # "coverMode":I
    :cond_15
    if-eq v0, v1, :cond_14

    .line 7845
    .end local v0    # "coverMode":I
    :cond_17
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public isScreenOnEarly()Z
    .registers 2

    .prologue
    .line 6520
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    return v0
.end method

.method public isScreenOnFully()Z
    .registers 2

    .prologue
    .line 6525
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    return v0
.end method

.method public isStatusBarVisible()Z
    .registers 2

    .prologue
    .line 7688
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

    .line 7689
    const/4 v0, 0x1

    .line 7691
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
    .line 7897
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public isTopLevelWindow(I)Z
    .registers 4
    .param p1, "windowType"    # I

    .prologue
    const/4 v0, 0x1

    .line 7762
    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_d

    const/16 v1, 0x7cf

    if-gt p1, v1, :cond_d

    .line 7764
    const/16 v1, 0x3eb

    if-ne p1, v1, :cond_e

    .line 7766
    :cond_d
    :goto_d
    return v0

    .line 7764
    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method isVoIPRinging()Z
    .registers 6

    .prologue
    .line 2615
    const/4 v1, 0x0

    .line 2617
    .local v1, "isVoIPRinging":Z
    :try_start_1
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v2

    .line 2618
    .local v2, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-eqz v2, :cond_c

    .line 2619
    invoke-interface {v2}, Landroid/os/IVoIPInterface;->isVoIPRinging()Z

    move-result v1

    .line 2626
    .end local v2    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :goto_b
    return v1

    .line 2621
    .restart local v2    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :cond_c
    const-string v3, "WindowManager"

    const-string v4, "Unable to find IVoIPInterface interface"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_13} :catch_14

    goto :goto_b

    .line 2623
    .end local v2    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :catch_14
    move-exception v0

    .line 2624
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v4, "RemoteException from getVoIPInterfaceService()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public keepScreenOnStartedLw()V
    .registers 1

    .prologue
    .line 7506
    return-void
.end method

.method public keepScreenOnStoppedLw()V
    .registers 7

    .prologue
    .line 7510
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 7511
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 7512
    .local v0, "curTime":J
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 7514
    .end local v0    # "curTime":J
    :cond_1a
    return-void
.end method

.method public keyguardOn()Z
    .registers 2

    .prologue
    .line 2640
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

.method launchHomeFromHotKey()V
    .registers 3

    .prologue
    .line 3569
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3597
    :cond_c
    :goto_c
    return-void

    .line 3571
    :cond_d
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 3574
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$10;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$10;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    goto :goto_c

    .line 3586
    :cond_24
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserSetupComplete:Z

    if-eqz v0, :cond_c

    .line 3591
    :try_start_28
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2f} :catch_38

    .line 3594
    :goto_2f
    const-string v0, "homekey"

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 3595
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->startDockOrHome()V

    goto :goto_c

    .line 3592
    :catch_38
    move-exception v0

    goto :goto_2f
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 62
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "attached"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 4160
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-eq v0, v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_11

    .line 4831
    :cond_10
    :goto_10
    return-void

    .line 4163
    :cond_11
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDefaultDisplay()Z

    move-result v45

    .line 4164
    .local v45, "isDefaultDisplay":Z
    if-eqz v45, :cond_308

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_308

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_308

    const/16 v49, 0x1

    .line 4166
    .local v49, "needsToOffsetInputMethodTarget":Z
    :goto_27
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    const/high16 v4, 0x4000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_30c

    const/16 v48, 0x1

    .line 4167
    .local v48, "isStatusBarTransient":Z
    :goto_32
    if-eqz v49, :cond_3d

    .line 4169
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 4172
    :cond_3d
    move-object/from16 v0, p2

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4173
    .local v5, "fl":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move/from16 v26, v0

    .line 4174
    .local v26, "sim":I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v55

    .line 4177
    .local v55, "sysUiFl":I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v14

    .line 4178
    .local v14, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/16 v3, 0x800

    invoke-virtual {v14, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v50

    .line 4179
    .local v50, "optionScale":Z
    invoke-virtual {v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_310

    const/16 v57, 0x1

    .line 4180
    .local v57, "typeCascade":Z
    :goto_5e
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v4, 0x200000

    and-int/2addr v3, v4

    if-eqz v3, :cond_314

    const/16 v35, 0x1

    .line 4183
    .local v35, "absLayout":Z
    :goto_6b
    sget-object v9, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 4184
    .local v9, "pf":Landroid/graphics/Rect;
    sget-object v10, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 4185
    .local v10, "df":Landroid/graphics/Rect;
    sget-object v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    .line 4186
    .local v11, "of":Landroid/graphics/Rect;
    sget-object v12, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 4187
    .local v12, "cf":Landroid/graphics/Rect;
    sget-object v13, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 4188
    .local v13, "vf":Landroid/graphics/Rect;
    sget-object v22, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    .line 4189
    .local v22, "dcf":Landroid/graphics/Rect;
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->setEmpty()V

    .line 4191
    if-eqz v45, :cond_318

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v3, :cond_318

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_318

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_318

    const/16 v40, 0x1

    .line 4194
    .local v40, "hasNavBar":Z
    :goto_94
    move/from16 v0, v26

    and-int/lit16 v6, v0, 0xf0

    .line 4196
    .local v6, "adjust":I
    if-nez v45, :cond_358

    .line 4197
    if-eqz p3, :cond_31c

    .line 4200
    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p3

    invoke-virtual/range {v3 .. v14}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 4585
    :goto_a6
    and-int/lit16 v3, v5, 0x200

    if-eqz v3, :cond_d6

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7da

    if-eq v3, v4, :cond_d6

    .line 4586
    const/16 v3, -0x2710

    iput v3, v13, Landroid/graphics/Rect;->top:I

    iput v3, v13, Landroid/graphics/Rect;->left:I

    iput v3, v12, Landroid/graphics/Rect;->top:I

    iput v3, v12, Landroid/graphics/Rect;->left:I

    iput v3, v11, Landroid/graphics/Rect;->top:I

    iput v3, v11, Landroid/graphics/Rect;->left:I

    iput v3, v10, Landroid/graphics/Rect;->top:I

    iput v3, v10, Landroid/graphics/Rect;->left:I

    .line 4587
    const/16 v3, 0x2710

    iput v3, v13, Landroid/graphics/Rect;->bottom:I

    iput v3, v13, Landroid/graphics/Rect;->right:I

    iput v3, v12, Landroid/graphics/Rect;->bottom:I

    iput v3, v12, Landroid/graphics/Rect;->right:I

    iput v3, v11, Landroid/graphics/Rect;->bottom:I

    iput v3, v11, Landroid/graphics/Rect;->right:I

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    iput v3, v10, Landroid/graphics/Rect;->right:I

    .line 4592
    :cond_d6
    const/16 v3, 0x800

    invoke-virtual {v14, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_f1

    .line 4593
    if-nez p3, :cond_b01

    move-object/from16 v16, p1

    :goto_e2
    move-object/from16 v15, p0

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    invoke-direct/range {v15 .. v22}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyMultiWindowScaleFrame(Landroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 4595
    :cond_f1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_2a5

    .line 4596
    if-eqz v50, :cond_101

    if-eqz v57, :cond_101

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v3

    if-nez v3, :cond_d11

    :cond_101
    if-nez v35, :cond_d11

    .line 4597
    invoke-virtual {v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_11c

    .line 4598
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarTransient:Z

    .line 4599
    const/16 v3, 0x1000

    invoke-virtual {v14, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_11c

    .line 4600
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsIsolatedSplitUsed:Z

    .line 4603
    :cond_11c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    if-ge v3, v4, :cond_b05

    const/16 v47, 0x1

    .line 4605
    .local v47, "isPortrait":Z
    :goto_128
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v47

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->shouldMoveUpWindow(Landroid/view/WindowManagerPolicy$WindowState;Z)Z

    move-result v3

    if-eqz v3, :cond_cbd

    .line 4606
    invoke-virtual {v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-eqz v3, :cond_ca9

    if-nez p3, :cond_ca9

    .line 4608
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackBoxBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v38, v0

    .line 4609
    .local v38, "currentWinLeft":I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackBoxBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    move/from16 v36, v0

    .line 4610
    .local v36, "currentWinBottom":I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackBoxBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v39

    .line 4611
    .local v39, "currentWinWidth":I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackBoxBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v37

    .line 4612
    .local v37, "currentWinHeight":I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getScaleFactor()Landroid/graphics/PointF;

    move-result-object v51

    .line 4613
    .local v51, "scale":Landroid/graphics/PointF;
    move/from16 v53, v37

    .line 4615
    .local v53, "scaledWinHeight":I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v3

    if-eqz v3, :cond_184

    .line 4616
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedWidthLw()I

    move-result v39

    .line 4617
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedHeightLw()I

    move-result v37

    .line 4618
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackBoxBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackBoxBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int v4, v4, v39

    div-int/lit8 v4, v4, 0x2

    add-int v38, v3, v4

    .line 4621
    :cond_184
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move/from16 v0, v36

    if-gt v0, v3, :cond_192

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v3

    if-eqz v3, :cond_c59

    .line 4622
    :cond_192
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackBoxBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    if-le v3, v4, :cond_b09

    .line 4623
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iput v3, v12, Landroid/graphics/Rect;->top:I

    .line 4627
    :cond_1a4
    :goto_1a4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v3, v12, Landroid/graphics/Rect;->bottom:I

    .line 4628
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v4, 0x1fffffff

    and-int/2addr v3, v4

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 4630
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int v42, v3, v4

    .line 4632
    .local v42, "heightUpperInputMethod":I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackBoxBounds()Landroid/graphics/Rect;

    move-result-object v54

    .line 4634
    .local v54, "stackBoxBounds":Landroid/graphics/Rect;
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v3

    if-nez v3, :cond_b34

    if-eqz v47, :cond_b34

    if-nez v57, :cond_b34

    move-object/from16 v0, v54

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    if-ne v3, v4, :cond_b34

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    move/from16 v0, v37

    if-ge v0, v3, :cond_b34

    .line 4637
    move-object/from16 v0, v54

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    if-le v3, v4, :cond_b16

    .line 4638
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iput v3, v10, Landroid/graphics/Rect;->top:I

    .line 4642
    :cond_1fc
    :goto_1fc
    sub-int v3, v42, v37

    iput v3, v9, Landroid/graphics/Rect;->top:I

    .line 4643
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    .line 4644
    invoke-virtual/range {v54 .. v54}, Landroid/graphics/Rect;->width()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    if-ge v3, v4, :cond_b21

    .line 4645
    move/from16 v0, v38

    iput v0, v9, Landroid/graphics/Rect;->left:I

    .line 4646
    add-int v3, v38, v39

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 4651
    :goto_21a
    const/16 v3, 0x10

    if-ne v6, v3, :cond_224

    .line 4652
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    .line 4655
    :cond_224
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v4, -0x80000000

    or-int/2addr v3, v4

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 4711
    .end local v37    # "currentWinHeight":I
    :goto_22f
    const/16 v3, 0x30

    if-eq v6, v3, :cond_c54

    if-nez v50, :cond_c54

    .line 4712
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v3, v13, Landroid/graphics/Rect;->top:I

    .line 4713
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v3, v13, Landroid/graphics/Rect;->bottom:I

    .line 4755
    .end local v36    # "currentWinBottom":I
    .end local v38    # "currentWinLeft":I
    .end local v39    # "currentWinWidth":I
    .end local v42    # "heightUpperInputMethod":I
    .end local v51    # "scale":Landroid/graphics/PointF;
    .end local v53    # "scaledWinHeight":I
    .end local v54    # "stackBoxBounds":Landroid/graphics/Rect;
    :cond_241
    :goto_241
    if-eqz p3, :cond_2a5

    invoke-virtual {v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-nez v3, :cond_263

    invoke-interface/range {p3 .. p3}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-eqz v3, :cond_2a5

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3e9

    if-eq v3, v4, :cond_263

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3ec

    if-ne v3, v4, :cond_2a5

    .line 4760
    :cond_263
    invoke-interface/range {p3 .. p3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_27f

    invoke-interface/range {p3 .. p3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_27f

    invoke-interface/range {p3 .. p3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x200

    if-nez v3, :cond_2a5

    .line 4762
    :cond_27f
    const v3, 0x10500

    and-int/2addr v3, v5

    const v4, 0x10100

    if-ne v3, v4, :cond_cf6

    and-int/lit8 v3, v55, 0x4

    if-nez v3, :cond_cf6

    .line 4765
    const/16 v28, 0x1

    move-object/from16 v23, p0

    move-object/from16 v24, p1

    move/from16 v25, v5

    move-object/from16 v27, p3

    move-object/from16 v29, v9

    move-object/from16 v30, v10

    move-object/from16 v31, v11

    move-object/from16 v32, v12

    move-object/from16 v33, v13

    move-object/from16 v34, v14

    invoke-virtual/range {v23 .. v34}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .end local v47    # "isPortrait":Z
    :cond_2a5
    :goto_2a5
    move-object/from16 v16, p1

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    .line 4809
    invoke-interface/range {v16 .. v22}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 4813
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7db

    if-eq v3, v4, :cond_2c4

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0xbb6

    if-ne v3, v4, :cond_2da

    :cond_2c4
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v3

    if-eqz v3, :cond_2da

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenInsetsPendingLw()Z

    move-result v3

    if-nez v3, :cond_2da

    .line 4817
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 4818
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 4822
    :cond_2da
    invoke-virtual {v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-nez v3, :cond_10

    .line 4823
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v3

    if-eqz v3, :cond_10

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x480000

    and-int/2addr v3, v4

    if-eqz v3, :cond_10

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 4826
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanBeForceHide:Z

    goto/16 :goto_10

    .line 4164
    .end local v5    # "fl":I
    .end local v6    # "adjust":I
    .end local v9    # "pf":Landroid/graphics/Rect;
    .end local v10    # "df":Landroid/graphics/Rect;
    .end local v11    # "of":Landroid/graphics/Rect;
    .end local v12    # "cf":Landroid/graphics/Rect;
    .end local v13    # "vf":Landroid/graphics/Rect;
    .end local v14    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v22    # "dcf":Landroid/graphics/Rect;
    .end local v26    # "sim":I
    .end local v35    # "absLayout":Z
    .end local v40    # "hasNavBar":Z
    .end local v48    # "isStatusBarTransient":Z
    .end local v49    # "needsToOffsetInputMethodTarget":Z
    .end local v50    # "optionScale":Z
    .end local v55    # "sysUiFl":I
    .end local v57    # "typeCascade":Z
    :cond_308
    const/16 v49, 0x0

    goto/16 :goto_27

    .line 4166
    .restart local v49    # "needsToOffsetInputMethodTarget":Z
    :cond_30c
    const/16 v48, 0x0

    goto/16 :goto_32

    .line 4179
    .restart local v5    # "fl":I
    .restart local v14    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .restart local v26    # "sim":I
    .restart local v48    # "isStatusBarTransient":Z
    .restart local v50    # "optionScale":Z
    .restart local v55    # "sysUiFl":I
    :cond_310
    const/16 v57, 0x0

    goto/16 :goto_5e

    .line 4180
    .restart local v57    # "typeCascade":Z
    :cond_314
    const/16 v35, 0x0

    goto/16 :goto_6b

    .line 4191
    .restart local v9    # "pf":Landroid/graphics/Rect;
    .restart local v10    # "df":Landroid/graphics/Rect;
    .restart local v11    # "of":Landroid/graphics/Rect;
    .restart local v12    # "cf":Landroid/graphics/Rect;
    .restart local v13    # "vf":Landroid/graphics/Rect;
    .restart local v22    # "dcf":Landroid/graphics/Rect;
    .restart local v35    # "absLayout":Z
    :cond_318
    const/16 v40, 0x0

    goto/16 :goto_94

    .line 4203
    .restart local v6    # "adjust":I
    .restart local v40    # "hasNavBar":Z
    :cond_31c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v3, v12, Landroid/graphics/Rect;->left:I

    iput v3, v11, Landroid/graphics/Rect;->left:I

    iput v3, v10, Landroid/graphics/Rect;->left:I

    iput v3, v9, Landroid/graphics/Rect;->left:I

    .line 4204
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    iput v3, v12, Landroid/graphics/Rect;->top:I

    iput v3, v11, Landroid/graphics/Rect;->top:I

    iput v3, v10, Landroid/graphics/Rect;->top:I

    iput v3, v9, Landroid/graphics/Rect;->top:I

    .line 4205
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v3, v4

    iput v3, v12, Landroid/graphics/Rect;->right:I

    iput v3, v11, Landroid/graphics/Rect;->right:I

    iput v3, v10, Landroid/graphics/Rect;->right:I

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 4207
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v3, v4

    iput v3, v12, Landroid/graphics/Rect;->bottom:I

    iput v3, v11, Landroid/graphics/Rect;->bottom:I

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_a6

    .line 4210
    :cond_358
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7db

    if-ne v3, v4, :cond_3b7

    .line 4211
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v3, v13, Landroid/graphics/Rect;->left:I

    iput v3, v12, Landroid/graphics/Rect;->left:I

    iput v3, v11, Landroid/graphics/Rect;->left:I

    iput v3, v10, Landroid/graphics/Rect;->left:I

    iput v3, v9, Landroid/graphics/Rect;->left:I

    .line 4212
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v3, v13, Landroid/graphics/Rect;->top:I

    iput v3, v12, Landroid/graphics/Rect;->top:I

    iput v3, v11, Landroid/graphics/Rect;->top:I

    iput v3, v10, Landroid/graphics/Rect;->top:I

    iput v3, v9, Landroid/graphics/Rect;->top:I

    .line 4213
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v3, v13, Landroid/graphics/Rect;->right:I

    iput v3, v12, Landroid/graphics/Rect;->right:I

    iput v3, v11, Landroid/graphics/Rect;->right:I

    iput v3, v10, Landroid/graphics/Rect;->right:I

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 4215
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v3, v4

    iput v3, v11, Landroid/graphics/Rect;->bottom:I

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    .line 4217
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    iput v3, v13, Landroid/graphics/Rect;->bottom:I

    iput v3, v12, Landroid/graphics/Rect;->bottom:I

    .line 4219
    const/16 v3, 0x50

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 4220
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    .line 4222
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    goto/16 :goto_a6

    .line 4227
    :cond_3b7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemLeft:I

    move-object/from16 v0, v22

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 4228
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    move-object/from16 v0, v22

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 4229
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    move-object/from16 v0, v22

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 4230
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    move-object/from16 v0, v22

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 4231
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_497

    const/16 v43, 0x1

    .line 4233
    .local v43, "inheritTranslucentDecor":Z
    :goto_3e1
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_49b

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x63

    if-gt v3, v4, :cond_49b

    const/16 v44, 0x1

    .line 4236
    .local v44, "isAppWindow":Z
    :goto_3f2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_49f

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v3

    if-nez v3, :cond_49f

    const/16 v56, 0x1

    .line 4239
    .local v56, "topAtRest":Z
    :goto_402
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v3, :cond_4a3

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v3, :cond_4a3

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4a3

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4a3

    const/16 v46, 0x1

    .line 4243
    .local v46, "isFullOpaqueWindow":Z
    :goto_41e
    if-eqz v44, :cond_469

    if-nez v43, :cond_469

    if-eqz v46, :cond_469

    .line 4245
    invoke-virtual {v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_450

    .line 4247
    and-int/lit8 v3, v55, 0x4

    if-nez v3, :cond_4a7

    and-int/lit16 v3, v5, 0x400

    if-nez v3, :cond_4a7

    const/high16 v3, 0x4000000

    and-int/2addr v3, v5

    if-nez v3, :cond_4a7

    .line 4251
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, v22

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 4254
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    .line 4265
    :cond_450
    :goto_450
    const/high16 v3, 0x8000000

    and-int/2addr v3, v5

    if-nez v3, :cond_469

    and-int/lit8 v3, v55, 0x2

    if-nez v3, :cond_469

    .line 4268
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, v22

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 4269
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    move-object/from16 v0, v22

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 4274
    :cond_469
    invoke-virtual {v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_480

    .line 4275
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    .line 4279
    :cond_480
    const v3, 0x10100

    and-int/2addr v3, v5

    const v4, 0x10100

    if-ne v3, v4, :cond_6d4

    .line 4287
    if-eqz p3, :cond_4b8

    .line 4290
    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p3

    invoke-virtual/range {v3 .. v14}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto/16 :goto_a6

    .line 4231
    .end local v43    # "inheritTranslucentDecor":Z
    .end local v44    # "isAppWindow":Z
    .end local v46    # "isFullOpaqueWindow":Z
    .end local v56    # "topAtRest":Z
    :cond_497
    const/16 v43, 0x0

    goto/16 :goto_3e1

    .line 4233
    .restart local v43    # "inheritTranslucentDecor":Z
    :cond_49b
    const/16 v44, 0x0

    goto/16 :goto_3f2

    .line 4236
    .restart local v44    # "isAppWindow":Z
    :cond_49f
    const/16 v56, 0x0

    goto/16 :goto_402

    .line 4239
    .restart local v56    # "topAtRest":Z
    :cond_4a3
    const/16 v46, 0x0

    goto/16 :goto_41e

    .line 4259
    .restart local v46    # "isFullOpaqueWindow":Z
    :cond_4a7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    goto :goto_450

    .line 4292
    :cond_4b8
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7de

    if-eq v3, v4, :cond_4d0

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7e1

    if-eq v3, v4, :cond_4d0

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x830

    if-ne v3, v4, :cond_570

    .line 4302
    :cond_4d0
    if-eqz v40, :cond_556

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    :goto_4d6
    iput v3, v11, Landroid/graphics/Rect;->left:I

    iput v3, v10, Landroid/graphics/Rect;->left:I

    iput v3, v9, Landroid/graphics/Rect;->left:I

    .line 4304
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v3, v11, Landroid/graphics/Rect;->top:I

    iput v3, v10, Landroid/graphics/Rect;->top:I

    iput v3, v9, Landroid/graphics/Rect;->top:I

    .line 4305
    if-eqz v40, :cond_55c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v3, v4

    :goto_4f1
    iput v3, v11, Landroid/graphics/Rect;->right:I

    iput v3, v10, Landroid/graphics/Rect;->right:I

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 4308
    if-eqz v40, :cond_566

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v3, v4

    :goto_502
    iput v3, v11, Landroid/graphics/Rect;->bottom:I

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    .line 4361
    :goto_508
    and-int/lit16 v3, v5, 0x400

    if-nez v3, :cond_691

    .line 4362
    const/16 v3, 0x10

    if-eq v6, v3, :cond_677

    .line 4363
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v3, v12, Landroid/graphics/Rect;->left:I

    .line 4364
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v3, v12, Landroid/graphics/Rect;->top:I

    .line 4365
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v3, v12, Landroid/graphics/Rect;->right:I

    .line 4366
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v3, v12, Landroid/graphics/Rect;->bottom:I

    .line 4394
    :cond_528
    :goto_528
    if-eqz v14, :cond_538

    invoke-virtual {v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_538

    .line 4396
    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-direct {v0, v1, v5, v12}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyStableConstraints(IILandroid/graphics/Rect;)V

    .line 4398
    :cond_538
    const/16 v3, 0x30

    if-eq v6, v3, :cond_6cf

    .line 4399
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v3, v13, Landroid/graphics/Rect;->left:I

    .line 4400
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v3, v13, Landroid/graphics/Rect;->top:I

    .line 4401
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v3, v13, Landroid/graphics/Rect;->right:I

    .line 4402
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v3, v13, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_a6

    .line 4302
    :cond_556
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    goto/16 :goto_4d6

    .line 4305
    :cond_55c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v3, v4

    goto :goto_4f1

    .line 4308
    :cond_566
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v3, v4

    goto :goto_502

    .line 4315
    :cond_570
    const/high16 v3, 0x2000000

    and-int/2addr v3, v5

    if-eqz v3, :cond_5b8

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_5b8

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7cf

    if-gt v3, v4, :cond_5b8

    .line 4320
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v3, v11, Landroid/graphics/Rect;->left:I

    iput v3, v10, Landroid/graphics/Rect;->left:I

    iput v3, v9, Landroid/graphics/Rect;->left:I

    .line 4321
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    iput v3, v11, Landroid/graphics/Rect;->top:I

    iput v3, v10, Landroid/graphics/Rect;->top:I

    iput v3, v9, Landroid/graphics/Rect;->top:I

    .line 4322
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v3, v4

    iput v3, v11, Landroid/graphics/Rect;->right:I

    iput v3, v10, Landroid/graphics/Rect;->right:I

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 4323
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v3, v4

    iput v3, v11, Landroid/graphics/Rect;->bottom:I

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_508

    .line 4325
    :cond_5b8
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v3

    if-eqz v3, :cond_629

    move/from16 v0, v55

    and-int/lit16 v3, v0, 0x200

    if-eqz v3, :cond_629

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d4

    if-eq v3, v4, :cond_5db

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_629

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7cf

    if-gt v3, v4, :cond_629

    .line 4334
    :cond_5db
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v3, v10, Landroid/graphics/Rect;->left:I

    iput v3, v9, Landroid/graphics/Rect;->left:I

    .line 4335
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    iput v3, v10, Landroid/graphics/Rect;->top:I

    iput v3, v9, Landroid/graphics/Rect;->top:I

    .line 4336
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v3, v4

    iput v3, v10, Landroid/graphics/Rect;->right:I

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 4337
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v3, v4

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    .line 4341
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v3, v11, Landroid/graphics/Rect;->left:I

    .line 4342
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v3, v11, Landroid/graphics/Rect;->top:I

    .line 4343
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v3, v4

    iput v3, v11, Landroid/graphics/Rect;->right:I

    .line 4344
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v3, v4

    iput v3, v11, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_508

    .line 4346
    :cond_629
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    iput v3, v10, Landroid/graphics/Rect;->left:I

    iput v3, v9, Landroid/graphics/Rect;->left:I

    .line 4347
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    iput v3, v10, Landroid/graphics/Rect;->top:I

    iput v3, v9, Landroid/graphics/Rect;->top:I

    .line 4348
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    add-int/2addr v3, v4

    iput v3, v10, Landroid/graphics/Rect;->right:I

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 4350
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    add-int/2addr v3, v4

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    .line 4355
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v3, v11, Landroid/graphics/Rect;->left:I

    .line 4356
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v3, v11, Landroid/graphics/Rect;->top:I

    .line 4357
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v3, v4

    iput v3, v11, Landroid/graphics/Rect;->right:I

    .line 4358
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v3, v4

    iput v3, v11, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_508

    .line 4368
    :cond_677
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v3, v12, Landroid/graphics/Rect;->left:I

    .line 4369
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v3, v12, Landroid/graphics/Rect;->top:I

    .line 4370
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v3, v12, Landroid/graphics/Rect;->right:I

    .line 4371
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v3, v12, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_528

    .line 4378
    :cond_691
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v3, v12, Landroid/graphics/Rect;->left:I

    .line 4379
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v3, v12, Landroid/graphics/Rect;->top:I

    .line 4380
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v3, v4

    iput v3, v12, Landroid/graphics/Rect;->right:I

    .line 4381
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v3, v4

    iput v3, v12, Landroid/graphics/Rect;->bottom:I

    .line 4384
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_528

    .line 4385
    const/16 v3, 0x10

    if-eq v6, v3, :cond_6c7

    .line 4386
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v3, v12, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_528

    .line 4388
    :cond_6c7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v3, v12, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_528

    .line 4404
    :cond_6cf
    invoke-virtual {v13, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_a6

    .line 4407
    :cond_6d4
    and-int/lit16 v3, v5, 0x100

    if-nez v3, :cond_6de

    move/from16 v0, v55

    and-int/lit16 v3, v0, 0x600

    if-eqz v3, :cond_991

    .line 4414
    :cond_6de
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7de

    if-eq v3, v4, :cond_6f6

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7e1

    if-eq v3, v4, :cond_6f6

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x830

    if-ne v3, v4, :cond_77d

    .line 4417
    :cond_6f6
    if-eqz v40, :cond_764

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    :goto_6fc
    iput v3, v12, Landroid/graphics/Rect;->left:I

    iput v3, v11, Landroid/graphics/Rect;->left:I

    iput v3, v10, Landroid/graphics/Rect;->left:I

    iput v3, v9, Landroid/graphics/Rect;->left:I

    .line 4419
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v3, v12, Landroid/graphics/Rect;->top:I

    iput v3, v11, Landroid/graphics/Rect;->top:I

    iput v3, v10, Landroid/graphics/Rect;->top:I

    iput v3, v9, Landroid/graphics/Rect;->top:I

    .line 4420
    if-eqz v40, :cond_769

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v3, v4

    :goto_71b
    iput v3, v12, Landroid/graphics/Rect;->right:I

    iput v3, v11, Landroid/graphics/Rect;->right:I

    iput v3, v10, Landroid/graphics/Rect;->right:I

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 4423
    if-eqz v40, :cond_773

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v3, v4

    :goto_72e
    iput v3, v12, Landroid/graphics/Rect;->bottom:I

    iput v3, v11, Landroid/graphics/Rect;->bottom:I

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    .line 4507
    :goto_736
    if-eqz v14, :cond_746

    invoke-virtual {v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_746

    .line 4509
    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-direct {v0, v1, v5, v12}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyStableConstraints(IILandroid/graphics/Rect;)V

    .line 4512
    :cond_746
    const/16 v3, 0x30

    if-eq v6, v3, :cond_98c

    .line 4513
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v3, v13, Landroid/graphics/Rect;->left:I

    .line 4514
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v3, v13, Landroid/graphics/Rect;->top:I

    .line 4515
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v3, v13, Landroid/graphics/Rect;->right:I

    .line 4516
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v3, v13, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_a6

    .line 4417
    :cond_764
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    goto :goto_6fc

    .line 4420
    :cond_769
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v3, v4

    goto :goto_71b

    .line 4423
    :cond_773
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v3, v4

    goto :goto_72e

    .line 4429
    :cond_77d
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7e3

    if-eq v3, v4, :cond_78d

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7e8

    if-ne v3, v4, :cond_7c1

    .line 4432
    :cond_78d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v3, v11, Landroid/graphics/Rect;->left:I

    iput v3, v10, Landroid/graphics/Rect;->left:I

    iput v3, v9, Landroid/graphics/Rect;->left:I

    .line 4433
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v3, v11, Landroid/graphics/Rect;->top:I

    iput v3, v10, Landroid/graphics/Rect;->top:I

    iput v3, v9, Landroid/graphics/Rect;->top:I

    .line 4434
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v3, v4

    iput v3, v11, Landroid/graphics/Rect;->right:I

    iput v3, v10, Landroid/graphics/Rect;->right:I

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 4436
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v3, v4

    iput v3, v11, Landroid/graphics/Rect;->bottom:I

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_736

    .line 4441
    :cond_7c1
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7df

    if-eq v3, v4, :cond_7d1

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7e5

    if-ne v3, v4, :cond_811

    :cond_7d1
    and-int/lit16 v3, v5, 0x400

    if-eqz v3, :cond_811

    .line 4445
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v3, v12, Landroid/graphics/Rect;->left:I

    iput v3, v11, Landroid/graphics/Rect;->left:I

    iput v3, v10, Landroid/graphics/Rect;->left:I

    iput v3, v9, Landroid/graphics/Rect;->left:I

    .line 4446
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    iput v3, v12, Landroid/graphics/Rect;->top:I

    iput v3, v11, Landroid/graphics/Rect;->top:I

    iput v3, v10, Landroid/graphics/Rect;->top:I

    iput v3, v9, Landroid/graphics/Rect;->top:I

    .line 4447
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v3, v4

    iput v3, v12, Landroid/graphics/Rect;->right:I

    iput v3, v11, Landroid/graphics/Rect;->right:I

    iput v3, v10, Landroid/graphics/Rect;->right:I

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 4449
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v3, v4

    iput v3, v12, Landroid/graphics/Rect;->bottom:I

    iput v3, v11, Landroid/graphics/Rect;->bottom:I

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_736

    .line 4451
    :cond_811
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7e5

    if-eq v3, v4, :cond_821

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7e9

    if-ne v3, v4, :cond_85d

    .line 4454
    :cond_821
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v3, v12, Landroid/graphics/Rect;->left:I

    iput v3, v11, Landroid/graphics/Rect;->left:I

    iput v3, v10, Landroid/graphics/Rect;->left:I

    iput v3, v9, Landroid/graphics/Rect;->left:I

    .line 4455
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    iput v3, v12, Landroid/graphics/Rect;->top:I

    iput v3, v11, Landroid/graphics/Rect;->top:I

    iput v3, v10, Landroid/graphics/Rect;->top:I

    iput v3, v9, Landroid/graphics/Rect;->top:I

    .line 4456
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v3, v4

    iput v3, v12, Landroid/graphics/Rect;->right:I

    iput v3, v11, Landroid/graphics/Rect;->right:I

    iput v3, v10, Landroid/graphics/Rect;->right:I

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 4458
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v3, v4

    iput v3, v12, Landroid/graphics/Rect;->bottom:I

    iput v3, v11, Landroid/graphics/Rect;->bottom:I

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_736

    .line 4460
    :cond_85d
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dd

    if-ne v3, v4, :cond_8a1

    .line 4462
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v3, v12, Landroid/graphics/Rect;->left:I

    iput v3, v11, Landroid/graphics/Rect;->left:I

    iput v3, v10, Landroid/graphics/Rect;->left:I

    iput v3, v9, Landroid/graphics/Rect;->left:I

    .line 4463
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v3, v12, Landroid/graphics/Rect;->top:I

    iput v3, v11, Landroid/graphics/Rect;->top:I

    iput v3, v10, Landroid/graphics/Rect;->top:I

    iput v3, v9, Landroid/graphics/Rect;->top:I

    .line 4464
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v3, v4

    iput v3, v12, Landroid/graphics/Rect;->right:I

    iput v3, v11, Landroid/graphics/Rect;->right:I

    iput v3, v10, Landroid/graphics/Rect;->right:I

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 4466
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v3, v4

    iput v3, v12, Landroid/graphics/Rect;->bottom:I

    iput v3, v11, Landroid/graphics/Rect;->bottom:I

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_736

    .line 4468
    :cond_8a1
    const/high16 v3, 0x2000000

    and-int/2addr v3, v5

    if-eqz v3, :cond_8f1

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_8f1

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7cf

    if-gt v3, v4, :cond_8f1

    .line 4473
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v3, v12, Landroid/graphics/Rect;->left:I

    iput v3, v11, Landroid/graphics/Rect;->left:I

    iput v3, v10, Landroid/graphics/Rect;->left:I

    iput v3, v9, Landroid/graphics/Rect;->left:I

    .line 4474
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    iput v3, v12, Landroid/graphics/Rect;->top:I

    iput v3, v11, Landroid/graphics/Rect;->top:I

    iput v3, v10, Landroid/graphics/Rect;->top:I

    iput v3, v9, Landroid/graphics/Rect;->top:I

    .line 4475
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v3, v4

    iput v3, v12, Landroid/graphics/Rect;->right:I

    iput v3, v11, Landroid/graphics/Rect;->right:I

    iput v3, v10, Landroid/graphics/Rect;->right:I

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 4477
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v3, v4

    iput v3, v12, Landroid/graphics/Rect;->bottom:I

    iput v3, v11, Landroid/graphics/Rect;->bottom:I

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_736

    .line 4479
    :cond_8f1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v3

    if-eqz v3, :cond_950

    move/from16 v0, v55

    and-int/lit16 v3, v0, 0x200

    if-eqz v3, :cond_950

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d5

    if-eq v3, v4, :cond_914

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_950

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7cf

    if-gt v3, v4, :cond_950

    .line 4491
    :cond_914
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v3, v12, Landroid/graphics/Rect;->left:I

    iput v3, v11, Landroid/graphics/Rect;->left:I

    iput v3, v10, Landroid/graphics/Rect;->left:I

    iput v3, v9, Landroid/graphics/Rect;->left:I

    .line 4492
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v3, v12, Landroid/graphics/Rect;->top:I

    iput v3, v11, Landroid/graphics/Rect;->top:I

    iput v3, v10, Landroid/graphics/Rect;->top:I

    iput v3, v9, Landroid/graphics/Rect;->top:I

    .line 4493
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v3, v4

    iput v3, v12, Landroid/graphics/Rect;->right:I

    iput v3, v11, Landroid/graphics/Rect;->right:I

    iput v3, v10, Landroid/graphics/Rect;->right:I

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 4495
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v3, v4

    iput v3, v12, Landroid/graphics/Rect;->bottom:I

    iput v3, v11, Landroid/graphics/Rect;->bottom:I

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_736

    .line 4498
    :cond_950
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v3, v12, Landroid/graphics/Rect;->left:I

    iput v3, v11, Landroid/graphics/Rect;->left:I

    iput v3, v10, Landroid/graphics/Rect;->left:I

    iput v3, v9, Landroid/graphics/Rect;->left:I

    .line 4499
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v3, v12, Landroid/graphics/Rect;->top:I

    iput v3, v11, Landroid/graphics/Rect;->top:I

    iput v3, v10, Landroid/graphics/Rect;->top:I

    iput v3, v9, Landroid/graphics/Rect;->top:I

    .line 4500
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v3, v4

    iput v3, v12, Landroid/graphics/Rect;->right:I

    iput v3, v11, Landroid/graphics/Rect;->right:I

    iput v3, v10, Landroid/graphics/Rect;->right:I

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 4502
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v3, v4

    iput v3, v12, Landroid/graphics/Rect;->bottom:I

    iput v3, v11, Landroid/graphics/Rect;->bottom:I

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_736

    .line 4518
    :cond_98c
    invoke-virtual {v13, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_a6

    .line 4520
    :cond_991
    if-eqz p3, :cond_99f

    .line 4525
    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p3

    invoke-virtual/range {v3 .. v14}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto/16 :goto_a6

    .line 4531
    :cond_99f
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7de

    if-eq v3, v4, :cond_9af

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x830

    if-ne v3, v4, :cond_9eb

    .line 4537
    :cond_9af
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v3, v12, Landroid/graphics/Rect;->left:I

    iput v3, v11, Landroid/graphics/Rect;->left:I

    iput v3, v10, Landroid/graphics/Rect;->left:I

    iput v3, v9, Landroid/graphics/Rect;->left:I

    .line 4538
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v3, v12, Landroid/graphics/Rect;->top:I

    iput v3, v11, Landroid/graphics/Rect;->top:I

    iput v3, v10, Landroid/graphics/Rect;->top:I

    iput v3, v9, Landroid/graphics/Rect;->top:I

    .line 4539
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v3, v4

    iput v3, v12, Landroid/graphics/Rect;->right:I

    iput v3, v11, Landroid/graphics/Rect;->right:I

    iput v3, v10, Landroid/graphics/Rect;->right:I

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 4541
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v3, v4

    iput v3, v12, Landroid/graphics/Rect;->bottom:I

    iput v3, v11, Landroid/graphics/Rect;->bottom:I

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_a6

    .line 4543
    :cond_9eb
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d5

    if-eq v3, v4, :cond_9fb

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d3

    if-ne v3, v4, :cond_a71

    .line 4545
    :cond_9fb
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_a3f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_a3f

    if-nez v48, :cond_a3f

    .line 4546
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    iput v3, v12, Landroid/graphics/Rect;->left:I

    iput v3, v11, Landroid/graphics/Rect;->left:I

    iput v3, v10, Landroid/graphics/Rect;->left:I

    iput v3, v9, Landroid/graphics/Rect;->left:I

    .line 4547
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iput v3, v12, Landroid/graphics/Rect;->top:I

    iput v3, v11, Landroid/graphics/Rect;->top:I

    iput v3, v10, Landroid/graphics/Rect;->top:I

    iput v3, v9, Landroid/graphics/Rect;->top:I

    .line 4548
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    iput v3, v12, Landroid/graphics/Rect;->right:I

    iput v3, v11, Landroid/graphics/Rect;->right:I

    iput v3, v10, Landroid/graphics/Rect;->right:I

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 4549
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    iput v3, v12, Landroid/graphics/Rect;->bottom:I

    iput v3, v11, Landroid/graphics/Rect;->bottom:I

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_a6

    .line 4551
    :cond_a3f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v3, v12, Landroid/graphics/Rect;->left:I

    iput v3, v11, Landroid/graphics/Rect;->left:I

    iput v3, v10, Landroid/graphics/Rect;->left:I

    iput v3, v9, Landroid/graphics/Rect;->left:I

    .line 4552
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v3, v12, Landroid/graphics/Rect;->top:I

    iput v3, v11, Landroid/graphics/Rect;->top:I

    iput v3, v10, Landroid/graphics/Rect;->top:I

    iput v3, v9, Landroid/graphics/Rect;->top:I

    .line 4553
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v3, v12, Landroid/graphics/Rect;->right:I

    iput v3, v11, Landroid/graphics/Rect;->right:I

    iput v3, v10, Landroid/graphics/Rect;->right:I

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 4554
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v3, v12, Landroid/graphics/Rect;->bottom:I

    iput v3, v11, Landroid/graphics/Rect;->bottom:I

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_a6

    .line 4557
    :cond_a71
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v3, v9, Landroid/graphics/Rect;->left:I

    .line 4558
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v3, v9, Landroid/graphics/Rect;->top:I

    .line 4559
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 4560
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    .line 4561
    const/16 v3, 0x10

    if-eq v6, v3, :cond_ad3

    .line 4562
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v3, v12, Landroid/graphics/Rect;->left:I

    iput v3, v11, Landroid/graphics/Rect;->left:I

    iput v3, v10, Landroid/graphics/Rect;->left:I

    .line 4563
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v3, v12, Landroid/graphics/Rect;->top:I

    iput v3, v11, Landroid/graphics/Rect;->top:I

    iput v3, v10, Landroid/graphics/Rect;->top:I

    .line 4564
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v3, v12, Landroid/graphics/Rect;->right:I

    iput v3, v11, Landroid/graphics/Rect;->right:I

    iput v3, v10, Landroid/graphics/Rect;->right:I

    .line 4565
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v3, v12, Landroid/graphics/Rect;->bottom:I

    iput v3, v11, Landroid/graphics/Rect;->bottom:I

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    .line 4572
    :goto_ab5
    const/16 v3, 0x30

    if-eq v6, v3, :cond_afc

    .line 4573
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v3, v13, Landroid/graphics/Rect;->left:I

    .line 4574
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v3, v13, Landroid/graphics/Rect;->top:I

    .line 4575
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v3, v13, Landroid/graphics/Rect;->right:I

    .line 4576
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v3, v13, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_a6

    .line 4567
    :cond_ad3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v3, v12, Landroid/graphics/Rect;->left:I

    iput v3, v11, Landroid/graphics/Rect;->left:I

    iput v3, v10, Landroid/graphics/Rect;->left:I

    .line 4568
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v3, v12, Landroid/graphics/Rect;->top:I

    iput v3, v11, Landroid/graphics/Rect;->top:I

    iput v3, v10, Landroid/graphics/Rect;->top:I

    .line 4569
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v3, v12, Landroid/graphics/Rect;->right:I

    iput v3, v11, Landroid/graphics/Rect;->right:I

    iput v3, v10, Landroid/graphics/Rect;->right:I

    .line 4570
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v3, v12, Landroid/graphics/Rect;->bottom:I

    iput v3, v11, Landroid/graphics/Rect;->bottom:I

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    goto :goto_ab5

    .line 4578
    :cond_afc
    invoke-virtual {v13, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_a6

    .end local v43    # "inheritTranslucentDecor":Z
    .end local v44    # "isAppWindow":Z
    .end local v46    # "isFullOpaqueWindow":Z
    .end local v56    # "topAtRest":Z
    :cond_b01
    move-object/from16 v16, p3

    .line 4593
    goto/16 :goto_e2

    .line 4603
    :cond_b05
    const/16 v47, 0x0

    goto/16 :goto_128

    .line 4624
    .restart local v36    # "currentWinBottom":I
    .restart local v37    # "currentWinHeight":I
    .restart local v38    # "currentWinLeft":I
    .restart local v39    # "currentWinWidth":I
    .restart local v47    # "isPortrait":Z
    .restart local v51    # "scale":Landroid/graphics/PointF;
    .restart local v53    # "scaledWinHeight":I
    :cond_b09
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackBoxBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_1a4

    .line 4625
    const/4 v3, 0x0

    iput v3, v12, Landroid/graphics/Rect;->top:I

    goto/16 :goto_1a4

    .line 4639
    .restart local v42    # "heightUpperInputMethod":I
    .restart local v54    # "stackBoxBounds":Landroid/graphics/Rect;
    :cond_b16
    move-object/from16 v0, v54

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_1fc

    .line 4640
    const/4 v3, 0x0

    iput v3, v10, Landroid/graphics/Rect;->top:I

    goto/16 :goto_1fc

    .line 4648
    :cond_b21
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v3, v9, Landroid/graphics/Rect;->left:I

    .line 4649
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v3, v4

    iput v3, v9, Landroid/graphics/Rect;->right:I

    goto/16 :goto_21a

    .line 4656
    :cond_b34
    if-eqz v50, :cond_b3c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    add-int v37, v53, v3

    .end local v37    # "currentWinHeight":I
    :cond_b3c
    move/from16 v0, v37

    move/from16 v1, v42

    if-ge v0, v1, :cond_b98

    .line 4659
    if-eqz v50, :cond_b7f

    .line 4660
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    sub-int v4, v4, v53

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    int-to-float v7, v7

    move-object/from16 v0, v51

    iget v8, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x3f000000

    add-float/2addr v7, v8

    float-to-int v7, v7

    sub-int/2addr v4, v7

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, v10, Landroid/graphics/Rect;->top:I

    iput v3, v9, Landroid/graphics/Rect;->top:I

    .line 4662
    iget v3, v9, Landroid/graphics/Rect;->bottom:I

    iget v4, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    .line 4663
    iget v3, v10, Landroid/graphics/Rect;->bottom:I

    iget v4, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    .line 4671
    :goto_b72
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v4, 0x20000000

    or-int/2addr v3, v4

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_22f

    .line 4665
    :cond_b7f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v3, v10, Landroid/graphics/Rect;->top:I

    iput v3, v9, Landroid/graphics/Rect;->top:I

    .line 4666
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    .line 4667
    move/from16 v0, v38

    iput v0, v9, Landroid/graphics/Rect;->left:I

    .line 4668
    add-int v3, v38, v39

    iput v3, v9, Landroid/graphics/Rect;->right:I

    goto :goto_b72

    .line 4673
    :cond_b98
    if-eqz v50, :cond_be1

    if-eqz v57, :cond_be1

    .line 4674
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iput v3, v12, Landroid/graphics/Rect;->top:I

    iput v3, v10, Landroid/graphics/Rect;->top:I

    iput v3, v9, Landroid/graphics/Rect;->top:I

    .line 4675
    move/from16 v0, v42

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    move-object/from16 v0, v51

    iget v7, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v7

    sub-float/2addr v3, v4

    const/high16 v4, 0x3f800000

    mul-float/2addr v3, v4

    move-object/from16 v0, v51

    iget v4, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v3, v4

    const/high16 v4, 0x3f000000

    add-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    move-object/from16 v0, v51

    iget v7, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v7

    const/high16 v7, 0x3f000000

    add-float/2addr v4, v7

    float-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, v12, Landroid/graphics/Rect;->bottom:I

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    .line 4708
    :cond_bd9
    :goto_bd9
    const/high16 v3, 0x40000000

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_22f

    .line 4679
    :cond_be1
    const/4 v3, 0x0

    iput v3, v12, Landroid/graphics/Rect;->top:I

    iput v3, v10, Landroid/graphics/Rect;->top:I

    iput v3, v9, Landroid/graphics/Rect;->top:I

    .line 4680
    move/from16 v0, v38

    iput v0, v9, Landroid/graphics/Rect;->left:I

    .line 4681
    iget v3, v9, Landroid/graphics/Rect;->left:I

    add-int v3, v3, v39

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 4682
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    if-eqz v3, :cond_c46

    move/from16 v0, v55

    and-int/lit16 v3, v0, 0x200

    if-eqz v3, :cond_c46

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_c46

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7cf

    if-gt v3, v4, :cond_c46

    .line 4686
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v3, v4

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    .line 4692
    :goto_c1a
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v3

    if-eqz v3, :cond_c39

    .line 4693
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    .line 4694
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v3, v10, Landroid/graphics/Rect;->left:I

    .line 4695
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v3, v4

    iput v3, v10, Landroid/graphics/Rect;->right:I

    .line 4699
    :cond_c39
    const/16 v3, 0x10

    if-eq v6, v3, :cond_bd9

    .line 4700
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v3, v12, Landroid/graphics/Rect;->bottom:I

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    goto :goto_bd9

    .line 4688
    :cond_c46
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v3, v4

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_c1a

    .line 4715
    :cond_c54
    invoke-virtual {v13, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_241

    .line 4720
    .end local v42    # "heightUpperInputMethod":I
    .end local v54    # "stackBoxBounds":Landroid/graphics/Rect;
    .restart local v37    # "currentWinHeight":I
    :cond_c59
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v3

    if-eqz v3, :cond_241

    .line 4721
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackBoxBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    if-le v3, v4, :cond_c9b

    .line 4722
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iput v3, v10, Landroid/graphics/Rect;->top:I

    iput v3, v9, Landroid/graphics/Rect;->top:I

    .line 4726
    :cond_c73
    :goto_c73
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    .line 4727
    move/from16 v0, v38

    iput v0, v9, Landroid/graphics/Rect;->left:I

    .line 4728
    iget v3, v9, Landroid/graphics/Rect;->left:I

    add-int v3, v3, v39

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 4731
    const/16 v3, 0x10

    if-eq v6, v3, :cond_241

    .line 4732
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v3, v12, Landroid/graphics/Rect;->top:I

    iput v3, v10, Landroid/graphics/Rect;->top:I

    .line 4733
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v3, v12, Landroid/graphics/Rect;->bottom:I

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_241

    .line 4723
    :cond_c9b
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackBoxBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_c73

    .line 4724
    const/4 v3, 0x0

    iput v3, v10, Landroid/graphics/Rect;->top:I

    iput v3, v9, Landroid/graphics/Rect;->top:I

    goto :goto_c73

    .line 4739
    .end local v36    # "currentWinBottom":I
    .end local v37    # "currentWinHeight":I
    .end local v38    # "currentWinLeft":I
    .end local v39    # "currentWinWidth":I
    .end local v51    # "scale":Landroid/graphics/PointF;
    .end local v53    # "scaledWinHeight":I
    :cond_ca9
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v3

    if-eqz v3, :cond_241

    .line 4740
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v4, 0x1fffffff

    and-int/2addr v3, v4

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_241

    .line 4744
    :cond_cbd
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v3

    if-eqz v3, :cond_ccf

    .line 4745
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v4, 0x1fffffff

    and-int/2addr v3, v4

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 4748
    :cond_ccf
    if-eqz v14, :cond_241

    invoke-virtual {v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_241

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v3

    if-nez v3, :cond_241

    if-eqz v47, :cond_241

    invoke-virtual {v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_241

    const/16 v3, 0x10

    if-ne v6, v3, :cond_241

    .line 4751
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v3, v13, Landroid/graphics/Rect;->bottom:I

    iput v3, v12, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_241

    .line 4767
    :cond_cf6
    const/16 v28, 0x0

    move-object/from16 v23, p0

    move-object/from16 v24, p1

    move/from16 v25, v5

    move-object/from16 v27, p3

    move-object/from16 v29, v9

    move-object/from16 v30, v10

    move-object/from16 v31, v11

    move-object/from16 v32, v12

    move-object/from16 v33, v13

    move-object/from16 v34, v14

    invoke-virtual/range {v23 .. v34}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto/16 :goto_2a5

    .line 4771
    .end local v47    # "isPortrait":Z
    :cond_d11
    if-eqz v57, :cond_2a5

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v3

    if-eqz v3, :cond_2a5

    .line 4772
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getScaleFactor()Landroid/graphics/PointF;

    move-result-object v51

    .line 4773
    .restart local v51    # "scale":Landroid/graphics/PointF;
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v41

    .line 4774
    .local v41, "height":I
    move/from16 v0, v41

    int-to-float v3, v0

    move-object/from16 v0, v51

    iget v4, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int v52, v41, v3

    .line 4775
    .local v52, "scaledDiff":I
    iget v3, v9, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    add-int/2addr v3, v4

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    .line 4776
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    add-int v3, v3, v52

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    .line 4777
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_2a5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_2a5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_2a5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-lez v3, :cond_2a5

    .line 4780
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v3, v0, :cond_d85

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_d85

    .line 4781
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    add-int v3, v3, v52

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    .line 4784
    :cond_d85
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getGroupId()I

    move-result v3

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGroupId()I

    move-result v4

    if-ne v3, v4, :cond_2a5

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2a5

    .line 4787
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int v42, v3, v4

    .line 4789
    .restart local v42    # "heightUpperInputMethod":I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackBoxBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    move/from16 v0, v42

    if-ge v3, v0, :cond_de2

    .line 4790
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackBoxBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int v4, v42, v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, v9, Landroid/graphics/Rect;->top:I

    goto/16 :goto_2a5

    .line 4792
    :cond_de2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v3, v9, Landroid/graphics/Rect;->top:I

    goto/16 :goto_2a5
.end method

.method public lockNow(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 7058
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7059
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7060
    if-eqz p1, :cond_16

    .line 7063
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;->setLockOptions(Landroid/os/Bundle;)V

    .line 7065
    :cond_16
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7066
    return-void
.end method

.method public needForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;Lcom/samsung/android/multiwindow/MultiWindowStyle;Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z
    .registers 12
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "attachAttrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p4, "windowMode"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p5, "attachedWindowMode"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 8119
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v3, v1, :cond_17

    invoke-virtual {p4, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_16

    if-eqz p5, :cond_17

    invoke-virtual {p5, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 8146
    :cond_16
    :goto_16
    return v1

    .line 8125
    :cond_17
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanBeForceHide:Z

    if-nez v3, :cond_1d

    move v1, v2

    .line 8126
    goto :goto_16

    .line 8129
    :cond_1d
    invoke-virtual {p4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-eq v3, v4, :cond_2b

    if-eqz p5, :cond_3f

    invoke-virtual {p5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-ne v3, v4, :cond_3f

    .line 8131
    :cond_2b
    const/high16 v0, 0x480000

    .line 8133
    .local v0, "mask":I
    if-eqz p2, :cond_36

    .line 8134
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_36

    move v1, v2

    .line 8135
    goto :goto_16

    .line 8138
    :cond_36
    if-eqz p3, :cond_16

    .line 8139
    iget v3, p3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_16

    move v1, v2

    .line 8140
    goto :goto_16

    .end local v0    # "mask":I
    :cond_3f
    move v1, v2

    .line 8146
    goto :goto_16
.end method

.method public needHideTrayBar()Z
    .registers 10

    .prologue
    const/4 v5, 0x0

    const/high16 v8, 0x100000

    const/4 v6, 0x1

    .line 7264
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneA:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v7, :cond_46

    move-object v3, v5

    .line 7265
    .local v3, "lpZoneA":Landroid/view/WindowManager$LayoutParams;
    :goto_9
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneB:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v7, :cond_4d

    move-object v4, v5

    .line 7267
    .local v4, "lpZoneB":Landroid/view/WindowManager$LayoutParams;
    :goto_e
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_5b

    .line 7268
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 7269
    .local v1, "lpApp":Landroid/view/WindowManager$LayoutParams;
    move-object v2, v1

    .line 7271
    .local v2, "lpTopFullApp":Landroid/view/WindowManager$LayoutParams;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_27

    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v5, v6, :cond_27

    .line 7273
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 7276
    :cond_27
    if-eqz v2, :cond_5b

    .line 7277
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v7, 0x480000

    and-int/2addr v5, v7

    if-eqz v5, :cond_54

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isSecure()Z

    move-result v5

    if-eqz v5, :cond_54

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v5, :cond_54

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    if-nez v5, :cond_54

    move v5, v6

    .line 7316
    .end local v1    # "lpApp":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "lpTopFullApp":Landroid/view/WindowManager$LayoutParams;
    :goto_45
    return v5

    .line 7264
    .end local v3    # "lpZoneA":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "lpZoneB":Landroid/view/WindowManager$LayoutParams;
    :cond_46
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneA:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    goto :goto_9

    .line 7265
    .restart local v3    # "lpZoneA":Landroid/view/WindowManager$LayoutParams;
    :cond_4d
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneB:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    goto :goto_e

    .line 7283
    .restart local v1    # "lpApp":Landroid/view/WindowManager$LayoutParams;
    .restart local v2    # "lpTopFullApp":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "lpZoneB":Landroid/view/WindowManager$LayoutParams;
    :cond_54
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/2addr v5, v8

    if-eqz v5, :cond_5b

    move v5, v6

    .line 7284
    goto :goto_45

    .line 7289
    .end local v1    # "lpApp":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "lpTopFullApp":Landroid/view/WindowManager$LayoutParams;
    :cond_5b
    if-eqz v3, :cond_64

    .line 7290
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/2addr v5, v8

    if-eqz v5, :cond_64

    move v5, v6

    .line 7291
    goto :goto_45

    .line 7295
    :cond_64
    if-eqz v4, :cond_6d

    .line 7296
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/2addr v5, v8

    if-eqz v5, :cond_6d

    move v5, v6

    .line 7297
    goto :goto_45

    .line 7301
    :cond_6d
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    if-eqz v5, :cond_8b

    .line 7302
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isKidsModeEnabled()Z

    move-result v5

    if-nez v5, :cond_89

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isEasyModeEnabled()Z

    move-result v5

    if-nez v5, :cond_89

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isKnoxActivated()Z

    move-result v5

    if-eqz v5, :cond_8b

    :cond_89
    move v5, v6

    .line 7303
    goto :goto_45

    .line 7307
    :cond_8b
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_9e

    .line 7308
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 7309
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v0, :cond_9e

    .line 7310
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/2addr v5, v8

    if-eqz v5, :cond_9e

    move v5, v6

    .line 7311
    goto :goto_45

    .line 7316
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_9e
    const/4 v5, 0x0

    goto :goto_45
.end method

.method needSensorRunningLp()Z
    .registers 5

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x1

    .line 795
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq v1, v3, :cond_16

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_16

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_16

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_17

    .line 822
    :cond_16
    :goto_16
    return v0

    .line 803
    :cond_17
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v1, :cond_20

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_16

    :cond_20
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v1, :cond_31

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v1, v0, :cond_16

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_16

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v1, v3, :cond_16

    .line 811
    :cond_31
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-ne v1, v0, :cond_16

    .line 820
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public notifyCoverSwitchChanged(JZ)V
    .registers 5
    .param p1, "whenNanos"    # J
    .param p3, "coverOpen"    # Z

    .prologue
    .line 5351
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-eqz v0, :cond_5

    .line 5358
    :goto_4
    return-void

    .line 5353
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyCoverSwitchState(ZZ)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 5354
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 5357
    :cond_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->notifyCoverSwitchChanged(JZ)V

    goto :goto_4
.end method

.method public notifyGloveSwitchChanged(JZ)V
    .registers 5
    .param p1, "whenNanos"    # J
    .param p3, "gloveEnable"    # Z

    .prologue
    .line 5365
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-eqz v0, :cond_5

    .line 5367
    :goto_4
    return-void

    .line 5366
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->notifyGloveSwitchChanged(JZ)V

    goto :goto_4
.end method

.method public notifyLidSwitchChanged(JZ)V
    .registers 9
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5319
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-eqz v3, :cond_7

    .line 5336
    :cond_6
    :goto_6
    return-void

    .line 5322
    :cond_7
    if-eqz p3, :cond_22

    move v0, v1

    .line 5323
    .local v0, "newLidState":I
    :goto_a
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-eq v0, v3, :cond_6

    .line 5327
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    .line 5328
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyLidSwitchState()V

    .line 5329
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 5331
    if-eqz p3, :cond_24

    .line 5332
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    goto :goto_6

    .end local v0    # "newLidState":I
    :cond_22
    move v0, v2

    .line 5322
    goto :goto_a

    .line 5333
    .restart local v0    # "newLidState":I
    :cond_24
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    if-nez v1, :cond_6

    .line 5334
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4, v2}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_6
.end method

.method public notifyPenSwitchChanged(JZ)V
    .registers 5
    .param p1, "whenNanos"    # J
    .param p3, "penInsert"    # Z

    .prologue
    .line 5342
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-eqz v0, :cond_5

    .line 5344
    :goto_4
    return-void

    .line 5343
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

    .line 7453
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    if-eqz v6, :cond_d

    .line 7454
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    move-result v4

    .line 7501
    :cond_c
    :goto_c
    return v4

    .line 7457
    :cond_d
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v6}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 7460
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "haptic_feedback_enabled"

    const/4 v8, -0x2

    invoke-static {v6, v7, v4, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-nez v6, :cond_4e

    move v0, v5

    .line 7462
    .local v0, "hapticsDisabled":Z
    :goto_25
    if-nez p3, :cond_31

    if-nez v0, :cond_c

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v6

    if-nez v6, :cond_c

    .line 7465
    :cond_31
    const/4 v3, 0x0

    .line 7466
    .local v3, "pattern":[J
    sparse-switch p2, :sswitch_data_6e

    goto :goto_c

    .line 7468
    :sswitch_36
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressVibePattern:[J

    .line 7487
    :goto_38
    if-eqz p1, :cond_5c

    .line 7488
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningUid()I

    move-result v2

    .line 7489
    .local v2, "owningUid":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    .line 7494
    .local v1, "owningPackage":Ljava/lang/String;
    :goto_42
    array-length v6, v3

    if-ne v6, v5, :cond_67

    .line 7496
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    aget-wide v7, v3, v4

    invoke-virtual {v6, v2, v1, v7, v8}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;J)V

    :goto_4c
    move v4, v5

    .line 7501
    goto :goto_c

    .end local v0    # "hapticsDisabled":Z
    .end local v1    # "owningPackage":Ljava/lang/String;
    .end local v2    # "owningUid":I
    .end local v3    # "pattern":[J
    :cond_4e
    move v0, v4

    .line 7460
    goto :goto_25

    .line 7471
    .restart local v0    # "hapticsDisabled":Z
    .restart local v3    # "pattern":[J
    :sswitch_50
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    .line 7472
    goto :goto_38

    .line 7474
    :sswitch_53
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    .line 7475
    goto :goto_38

    .line 7477
    :sswitch_56
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    .line 7478
    goto :goto_38

    .line 7480
    :sswitch_59
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 7481
    goto :goto_38

    .line 7491
    :cond_5c
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 7492
    .restart local v2    # "owningUid":I
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "owningPackage":Ljava/lang/String;
    goto :goto_42

    .line 7499
    :cond_67
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const/4 v6, -0x1

    invoke-virtual {v4, v2, v1, v3, v6}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;[JI)V

    goto :goto_4c

    .line 7466
    :sswitch_data_6e
    .sparse-switch
        0x0 -> :sswitch_36
        0x1 -> :sswitch_50
        0x3 -> :sswitch_53
        0x2710 -> :sswitch_56
        0x2711 -> :sswitch_59
    .end sparse-switch
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .registers 7
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v0, -0x7

    .line 2340
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v1, :sswitch_data_8e

    .line 2407
    :goto_6
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x899

    if-ne v1, v2, :cond_85

    .line 2408
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_81

    .line 2417
    :cond_10
    :goto_10
    return v0

    .line 2342
    :sswitch_11
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2345
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_26

    .line 2346
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v1

    if-nez v1, :cond_10

    .line 2350
    :cond_26
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2351
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/BarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    goto :goto_6

    .line 2354
    :sswitch_2e
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2357
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_43

    .line 2358
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v1

    if-nez v1, :cond_10

    .line 2362
    :cond_43
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2363
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/BarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    goto :goto_6

    .line 2367
    :sswitch_4b
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 2372
    :sswitch_55
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 2377
    :sswitch_5f
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 2382
    :sswitch_69
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v1, :cond_10

    .line 2385
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_6

    .line 2388
    :sswitch_70
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v1, :cond_10

    .line 2391
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_6

    .line 2395
    :sswitch_77
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSViewCover:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v1, :cond_10

    .line 2398
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSViewCover:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_6

    .line 2402
    :sswitch_7e
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_6

    .line 2411
    :cond_81
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2417
    :cond_83
    :goto_83
    const/4 v0, 0x0

    goto :goto_10

    .line 2412
    :cond_85
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x89a

    if-ne v0, v1, :cond_83

    .line 2413
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_83

    .line 2340
    :sswitch_data_8e
    .sparse-switch
        0x7d0 -> :sswitch_11
        0x7d4 -> :sswitch_69
        0x7de -> :sswitch_55
        0x7e1 -> :sswitch_5f
        0x7e3 -> :sswitch_2e
        0x7e8 -> :sswitch_4b
        0x7ed -> :sswitch_70
        0x832 -> :sswitch_77
        0x898 -> :sswitch_7e
    .end sparse-switch
.end method

.method readLidState()V
    .registers 2

    .prologue
    .line 1904
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getLidState()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    .line 1905
    return-void
.end method

.method public removeAdaptiveEvent(Ljava/lang/String;)V
    .registers 3
    .param p1, "requestClass"    # Ljava/lang/String;

    .prologue
    .line 8187
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_9

    .line 8188
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->removeAdaptiveEvent(Ljava/lang/String;)V

    .line 8190
    :cond_9
    return-void
.end method

.method public removeContextualEvent(Ljava/lang/String;)V
    .registers 3
    .param p1, "requestClass"    # Ljava/lang/String;

    .prologue
    .line 8172
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_9

    .line 8173
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->removeContextualEvent(Ljava/lang/String;)V

    .line 8175
    :cond_9
    return-void
.end method

.method public removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    .registers 6
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "window"    # Landroid/view/View;

    .prologue
    .line 2318
    if-eqz p2, :cond_f

    .line 2319
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2320
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0, p2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 2322
    .end local v0    # "wm":Landroid/view/WindowManager;
    :cond_f
    return-void
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 5
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v2, 0x0

    .line 2422
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_18

    .line 2423
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2424
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/BarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 2446
    :cond_c
    :goto_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_55

    .line 2447
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2448
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/BarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 2452
    :cond_17
    :goto_17
    return-void

    .line 2425
    :cond_18
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_2b

    .line 2426
    const-string v0, "WindowManager"

    const-string v1, "Removing keyguard window (Did it crash?)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2427
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2428
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->showScrim()V

    goto :goto_c

    .line 2429
    :cond_2b
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_39

    .line 2430
    const-string v0, "WindowManager"

    const-string v1, "Removing keyguard scrim"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2431
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_c

    .line 2433
    :cond_39
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_40

    .line 2434
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_c

    .line 2435
    :cond_40
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_47

    .line 2436
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_c

    .line 2440
    :cond_47
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSViewCover:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_c

    .line 2441
    const-string v0, "WindowManager"

    const-string v1, "Removing SViewCover window (Did it crash?)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSViewCover:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_c

    .line 2449
    :cond_55
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_17

    .line 2450
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_17
.end method

.method public requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "request"    # Z

    .prologue
    .line 7892
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method public requestTransientBars()V
    .registers 3

    .prologue
    .line 7907
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_a

    .line 7908
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;Z)V

    .line 7910
    :cond_a
    return-void
.end method

.method public requestTransientBars(Z)V
    .registers 3
    .param p1, "force"    # Z

    .prologue
    .line 7913
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_9

    .line 7914
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;Z)V

    .line 7916
    :cond_9
    return-void
.end method

.method public rotationForOrientationLw(II)I
    .registers 12
    .param p1, "orientation"    # I
    .param p2, "lastRotation"    # I

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x4

    const/4 v0, 0x0

    const/4 v6, 0x2

    const/4 v3, 0x1

    .line 6607
    const-string v4, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rotationForOrientationLw(orient="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", last="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "); user="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-ne v2, v3, :cond_88

    const-string v2, "USER_ROTATION_LOCKED"

    :goto_38
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " sensorRotation="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->getProposedRotation()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " mLidState="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " mDockMode="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " mHdmiPlugged="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " mAccelerometerDefault="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6620
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceDefaultOrientation:Z

    if-eqz v2, :cond_8b

    .line 6797
    :goto_87
    return v0

    .line 6607
    :cond_88
    const-string v2, ""

    goto :goto_38

    .line 6624
    :cond_8b
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 6625
    :try_start_8e
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->getProposedRotation()I

    move-result v1

    .line 6626
    .local v1, "sensorRotation":I
    if-gez v1, :cond_97

    .line 6627
    move v1, p2

    .line 6632
    :cond_97
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isSupportAndAttachedSViewCover()Z

    move-result v2

    if-eqz v2, :cond_b3

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v2, v2, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v2, :cond_b3

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverCloseRotation:I

    if-ltz v2, :cond_b3

    .line 6633
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverCloseRotation:I

    .line 6740
    .local v0, "preferredRotation":I
    :goto_a9
    packed-switch p1, :pswitch_data_258

    .line 6794
    :pswitch_ac
    if-ltz v0, :cond_253

    .line 6795
    monitor-exit v4

    goto :goto_87

    .line 6799
    .end local v0    # "preferredRotation":I
    .end local v1    # "sensorRotation":I
    :catchall_b0
    move-exception v2

    monitor-exit v4
    :try_end_b2
    .catchall {:try_start_8e .. :try_end_b2} :catchall_b0

    throw v2

    .line 6636
    .restart local v1    # "sensorRotation":I
    :cond_b3
    :try_start_b3
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-ne v2, v3, :cond_be

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    if-ltz v2, :cond_be

    .line 6638
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    .restart local v0    # "preferredRotation":I
    goto :goto_a9

    .line 6639
    .end local v0    # "preferredRotation":I
    :cond_be
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v2, v6, :cond_d3

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-nez v2, :cond_ca

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    if-ltz v2, :cond_d3

    .line 6644
    :cond_ca
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v2, :cond_d0

    move v0, v1

    .restart local v0    # "preferredRotation":I
    :goto_cf
    goto :goto_a9

    .end local v0    # "preferredRotation":I
    :cond_d0
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    goto :goto_cf

    .line 6646
    :cond_d3
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    if-nez v2, :cond_f5

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v2, v3, :cond_e4

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v5, 0x3

    if-eq v2, v5, :cond_e4

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v2, v7, :cond_f5

    :cond_e4
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-nez v2, :cond_ec

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    if-ltz v2, :cond_f5

    .line 6654
    :cond_ec
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v2, :cond_f2

    move v0, v1

    .restart local v0    # "preferredRotation":I
    :goto_f1
    goto :goto_a9

    .end local v0    # "preferredRotation":I
    :cond_f2
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    goto :goto_f1

    .line 6656
    :cond_f5
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-nez v2, :cond_fd

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWifiDisplayConnected:Z

    if-eqz v2, :cond_152

    .line 6659
    :cond_fd
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    if-ne v2, v3, :cond_13b

    .line 6660
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDemoHdmiRotation:I

    .line 6661
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 6662
    .restart local v0    # "preferredRotation":I
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Smart Dock Orientation Enabled :  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6663
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Smart Dock Orientation value  :  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a9

    .line 6664
    .end local v0    # "preferredRotation":I
    :cond_13b
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-ne v2, v3, :cond_143

    .line 6665
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_a9

    .line 6666
    .end local v0    # "preferredRotation":I
    :cond_143
    if-nez p1, :cond_149

    .line 6667
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_a9

    .line 6668
    .end local v0    # "preferredRotation":I
    :cond_149
    if-ne p1, v3, :cond_14f

    .line 6669
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_a9

    .line 6671
    .end local v0    # "preferredRotation":I
    :cond_14f
    move v0, v1

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_a9

    .line 6673
    .end local v0    # "preferredRotation":I
    :cond_152
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-eqz v2, :cond_162

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-nez v2, :cond_162

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUndockedHdmiRotation:I

    if-ltz v2, :cond_162

    .line 6679
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUndockedHdmiRotation:I

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_a9

    .line 6682
    .end local v0    # "preferredRotation":I
    :cond_162
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isUvsOrientationRequested()Z

    move-result v2

    if-eqz v2, :cond_18c

    .line 6683
    if-eqz p1, :cond_172

    const/16 v2, 0x8

    if-eq p1, v2, :cond_172

    if-ne p1, v8, :cond_176

    .line 6686
    :cond_172
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_a9

    .line 6687
    .end local v0    # "preferredRotation":I
    :cond_176
    if-eq p1, v3, :cond_17f

    const/16 v2, 0x9

    if-eq p1, v2, :cond_17f

    const/4 v2, 0x7

    if-ne p1, v2, :cond_183

    .line 6690
    :cond_17f
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_a9

    .line 6692
    .end local v0    # "preferredRotation":I
    :cond_183
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getUvsOrientation()I

    move-result v0

    .line 6693
    .restart local v0    # "preferredRotation":I
    move p1, v0

    goto/16 :goto_a9

    .line 6697
    .end local v0    # "preferredRotation":I
    :cond_18c
    const/16 v2, 0xe

    if-ne p1, v2, :cond_193

    .line 6699
    move v0, p2

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_a9

    .line 6700
    .end local v0    # "preferredRotation":I
    :cond_193
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-nez v2, :cond_1a8

    if-eq p1, v6, :cond_1b3

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1b3

    const/16 v2, 0xb

    if-eq p1, v2, :cond_1b3

    const/16 v2, 0xc

    if-eq p1, v2, :cond_1b3

    const/16 v2, 0xd

    if-eq p1, v2, :cond_1b3

    :cond_1a8
    if-eq p1, v7, :cond_1b3

    const/16 v2, 0xa

    if-eq p1, v2, :cond_1b3

    if-eq p1, v8, :cond_1b3

    const/4 v2, 0x7

    if-ne p1, v2, :cond_1dd

    .line 6712
    :cond_1b3
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    if-gez v2, :cond_1c9

    .line 6716
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x111001f

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1c7

    move v0, v3

    :cond_1c7
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    .line 6719
    :cond_1c9
    if-ne v1, v6, :cond_1d7

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    if-eq v2, v3, :cond_1d7

    const/16 v2, 0xa

    if-eq p1, v2, :cond_1d7

    const/16 v2, 0xd

    if-ne p1, v2, :cond_1da

    .line 6723
    :cond_1d7
    move v0, v1

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_a9

    .line 6725
    .end local v0    # "preferredRotation":I
    :cond_1da
    move v0, p2

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_a9

    .line 6727
    .end local v0    # "preferredRotation":I
    :cond_1dd
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-ne v2, v3, :cond_1e8

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1e8

    .line 6733
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_a9

    .line 6737
    .end local v0    # "preferredRotation":I
    :cond_1e8
    const/4 v0, -0x1

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_a9

    .line 6743
    :pswitch_1eb
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_1f4

    .line 6744
    monitor-exit v4

    goto/16 :goto_87

    .line 6746
    :cond_1f4
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .end local v0    # "preferredRotation":I
    monitor-exit v4

    goto/16 :goto_87

    .line 6750
    .restart local v0    # "preferredRotation":I
    :pswitch_1f9
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_202

    .line 6751
    monitor-exit v4

    goto/16 :goto_87

    .line 6753
    :cond_202
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .end local v0    # "preferredRotation":I
    monitor-exit v4

    goto/16 :goto_87

    .line 6757
    .restart local v0    # "preferredRotation":I
    :pswitch_207
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_210

    .line 6758
    monitor-exit v4

    goto/16 :goto_87

    .line 6760
    :cond_210
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .end local v0    # "preferredRotation":I
    monitor-exit v4

    goto/16 :goto_87

    .line 6764
    .restart local v0    # "preferredRotation":I
    :pswitch_215
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_21e

    .line 6765
    monitor-exit v4

    goto/16 :goto_87

    .line 6767
    :cond_21e
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    .end local v0    # "preferredRotation":I
    monitor-exit v4

    goto/16 :goto_87

    .line 6772
    .restart local v0    # "preferredRotation":I
    :pswitch_223
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_22c

    .line 6773
    monitor-exit v4

    goto/16 :goto_87

    .line 6775
    :cond_22c
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_236

    .line 6776
    monitor-exit v4

    move v0, p2

    goto/16 :goto_87

    .line 6778
    :cond_236
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .end local v0    # "preferredRotation":I
    monitor-exit v4

    goto/16 :goto_87

    .line 6783
    .restart local v0    # "preferredRotation":I
    :pswitch_23b
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_244

    .line 6784
    monitor-exit v4

    goto/16 :goto_87

    .line 6786
    :cond_244
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_24e

    .line 6787
    monitor-exit v4

    move v0, p2

    goto/16 :goto_87

    .line 6789
    :cond_24e
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .end local v0    # "preferredRotation":I
    monitor-exit v4

    goto/16 :goto_87

    .line 6797
    .restart local v0    # "preferredRotation":I
    :cond_253
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPanelOrientation:I

    .end local v0    # "preferredRotation":I
    monitor-exit v4
    :try_end_256
    .catchall {:try_start_b3 .. :try_end_256} :catchall_b0

    goto/16 :goto_87

    .line 6740
    :pswitch_data_258
    .packed-switch 0x0
        :pswitch_1f9
        :pswitch_1eb
        :pswitch_ac
        :pswitch_ac
        :pswitch_ac
        :pswitch_ac
        :pswitch_223
        :pswitch_23b
        :pswitch_215
        :pswitch_207
        :pswitch_ac
        :pswitch_223
        :pswitch_23b
    .end packed-switch
.end method

.method public rotationHasCompatibleMetricsLw(II)Z
    .registers 4
    .param p1, "orientation"    # I
    .param p2, "rotation"    # I

    .prologue
    .line 6804
    packed-switch p1, :pswitch_data_10

    .line 6816
    :pswitch_3
    const/4 v0, 0x1

    :goto_4
    return v0

    .line 6808
    :pswitch_5
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v0

    goto :goto_4

    .line 6813
    :pswitch_a
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v0

    goto :goto_4

    .line 6804
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
    .registers 6
    .param p1, "why"    # I

    .prologue
    const/4 v1, 0x0

    .line 6398
    const v0, 0x11170

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 6399
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6400
    const/4 v0, 0x0

    :try_start_b
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    .line 6401
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    .line 6402
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_51

    .line 6405
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->onScreenTurnedOff(I)V

    .line 6409
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isSupportAndAttachedSViewCover()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 6410
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_26

    .line 6411
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowState;->disableHideSViewCoverOnce(Z)V

    .line 6417
    :cond_26
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3d

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    if-eqz v0, :cond_3d

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableMultiWindowUISetting:I

    if-eqz v0, :cond_3d

    .line 6419
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$26;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$26;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6428
    :cond_3d
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_46

    .line 6429
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->onScreenTurnedOff(I)V

    .line 6431
    :cond_46
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6432
    :try_start_49
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 6433
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 6434
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_49 .. :try_end_50} :catchall_54

    .line 6435
    return-void

    .line 6402
    :catchall_51
    move-exception v0

    :try_start_52
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v0

    .line 6434
    :catchall_54
    move-exception v0

    :try_start_55
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v0
.end method

.method public screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .registers 4
    .param p1, "screenOnListener"    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .prologue
    const/4 v1, 0x1

    .line 6439
    const v0, 0x11170

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 6447
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->onScreenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 6450
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6451
    const/4 v0, 0x1

    :try_start_10
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    .line 6452
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 6453
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 6454
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_1d

    .line 6456
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->waitForKeyguard(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 6457
    return-void

    .line 6454
    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I
    .registers 10
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "transit"    # I

    .prologue
    const v0, 0x10a0036

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2461
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v1, :cond_1b

    .line 2462
    if-eq p2, v4, :cond_f

    if-ne p2, v6, :cond_13

    .line 2464
    :cond_f
    const v0, 0x10a003d

    .line 2514
    :cond_12
    :goto_12
    return v0

    .line 2465
    :cond_13
    if-eq p2, v3, :cond_17

    if-ne p2, v5, :cond_2f

    .line 2467
    :cond_17
    const v0, 0x10a003c

    goto :goto_12

    .line 2469
    :cond_1b
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v1, :cond_2f

    .line 2471
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v1, :cond_41

    .line 2472
    if-eq p2, v4, :cond_27

    if-ne p2, v6, :cond_2b

    .line 2474
    :cond_27
    const v0, 0x10a0037

    goto :goto_12

    .line 2475
    :cond_2b
    if-eq p2, v3, :cond_12

    if-eq p2, v5, :cond_12

    .line 2490
    :cond_2f
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x82f

    if-ne v1, v2, :cond_55

    .line 2491
    if-eq p2, v4, :cond_3d

    if-ne p2, v6, :cond_51

    .line 2493
    :cond_3d
    const v0, 0x10a0037

    goto :goto_12

    .line 2480
    :cond_41
    if-eq p2, v4, :cond_45

    if-ne p2, v6, :cond_49

    .line 2482
    :cond_45
    const v0, 0x10a003b

    goto :goto_12

    .line 2483
    :cond_49
    if-eq p2, v3, :cond_4d

    if-ne p2, v5, :cond_2f

    .line 2485
    :cond_4d
    const v0, 0x10a003a

    goto :goto_12

    .line 2494
    :cond_51
    if-eq p2, v3, :cond_12

    if-eq p2, v5, :cond_12

    .line 2500
    :cond_55
    const/4 v0, 0x5

    if-ne p2, v0, :cond_62

    .line 2501
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 2503
    const v0, 0x10a0033

    goto :goto_12

    .line 2505
    :cond_62
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e7

    if-ne v0, v1, :cond_74

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamingLockscreen:Z

    if-eqz v0, :cond_74

    if-ne p2, v3, :cond_74

    .line 2511
    const/4 v0, -0x1

    goto :goto_12

    .line 2514
    :cond_74
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public selectRotationAnimationLw([I)V
    .registers 7
    .param p1, "anim"    # [I

    .prologue
    const v4, 0x10a0069

    const v3, 0x10a0068

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2523
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_37

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v0, :cond_37

    .line 2524
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    packed-switch v0, :pswitch_data_3c

    .line 2535
    aput v1, p1, v2

    aput v1, p1, v1

    .line 2542
    :goto_1f
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->doesForceHideBySViewCover()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2543
    aput v4, p1, v1

    .line 2544
    aput v3, p1, v2

    .line 2547
    :cond_29
    return-void

    .line 2526
    :pswitch_2a
    const v0, 0x10a006a

    aput v0, p1, v1

    .line 2527
    aput v3, p1, v2

    goto :goto_1f

    .line 2530
    :pswitch_32
    aput v4, p1, v1

    .line 2531
    aput v3, p1, v2

    goto :goto_1f

    .line 2539
    :cond_37
    aput v1, p1, v2

    aput v1, p1, v1

    goto :goto_1f

    .line 2524
    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_32
    .end packed-switch
.end method

.method sendCloseSystemWindows()V
    .registers 3

    .prologue
    .line 6588
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 6589
    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 6592
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 6593
    return-void
.end method

.method public setAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .registers 5
    .param p1, "requestClass"    # Ljava/lang/String;
    .param p2, "smallView"    # Landroid/widget/RemoteViews;
    .param p3, "bigView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 8182
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_9

    .line 8183
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 8185
    :cond_9
    return-void
.end method

.method setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .registers 14
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
    .param p11, "windowMode"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 4063
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-le v0, v1, :cond_64

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-ge v0, v1, :cond_64

    .line 4071
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v0, p10, Landroid/graphics/Rect;->left:I

    iput v0, p9, Landroid/graphics/Rect;->left:I

    iput v0, p8, Landroid/graphics/Rect;->left:I

    iput v0, p7, Landroid/graphics/Rect;->left:I

    .line 4072
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v0, p10, Landroid/graphics/Rect;->top:I

    iput v0, p9, Landroid/graphics/Rect;->top:I

    iput v0, p8, Landroid/graphics/Rect;->top:I

    iput v0, p7, Landroid/graphics/Rect;->top:I

    .line 4073
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v0, p10, Landroid/graphics/Rect;->right:I

    iput v0, p9, Landroid/graphics/Rect;->right:I

    iput v0, p8, Landroid/graphics/Rect;->right:I

    iput v0, p7, Landroid/graphics/Rect;->right:I

    .line 4074
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v0, p10, Landroid/graphics/Rect;->bottom:I

    iput v0, p9, Landroid/graphics/Rect;->bottom:I

    iput v0, p8, Landroid/graphics/Rect;->bottom:I

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    .line 4113
    .end local p9    # "cf":Landroid/graphics/Rect;
    :goto_38
    and-int/lit16 v0, p2, 0x200

    if-eqz v0, :cond_c3

    and-int/lit16 v0, p2, 0x100

    if-nez v0, :cond_c3

    invoke-virtual {p11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v0

    if-eqz v0, :cond_c3

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_c3

    .line 4117
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4120
    const/16 v0, -0x2710

    iput v0, p7, Landroid/graphics/Rect;->top:I

    iput v0, p7, Landroid/graphics/Rect;->left:I

    .line 4121
    const/16 v0, 0x2710

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    iput v0, p7, Landroid/graphics/Rect;->right:I

    .line 4135
    :cond_63
    :goto_63
    return-void

    .line 4082
    .restart local p9    # "cf":Landroid/graphics/Rect;
    :cond_64
    const/16 v0, 0x10

    if-eq p3, v0, :cond_89

    .line 4083
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getOverscanFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4099
    :cond_6f
    :goto_6f
    if-eqz p5, :cond_c1

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    :goto_75
    invoke-virtual {p7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4100
    if-eqz p5, :cond_7e

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getOverscanFrameLw()Landroid/graphics/Rect;

    move-result-object p9

    .end local p9    # "cf":Landroid/graphics/Rect;
    :cond_7e
    invoke-virtual {p8, p9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4101
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_38

    .line 4091
    .restart local p9    # "cf":Landroid/graphics/Rect;
    :cond_89
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4092
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-ge v0, v1, :cond_6f

    .line 4093
    iget v0, p9, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    if-ge v0, v1, :cond_a2

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v0, p9, Landroid/graphics/Rect;->left:I

    .line 4094
    :cond_a2
    iget v0, p9, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    if-ge v0, v1, :cond_ac

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v0, p9, Landroid/graphics/Rect;->top:I

    .line 4095
    :cond_ac
    iget v0, p9, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    if-le v0, v1, :cond_b6

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v0, p9, Landroid/graphics/Rect;->right:I

    .line 4096
    :cond_b6
    iget v0, p9, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    if-le v0, v1, :cond_6f

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v0, p9, Landroid/graphics/Rect;->bottom:I

    goto :goto_6f

    :cond_c1
    move-object v0, p9

    .line 4099
    goto :goto_75

    .line 4122
    .end local p9    # "cf":Landroid/graphics/Rect;
    :cond_c3
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x899

    if-ne v0, v1, :cond_de

    .line 4123
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v0, p6, Landroid/graphics/Rect;->left:I

    .line 4124
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 4125
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v0, p6, Landroid/graphics/Rect;->right:I

    .line 4126
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    goto :goto_63

    .line 4129
    :cond_de
    and-int/lit16 v0, p2, 0x100

    if-nez v0, :cond_eb

    .line 4130
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_63

    .line 4131
    :cond_eb
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_63

    .line 4132
    invoke-virtual {p6, p7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_63
.end method

.method public setContextualEvent(Ljava/lang/String;Landroid/widget/RemoteViews;)V
    .registers 4
    .param p1, "requestClass"    # Ljava/lang/String;
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 8167
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_9

    .line 8168
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setContextualEvent(Ljava/lang/String;Landroid/widget/RemoteViews;)V

    .line 8170
    :cond_9
    return-void
.end method

.method public setCurrentInputMethodTargetLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 2
    .param p1, "inputTargetWindow"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 1018
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1019
    return-void
.end method

.method public setCurrentOrientationLw(I)V
    .registers 4
    .param p1, "newOrientation"    # I

    .prologue
    .line 7422
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7423
    :try_start_3
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq p1, v0, :cond_c

    .line 7424
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    .line 7425
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 7427
    :cond_c
    monitor-exit v1

    .line 7428
    return-void

    .line 7427
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public setCurrentUserLw(I)V
    .registers 4
    .param p1, "newUserId"    # I

    .prologue
    const/4 v1, 0x0

    .line 7713
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentUserId:I

    .line 7714
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_c

    .line 7715
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setCurrentUser(I)V

    .line 7717
    :cond_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v0, :cond_15

    .line 7719
    :try_start_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->setCurrentUser(I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_19

    .line 7724
    :cond_15
    :goto_15
    invoke-virtual {p0, v1, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 7725
    return-void

    .line 7720
    :catch_19
    move-exception v0

    goto :goto_15
.end method

.method public setDisplayOverscan(Landroid/view/Display;IIII)V
    .registers 7
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1554
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_e

    .line 1555
    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    .line 1556
    iput p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    .line 1557
    iput p4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    .line 1558
    iput p5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    .line 1560
    :cond_e
    return-void
.end method

.method setHdmiPlugged(Z)V
    .registers 5
    .param p1, "plugged"    # Z

    .prologue
    const/4 v2, 0x1

    .line 5371
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-eq v1, p1, :cond_22

    .line 5372
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    .line 5373
    invoke-virtual {p0, v2, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(ZZ)V

    .line 5374
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.HDMI_PLUGGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5375
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5376
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5377
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5379
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_22
    return-void
.end method

.method public setInitialDisplaySize(Landroid/view/Display;III)V
    .registers 22
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "density"    # I

    .prologue
    .line 1447
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/view/Display;->getDisplayId()I

    move-result v8

    if-eqz v8, :cond_d

    .line 1537
    :cond_c
    :goto_c
    return-void

    .line 1450
    :cond_d
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    .line 1451
    const-string v8, "persist.panel.orientation"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    div-int/lit8 v8, v8, 0x5a

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPanelOrientation:I

    .line 1454
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1456
    .local v5, "res":Landroid/content/res/Resources;
    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_15b

    .line 1457
    move/from16 v6, p3

    .line 1458
    .local v6, "shortSize":I
    move/from16 v2, p2

    .line 1459
    .local v2, "longSize":I
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 1460
    const/4 v8, 0x2

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    .line 1461
    const v8, 0x1110020

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_14f

    .line 1462
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 1463
    const/4 v8, 0x3

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 1482
    :goto_4f
    const v8, 0x105000c

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    .line 1485
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    const v9, 0x1050111

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 1486
    const v8, 0x1050121

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMinimizeSize:I

    .line 1489
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    const v12, 0x105000d

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    aput v12, v10, v11

    aput v12, v8, v9

    .line 1492
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    const v12, 0x105000e

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    aput v12, v10, v11

    aput v12, v8, v9

    .line 1497
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    const v16, 0x105000f

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    aput v16, v14, v15

    aput v16, v12, v13

    aput v16, v10, v11

    aput v16, v8, v9

    .line 1504
    mul-int/lit16 v8, v6, 0xa0

    div-int v7, v8, p4

    .line 1505
    .local v7, "shortSizeDp":I
    mul-int/lit16 v8, v2, 0xa0

    div-int v3, v8, p4

    .line 1508
    .local v3, "longSizeDp":I
    const/16 v8, 0x258

    if-ge v7, v8, :cond_18a

    const/4 v8, 0x1

    :goto_e6
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    .line 1510
    const v8, 0x1110048

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    .line 1513
    const-string v8, "qemu.hw.mainkeys"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1514
    .local v4, "navBarOverride":Ljava/lang/String;
    const-string v8, "1"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18d

    .line 1515
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    .line 1522
    :cond_108
    :goto_108
    const-string v8, "portrait"

    const-string v9, "persist.demo.hdmirotation"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19c

    .line 1523
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDemoHdmiRotation:I

    .line 1527
    :goto_11e
    const-string v8, "persist.demo.hdmirotationlock"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    .line 1531
    const/16 v8, 0x3c0

    if-lt v3, v8, :cond_1a6

    const/16 v8, 0x2d0

    if-lt v7, v8, :cond_1a6

    const v8, 0x1110064

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_1a6

    const-string v8, "true"

    const-string v9, "config.override_forced_orient"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1a6

    const/4 v8, 0x1

    :goto_149
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceDefaultOrientation:Z

    goto/16 :goto_c

    .line 1465
    .end local v3    # "longSizeDp":I
    .end local v4    # "navBarOverride":Ljava/lang/String;
    .end local v7    # "shortSizeDp":I
    :cond_14f
    const/4 v8, 0x3

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 1466
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    goto/16 :goto_4f

    .line 1469
    .end local v2    # "longSize":I
    .end local v6    # "shortSize":I
    :cond_15b
    move/from16 v6, p2

    .line 1470
    .restart local v6    # "shortSize":I
    move/from16 v2, p3

    .line 1471
    .restart local v2    # "longSize":I
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 1472
    const/4 v8, 0x2

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 1473
    const v8, 0x1110020

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_17e

    .line 1474
    const/4 v8, 0x3

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 1475
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    goto/16 :goto_4f

    .line 1477
    :cond_17e
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 1478
    const/4 v8, 0x3

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    goto/16 :goto_4f

    .line 1508
    .restart local v3    # "longSizeDp":I
    .restart local v7    # "shortSizeDp":I
    :cond_18a
    const/4 v8, 0x0

    goto/16 :goto_e6

    .line 1516
    .restart local v4    # "navBarOverride":Ljava/lang/String;
    :cond_18d
    const-string v8, "0"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_108

    .line 1517
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    goto/16 :goto_108

    .line 1525
    :cond_19c
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDemoHdmiRotation:I

    goto/16 :goto_11e

    .line 1531
    :cond_1a6
    const/4 v8, 0x0

    goto :goto_149
.end method

.method public setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 3
    .param p1, "ime"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "target"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 7707
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 7708
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 7709
    return-void
.end method

.method public setMultiWindowTrayOpenState(Z)V
    .registers 2
    .param p1, "open"    # Z

    .prologue
    .line 8150
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMWTrayOpen:Z

    .line 8151
    return-void
.end method

.method public setRotationLw(I)V
    .registers 8
    .param p1, "rotation"    # I

    .prologue
    .line 6825
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->setCurrentRotation(I)V

    .line 6827
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->cpuBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_1f

    .line 6828
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "ROTATION_BOOSTER"

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->cpuBooster:Landroid/os/DVFSHelper;

    .line 6829
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->cpuBooster:Landroid/os/DVFSHelper;

    const-string v1, "PhoneWindowManager_rotation"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 6831
    :cond_1f
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->cpuBooster:Landroid/os/DVFSHelper;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 6832
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->cpuBooster:Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "ROTATION_BOOSTER"

    invoke-virtual {v0, v1, v2}, Landroid/os/DVFSHelper;->onWindowRotationEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 6834
    return-void
.end method

.method public setSafeMode(Z)V
    .registers 6
    .param p1, "safeMode"    # Z

    .prologue
    .line 6874
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    .line 6875
    const/4 v2, 0x0

    if-eqz p1, :cond_26

    const/16 v1, 0x2711

    :goto_7
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 6879
    if-eqz p1, :cond_25

    .line 6880
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6881
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.SAFEMODE_ENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6882
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6883
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v3, "com.sec.android.permission.HANDLE_SAFEMODE_ENABLE"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 6886
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_25
    return-void

    .line 6875
    :cond_26
    const/16 v1, 0x2710

    goto :goto_7
.end method

.method public setSpecialKeysFilter(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 7932
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpecialKeysLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7933
    if-eqz p1, :cond_e

    .line 7934
    :try_start_5
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpecialKeysMessenger:Landroid/os/Messenger;

    .line 7938
    :goto_c
    monitor-exit v1

    .line 7939
    return-void

    .line 7936
    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpecialKeysMessenger:Landroid/os/Messenger;

    goto :goto_c

    .line 7938
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public setTouchExplorationEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 7757
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTouchExplorationEnabled:Z

    .line 7758
    return-void
.end method

.method public setUserRotationMode(II)V
    .registers 7
    .param p1, "mode"    # I
    .param p2, "rot"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x2

    .line 6853
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 6856
    .local v0, "res":Landroid/content/ContentResolver;
    if-ne p1, v2, :cond_16

    .line 6857
    const-string v1, "user_rotation"

    invoke-static {v0, v1, p2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 6861
    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 6871
    :goto_15
    return-void

    .line 6866
    :cond_16
    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_15
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "always"    # Z

    .prologue
    .line 6954
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-eqz v0, :cond_5

    .line 6999
    :goto_4
    return-void

    .line 6955
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$31;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$31;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method

.method showGlobalActionsDialog()V
    .registers 6

    .prologue
    .line 1004
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    if-nez v1, :cond_f

    .line 1005
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/policy/impl/GlobalActions;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    .line 1007
    :cond_f
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v0

    .line 1008
    .local v0, "keyguardShowing":Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/policy/impl/GlobalActions;->showDialog(ZZ)V

    .line 1009
    if-eqz v0, :cond_28

    .line 1012
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 1014
    :cond_28
    return-void
.end method

.method showOrHideRecentAppsDialog(I)V
    .registers 5
    .param p1, "behavior"    # I

    .prologue
    .line 1138
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v1, :cond_10

    .line 1139
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1142
    :cond_10
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_24

    .line 1143
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    .line 1144
    .local v0, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v0, :cond_24

    .line 1145
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/enterprise/kioskmode/KioskMode;->isTaskManagerAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_24

    .line 1191
    .end local v0    # "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    :goto_23
    return-void

    .line 1152
    :cond_24
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$7;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$7;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_23
.end method

.method startDockOrHome()V
    .registers 5

    .prologue
    .line 7173
    const-string v1, "WindowManager"

    const-string v2, "startDockOrHome"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7174
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->awakenDreams()V

    .line 7176
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v0

    .line 7177
    .local v0, "dock":Landroid/content/Intent;
    if-eqz v0, :cond_21

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDockHomeEnabled()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 7179
    :try_start_18
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_18 .. :try_end_1f} :catch_20

    .line 7186
    :goto_1f
    return-void

    .line 7181
    :catch_20
    move-exception v1

    .line 7185
    :cond_21
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1f
.end method

.method public subWindowTypeToLayerLw(I)I
    .registers 5
    .param p1, "type"    # I

    .prologue
    .line 2095
    packed-switch p1, :pswitch_data_26

    .line 2106
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

    .line 2107
    const/4 v0, 0x0

    :goto_1c
    return v0

    .line 2098
    :pswitch_1d
    const/4 v0, 0x1

    goto :goto_1c

    .line 2100
    :pswitch_1f
    const/4 v0, -0x2

    goto :goto_1c

    .line 2102
    :pswitch_21
    const/4 v0, -0x1

    goto :goto_1c

    .line 2104
    :pswitch_23
    const/4 v0, 0x2

    goto :goto_1c

    .line 2095
    nop

    :pswitch_data_26
    .packed-switch 0x3e8
        :pswitch_1d
        :pswitch_1f
        :pswitch_23
        :pswitch_1d
        :pswitch_21
    .end packed-switch
.end method

.method public systemBooted()V
    .registers 5

    .prologue
    .line 6927
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v2, :cond_9

    .line 6928
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->onBootCompleted()V

    .line 6930
    :cond_9
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 6931
    const/4 v2, 0x1

    :try_start_d
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    .line 6932
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_2e

    .line 6935
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    if-nez v2, :cond_2d

    .line 6937
    :try_start_14
    const-string v2, "kioskmode"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/kioskmode/IKioskMode;

    move-result-object v1

    .line 6939
    .local v1, "kioskService":Landroid/app/enterprise/kioskmode/IKioskMode;
    if-eqz v1, :cond_2d

    .line 6940
    invoke-interface {v1}, Landroid/app/enterprise/kioskmode/IKioskMode;->getBlockedHwKeysCache()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    .line 6941
    const-string v2, "WindowManager"

    const-string v3, "Blocked hw keys cache is being refreshed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_2d} :catch_31

    .line 6948
    .end local v1    # "kioskService":Landroid/app/enterprise/kioskmode/IKioskMode;
    :cond_2d
    :goto_2d
    return-void

    .line 6932
    :catchall_2e
    move-exception v2

    :try_start_2f
    monitor-exit v3
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v2

    .line 6943
    :catch_31
    move-exception v0

    .line 6944
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "Exception while getting kiosk mode service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method

.method public systemReady()V
    .registers 4

    .prologue
    .line 6903
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-nez v0, :cond_1a

    .line 6904
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    .line 6905
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->onSystemReady()V

    .line 6907
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->onSystemReady(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)V

    .line 6910
    :cond_1a
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6911
    :try_start_1d
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 6912
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    .line 6913
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$30;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$30;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6922
    monitor-exit v1

    .line 6923
    return-void

    .line 6922
    :catchall_2f
    move-exception v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_1d .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public toggleMultiWindowTray()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 7190
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->needHideTrayBar()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 7191
    :cond_15
    const-string v1, "WindowManager"

    const-string v2, "MultiWindowTrayBar couldn\'t execute"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7197
    :goto_1c
    return v0

    .line 7195
    :cond_1d
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 7196
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 7197
    const/4 v0, 0x1

    goto :goto_1c
.end method

.method public updateAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .registers 5
    .param p1, "requestClass"    # Ljava/lang/String;
    .param p2, "smallView"    # Landroid/widget/RemoteViews;
    .param p3, "bigView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 8192
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_9

    .line 8193
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->updateAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 8195
    :cond_9
    return-void
.end method

.method public updateContextualEvent(Ljava/lang/String;Landroid/widget/RemoteViews;)V
    .registers 4
    .param p1, "requestClass"    # Ljava/lang/String;
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 8177
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_9

    .line 8178
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->updateContextualEvent(Ljava/lang/String;Landroid/widget/RemoteViews;)V

    .line 8180
    :cond_9
    return-void
.end method

.method public updateMultiWindowTrayBar(Z)V
    .registers 4
    .param p1, "forceShow"    # Z

    .prologue
    .line 7222
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$34;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$34;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7235
    return-void
.end method

.method updateOrientationListenerLp()V
    .registers 3

    .prologue
    .line 836
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->canDetectOrientation()Z

    move-result v1

    if-nez v1, :cond_9

    .line 863
    :cond_8
    :goto_8
    return-void

    .line 845
    :cond_9
    const/4 v0, 0x1

    .line 846
    .local v0, "disable":Z
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v1, :cond_21

    .line 847
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->needSensorRunningLp()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 848
    const/4 v0, 0x0

    .line 850
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-nez v1, :cond_21

    .line 851
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->enable()V

    .line 853
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 858
    :cond_21
    if-eqz v0, :cond_8

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-eqz v1, :cond_8

    .line 859
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->disable()V

    .line 861
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    goto :goto_8
.end method

.method updateRotation(Z)V
    .registers 4
    .param p1, "alwaysSendConfiguration"    # Z

    .prologue
    .line 7105
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    .line 7109
    :goto_6
    return-void

    .line 7106
    :catch_7
    move-exception v0

    goto :goto_6
.end method

.method updateRotation(ZZ)V
    .registers 4
    .param p1, "alwaysSendConfiguration"    # Z
    .param p2, "forceRelayout"    # Z

    .prologue
    .line 7114
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 7118
    :goto_5
    return-void

    .line 7115
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public updateSettings()V
    .registers 23

    .prologue
    .line 1563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 1564
    .local v11, "resolver":Landroid/content/ContentResolver;
    const/4 v13, 0x0

    .line 1571
    .local v13, "updateRotation":Z
    const-string v17, "multi_window_enabled"

    const/16 v18, 0x0

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 1575
    .local v4, "enableMultiWindowUISetting":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 1577
    :try_start_22
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6b

    .line 1578
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6b

    .line 1579
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableMultiWindowUISetting:I

    move/from16 v17, v0

    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_239

    .line 1580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v19, "multi_window_flashbar_shown"

    const/16 v20, -0x1

    const/16 v21, -0x2

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    .line 1583
    .local v9, "lastFlashBarVisibility":I
    if-nez v9, :cond_235

    const/16 v17, 0x0

    :goto_60
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateMultiWindowTrayBar(Z)V

    .line 1594
    .end local v9    # "lastFlashBarVisibility":I
    :cond_67
    :goto_67
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableMultiWindowUISetting:I

    .line 1598
    :cond_6b
    const-string v17, "end_button_behavior"

    const/16 v19, 0x2

    const/16 v20, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    .line 1602
    const-string v17, "incall_power_button_behavior"

    const/16 v19, 0x1

    const/16 v20, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    .line 1608
    const-string v17, "user_rotation"

    const/16 v19, 0x0

    const/16 v20, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v14

    .line 1611
    .local v14, "userRotation":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v14, :cond_b6

    .line 1612
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    .line 1613
    const/4 v13, 0x1

    .line 1615
    :cond_b6
    const-string v17, "accelerometer_rotation"

    const/16 v19, 0x0

    const/16 v20, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    if-eqz v17, :cond_26f

    const/4 v15, 0x0

    .line 1619
    .local v15, "userRotationMode":I
    :goto_c9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v15, :cond_db

    .line 1620
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    .line 1621
    const/4 v13, 0x1

    .line 1622
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 1625
    :cond_db
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    move/from16 v17, v0

    if-eqz v17, :cond_12d

    .line 1626
    const-string v17, "pointer_location"

    const/16 v19, 0x0

    const/16 v20, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    .line 1628
    .local v10, "pointerLocation":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v10, :cond_112

    .line 1629
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    .line 1630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    if-eqz v10, :cond_272

    const/16 v17, 0x1

    :goto_10b
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1634
    :cond_112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_12d

    .line 1635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v19, 0x5

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1640
    .end local v10    # "pointerLocation":I
    :cond_12d
    const-string v17, "screen_off_timeout"

    const/16 v19, 0x0

    const/16 v20, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    .line 1642
    const-string v17, "default_input_method"

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 1644
    .local v6, "imId":Ljava/lang/String;
    if-eqz v6, :cond_276

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_276

    const/4 v5, 0x1

    .line 1645
    .local v5, "hasSoftInput":Z
    :goto_158
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v5, :cond_167

    .line 1646
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    .line 1647
    const/4 v13, 0x1

    .line 1649
    :cond_167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    move-object/from16 v17, v0

    if-eqz v17, :cond_178

    .line 1650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->loadSetting()V

    .line 1654
    :cond_178
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportEasyOneHand()Z

    move-result v17

    if-eqz v17, :cond_1bd

    .line 1655
    const-string v17, "any_screen_enabled"

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 1656
    .local v7, "isEasyOneHandEnabled":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEasyOneHandEnabled:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v7, :cond_1bd

    .line 1657
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEasyOneHandEnabled:I

    .line 1658
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1bd

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1bd

    .line 1659
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEasyOneHandEnabled:I

    move/from16 v17, v0

    if-nez v17, :cond_1bd

    .line 1660
    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateEasyOneHandState(ZZ)V

    .line 1668
    .end local v7    # "isEasyOneHandEnabled":I
    :cond_1bd
    const-string v17, "kids_home_mode"

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_279

    const/4 v8, 0x1

    .line 1670
    .local v8, "isKidsLauncherEnabled":Z
    :goto_1d2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsKidsLauncherEnabled:Z

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v8, :cond_1fc

    .line 1671
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsKidsLauncherEnabled:Z

    .line 1673
    new-instance v12, Landroid/content/Intent;

    const-string v17, "com.sec.kidsplat.quickpanel.KidsQuickPanelService"

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1674
    .local v12, "serviceIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsKidsLauncherEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_27c

    .line 1675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1681
    .end local v12    # "serviceIntent":Landroid/content/Intent;
    :cond_1fc
    :goto_1fc
    const-string v17, "user_setup_complete"

    const/16 v19, 0x1

    const/16 v20, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_289

    const/16 v16, 0x1

    .line 1682
    .local v16, "userSetupComplete":Z
    :goto_216
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserSetupComplete:Z

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, v16

    if-eq v0, v1, :cond_228

    .line 1683
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserSetupComplete:Z

    .line 1685
    :cond_228
    monitor-exit v18
    :try_end_229
    .catchall {:try_start_22 .. :try_end_229} :catchall_26c

    .line 1686
    if-eqz v13, :cond_234

    .line 1687
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 1689
    :cond_234
    return-void

    .line 1583
    .end local v5    # "hasSoftInput":Z
    .end local v6    # "imId":Ljava/lang/String;
    .end local v8    # "isKidsLauncherEnabled":Z
    .end local v14    # "userRotation":I
    .end local v15    # "userRotationMode":I
    .end local v16    # "userSetupComplete":Z
    .restart local v9    # "lastFlashBarVisibility":I
    :cond_235
    const/16 v17, 0x1

    goto/16 :goto_60

    .line 1584
    .end local v9    # "lastFlashBarVisibility":I
    :cond_239
    :try_start_239
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableMultiWindowUISetting:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v4, :cond_67

    .line 1585
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateMultiWindowTrayBar(Z)V

    .line 1586
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    move/from16 v17, v0

    if-eqz v17, :cond_67

    .line 1587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    new-instance v19, Lcom/android/internal/policy/impl/PhoneWindowManager$9;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$9;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_67

    .line 1685
    :catchall_26c
    move-exception v17

    monitor-exit v18
    :try_end_26e
    .catchall {:try_start_239 .. :try_end_26e} :catchall_26c

    throw v17

    .line 1615
    .restart local v14    # "userRotation":I
    :cond_26f
    const/4 v15, 0x1

    goto/16 :goto_c9

    .line 1630
    .restart local v10    # "pointerLocation":I
    .restart local v15    # "userRotationMode":I
    :cond_272
    const/16 v17, 0x2

    goto/16 :goto_10b

    .line 1644
    .end local v10    # "pointerLocation":I
    .restart local v6    # "imId":Ljava/lang/String;
    :cond_276
    const/4 v5, 0x0

    goto/16 :goto_158

    .line 1668
    .restart local v5    # "hasSoftInput":Z
    :cond_279
    const/4 v8, 0x0

    goto/16 :goto_1d2

    .line 1677
    .restart local v8    # "isKidsLauncherEnabled":Z
    .restart local v12    # "serviceIntent":Landroid/content/Intent;
    :cond_27c
    :try_start_27c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_287
    .catchall {:try_start_27c .. :try_end_287} :catchall_26c

    goto/16 :goto_1fc

    .line 1681
    .end local v12    # "serviceIntent":Landroid/content/Intent;
    :cond_289
    const/16 v16, 0x0

    goto :goto_216
.end method

.method public userActivity()V
    .registers 6

    .prologue
    .line 7026
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v1

    .line 7027
    :try_start_3
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eqz v0, :cond_18

    .line 7029
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7030
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7032
    :cond_18
    monitor-exit v1

    .line 7033
    return-void

    .line 7032
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

    .line 2552
    packed-switch p1, :pswitch_data_1a

    .line 2563
    :cond_5
    :goto_5
    return v1

    .line 2556
    :pswitch_6
    if-eqz p3, :cond_a

    move v1, v2

    .line 2557
    goto :goto_5

    .line 2559
    :cond_a
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 2560
    .local v0, "anim":[I
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->selectRotationAnimationLw([I)V

    .line 2561
    aget v3, v0, v2

    if-ne p1, v3, :cond_18

    aget v3, v0, v1

    if-eq p2, v3, :cond_5

    :cond_18
    move v1, v2

    goto :goto_5

    .line 2552
    :pswitch_data_1a
    .packed-switch 0x10a0069
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public windowTypeToLayerLw(I)I
    .registers 8
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x1

    const/16 v4, 0x14

    const/4 v1, 0x5

    const/4 v3, 0x3

    const/4 v0, 0x2

    .line 1967
    if-lt p1, v2, :cond_d

    const/16 v5, 0x63

    if-gt p1, v5, :cond_d

    .line 2089
    :goto_c
    :sswitch_c
    return v0

    .line 1971
    :cond_d
    const/16 v5, 0x899

    if-ne p1, v5, :cond_13

    move v0, v1

    .line 1972
    goto :goto_c

    .line 1973
    :cond_13
    const/16 v5, 0x89a

    if-eq p1, v5, :cond_1b

    const/16 v5, 0x89b

    if-ne p1, v5, :cond_1d

    :cond_1b
    move v0, v3

    .line 1974
    goto :goto_c

    .line 1977
    :cond_1d
    sparse-switch p1, :sswitch_data_a2

    .line 2088
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

    .line 1979
    goto :goto_c

    :sswitch_3b
    move v0, v3

    .line 1986
    goto :goto_c

    .line 1988
    :sswitch_3d
    const/4 v0, 0x4

    goto :goto_c

    :sswitch_3f
    move v0, v1

    .line 1991
    goto :goto_c

    :sswitch_41
    move v0, v4

    .line 1994
    goto :goto_c

    .line 1997
    :sswitch_43
    const/4 v0, 0x7

    goto :goto_c

    .line 2000
    :sswitch_45
    const/16 v0, 0x8

    goto :goto_c

    .line 2003
    :sswitch_48
    const/16 v0, 0x9

    goto :goto_c

    .line 2006
    :sswitch_4b
    const/16 v0, 0xa

    goto :goto_c

    .line 2009
    :sswitch_4e
    const/16 v0, 0xb

    goto :goto_c

    .line 2013
    :sswitch_51
    const/16 v0, 0xc

    goto :goto_c

    .line 2017
    :sswitch_54
    const/16 v0, 0xd

    goto :goto_c

    .line 2019
    :sswitch_57
    const/16 v0, 0xe

    goto :goto_c

    .line 2021
    :sswitch_5a
    const/16 v0, 0xf

    goto :goto_c

    .line 2023
    :sswitch_5d
    const/16 v0, 0x10

    goto :goto_c

    .line 2025
    :sswitch_60
    const/16 v0, 0x11

    goto :goto_c

    .line 2027
    :sswitch_63
    const/16 v0, 0x12

    goto :goto_c

    .line 2030
    :sswitch_66
    const/16 v0, 0x13

    goto :goto_c

    :sswitch_69
    move v0, v4

    .line 2034
    goto :goto_c

    :sswitch_6b
    move v0, v4

    .line 2038
    goto :goto_c

    .line 2041
    :sswitch_6d
    const/16 v0, 0x15

    goto :goto_c

    .line 2044
    :sswitch_70
    const/16 v0, 0x16

    goto :goto_c

    .line 2048
    :sswitch_73
    const/16 v0, 0x17

    goto :goto_c

    .line 2051
    :sswitch_76
    const/16 v0, 0x18

    goto :goto_c

    .line 2055
    :sswitch_79
    const/16 v0, 0x19

    goto :goto_c

    .line 2059
    :sswitch_7c
    const/16 v0, 0x1a

    goto :goto_c

    .line 2061
    :sswitch_7f
    const/16 v0, 0x1b

    goto :goto_c

    .line 2063
    :sswitch_82
    const/16 v0, 0x1c

    goto :goto_c

    .line 2065
    :sswitch_85
    const/16 v0, 0x1b

    goto :goto_c

    .line 2067
    :sswitch_88
    const/16 v0, 0x1c

    goto :goto_c

    .line 2070
    :sswitch_8b
    const/16 v0, 0x1d

    goto/16 :goto_c

    .line 2072
    :sswitch_8f
    const/16 v0, 0x1e

    goto/16 :goto_c

    :sswitch_93
    move v0, v3

    .line 2075
    goto/16 :goto_c

    :sswitch_96
    move v0, v1

    .line 2077
    goto/16 :goto_c

    .line 2079
    :sswitch_99
    const/16 v0, 0xd

    goto/16 :goto_c

    .line 2081
    :sswitch_9d
    const/16 v0, 0xe

    goto/16 :goto_c

    .line 1977
    nop

    :sswitch_data_a2
    .sparse-switch
        0x7d0 -> :sswitch_63
        0x7d1 -> :sswitch_3d
        0x7d2 -> :sswitch_3b
        0x7d3 -> :sswitch_48
        0x7d4 -> :sswitch_54
        0x7d5 -> :sswitch_41
        0x7d6 -> :sswitch_6b
        0x7d7 -> :sswitch_43
        0x7d8 -> :sswitch_3f
        0x7d9 -> :sswitch_57
        0x7da -> :sswitch_73
        0x7db -> :sswitch_4b
        0x7dc -> :sswitch_4e
        0x7dd -> :sswitch_c
        0x7de -> :sswitch_66
        0x7df -> :sswitch_7f
        0x7e0 -> :sswitch_7c
        0x7e1 -> :sswitch_60
        0x7e2 -> :sswitch_8b
        0x7e3 -> :sswitch_6d
        0x7e4 -> :sswitch_69
        0x7e5 -> :sswitch_82
        0x7e6 -> :sswitch_8f
        0x7e7 -> :sswitch_45
        0x7e8 -> :sswitch_70
        0x7e9 -> :sswitch_39
        0x7ea -> :sswitch_79
        0x7eb -> :sswitch_76
        0x7ec -> :sswitch_3f
        0x7ed -> :sswitch_51
        0x7ee -> :sswitch_c
        0x7ef -> :sswitch_85
        0x7f0 -> :sswitch_88
        0x82f -> :sswitch_51
        0x830 -> :sswitch_66
        0x831 -> :sswitch_73
        0x832 -> :sswitch_5a
        0x833 -> :sswitch_5d
        0x834 -> :sswitch_93
        0x835 -> :sswitch_96
        0x836 -> :sswitch_99
        0x837 -> :sswitch_9d
        0x8ca -> :sswitch_79
        0x8fc -> :sswitch_c
    .end sparse-switch
.end method
