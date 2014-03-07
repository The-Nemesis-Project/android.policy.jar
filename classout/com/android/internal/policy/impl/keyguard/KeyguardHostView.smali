.class public Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;
.source "KeyguardHostView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$20;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;
    }
.end annotation


# static fields
.field static final APPWIDGET_HOST_ID:I = 0x4b455947

.field public static DEBUG:Z = false

.field public static DEBUGXPORT:Z = false

.field private static final ENABLE_MENU_KEY_FILE:Ljava/lang/String; = "/data/local/enable_menu_key"

.field private static final EXTERNAL_STORAGE_FORMAT_DONE:I = 0x6

.field private static final EXTERNAL_STORAGE_STATUS_BAD_REMOVAL:I = 0x1

.field private static final EXTERNAL_STORAGE_STATUS_MEDIA_CHECKING:I = 0x2

.field private static final EXTERNAL_STORAGE_STATUS_MEDIA_REMOVED:I = 0x3

.field private static final EXTERNAL_STORAGE_STATUS_MEDIA_SHARED:I = 0x4

.field private static final EXTERNAL_STORAGE_STATUS_MOUNTED:I = 0x0

.field private static final EXTERNAL_STORAGE_STATUS_UNKNOWN:I = 0x5

.field public static final FAILED_ATTEMPTS_BEFORE_WIPE_VZW:I = 0xa

.field private static final GLOVE_MODE_CHANGE_LOCK:Ljava/lang/String; = "com.samsung.glove.LOCK_ENABLE"

.field private static final HELP_OVERLAY_CHECKED:Ljava/lang/String; = "help_overlay_checked"

.field private static final MISSED_WIDGET_CUSTOM_UPDATE:Ljava/lang/String; = "com.sec.android.app.keyguard.CUSTOM_MISSED_UPDATE"

.field static final SPASS_UNLOCK_TIMEOUT_MILLIS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "KeyguardHostView"

.field static final TRANSPORT_GONE:I = 0x0

.field static final TRANSPORT_INVISIBLE:I = 0x1

.field static final TRANSPORT_VISIBLE:I = 0x2

.field private static mFormatExtStorageThread:Ljava/lang/Thread;

.field public static mSwipeLockShowingBeforeTimeout:Z

.field private static mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

.field public static sCurrentSecurityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;


# instance fields
.field private final MAX_WIDGETS:I

.field private final mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

.field private mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

.field private mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAppWidgetToShow:I

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mCameraDisabled:Z

.field private final mCameraWidgetCallbacks:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;

.field private mCheckAppWidgetConsistencyOnBootCompleted:Z

.field private mChecked:I

.field private mCleanupAppWidgetsOnBootCompleted:Z

.field protected mClientGeneration:I

.field private mContext:Landroid/content/Context;

.field private mContextualMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

.field private mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

.field private mDialogTheme:I

.field private mDisabledFeatures:I

.field protected mDismissAction:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;

.field private mEnableFallback:Z

.field private mExpandChallengeView:Landroid/widget/ImageButton;

.field private mExternalSdCardPath:Ljava/lang/String;

.field private mFMMPhoneNumber:Ljava/lang/String;

.field protected mFailedAttempts:I

.field private mGuidetext:Landroid/widget/TextView;

.field private mHelpEsayUxOn:Z

.field private mIsAutoWipe:Z

.field private mIsCarrierLockEnabled:Z

.field private mIsCoverLockEnabled:Z

.field private mIsEasyUxOn:Z

.field private mIsFMMEnabled:Z

.field private mIsGloveTouchOn:Z

.field private mIsKorean:Z

.field private mIsMultipleLockOn:Z

.field private mIsTalkbackDrvModeOn:Z

.field private mIsVerifyUnlockOnly:Z

.field private mIsVoiceUnlockOn:Z

.field private mIsWidgetPreloaded:Z

.field private mKeyguardMultiUserSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

.field private mKeyguardSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

.field private mKeyguardWidgetNavigation:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockScreenOverlay:Landroid/view/View;

.field private mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mMultiPaneChallengeLayout:Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;

.field private mNeedToAddShotCutWidget:Z

.field private mNullCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mResetProgressDialog:Landroid/app/ProgressDialog;

.field mResetStateLockedRunnable:Ljava/lang/Runnable;

.field private mSafeModeEnabled:Z

.field private mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

.field private mSecurityView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

.field private mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

.field private mSetGloveModeOnBootCompleted:Z

.field protected mShowSecurityWhenReturn:Z

.field private final mSktPhoneNumber:Ljava/lang/String;

.field private mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field mSwitchPageRunnable:Ljava/lang/Runnable;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTimeZoneAlertDialog:Landroid/app/AlertDialog;

.field private mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

.field private mTransportState:I

.field private mUpdateMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private final mUserId:I

.field private mUserSetupCompleted:Z

.field private mWidgetCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

.field mtelephony:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x1

    .line 134
    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    .line 135
    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    .line 202
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwipeLockShowingBeforeTimeout:Z

    .line 239
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->sCurrentSecurityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 2658
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mFormatExtStorageThread:Ljava/lang/Thread;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 257
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 258
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 261
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 131
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportState:I

    .line 142
    const/16 v5, 0x8

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->MAX_WIDGETS:I

    .line 155
    sget-object v5, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 159
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCheckAppWidgetConsistencyOnBootCompleted:Z

    .line 160
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCleanupAppWidgetsOnBootCompleted:Z

    .line 176
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    .line 200
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsTalkbackDrvModeOn:Z

    .line 206
    iput-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTimeZoneAlertDialog:Landroid/app/AlertDialog;

    .line 210
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsFMMEnabled:Z

    .line 212
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsCarrierLockEnabled:Z

    .line 214
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mNeedToAddShotCutWidget:Z

    .line 216
    iput-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    .line 219
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsVoiceUnlockOn:Z

    .line 225
    const-string v5, "1599-0011"

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSktPhoneNumber:Ljava/lang/String;

    .line 231
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsKorean:Z

    .line 234
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsAutoWipe:Z

    .line 238
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsCoverLockEnabled:Z

    .line 455
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mUpdateMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 538
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$3;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContextualMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

    .line 924
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$6;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$6;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mWidgetCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    .line 993
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$7;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$7;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 1391
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$10;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$10;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 1452
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$11;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$11;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mNullCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 1945
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$12;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$12;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCameraWidgetCallbacks:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;

    .line 1975
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$13;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$13;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    .line 2290
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$16;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$16;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    .line 2655
    iput-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mExternalSdCardPath:Ljava/lang/String;

    .line 2656
    iput-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mMountService:Landroid/os/storage/IMountService;

    .line 2657
    iput-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 2727
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$18;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$18;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 2877
    iput-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mResetProgressDialog:Landroid/app/ProgressDialog;

    .line 3040
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$19;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$19;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mResetStateLockedRunnable:Ljava/lang/Runnable;

    .line 3069
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsGloveTouchOn:Z

    .line 3070
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSetGloveModeOnBootCompleted:Z

    .line 263
    sget-boolean v5, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v5, :cond_97

    const-string v5, "KeyguardHostView"

    const-string v8, "KeyguardHostView()"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_97
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    .line 266
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v5, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 272
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mUserId:I

    .line 274
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "easy_mode_switch"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_23d

    move v5, v6

    :goto_b5
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsEasyUxOn:Z

    .line 277
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "easy_mode_switch"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_240

    move v5, v6

    :goto_c4
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mHelpEsayUxOn:Z

    .line 280
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "help_overlay_checked"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mChecked:I

    .line 283
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenWallpaper;->isFlipboardWallpaper(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_243

    .line 284
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsCoverLockEnabled:Z

    .line 288
    :goto_de
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const-string v8, "device_policy"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 290
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_f6

    .line 291
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getDisabledFeatures(Landroid/app/admin/DevicePolicyManager;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDisabledFeatures:I

    .line 292
    invoke-virtual {v1, v9}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCameraDisabled:Z

    .line 295
    :cond_f6
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isSafeModeEnabled()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    .line 298
    const/4 v4, 0x0

    .line 300
    .local v4, "userContext":Landroid/content/Context;
    :try_start_fd
    const-string v3, "system"

    .line 301
    .local v3, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const-string v8, "system"

    const/4 v9, 0x0

    new-instance v10, Landroid/os/UserHandle;

    iget v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mUserId:I

    invoke-direct {v10, v11}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v8, v9, v10}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_10e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_fd .. :try_end_10e} :catch_247

    move-result-object v4

    .line 310
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_10f
    new-instance v5, Landroid/appwidget/AppWidgetHost;

    const v8, 0x4b455947

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v5, v4, v8, v9, v10}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;ILandroid/widget/RemoteViews$OnClickHandler;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 313
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->cleanupAppWidgetIds()V

    .line 315
    invoke-static {v4}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 317
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-direct {v5, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    .line 319
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    sput-object v5, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    .line 321
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "user_setup_complete"

    const/4 v9, -0x2

    invoke-static {v5, v8, v6, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_24e

    move v5, v7

    :goto_146
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mUserSetupCompleted:Z

    .line 325
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getInitialTransportState()V

    .line 327
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-eqz v5, :cond_156

    .line 328
    const-string v5, "KeyguardHostView"

    const-string v8, "Keyguard widgets disabled by safe mode"

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_156
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDisabledFeatures:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_163

    .line 331
    const-string v5, "KeyguardHostView"

    const-string v8, "Keyguard widgets disabled by DPM"

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_163
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDisabledFeatures:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_170

    .line 334
    const-string v5, "KeyguardHostView"

    const-string v8, "Keyguard secure camera disabled by DPM"

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_170
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "enabled_accessibility_services"

    invoke-static {v5, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, "accesibilityService":Ljava/lang/String;
    if-eqz v0, :cond_18f

    .line 339
    const-string v5, "(?i).*talkback.*"

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsTalkbackDrvModeOn:Z

    .line 340
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsTalkbackDrvModeOn:Z

    if-eqz v5, :cond_251

    .line 341
    const-string v5, "KeyguardHostView"

    const-string v8, "tb on"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_18f
    :goto_18f
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "lock_screen_face_with_voice"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_25a

    move v5, v7

    :goto_19c
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsVoiceUnlockOn:Z

    .line 351
    const-string v5, "KeyguardHostView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mIsVoiceUnlockOn="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsVoiceUnlockOn:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "kg_multiple_lockscreen"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_25d

    move v5, v7

    :goto_1c5
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsMultipleLockOn:Z

    .line 356
    sget-boolean v5, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v5, :cond_1e5

    const-string v5, "KeyguardHostView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mIsMultipleLockOn is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsMultipleLockOn:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_1e5
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->checkSecWidg()Z

    move-result v5

    if-nez v5, :cond_200

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v5

    if-eqz v5, :cond_200

    .line 360
    sget-boolean v5, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v5, :cond_1fe

    .line 361
    const-string v5, "KeyguardHostView"

    const-string v8, "Lockscreen is secured. Make multi lockscreen disable."

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_1fe
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsMultipleLockOn:Z

    .line 367
    :cond_200
    const/4 v5, 0x4

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDialogTheme:I

    .line 373
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "kg_preloaded_widget"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_212

    move v6, v7

    :cond_212
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsWidgetPreloaded:Z

    .line 376
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v5

    if-eqz v5, :cond_234

    .line 377
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mtelephony:Landroid/telephony/TelephonyManager;

    .line 378
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 392
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mtelephony:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v5, v6, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 400
    :cond_234
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mPm:Landroid/content/pm/PackageManager;

    .line 401
    return-void

    .end local v0    # "accesibilityService":Ljava/lang/String;
    .end local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v4    # "userContext":Landroid/content/Context;
    :cond_23d
    move v5, v7

    .line 274
    goto/16 :goto_b5

    :cond_240
    move v5, v7

    .line 277
    goto/16 :goto_c4

    .line 286
    :cond_243
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsCoverLockEnabled:Z

    goto/16 :goto_de

    .line 304
    .restart local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v4    # "userContext":Landroid/content/Context;
    :catch_247
    move-exception v2

    .line 305
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 307
    move-object v4, p1

    goto/16 :goto_10f

    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_24e
    move v5, v6

    .line 321
    goto/16 :goto_146

    .line 343
    .restart local v0    # "accesibilityService":Ljava/lang/String;
    :cond_251
    const-string v5, "KeyguardHostView"

    const-string v8, "tb off"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18f

    :cond_25a
    move v5, v6

    .line 350
    goto/16 :goto_19c

    :cond_25d
    move v5, v6

    .line 354
    goto/16 :goto_1c5
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mGuidetext:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    .prologue
    .line 123
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportState:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
    .param p1, "x1"    # I

    .prologue
    .line 123
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportState:I

    return p1
.end method

.method static synthetic access$1200(I)Z
    .registers 2
    .param p0, "x0"    # I

    .prologue
    .line 123
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->isMusicPlaying(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->shouldEnableAddWidget()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/appwidget/AppWidgetHost;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
    .param p1, "x1"    # Z

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showNextSecurityScreenOrFinish(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsVerifyUnlockOnly:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCleanupAppWidgetsOnBootCompleted:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
    .param p1, "x1"    # Z

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCleanupAppWidgetsOnBootCompleted:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->reportFailedSPassUnlockAttempt()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->reportFailedUnlockAttempt()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
    .param p1, "x1"    # Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showBackupSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
    .param p1, "x1"    # I

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showWipeDialog(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
    .param p1, "x1"    # I

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->performWipeout(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsCoverLockEnabled:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mFMMPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->cleanupAppWidgetIds()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showAppropriateWidgetPage()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyguardSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mExternalSdCardPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500()Ljava/lang/Thread;
    .registers 1

    .prologue
    .line 123
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mFormatExtStorageThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$3502(Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 1
    .param p0, "x0"    # Ljava/lang/Thread;

    .prologue
    .line 123
    sput-object p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mFormatExtStorageThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->formatExtStorage()I

    move-result v0

    return v0
.end method

.method static synthetic access$3702(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
    .param p1, "x1"    # I

    .prologue
    .line 123
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCheckAppWidgetConsistencyOnBootCompleted:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
    .param p1, "x1"    # Z

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCheckAppWidgetConsistencyOnBootCompleted:Z

    return p1
.end method

.method static synthetic access$500()Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;
    .registers 1

    .prologue
    .line 123
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSetGloveModeOnBootCompleted:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
    .param p1, "x1"    # Z

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSetGloveModeOnBootCompleted:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsGloveTouchOn:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
    .param p1, "x1"    # Z

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->setGloveMode(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->isSecure()Z

    move-result v0

    return v0
.end method

.method private addCarrierLockWidgets()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 2109
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 2112
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x109006f

    invoke-virtual {v1, v3, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2113
    .local v0, "addWidget":Landroid/view/View;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    .line 2115
    const v3, 0x102035b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mGuidetext:Landroid/widget/TextView;

    .line 2116
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040940

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "1599-0011"

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2117
    .local v2, "message":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mtelephony:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_4e

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mGuidetext:Landroid/widget/TextView;

    if-eqz v3, :cond_4e

    .line 2118
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mtelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v3

    if-nez v3, :cond_52

    .line 2119
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mGuidetext:Landroid/widget/TextView;

    const v4, 0x104093d

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2124
    :cond_4e
    :goto_4e
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->enableUserSelectorIfNecessary()V

    .line 2125
    return-void

    .line 2121
    :cond_52
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mGuidetext:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4e
.end method

.method private addContextualWidgetsFromSettings()V
    .registers 6

    .prologue
    .line 775
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v3, :cond_a

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->widgetsDisabledByDpm()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 798
    :cond_a
    :goto_a
    return-void

    .line 779
    :cond_b
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getInsertPageIndex()I

    move-result v1

    .line 782
    .local v1, "insertionIndex":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getContextualWidgets()[I

    move-result-object v2

    .line 784
    .local v2, "widgets":[I
    if-nez v2, :cond_1f

    .line 785
    const-string v3, "KeyguardHostView"

    const-string v4, "Problem reading widgets"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 787
    :cond_1f
    array-length v3, v2

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_22
    if-ltz v0, :cond_a

    .line 788
    aget v3, v2, v0

    const/4 v4, -0x2

    if-ne v3, v4, :cond_2f

    .line 789
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addDefaultStatusWidget(I)V

    .line 787
    :goto_2c
    add-int/lit8 v0, v0, -0x1

    goto :goto_22

    .line 794
    :cond_2f
    aget v3, v2, v0

    const/4 v4, 0x1

    invoke-direct {p0, v3, v1, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addWidget(IIZ)Z

    goto :goto_2c
.end method

.method private addDefaultStatusWidget(I)V
    .registers 7
    .param p1, "index"    # I

    .prologue
    .line 2152
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2153
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x1090094

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2154
    .local v1, "statusWidget":Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2, v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    .line 2155
    return-void
.end method

.method private addDefaultWidgets()V
    .registers 13

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2005
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v10, :cond_35

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsEasyUxOn:Z

    if-nez v10, :cond_35

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsMultipleLockOn:Z

    if-eqz v10, :cond_35

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->widgetsDisabledByDpm()Z

    move-result v10

    if-nez v10, :cond_35

    .line 2006
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 2007
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const v10, 0x109006c

    invoke-virtual {v5, v10, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2008
    .local v0, "addWidget":Landroid/view/View;
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v10, v0, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    .line 2009
    const v10, 0x1020352

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2010
    .local v1, "addWidgetButton":Landroid/view/View;
    new-instance v10, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$14;

    invoke-direct {v10, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$14;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    invoke-virtual {v1, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2023
    .end local v0    # "addWidget":Landroid/view/View;
    .end local v1    # "addWidgetButton":Landroid/view/View;
    .end local v5    # "inflater":Landroid/view/LayoutInflater;
    :cond_35
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "kg_enable_camera_widget"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_8d

    move v4, v8

    .line 2025
    .local v4, "enableCameraWidget":Z
    :goto_44
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "kg_enable_camera_widget_type"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 2027
    .local v3, "cameraWidgetType":I
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v10, :cond_89

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsEasyUxOn:Z

    if-nez v10, :cond_89

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsMultipleLockOn:Z

    if-eqz v10, :cond_89

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mUserSetupCompleted:Z

    if-eqz v10, :cond_89

    if-eqz v4, :cond_89

    .line 2028
    if-ne v3, v8, :cond_8f

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/high16 v11, 0x1110000

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-eqz v10, :cond_8f

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->cameraDisabledByDpm()Z

    move-result v10

    if-nez v10, :cond_8f

    .line 2031
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCameraWidgetCallbacks:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    invoke-static {v8, v9, v10}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->create(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;)Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    move-result-object v2

    .line 2033
    .local v2, "cameraWidget":Landroid/view/View;
    if-eqz v2, :cond_89

    .line 2034
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v8, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;)V

    .line 2053
    .end local v2    # "cameraWidget":Landroid/view/View;
    :cond_89
    :goto_89
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->enableUserSelectorIfNecessary()V

    .line 2054
    return-void

    .end local v3    # "cameraWidgetType":I
    .end local v4    # "enableCameraWidget":Z
    :cond_8d
    move v4, v9

    .line 2023
    goto :goto_44

    .line 2036
    .restart local v3    # "cameraWidgetType":I
    .restart local v4    # "enableCameraWidget":Z
    :cond_8f
    if-nez v3, :cond_89

    .line 2037
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->getShortcutAppWidgetId()I

    move-result v6

    .line 2039
    .local v6, "shortcutAppWidgetId":I
    if-eqz v6, :cond_ad

    .line 2040
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-static {v8, v10, v11}, Lcom/android/internal/policy/impl/keyguard/sec/ShortCutWidgetFrame;->create(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Landroid/appwidget/AppWidgetManager;)Lcom/android/internal/policy/impl/keyguard/sec/ShortCutWidgetFrame;

    move-result-object v7

    .line 2042
    .local v7, "shortcutWidget":Landroid/view/View;
    if-eqz v7, :cond_89

    .line 2043
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v8, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;)V

    .line 2044
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mNeedToAddShotCutWidget:Z

    goto :goto_89

    .line 2048
    .end local v7    # "shortcutWidget":Landroid/view/View;
    :cond_ad
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mNeedToAddShotCutWidget:Z

    goto :goto_89
.end method

.method private addFMMWidgets()V
    .registers 16

    .prologue
    const/16 v14, 0x8

    const/4 v13, 0x0

    .line 2057
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 2060
    .local v8, "inflater":Landroid/view/LayoutInflater;
    const v10, 0x1090077

    invoke-virtual {v8, v10, p0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2061
    .local v0, "addWidget":Landroid/view/View;
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v10, v0, v13}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    .line 2062
    const v10, 0x1020390

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 2063
    .local v7, "fmmTitle":Landroid/widget/TextView;
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2064
    const v10, 0x1020391

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2065
    .local v2, "addWidgetMessage":Landroid/widget/TextView;
    const v10, 0x1020392

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2067
    .local v5, "fmmOwnerInfo":Landroid/widget/TextView;
    const v10, 0x1020393

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 2069
    .local v1, "addWidgetButton":Landroid/widget/Button;
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "lock_pcw_Message"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2071
    .local v4, "fmmMessage":Ljava/lang/String;
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2073
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "lock_pcw_phone"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mFMMPhoneNumber:Ljava/lang/String;

    .line 2075
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const v12, 0x1040931

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mFMMPhoneNumber:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2077
    .local v6, "fmmOwnerPhone":Ljava/lang/String;
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2079
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1110037

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    .line 2082
    .local v9, "isVoiceCapacity":Z
    const/4 v3, 0x0

    .line 2083
    .local v3, "disableCallButton":Z
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mFMMPhoneNumber:Ljava/lang/String;

    if-eqz v10, :cond_99

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mFMMPhoneNumber:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_9a

    .line 2084
    :cond_99
    const/4 v3, 0x1

    .line 2087
    :cond_9a
    if-eqz v9, :cond_b0

    if-nez v3, :cond_b0

    .line 2088
    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2089
    invoke-virtual {v1, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 2090
    new-instance v10, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$15;

    invoke-direct {v10, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$15;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2105
    :goto_ac
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->enableUserSelectorIfNecessary()V

    .line 2106
    return-void

    .line 2101
    :cond_b0
    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2102
    invoke-virtual {v1, v14}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_ac
.end method

.method private addWidget(IIZ)Z
    .registers 9
    .param p1, "appId"    # I
    .param p2, "pageIndex"    # I
    .param p3, "updateDbIfFailed"    # Z

    .prologue
    .line 1917
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v2, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 1918
    .local v0, "appWidgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v0, :cond_1e

    .line 1919
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p1, v0}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v1

    .line 1920
    .local v1, "view":Landroid/appwidget/AppWidgetHostView;
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addWidget(Landroid/appwidget/AppWidgetHostView;I)V

    .line 1921
    const-string v2, "KeyguardHostView"

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetProviderInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    const/4 v2, 0x1

    .line 1941
    .end local v1    # "view":Landroid/appwidget/AppWidgetHostView;
    :goto_1d
    return v2

    .line 1924
    :cond_1e
    if-eqz p3, :cond_54

    .line 1925
    const-string v2, "KeyguardHostView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*** AppWidgetInfo for app widget id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  was null for user"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", deleting"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v2, p1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 1938
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->removeAppWidget(I)Z

    .line 1941
    :cond_54
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method private addWidgetsFromSettings()V
    .registers 6

    .prologue
    .line 2158
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v3, :cond_12

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsEasyUxOn:Z

    if-nez v3, :cond_12

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsMultipleLockOn:Z

    if-eqz v3, :cond_12

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->widgetsDisabledByDpm()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2181
    :cond_12
    :goto_12
    return-void

    .line 2162
    :cond_13
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getInsertPageIndex()I

    move-result v1

    .line 2165
    .local v1, "insertionIndex":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets()[I

    move-result-object v2

    .line 2167
    .local v2, "widgets":[I
    if-nez v2, :cond_27

    .line 2168
    const-string v3, "KeyguardHostView"

    const-string v4, "Problem reading widgets"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 2170
    :cond_27
    array-length v3, v2

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_2a
    if-ltz v0, :cond_12

    .line 2171
    aget v3, v2, v0

    const/4 v4, -0x2

    if-ne v3, v4, :cond_37

    .line 2172
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addDefaultStatusWidget(I)V

    .line 2170
    :goto_34
    add-int/lit8 v0, v0, -0x1

    goto :goto_2a

    .line 2177
    :cond_37
    aget v3, v2, v0

    const/4 v4, 0x1

    invoke-direct {p0, v3, v1, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addWidget(IIZ)Z

    goto :goto_34
.end method

.method private allocateIdForDefaultAppWidget()I
    .registers 8

    .prologue
    .line 2185
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2186
    .local v3, "res":Landroid/content/res/Resources;
    new-instance v1, Landroid/content/ComponentName;

    const v4, 0x1040052

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x1040053

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2191
    .local v1, "defaultAppWidget":Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 2194
    .local v0, "appWidgetId":I
    :try_start_21
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v4, v0, v1}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_26} :catch_27

    .line 2201
    :goto_26
    return v0

    .line 2196
    :catch_27
    move-exception v2

    .line 2197
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "KeyguardHostView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error when trying to bind default AppWidget: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4, v0}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 2199
    const/4 v0, 0x0

    goto :goto_26
.end method

.method private allocateIdForPreloadAppWidget()I
    .registers 8

    .prologue
    .line 2997
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2998
    .local v3, "res":Landroid/content/res/Resources;
    new-instance v1, Landroid/content/ComponentName;

    const v4, 0x10409cb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x10409cc

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3003
    .local v1, "defaultAppWidget":Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 3006
    .local v0, "appWidgetId":I
    :try_start_21
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v4, v0, v1}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_26} :catch_27

    .line 3013
    :goto_26
    return v0

    .line 3008
    :catch_27
    move-exception v2

    .line 3009
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "KeyguardHostView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error when trying to bind preload AppWidget: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3010
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4, v0}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 3011
    const/4 v0, 0x0

    goto :goto_26
.end method

.method private cameraDisabledByDpm()Z
    .registers 2

    .prologue
    .line 814
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCameraDisabled:Z

    if-nez v0, :cond_a

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDisabledFeatures:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private checkLockType()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2239
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_style_type"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private checkSecWidg()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2240
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "allow_secure_widgets"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private cleanupAppWidgetIds()V
    .registers 11

    .prologue
    .line 416
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v7

    if-nez v7, :cond_10

    .line 417
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCleanupAppWidgetsOnBootCompleted:Z

    .line 444
    :cond_f
    return-void

    .line 420
    :cond_10
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v7, :cond_f

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->widgetsDisabledByDpm()Z

    move-result v7

    if-nez v7, :cond_f

    .line 426
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets()[I

    move-result-object v5

    .line 428
    .local v5, "appWidgetIdsInKeyguardSettings":[I
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getContextualWidgets()[I

    move-result-object v4

    .line 429
    .local v4, "appWidgetIdsInContextualSettings":[I
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getShortcutAppWidgetId()I

    move-result v2

    .line 430
    .local v2, "appWidgetIdShortcutWidgetSettings":I
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getFallbackAppWidgetId()I

    move-result v1

    .line 431
    .local v1, "appWidgetIdInFallback":I
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v7}, Landroid/appwidget/AppWidgetHost;->getAppWidgetIds()[I

    move-result-object v3

    .line 432
    .local v3, "appWidgetIdsBoundToHost":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_39
    array-length v7, v3

    if-ge v6, v7, :cond_f

    .line 433
    aget v0, v3, v6

    .line 434
    .local v0, "appWidgetId":I
    invoke-static {v5, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->contains([II)Z

    move-result v7

    if-nez v7, :cond_6b

    invoke-static {v4, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->contains([II)Z

    move-result v7

    if-nez v7, :cond_6b

    if-eq v2, v0, :cond_6b

    if-eq v1, v0, :cond_6b

    .line 438
    const-string v7, "KeyguardHostView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found a appWidgetId that\'s not being used by keyguard, deleting id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v7, v0}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 432
    :cond_6b
    add-int/lit8 v6, v6, 0x1

    goto :goto_39
.end method

.method private static contains([II)Z
    .registers 7
    .param p0, "array"    # [I
    .param p1, "target"    # I

    .prologue
    .line 447
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_3
    if-ge v1, v2, :cond_e

    aget v3, v0, v1

    .line 448
    .local v3, "value":I
    if-ne v3, p1, :cond_b

    .line 449
    const/4 v4, 0x1

    .line 452
    .end local v3    # "value":I
    :goto_a
    return v4

    .line 447
    .restart local v3    # "value":I
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 452
    .end local v3    # "value":I
    :cond_e
    const/4 v4, 0x0

    goto :goto_a
.end method

.method private deleteInternalSd()Z
    .registers 6

    .prologue
    .line 2898
    const/4 v0, 0x1

    .line 2900
    .local v0, "del":Z
    :try_start_1
    new-instance v2, Ljava/io/File;

    const-string v3, "/sdcard/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->deleteSdCardFiles(Ljava/io/File;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_25

    move-result v0

    .line 2908
    :goto_c
    const-string v2, "KeyguardHostView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finished internal SD card cleaning. : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2910
    return v0

    .line 2902
    :catch_25
    move-exception v1

    .line 2906
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "KeyguardHostView"

    const-string v3, "deleteSdCardFiles exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method private static deleteSdCardFiles(Ljava/io/File;)Z
    .registers 13
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x2

    const/4 v6, 0x1

    .line 2933
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_11

    .line 2934
    const-string v6, "KeyguardHostView"

    const-string v8, "file not exists()) flase"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2971
    :goto_10
    return v7

    .line 2937
    :cond_11
    const-string v8, "KeyguardHostView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2939
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 2940
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_48

    .line 2941
    const-string v6, "KeyguardHostView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " file null false : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 2944
    :cond_48
    const-string v2, "sdcard"

    .line 2945
    .local v2, "mSdCard":Ljava/lang/String;
    const/4 v5, 0x1

    .line 2947
    .local v5, "success":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4c
    array-length v8, v0

    if-ge v1, v8, :cond_10d

    .line 2948
    aget-object v8, v0, v1

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 2949
    .local v3, "path":Ljava/lang/String;
    const-string v8, "/"

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2951
    .local v4, "pathlist":[Ljava/lang/String;
    aget-object v8, v4, v6

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6d

    aget-object v8, v4, v11

    const-string v9, "apk"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c7

    :cond_6d
    aget-object v8, v4, v6

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7f

    aget-object v8, v4, v11

    const-string v9, "SamsungDic"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c7

    :cond_7f
    aget-object v8, v4, v6

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_91

    aget-object v8, v4, v11

    const-string v9, "ReadersHub"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c7

    :cond_91
    aget-object v8, v4, v6

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a3

    aget-object v8, v4, v11

    const-string v9, "Tmap3"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c7

    :cond_a3
    aget-object v8, v4, v6

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b5

    aget-object v8, v4, v11

    const-string v9, ".version"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c7

    :cond_b5
    aget-object v8, v4, v6

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e9

    aget-object v8, v4, v11

    const-string v9, ".filesize"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e9

    .line 2960
    :cond_c7
    const-string v8, "KeyguardHostView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FactoryReset Skipping "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v0, v1

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2947
    :goto_e5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4c

    .line 2962
    :cond_e9
    aget-object v8, v0, v1

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_ff

    .line 2963
    if-eqz v5, :cond_fd

    aget-object v8, v0, v1

    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->deleteSdCardFiles(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_fd

    move v5, v6

    :goto_fc
    goto :goto_e5

    :cond_fd
    move v5, v7

    goto :goto_fc

    .line 2965
    :cond_ff
    if-eqz v5, :cond_10b

    aget-object v8, v0, v1

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_10b

    move v5, v6

    :goto_10a
    goto :goto_e5

    :cond_10b
    move v5, v7

    goto :goto_10a

    .line 2969
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "pathlist":[Ljava/lang/String;
    :cond_10d
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move v7, v5

    .line 2971
    goto/16 :goto_10
.end method

.method private enableUserSelectorIfNecessary()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 2480
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v5

    if-nez v5, :cond_8

    .line 2557
    :cond_7
    :goto_7
    return-void

    .line 2485
    :cond_8
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/app/enterprise/multiuser/MultiUserManager;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/multiuser/MultiUserManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/enterprise/multiuser/MultiUserManager;->multipleUsersAllowed()Z

    move-result v5

    if-nez v5, :cond_1c

    .line 2486
    const-string v5, "KeyguardHostView"

    const-string v6, "MDM blocks multiuser mode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2491
    :cond_1c
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const-string v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 2492
    .local v3, "um":Landroid/os/UserManager;
    if-nez v3, :cond_38

    .line 2493
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 2494
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 2495
    const-string v5, "KeyguardHostView"

    const-string v6, "user service is null."

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 2500
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_38
    invoke-virtual {v3, v7}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    .line 2501
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v4, :cond_4e

    .line 2502
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 2503
    .restart local v2    # "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 2504
    const-string v5, "KeyguardHostView"

    const-string v6, "list of users is null."

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 2508
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_4e
    const v5, 0x10203b0

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2509
    .local v1, "multiUserView":Landroid/view/View;
    if-nez v1, :cond_67

    .line 2510
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 2511
    .restart local v2    # "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 2512
    const-string v5, "KeyguardHostView"

    const-string v6, "can\'t find user_selector in layout."

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 2516
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_67
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v7, :cond_7

    .line 2517
    instance-of v5, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    if-eqz v5, :cond_8c

    .line 2518
    check-cast v1, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    .end local v1    # "multiUserView":Landroid/view/View;
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    .line 2519
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->setVisibility(I)V

    .line 2520
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    invoke-virtual {v5, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->addUsers(Ljava/util/Collection;)V

    .line 2521
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$17;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$17;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    .line 2546
    .local v0, "callback":Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    invoke-virtual {v5, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->setCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;)V

    goto/16 :goto_7

    .line 2548
    .end local v0    # "callback":Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;
    .restart local v1    # "multiUserView":Landroid/view/View;
    :cond_8c
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 2549
    .restart local v2    # "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 2550
    if-nez v1, :cond_9f

    .line 2551
    const-string v5, "KeyguardHostView"

    const-string v6, "could not find the user_selector."

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 2553
    :cond_9f
    const-string v5, "KeyguardHostView"

    const-string v6, "user_selector is the wrong type."

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7
.end method

.method private ensureTransportPresentOrRemoved(I)V
    .registers 10
    .param p1, "state"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 2405
    const v6, 0x10203da

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getWidgetPosition(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_48

    move v3, v2

    .line 2406
    .local v3, "showing":Z
    :goto_d
    const/4 v6, 0x2

    if-ne p1, v6, :cond_4a

    move v4, v2

    .line 2407
    .local v4, "visible":Z
    :goto_11
    if-ne p1, v2, :cond_4c

    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->isMusicPlaying(I)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 2408
    .local v2, "shouldBeVisible":Z
    :goto_19
    if-nez v3, :cond_51

    if-nez v4, :cond_1f

    if-eqz v2, :cond_51

    .line 2409
    :cond_1f
    sget-boolean v5, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    if-eqz v5, :cond_2a

    const-string v5, "KeyguardHostView"

    const-string v6, "add transport"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2411
    :cond_2a
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 2412
    .local v0, "lastWidget":I
    const/4 v1, 0x0

    .line 2413
    .local v1, "position":I
    if-ltz v0, :cond_3e

    .line 2414
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v5, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v5

    if-eqz v5, :cond_4e

    move v1, v0

    .line 2417
    :cond_3e
    :goto_3e
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getOrCreateTransportControl()Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    .line 2423
    .end local v0    # "lastWidget":I
    .end local v1    # "position":I
    :cond_47
    :goto_47
    return-void

    .end local v2    # "shouldBeVisible":Z
    .end local v3    # "showing":Z
    .end local v4    # "visible":Z
    :cond_48
    move v3, v5

    .line 2405
    goto :goto_d

    .restart local v3    # "showing":Z
    :cond_4a
    move v4, v5

    .line 2406
    goto :goto_11

    .restart local v4    # "visible":Z
    :cond_4c
    move v2, v5

    .line 2407
    goto :goto_19

    .line 2414
    .restart local v0    # "lastWidget":I
    .restart local v1    # "position":I
    .restart local v2    # "shouldBeVisible":Z
    :cond_4e
    add-int/lit8 v1, v0, 0x1

    goto :goto_3e

    .line 2418
    .end local v0    # "lastWidget":I
    .end local v1    # "position":I
    :cond_51
    if-eqz v3, :cond_47

    if-nez p1, :cond_47

    .line 2419
    sget-boolean v5, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    if-eqz v5, :cond_60

    const-string v5, "KeyguardHostView"

    const-string v6, "remove transport"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    :cond_60
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getOrCreateTransportControl()Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->removeWidget(Landroid/view/View;)V

    .line 2421
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    goto :goto_47
.end method

.method private findCameraPage()Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;
    .registers 4

    .prologue
    .line 2426
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_28

    .line 2427
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 2428
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2429
    .local v1, "widgetFrame":Landroid/view/View;
    instance-of v2, v1, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    if-eqz v2, :cond_25

    .line 2430
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    .line 2433
    .end local v1    # "widgetFrame":Landroid/view/View;
    :goto_24
    return-object v2

    .line 2426
    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2433
    :cond_28
    const/4 v2, 0x0

    goto :goto_24
.end method

.method private formatExtStorage()I
    .registers 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x5

    .line 2783
    sget-boolean v7, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v7, :cond_e

    .line 2784
    const-string v7, "KeyguardHostView"

    const-string v8, "formatExtStorage+++"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2785
    :cond_e
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 2787
    .local v1, "mountService":Landroid/os/storage/IMountService;
    if-nez v1, :cond_15

    .line 2873
    :cond_14
    :goto_14
    return v4

    .line 2790
    :cond_15
    const-string v3, ""

    .line 2793
    .local v3, "status":Ljava/lang/String;
    :try_start_17
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mExternalSdCardPath:Ljava/lang/String;

    if-nez v7, :cond_21

    .line 2794
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getExtStoragePath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mExternalSdCardPath:Ljava/lang/String;

    .line 2797
    :cond_21
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v7, :cond_2d

    .line 2798
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mExternalSdCardPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_2c} :catch_83

    move-result-object v3

    .line 2805
    :cond_2d
    :goto_2d
    const-string v7, "mounted"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_45

    const-string v7, "mounted_ro"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_45

    const-string v7, "checking"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ac

    .line 2809
    :cond_45
    :try_start_45
    sget-boolean v5, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v5, :cond_50

    .line 2810
    const-string v5, "KeyguardHostView"

    const-string v7, "unmounting Volume..."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2811
    :cond_50
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mExternalSdCardPath:Ljava/lang/String;

    if-eqz v5, :cond_76

    .line 2813
    const-string v5, "checking"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_93

    .line 2814
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mExternalSdCardPath:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " hidden"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-interface {v1, v5, v7, v8}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V

    .line 2819
    :cond_76
    :goto_76
    sget-boolean v5, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v5, :cond_81

    .line 2820
    const-string v5, "KeyguardHostView"

    const-string v7, "unmounting Volume done!"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_81} :catch_9b

    :cond_81
    move v4, v6

    .line 2827
    goto :goto_14

    .line 2799
    :catch_83
    move-exception v2

    .line 2800
    .local v2, "rex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2801
    sget-boolean v7, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v7, :cond_2d

    .line 2802
    const-string v7, "KeyguardHostView"

    const-string v8, "Failed while getting status of externalSdCardPath"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    .line 2816
    .end local v2    # "rex":Ljava/lang/Exception;
    :cond_93
    :try_start_93
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mExternalSdCardPath:Ljava/lang/String;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-interface {v1, v5, v7, v8}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_9a
    .catch Landroid/os/RemoteException; {:try_start_93 .. :try_end_9a} :catch_9b

    goto :goto_76

    .line 2821
    :catch_9b
    move-exception v0

    .line 2822
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2823
    sget-boolean v5, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v5, :cond_14

    .line 2824
    const-string v5, "KeyguardHostView"

    const-string v6, "Failed talking with mount service"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_14

    .line 2828
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_ac
    const-string v6, "nofs"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c4

    const-string v6, "unmounted"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c4

    const-string v6, "unmountable"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12c

    .line 2831
    :cond_c4
    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v4, :cond_e0

    .line 2832
    const-string v4, "KeyguardHostView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "storage state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2834
    :cond_e0
    :try_start_e0
    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v4, :cond_eb

    .line 2835
    const-string v4, "KeyguardHostView"

    const-string v5, "formatting Volume..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2836
    :cond_eb
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mExternalSdCardPath:Ljava/lang/String;

    invoke-interface {v1, v4}, Landroid/os/storage/IMountService;->formatVolume(Ljava/lang/String;)I

    .line 2837
    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v4, :cond_fb

    .line 2838
    const-string v4, "KeyguardHostView"

    const-string v5, "formatting Volume done!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fb
    .catch Landroid/os/RemoteException; {:try_start_e0 .. :try_end_fb} :catch_10b
    .catchall {:try_start_e0 .. :try_end_fb} :catchall_11d

    .line 2843
    :cond_fb
    const-string v4, "KeyguardHostView"

    const-string v5, "formatVolume done! Calling deleteInternalSd() and rebootWipeUserData()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2845
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->deleteInternalSd()Z

    .line 2846
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->rebootWipeUserData()V

    .line 2848
    :goto_108
    const/4 v4, 0x6

    goto/16 :goto_14

    .line 2839
    :catch_10b
    move-exception v0

    .line 2840
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_10c
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_10f
    .catchall {:try_start_10c .. :try_end_10f} :catchall_11d

    .line 2843
    const-string v4, "KeyguardHostView"

    const-string v5, "formatVolume done! Calling deleteInternalSd() and rebootWipeUserData()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2845
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->deleteInternalSd()Z

    .line 2846
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->rebootWipeUserData()V

    goto :goto_108

    .line 2843
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_11d
    move-exception v4

    const-string v5, "KeyguardHostView"

    const-string v6, "formatVolume done! Calling deleteInternalSd() and rebootWipeUserData()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2845
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->deleteInternalSd()Z

    .line 2846
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->rebootWipeUserData()V

    throw v4

    .line 2849
    :cond_12c
    const-string v6, "bad_removal"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_153

    .line 2850
    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v4, :cond_150

    .line 2851
    const-string v4, "KeyguardHostView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "storage state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_150
    move v4, v5

    .line 2852
    goto/16 :goto_14

    .line 2853
    :cond_153
    const-string v5, "checking"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17a

    .line 2854
    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v4, :cond_177

    .line 2855
    const-string v4, "KeyguardHostView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "storage state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2856
    :cond_177
    const/4 v4, 0x2

    goto/16 :goto_14

    .line 2857
    :cond_17a
    const-string v5, "removed"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a1

    .line 2858
    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v4, :cond_19e

    .line 2859
    const-string v4, "KeyguardHostView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "storage state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2860
    :cond_19e
    const/4 v4, 0x3

    goto/16 :goto_14

    .line 2861
    :cond_1a1
    const-string v5, "shared"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d1

    .line 2862
    sget-boolean v5, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v5, :cond_1c5

    .line 2863
    const-string v5, "KeyguardHostView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "storage state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2864
    :cond_1c5
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v5, :cond_14

    .line 2865
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->disableUsbMassStorage()V

    .line 2866
    const/4 v4, 0x4

    goto/16 :goto_14

    .line 2871
    :cond_1d1
    sget-boolean v5, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v5, :cond_14

    .line 2872
    const-string v5, "KeyguardHostView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "storage state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14
.end method

.method private getAppropriateWidgetPage(I)I
    .registers 9
    .param p1, "musicTransportState"    # I

    .prologue
    .line 2442
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    if-eqz v4, :cond_22

    .line 2443
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v0

    .line 2444
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_1f

    .line 2445
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v4, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContentAppWidgetId()I

    move-result v4

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    if-ne v4, v5, :cond_1c

    .line 2476
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    :cond_1b
    :goto_1b
    return v1

    .line 2444
    .restart local v0    # "childCount":I
    .restart local v1    # "i":I
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 2450
    :cond_1f
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    .line 2454
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    :cond_22
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->getTargetWidgetId()I

    move-result v3

    .line 2455
    .local v3, "targetWidgetID":I
    if-eqz v3, :cond_46

    .line 2456
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v0

    .line 2457
    .restart local v0    # "childCount":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_35
    if-ge v1, v0, :cond_46

    .line 2458
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v4, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContentAppWidgetId()I

    move-result v4

    if-eq v4, v3, :cond_1b

    .line 2457
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 2465
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    :cond_46
    const/4 v4, 0x2

    if-ne p1, v4, :cond_5f

    .line 2466
    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v4, :cond_54

    const-string v4, "KeyguardHostView"

    const-string v5, "Music playing, show transport"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    :cond_54
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getOrCreateTransportControl()Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageIndex(Landroid/view/View;)I

    move-result v1

    goto :goto_1b

    .line 2471
    :cond_5f
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 2472
    .local v2, "rightMost":I
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v4, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v4

    if-eqz v4, :cond_71

    .line 2473
    add-int/lit8 v2, v2, -0x1

    .line 2475
    :cond_71
    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v4, :cond_8d

    const-string v4, "KeyguardHostView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Show right-most page "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8d
    move v1, v2

    .line 2476
    goto :goto_1b
.end method

.method private getDisabledFeatures(Landroid/app/admin/DevicePolicyManager;)I
    .registers 5
    .param p1, "dpm"    # Landroid/app/admin/DevicePolicyManager;

    .prologue
    .line 801
    const/4 v1, 0x0

    .line 802
    .local v1, "disabledFeatures":I
    if-eqz p1, :cond_e

    .line 803
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v0

    .line 804
    .local v0, "currentUser":I
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    .line 806
    .end local v0    # "currentUser":I
    :cond_e
    return v1
.end method

.method private getExtStoragePath()Ljava/lang/String;
    .registers 10

    .prologue
    .line 2760
    const/4 v2, 0x0

    .line 2762
    .local v2, "path":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v6, :cond_11

    .line 2763
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const-string v7, "storage"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageManager;

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 2766
    :cond_11
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v6}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 2767
    .local v4, "storageVolumes":[Landroid/os/storage/StorageVolume;
    array-length v1, v4

    .line 2768
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    if-ge v0, v1, :cond_4a

    .line 2769
    aget-object v3, v4, v0

    .line 2770
    .local v3, "storageVolume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v5

    .line 2771
    .local v5, "subsystem":Ljava/lang/String;
    if-eqz v5, :cond_47

    .line 2772
    const-string v6, "sd"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 2773
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 2774
    const-string v6, "KeyguardHostView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getExtStoragePath()="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2768
    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 2779
    .end local v3    # "storageVolume":Landroid/os/storage/StorageVolume;
    .end local v5    # "subsystem":Ljava/lang/String;
    :cond_4a
    return-object v2
.end method

.method private getInitialTransportState()V
    .registers 5

    .prologue
    .line 404
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getCachedDisplayClientState()Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    move-result-object v0

    .line 406
    .local v0, "dcs":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DisplayClientState;
    iget-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DisplayClientState;->clearing:Z

    if-eqz v1, :cond_3c

    const/4 v1, 0x0

    :goto_f
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportState:I

    .line 409
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v1, :cond_3b

    const-string v1, "KeyguardHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initial transport state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pbstate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DisplayClientState;->playbackState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_3b
    return-void

    .line 406
    :cond_3c
    iget v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DisplayClientState;->playbackState:I

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->isMusicPlaying(I)Z

    move-result v1

    if-eqz v1, :cond_46

    const/4 v1, 0x2

    goto :goto_f

    :cond_46
    const/4 v1, 0x1

    goto :goto_f
.end method

.method private getInsertPageIndex()I
    .registers 5

    .prologue
    .line 2141
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    const v3, 0x1020351

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2142
    .local v0, "addWidget":Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 2143
    .local v1, "insertionIndex":I
    if-gez v1, :cond_13

    .line 2144
    const/4 v1, 0x0

    .line 2148
    :goto_12
    return v1

    .line 2146
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_12
.end method

.method private getLayoutIdFor(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)I
    .registers 8
    .param p1, "securityMode"    # Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    const v1, 0x109008c

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1867
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$20;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_ae

    move v1, v2

    .line 1912
    :goto_11
    :pswitch_11
    return v1

    .line 1869
    :pswitch_12
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->checkLockType()Z

    move-result v1

    if-nez v1, :cond_28

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isJapanFeature()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1870
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    const-string v2, "com.nttdocomo.android.dhome"

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;->isPreferedActivity(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1871
    :cond_28
    const v1, 0x1090088

    goto :goto_11

    .line 1873
    :cond_2c
    const v1, 0x1090097

    goto :goto_11

    .line 1876
    :pswitch_30
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "onehand_pattern_enabled"

    const/4 v5, -0x2

    invoke-static {v1, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v3, :cond_4e

    move v0, v3

    .line 1877
    .local v0, "isOnehand":Z
    :goto_40
    if-ne v0, v3, :cond_50

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v1

    if-nez v1, :cond_50

    .line 1878
    const v1, 0x1090085

    goto :goto_11

    .end local v0    # "isOnehand":Z
    :cond_4e
    move v0, v2

    .line 1876
    goto :goto_40

    .line 1880
    .restart local v0    # "isOnehand":Z
    :cond_50
    const v1, 0x1090084

    goto :goto_11

    .line 1882
    .end local v0    # "isOnehand":Z
    :pswitch_54
    const v1, 0x1090086

    goto :goto_11

    .line 1884
    :pswitch_58
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isCMCCFeature()Z

    move-result v1

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string v2, "LAWMO_LOCK_KEY"

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 1886
    const v1, 0x109007c

    goto :goto_11

    .line 1888
    :cond_6c
    const v1, 0x1090083

    goto :goto_11

    .line 1890
    :pswitch_70
    const v1, 0x1090090

    goto :goto_11

    .line 1893
    :pswitch_74
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsVoiceUnlockOn:Z

    if-nez v1, :cond_7c

    .line 1894
    const v1, 0x1090073

    goto :goto_11

    .line 1896
    :cond_7c
    const v1, 0x1090074

    goto :goto_11

    .line 1899
    :pswitch_80
    const v1, 0x109008a

    goto :goto_11

    .line 1900
    :pswitch_84
    const v1, 0x109006b

    goto :goto_11

    .line 1903
    :pswitch_88
    const v1, 0x109008f

    goto :goto_11

    .line 1904
    :pswitch_8c
    const v1, 0x109008b

    goto :goto_11

    .line 1905
    :pswitch_90
    const v1, 0x109006d

    goto/16 :goto_11

    .line 1906
    :pswitch_95
    const v1, 0x1090087

    goto/16 :goto_11

    .line 1907
    :pswitch_9a
    const v1, 0x1090076

    goto/16 :goto_11

    .line 1908
    :pswitch_9f
    const v1, 0x109006e

    goto/16 :goto_11

    .line 1909
    :pswitch_a4
    const v1, 0x1090092

    goto/16 :goto_11

    .line 1910
    :pswitch_a9
    const v1, 0x1090091

    goto/16 :goto_11

    .line 1867
    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_30
        :pswitch_54
        :pswitch_58
        :pswitch_a9
        :pswitch_70
        :pswitch_84
        :pswitch_74
        :pswitch_80
        :pswitch_90
        :pswitch_95
        :pswitch_9a
        :pswitch_9f
        :pswitch_a4
        :pswitch_11
        :pswitch_11
        :pswitch_88
        :pswitch_8c
        :pswitch_12
    .end packed-switch
.end method

.method private getOrCreateTransportControl()Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;
    .registers 4

    .prologue
    .line 2132
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    if-nez v1, :cond_16

    .line 2133
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2134
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x1090096

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    .line 2137
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_16
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    return-object v1
.end method

.method private getResetProgressDialog()Landroid/app/Dialog;
    .registers 5

    .prologue
    const/4 v3, 0x4

    .line 2880
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mResetProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_4b

    .line 2881
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mResetProgressDialog:Landroid/app/ProgressDialog;

    .line 2882
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mResetProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const v2, 0x1040482

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2883
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mResetProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 2884
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mResetProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 2885
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mResetProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 2888
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 2889
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mResetProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 2894
    :cond_4b
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mResetProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private getSecurityModeInSignature()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    .registers 2

    .prologue
    .line 2991
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Signature:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v0
.end method

.method private getSecurityView(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    .registers 16
    .param p1, "securityMode"    # Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    const v13, 0x1020359

    .line 1510
    const-string v10, "KeyguardHostView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getSecurityView("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getSecurityViewIdForMode(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v5

    .line 1512
    .local v5, "securityViewIdForMode":I
    const/4 v9, 0x0

    .line 1513
    .local v9, "view":Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v2

    .line 1514
    .local v2, "children":I
    const/4 v1, 0x0

    .local v1, "child":I
    :goto_2d
    if-ge v1, v2, :cond_43

    .line 1515
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v10, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    if-ne v10, v5, :cond_9c

    .line 1516
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v10, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .end local v9    # "view":Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    check-cast v9, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    .line 1520
    .restart local v9    # "view":Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    :cond_43
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getLayoutIdFor(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v4

    .line 1521
    .local v4, "layoutId":I
    if-nez v9, :cond_7f

    if-eqz v4, :cond_7f

    .line 1522
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 1523
    .local v3, "inflater":Landroid/view/LayoutInflater;
    sget-boolean v10, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v10, :cond_6d

    const-string v10, "KeyguardHostView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "inflating id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    :cond_6d
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    const/4 v11, 0x0

    invoke-virtual {v3, v4, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 1525
    .local v8, "v":Landroid/view/View;
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v10, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->addView(Landroid/view/View;)V

    .line 1526
    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->updateSecurityView(Landroid/view/View;)V

    move-object v9, v8

    .line 1527
    check-cast v9, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    .line 1530
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    .end local v8    # "v":Landroid/view/View;
    :cond_7f
    instance-of v10, v9, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    if-eqz v10, :cond_8d

    move-object v6, v9

    .line 1531
    check-cast v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    .line 1532
    .local v6, "selectorView":Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;
    invoke-virtual {v6, v13}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1533
    .local v0, "carrierText":Landroid/view/View;
    invoke-virtual {v6, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->setCarrierArea(Landroid/view/View;)V

    .line 1536
    .end local v0    # "carrierText":Landroid/view/View;
    .end local v6    # "selectorView":Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;
    :cond_8d
    instance-of v10, v9, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    if-eqz v10, :cond_9b

    move-object v7, v9

    .line 1537
    check-cast v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    .line 1538
    .local v7, "unlockView":Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;
    invoke-virtual {v7, v13}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1539
    .restart local v0    # "carrierText":Landroid/view/View;
    invoke-virtual {v7, v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->setCarrierArea(Landroid/view/View;)V

    .line 1542
    .end local v0    # "carrierText":Landroid/view/View;
    .end local v7    # "unlockView":Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;
    :cond_9b
    return-object v9

    .line 1514
    .end local v4    # "layoutId":I
    :cond_9c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d
.end method

.method private getSecurityViewIdForMode(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)I
    .registers 8
    .param p1, "securityMode"    # Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    const v1, 0x10203c6

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1816
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$20;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_ae

    move v1, v2

    .line 1862
    :goto_11
    :pswitch_11
    return v1

    .line 1819
    :pswitch_12
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->checkLockType()Z

    move-result v1

    if-nez v1, :cond_28

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isJapanFeature()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1820
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    const-string v2, "com.nttdocomo.android.dhome"

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;->isPreferedActivity(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1821
    :cond_28
    const v1, 0x10203be

    goto :goto_11

    .line 1823
    :cond_2c
    const v1, 0x10203db

    goto :goto_11

    .line 1826
    :pswitch_30
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "onehand_pattern_enabled"

    const/4 v5, -0x2

    invoke-static {v1, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v3, :cond_4e

    move v0, v3

    .line 1827
    .local v0, "isOnehand":Z
    :goto_40
    if-ne v0, v3, :cond_50

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v1

    if-nez v1, :cond_50

    .line 1828
    const v1, 0x10203b8

    goto :goto_11

    .end local v0    # "isOnehand":Z
    :cond_4e
    move v0, v2

    .line 1826
    goto :goto_40

    .line 1830
    .restart local v0    # "isOnehand":Z
    :cond_50
    const v1, 0x10203b6

    goto :goto_11

    .line 1833
    .end local v0    # "isOnehand":Z
    :pswitch_54
    const v1, 0x10203bc

    goto :goto_11

    .line 1835
    :pswitch_58
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isCMCCFeature()Z

    move-result v1

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string v2, "LAWMO_LOCK_KEY"

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 1837
    const v1, 0x10203ad

    goto :goto_11

    .line 1839
    :cond_6c
    const v1, 0x10203b3

    goto :goto_11

    .line 1841
    :pswitch_70
    const v1, 0x10203cb

    goto :goto_11

    .line 1843
    :pswitch_74
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsVoiceUnlockOn:Z

    if-nez v1, :cond_7c

    .line 1844
    const v1, 0x1020369

    goto :goto_11

    .line 1846
    :cond_7c
    const v1, 0x102036d

    goto :goto_11

    .line 1849
    :pswitch_80
    const v1, 0x10203c1

    goto :goto_11

    .line 1850
    :pswitch_84
    const v1, 0x102034d

    goto :goto_11

    .line 1853
    :pswitch_88
    const v1, 0x10203c9

    goto :goto_11

    .line 1854
    :pswitch_8c
    const v1, 0x10203c5

    goto :goto_11

    .line 1855
    :pswitch_90
    const v1, 0x1020353

    goto/16 :goto_11

    .line 1856
    :pswitch_95
    const v1, 0x10203bd

    goto/16 :goto_11

    .line 1857
    :pswitch_9a
    const v1, 0x1020382

    goto/16 :goto_11

    .line 1858
    :pswitch_9f
    const v1, 0x109006e

    goto/16 :goto_11

    .line 1859
    :pswitch_a4
    const v1, 0x10203ce

    goto/16 :goto_11

    .line 1860
    :pswitch_a9
    const v1, 0x10203cc

    goto/16 :goto_11

    .line 1816
    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_30
        :pswitch_54
        :pswitch_58
        :pswitch_a9
        :pswitch_70
        :pswitch_84
        :pswitch_74
        :pswitch_80
        :pswitch_90
        :pswitch_95
        :pswitch_9a
        :pswitch_9f
        :pswitch_a4
        :pswitch_11
        :pswitch_11
        :pswitch_88
        :pswitch_8c
        :pswitch_12
    .end packed-switch
.end method

.method private getWidgetPosition(I)I
    .registers 9
    .param p1, "id"    # I

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    .line 589
    .local v0, "appWidgetContainer":Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v1

    .line 590
    .local v1, "children":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    if-ge v3, v1, :cond_4b

    .line 591
    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v2

    .line 592
    .local v2, "content":Landroid/view/View;
    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v4, p1, :cond_1a

    .line 599
    .end local v2    # "content":Landroid/view/View;
    .end local v3    # "i":I
    :goto_19
    return v3

    .line 594
    .restart local v2    # "content":Landroid/view/View;
    .restart local v3    # "i":I
    :cond_1a
    if-nez v2, :cond_48

    .line 596
    const-string v4, "KeyguardHostView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "*** Null content at i="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",N="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :cond_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 599
    .end local v2    # "content":Landroid/view/View;
    :cond_4b
    const/4 v3, -0x1

    goto :goto_19
.end method

.method public static isAddWidgetShow()Z
    .registers 1

    .prologue
    .line 584
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mIsAddWidget:Z

    return v0
.end method

.method private static final isMusicPlaying(I)Z
    .registers 2
    .param p0, "playbackState"    # I

    .prologue
    .line 525
    packed-switch p0, :pswitch_data_8

    .line 534
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 532
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 525
    nop

    :pswitch_data_8
    .packed-switch 0x3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private isSecure()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 1746
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 1747
    .local v0, "mode":Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$20;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_44

    .line 1773
    :pswitch_12
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown security mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1749
    :pswitch_2b
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1771
    :goto_33
    :pswitch_33
    return v1

    .line 1752
    :cond_34
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v1

    goto :goto_33

    .line 1757
    :pswitch_3b
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v1

    goto :goto_33

    .line 1771
    :pswitch_42
    const/4 v1, 0x0

    goto :goto_33

    .line 1747
    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_3b
        :pswitch_3b
        :pswitch_33
        :pswitch_3b
        :pswitch_33
        :pswitch_12
        :pswitch_33
        :pswitch_12
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_42
    .end packed-switch
.end method

.method private numWidgets()I
    .registers 5

    .prologue
    .line 1993
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v0

    .line 1994
    .local v0, "childCount":I
    const/4 v2, 0x0

    .line 1995
    .local v2, "widgetCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_1f

    .line 1996
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isWidgetPage(I)Z

    move-result v3

    if-eqz v3, :cond_1c

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isContextualPage(I)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 1997
    add-int/lit8 v2, v2, 0x1

    .line 1995
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2000
    :cond_1f
    return v2
.end method

.method private performWipeout(I)V
    .registers 15
    .param p1, "attemptsCount"    # I

    .prologue
    .line 2661
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getResetProgressDialog()Landroid/app/Dialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    .line 2664
    const/4 v9, 0x0

    .line 2665
    .local v9, "wipeExcludeExternalStorage":Z
    const-string v6, "com.android.email"

    .line 2666
    .local v6, "pkg":Ljava/lang/String;
    const-string v0, "com.android.email.SecurityPolicy$PolicyAdmin"

    .line 2667
    .local v0, "cls":Ljava/lang/String;
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v6, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2668
    .local v4, "mAdminName":Landroid/content/ComponentName;
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const-string v11, "device_policy"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    .line 2669
    .local v5, "mDPM":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v5, v4}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v2

    .line 2670
    .local v2, "easCount":I
    if-eqz v2, :cond_23

    if-le v2, p1, :cond_35

    .line 2671
    :cond_23
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const-string v11, "enterprise_policy"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 2673
    .local v3, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/enterprise/PasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded()Z

    move-result v9

    .line 2677
    .end local v3    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    :cond_35
    if-nez v9, :cond_a1

    .line 2678
    const/4 v8, 0x0

    .line 2680
    .local v8, "shouldResetRightAway":Z
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v10, :cond_53

    .line 2681
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const-string v11, "storage"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/storage/StorageManager;

    iput-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 2682
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v10, :cond_8b

    .line 2683
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v10, v11}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 2690
    :cond_53
    :goto_53
    const/4 v7, 0x5

    .line 2692
    .local v7, "ret":I
    :try_start_54
    const-string v10, "KeyguardHostView"

    const-string v11, "formatExtStorage() "

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2693
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->formatExtStorage()I
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5e} :catch_94

    move-result v7

    .line 2700
    :goto_5f
    packed-switch v7, :pswitch_data_a8

    .line 2711
    :pswitch_62
    const-string v10, "KeyguardHostView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "formatExtStorage returns unexpected case. ret = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". shouldResetRightAway..."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2713
    const/4 v8, 0x1

    .line 2717
    :pswitch_81
    const/4 v10, 0x1

    if-ne v8, v10, :cond_8a

    .line 2718
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->deleteInternalSd()Z

    .line 2719
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->rebootWipeUserData()V

    .line 2725
    .end local v7    # "ret":I
    .end local v8    # "shouldResetRightAway":Z
    :cond_8a
    :goto_8a
    return-void

    .line 2685
    .restart local v8    # "shouldResetRightAway":Z
    :cond_8b
    const-string v10, "KeyguardHostView"

    const-string v11, "mStorageManager is null !!. shouldResetRightAway"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2686
    const/4 v8, 0x1

    goto :goto_53

    .line 2694
    .restart local v7    # "ret":I
    :catch_94
    move-exception v1

    .line 2695
    .local v1, "e":Ljava/lang/Exception;
    const-string v10, "KeyguardHostView"

    const-string v11, "Exception is caughted. formatExtStorage() "

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2696
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2697
    const/4 v7, 0x5

    goto :goto_5f

    .line 2722
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v7    # "ret":I
    .end local v8    # "shouldResetRightAway":Z
    :cond_a1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->deleteInternalSd()Z

    .line 2723
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->rebootWipeUserData()V

    goto :goto_8a

    .line 2700
    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_81
        :pswitch_62
        :pswitch_81
        :pswitch_62
        :pswitch_81
        :pswitch_62
        :pswitch_81
    .end packed-switch
.end method

.method private rebootWipeUserData()V
    .registers 4

    .prologue
    .line 2915
    :try_start_0
    const-string v1, "KeyguardHostView"

    const-string v2, "RecoverySystem.rebootWipeUserData"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2916
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;)V

    .line 2917
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mResetProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_15

    .line 2918
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mResetProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 2923
    :cond_15
    :goto_15
    return-void

    .line 2920
    :catch_16
    move-exception v0

    .line 2921
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KeyguardHostView"

    const-string v2, "Exception in wiping data"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method private reportFailedSPassUnlockAttempt()V
    .registers 5

    .prologue
    .line 3088
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    .line 3089
    .local v1, "monitor":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 3090
    .local v0, "failedAttempts":I
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->reportFailedUnlockAttempt()V

    .line 3091
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt()V

    .line 3093
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v3, 0xa

    if-lt v2, v3, :cond_23

    .line 3094
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SPassPassword:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 3096
    :cond_23
    return-void
.end method

.method private reportFailedUnlockAttempt()V
    .registers 13

    .prologue
    .line 1150
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    .line 1151
    .local v5, "monitor":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    const/4 v2, 0x0

    .line 1152
    .local v2, "failedAttempts":I
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v4

    .line 1153
    .local v4, "mode":Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v9, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v4, v9, :cond_a0

    const/4 v8, 0x1

    .line 1155
    .local v8, "usingPattern":Z
    :goto_12
    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isITPolicyEnabled()Z

    move-result v9

    if-nez v9, :cond_20

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsAutoWipe:Z

    if-eqz v9, :cond_a3

    sget-object v9, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v4, v9, :cond_a3

    .line 1157
    :cond_20
    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttemptswithITPolicy()I

    move-result v9

    add-int/lit8 v2, v9, 0x1

    .line 1162
    :goto_26
    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->reportFailedUnlockAttempt()V

    .line 1163
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt()V

    .line 1165
    sget-boolean v9, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v9, :cond_4a

    const-string v9, "KeyguardHostView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "reportFailedPatternAttempt: #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    :cond_4a
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v9

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v3

    .line 1168
    .local v3, "failedAttemptsBeforeWipe":I
    const-string v9, "KeyguardHostView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failedAttemptsBeforeWipe -- : #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mIsAutoWipe = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsAutoWipe:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsAutoWipe:Z

    if-eqz v9, :cond_87

    if-gtz v3, :cond_87

    .line 1170
    const/16 v3, 0xa

    .line 1173
    :cond_87
    const/16 v1, 0xf

    .line 1176
    .local v1, "failedAttemptWarning":I
    if-lez v3, :cond_ab

    sub-int v6, v3, v2

    .line 1180
    .local v6, "remainingBeforeWipe":I
    :goto_8d
    const/4 v7, 0x0

    .line 1181
    .local v7, "showTimeout":Z
    const/4 v9, 0x5

    if-lt v6, v9, :cond_95

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsAutoWipe:Z

    if-eqz v9, :cond_eb

    .line 1187
    :cond_95
    if-lez v6, :cond_af

    .line 1188
    invoke-direct {p0, v2, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showAlmostAtWipeDialog(II)V

    .line 1226
    :cond_9a
    :goto_9a
    if-eqz v7, :cond_9f

    .line 1227
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showTimeoutDialog()V

    .line 1229
    :cond_9f
    return-void

    .line 1153
    .end local v1    # "failedAttemptWarning":I
    .end local v3    # "failedAttemptsBeforeWipe":I
    .end local v6    # "remainingBeforeWipe":I
    .end local v7    # "showTimeout":Z
    .end local v8    # "usingPattern":Z
    :cond_a0
    const/4 v8, 0x0

    goto/16 :goto_12

    .line 1159
    .restart local v8    # "usingPattern":Z
    :cond_a3
    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v9

    add-int/lit8 v2, v9, 0x1

    goto/16 :goto_26

    .line 1176
    .restart local v1    # "failedAttemptWarning":I
    .restart local v3    # "failedAttemptsBeforeWipe":I
    :cond_ab
    const v6, 0x7fffffff

    goto :goto_8d

    .line 1190
    .restart local v6    # "remainingBeforeWipe":I
    .restart local v7    # "showTimeout":Z
    :cond_af
    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/admin/DevicePolicyManager;->getPasswordRecoverable(Landroid/content/ComponentName;)Z

    move-result v10

    if-ne v9, v10, :cond_e0

    .line 1191
    const-string v9, "KeyguardHostView"

    const-string v10, "Too many unlock attempts; device will be display recovery screen!"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/admin/DevicePolicyManager;->recoverPassword()V

    .line 1193
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_Recovery_enabled"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 1194
    .local v0, "bRecovery":Z
    sget-object v9, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Recovery:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_9a

    .line 1197
    .end local v0    # "bRecovery":Z
    :cond_e0
    const-string v9, "KeyguardHostView"

    const-string v10, "Too many unlock attempts; device will be wiped!"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showWipeDialog(I)V

    goto :goto_9a

    .line 1202
    :cond_eb
    rem-int/lit8 v9, v2, 0x5

    if-nez v9, :cond_111

    const/4 v7, 0x1

    .line 1204
    :goto_f0
    if-eqz v8, :cond_fe

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mEnableFallback:Z

    if-eqz v9, :cond_fe

    .line 1205
    const/16 v9, 0xf

    if-ne v2, v9, :cond_113

    .line 1206
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showAlmostAtAccountLoginDialog()V

    .line 1207
    const/4 v7, 0x0

    .line 1215
    :cond_fe
    :goto_fe
    if-eqz v8, :cond_9a

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->savedBackupPinExists()Z

    move-result v9

    if-eqz v9, :cond_9a

    .line 1216
    const/16 v9, 0xf

    if-ne v2, v9, :cond_124

    .line 1217
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showAlmostAtBackupPininDialog()V

    .line 1218
    const/4 v7, 0x0

    goto :goto_9a

    .line 1202
    :cond_111
    const/4 v7, 0x0

    goto :goto_f0

    .line 1208
    :cond_113
    const/16 v9, 0x14

    if-lt v2, v9, :cond_fe

    .line 1209
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 1210
    sget-object v9, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 1212
    const/4 v7, 0x0

    goto :goto_fe

    .line 1219
    :cond_124
    const/16 v9, 0x14

    if-lt v2, v9, :cond_9a

    .line 1220
    sget-object v9, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->BackupPin:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 1222
    const/4 v7, 0x0

    goto/16 :goto_9a
.end method

.method private setBackButtonEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 763
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_7

    .line 767
    :goto_6
    return-void

    .line 764
    :cond_7
    if-eqz p1, :cond_15

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getSystemUiVisibility()I

    move-result v0

    const v1, -0x400001

    and-int/2addr v0, v1

    :goto_11
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->setSystemUiVisibility(I)V

    goto :goto_6

    :cond_15
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getSystemUiVisibility()I

    move-result v0

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    goto :goto_11
.end method

.method private setGloveMode(Z)V
    .registers 6
    .param p1, "enable"    # Z

    .prologue
    .line 3074
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isGestureWithFingerHoverOn()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 3075
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 3076
    const-string v1, "KeyguardHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setGloveMode ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3077
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.glove.LOCK_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3078
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "gloveEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3079
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3085
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_43
    :goto_43
    return-void

    .line 3081
    :cond_44
    const-string v1, "KeyguardHostView"

    const-string v2, "setGloveMode - boot completed yet"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3082
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSetGloveModeOnBootCompleted:Z

    goto :goto_43
.end method

.method private shouldEnableAddWidget()Z
    .registers 3

    .prologue
    .line 770
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->numWidgets()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1c

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mUserSetupCompleted:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsEasyUxOn:Z

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsMultipleLockOn:Z

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isSupportSPC()Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private shouldEnableMenuKey()Z
    .registers 7

    .prologue
    .line 2579
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2580
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x1110026

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2582
    .local v0, "configDisabled":Z
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v2

    .line 2583
    .local v2, "isTestHarness":Z
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/enable_menu_key"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .line 2584
    .local v1, "fileOverride":Z
    if-eqz v0, :cond_20

    if-nez v2, :cond_20

    if-eqz v1, :cond_22

    :cond_20
    const/4 v4, 0x1

    :goto_21
    return v4

    :cond_22
    const/4 v4, 0x0

    goto :goto_21
.end method

.method private showAlmostAtAccountLoginDialog()V
    .registers 9

    .prologue
    .line 1132
    const/16 v2, 0x1e

    .line 1133
    .local v2, "timeoutInSeconds":I
    const/16 v0, 0xf

    .line 1135
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const v4, 0x104090c

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0xf

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/16 v7, 0x1e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1137
    .local v1, "message":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-direct {p0, v3, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    return-void
.end method

.method private showAlmostAtBackupPininDialog()V
    .registers 9

    .prologue
    .line 1141
    const/16 v2, 0x1e

    .line 1142
    .local v2, "timeoutInSeconds":I
    const/16 v0, 0xf

    .line 1144
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const v4, 0x104090d

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0xf

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/16 v7, 0x1e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1146
    .local v1, "message":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-direct {p0, v3, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    return-void
.end method

.method private showAlmostAtWipeDialog(II)V
    .registers 11
    .param p1, "attempts"    # I
    .param p2, "remaining"    # I

    .prologue
    const/4 v7, 0x1

    .line 1093
    const/16 v1, 0x1e

    .line 1094
    .local v1, "timeoutInSeconds":I
    const/4 v0, 0x0

    .line 1095
    .local v0, "message":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsAutoWipe:Z

    if-eqz v2, :cond_18

    if-ne p2, v7, :cond_18

    .line 1096
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const v3, 0x10409a0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1101
    :goto_13
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    return-void

    .line 1098
    :cond_18
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const v3, 0x104090a

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

.method private showAppropriateWidgetPage()V
    .registers 4

    .prologue
    .line 2377
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportState:I

    .line 2378
    .local v1, "state":I
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->ensureTransportPresentOrRemoved(I)V

    .line 2379
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getAppropriateWidgetPage(I)I

    move-result v0

    .line 2380
    .local v0, "pageToShow":I
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setCurrentPage(I)V

    .line 2381
    return-void
.end method

.method private showBackupSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .registers 7
    .param p1, "mode"    # Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    const/4 v2, 0x1

    .line 1270
    sget-boolean v3, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v3, :cond_c

    const-string v3, "KeyguardHostView"

    const-string v4, "showBackupSecurity()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    :cond_c
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getBackupSecurityMode(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 1273
    .local v0, "backup":Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->BackupPin:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v3, :cond_1a

    .line 1274
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->BackupPin:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 1277
    :cond_1a
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->updateBackgroundGradation(Z)V

    .line 1280
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsCoverLockEnabled:Z

    if-eqz v3, :cond_30

    .line 1281
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->handleNextScreenShowing()V

    .line 1283
    :cond_30
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 1286
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-eqz v3, :cond_4c

    .line 1287
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getCurrentPage()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v1, v3, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    .line 1289
    .local v1, "isCameraPage":Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-nez v1, :cond_4d

    :goto_49
    invoke-virtual {v3, v2}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setChallengeInteractive(Z)V

    .line 1291
    .end local v1    # "isCameraPage":Z
    :cond_4c
    return-void

    .line 1289
    .restart local v1    # "isCameraPage":Z
    :cond_4d
    const/4 v2, 0x0

    goto :goto_49
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1046
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDialogTheme:I

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1051
    .local v0, "dialog":Landroid/app/AlertDialog;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_2c

    .line 1052
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1054
    :cond_2c
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1055
    return-void
.end method

.method private showNextSecurityScreenOrFinish(Z)V
    .registers 10
    .param p1, "authenticated"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1306
    sget-boolean v3, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v3, :cond_24

    const-string v3, "KeyguardHostView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showNextSecurityScreenOrFinish("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    :cond_24
    const/4 v1, 0x0

    .line 1308
    .local v1, "finish":Z
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v3, v4, :cond_7a

    .line 1309
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    .line 1311
    .local v2, "securityMode":Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v3, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getAlternateFor(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    .line 1312
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v3, v2, :cond_43

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v3

    if-eqz v3, :cond_69

    .line 1313
    :cond_43
    const/4 v1, 0x1

    .line 1359
    .end local v2    # "securityMode":Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_44
    :goto_44
    if-eqz v1, :cond_cb

    .line 1362
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 1366
    const/4 v0, 0x0

    .line 1367
    .local v0, "deferKeyguardDone":Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDismissAction:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;

    if-eqz v3, :cond_5d

    .line 1368
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDismissAction:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;->onDismiss()Z

    move-result v0

    .line 1369
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDismissAction:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;

    .line 1371
    :cond_5d
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v3, :cond_68

    .line 1372
    if-eqz v0, :cond_c3

    .line 1373
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDonePending()V

    .line 1389
    .end local v0    # "deferKeyguardDone":Z
    :cond_68
    :goto_68
    return-void

    .line 1315
    .restart local v2    # "securityMode":Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_69
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 1317
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsCoverLockEnabled:Z

    if-eqz v3, :cond_44

    .line 1318
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->handleNextScreenShowing()V

    goto :goto_44

    .line 1320
    .end local v2    # "securityMode":Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_7a
    if-eqz p1, :cond_bf

    .line 1321
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$20;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardSecurityModel$SecurityMode:[I

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_f6

    .line 1352
    const-string v3, "KeyguardHostView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad security screen "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fail safe"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showPrimarySecurityScreen(Z)V

    goto :goto_44

    .line 1335
    :pswitch_ad
    const/4 v1, 0x1

    .line 1336
    goto :goto_44

    .line 1343
    :pswitch_af
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    .line 1344
    .restart local v2    # "securityMode":Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v2, v3, :cond_bd

    .line 1345
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_44

    .line 1347
    :cond_bd
    const/4 v1, 0x1

    .line 1349
    goto :goto_44

    .line 1357
    .end local v2    # "securityMode":Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_bf
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showPrimarySecurityScreen(Z)V

    goto :goto_44

    .line 1375
    .restart local v0    # "deferKeyguardDone":Z
    :cond_c3
    sput-boolean v6, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwipeLockShowingBeforeTimeout:Z

    .line 1376
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v3, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDone(Z)V

    goto :goto_68

    .line 1380
    .end local v0    # "deferKeyguardDone":Z
    :cond_cb
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isDSDSDevice()Z

    move-result v3

    if-eqz v3, :cond_d7

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin2:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v3, v4, :cond_e7

    :cond_d7
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SPass:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v3, v4, :cond_e7

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SPassPassword:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v3, v4, :cond_e7

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsCoverLockEnabled:Z

    if-eqz v3, :cond_ee

    .line 1384
    :cond_e7
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v3, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->showBouncer(Z)V

    goto/16 :goto_68

    .line 1386
    :cond_ee
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v3, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->showBouncer(Z)V

    goto/16 :goto_68

    .line 1321
    nop

    :pswitch_data_f6
    .packed-switch 0x1
        :pswitch_ad
        :pswitch_ad
        :pswitch_ad
        :pswitch_ad
        :pswitch_ad
        :pswitch_ad
        :pswitch_ad
        :pswitch_ad
        :pswitch_ad
        :pswitch_ad
        :pswitch_ad
        :pswitch_ad
        :pswitch_ad
        :pswitch_af
        :pswitch_af
        :pswitch_af
        :pswitch_af
    .end packed-switch
.end method

.method private showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .registers 16
    .param p1, "securityMode"    # Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 1552
    const-string v11, "KeyguardHostView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "showSecurityScreen("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    sget-object v11, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Biometric:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v11, :cond_34

    iget-boolean v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsVoiceUnlockOn:Z

    if-eqz v11, :cond_34

    iget-boolean v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsTalkbackDrvModeOn:Z

    if-eqz v11, :cond_34

    .line 1556
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    sget-object v12, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Biometric:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v11, v12}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getBackupSecurityMode(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p1

    .line 1563
    :cond_34
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v11, :cond_39

    .line 1657
    :goto_38
    return-void

    .line 1565
    :cond_39
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getSecurityView(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    move-result-object v6

    .line 1566
    .local v6, "oldView":Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getSecurityView(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    move-result-object v5

    .line 1567
    .local v5, "newView":Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    .line 1570
    sput-object p1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->sCurrentSecurityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 1573
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x111000c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 1575
    .local v1, "fullScreenEnabled":Z
    sget-object v11, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v11, :cond_66

    sget-object v11, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v11, :cond_66

    sget-object v11, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPerso:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v11, :cond_66

    sget-object v11, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v11, :cond_66

    sget-object v11, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->BackupPin:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v11, :cond_148

    :cond_66
    move v3, v10

    .line 1581
    .local v3, "isSimOrAccount":Z
    :goto_67
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isCMCCFeature()Z

    move-result v11

    if-eqz v11, :cond_88

    .line 1582
    sget-object v11, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v11, :cond_88

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string v12, "LAWMO_LOCK_KEY"

    invoke-virtual {v11, v12}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_88

    .line 1584
    sget-boolean v11, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v11, :cond_86

    const-string v11, "KeyguardHostView"

    const-string v12, "set the fullscreen by LAWMO LOCK"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    :cond_86
    const/4 v1, 0x1

    .line 1586
    const/4 v3, 0x1

    .line 1591
    :cond_88
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v11

    if-eqz v11, :cond_9b

    .line 1592
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v11

    if-eqz v11, :cond_9b

    .line 1593
    const/4 v3, 0x1

    .line 1597
    :cond_9b
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isDSDSDevice()Z

    move-result v11

    if-eqz v11, :cond_a6

    .line 1598
    sget-object v11, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin2:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v11, :cond_a6

    .line 1599
    const/4 v3, 0x1

    .line 1603
    :cond_a6
    if-eqz v3, :cond_aa

    if-nez v1, :cond_ae

    :cond_aa
    sget-object v11, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Recovery:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v11, :cond_14b

    .line 1605
    :cond_ae
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setVisibility(I)V

    .line 1610
    :goto_b5
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-eqz v11, :cond_c1

    .line 1611
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-nez v1, :cond_be

    move v9, v10

    :cond_be
    invoke-virtual {v11, v9}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setChallengeInteractive(Z)V

    .line 1615
    :cond_c1
    if-eqz v6, :cond_cb

    .line 1616
    invoke-interface {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->onPause()V

    .line 1617
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mNullCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v6, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V

    .line 1619
    :cond_cb
    const/4 v9, 0x2

    invoke-interface {v5, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->onResume(I)V

    .line 1620
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v5, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V

    .line 1622
    invoke-interface {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->needsInput()Z

    move-result v4

    .line 1623
    .local v4, "needsInput":Z
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v9, :cond_e1

    .line 1624
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v9, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->setNeedsInput(Z)V

    .line 1628
    :cond_e1
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v0

    .line 1630
    .local v0, "childCount":I
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const v12, 0x10a0034

    invoke-static {v11, v12}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1632
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const v12, 0x10a0035

    invoke-static {v11, v12}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 1634
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getSecurityViewIdForMode(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v7

    .line 1635
    .local v7, "securityViewIdForMode":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_108
    if-ge v2, v0, :cond_11b

    .line 1636
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v9, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v9

    if-ne v9, v7, :cond_152

    .line 1637
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v9, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->setDisplayedChild(I)V

    .line 1642
    :cond_11b
    sget-object v9, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v9, :cond_123

    .line 1644
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->setOnDismissAction(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;)V

    .line 1646
    :cond_123
    sget-object v9, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v9, :cond_12b

    sget-object v9, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->BackupPin:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v9, :cond_144

    :cond_12b
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v9

    if-nez v9, :cond_144

    .line 1649
    invoke-direct {p0, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->setBackButtonEnabled(Z)V

    .line 1650
    const v9, 0x10203ab

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    .line 1652
    .local v8, "slider":Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    if-eqz v8, :cond_144

    .line 1653
    invoke-virtual {v8, v10}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->showChallenge(Z)V

    .line 1656
    .end local v8    # "slider":Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    :cond_144
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    goto/16 :goto_38

    .end local v0    # "childCount":I
    .end local v2    # "i":I
    .end local v3    # "isSimOrAccount":Z
    .end local v4    # "needsInput":Z
    .end local v7    # "securityViewIdForMode":I
    :cond_148
    move v3, v9

    .line 1575
    goto/16 :goto_67

    .line 1607
    .restart local v3    # "isSimOrAccount":Z
    :cond_14b
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v11, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setVisibility(I)V

    goto/16 :goto_b5

    .line 1635
    .restart local v0    # "childCount":I
    .restart local v2    # "i":I
    .restart local v4    # "needsInput":Z
    .restart local v7    # "securityViewIdForMode":I
    :cond_152
    add-int/lit8 v2, v2, 0x1

    goto :goto_108
.end method

.method private showTimeoutDialog()V
    .registers 9

    .prologue
    .line 1058
    const/16 v3, 0x1e

    .line 1059
    .local v3, "timeoutInSeconds":I
    const/4 v1, 0x0

    .line 1061
    .local v1, "messageId":I
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    .line 1062
    .local v2, "securityMode":Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Signature:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v2, v4, :cond_13

    .line 1063
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSignatureBackupSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    .line 1066
    :cond_13
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$20;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_56

    .line 1084
    :goto_1e
    if-eqz v1, :cond_45

    .line 1085
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1088
    .local v0, "message":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-direct {p0, v4, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    .end local v0    # "message":Ljava/lang/String;
    :cond_45
    return-void

    .line 1068
    :pswitch_46
    const v1, 0x1040909

    .line 1069
    goto :goto_1e

    .line 1071
    :pswitch_4a
    const v1, 0x1040907

    .line 1072
    goto :goto_1e

    .line 1075
    :pswitch_4e
    const v1, 0x1040908

    .line 1076
    goto :goto_1e

    .line 1079
    :pswitch_52
    const v1, 0x1040907

    goto :goto_1e

    .line 1066
    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_46
        :pswitch_4a
        :pswitch_4e
        :pswitch_4e
        :pswitch_52
    .end packed-switch
.end method

.method private showWipeDialog(I)V
    .registers 10
    .param p1, "attempts"    # I

    .prologue
    .line 1108
    move v0, p1

    .line 1109
    .local v0, "attemptsCount":I
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDialogTheme:I

    invoke-direct {v2, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const v4, 0x104053d

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$9;

    invoke-direct {v4, p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$9;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;I)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$8;

    invoke-direct {v3, p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$8;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;I)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1127
    .local v1, "wipedialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 1128
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1129
    return-void
.end method

.method private updateSecurityView(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 826
    instance-of v1, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    if-eqz v1, :cond_22

    move-object v0, p1

    .line 827
    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    .line 828
    .local v0, "ksv":Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V

    .line 829
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 830
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->isBouncing()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 831
    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->showBouncer(I)V

    .line 838
    .end local v0    # "ksv":Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    :goto_1d
    return-void

    .line 833
    .restart local v0    # "ksv":Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    :cond_1e
    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->hideBouncer(I)V

    goto :goto_1d

    .line 836
    .end local v0    # "ksv":Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    :cond_22
    const-string v1, "KeyguardHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a KeyguardSecurityView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method private updateSecurityViews()V
    .registers 4

    .prologue
    .line 819
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v0

    .line 820
    .local v0, "children":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 821
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->updateSecurityView(Landroid/view/View;)V

    .line 820
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 823
    :cond_15
    return-void
.end method

.method private widgetsDisabledByDpm()Z
    .registers 2

    .prologue
    .line 810
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDisabledFeatures:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method addWidget(Landroid/appwidget/AppWidgetHostView;I)V
    .registers 4
    .param p1, "view"    # Landroid/appwidget/AppWidgetHostView;
    .param p2, "pageIndex"    # I

    .prologue
    .line 921
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    .line 922
    return-void
.end method

.method public checkAppWidgetConsistency()V
    .registers 15

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2206
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v11

    if-nez v11, :cond_11

    .line 2207
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCheckAppWidgetConsistencyOnBootCompleted:Z

    .line 2288
    :cond_10
    :goto_10
    return-void

    .line 2213
    :cond_11
    iget-boolean v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mNeedToAddShotCutWidget:Z

    if-eqz v11, :cond_28

    .line 2214
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget-object v13, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-static {v11, v12, v13}, Lcom/android/internal/policy/impl/keyguard/sec/ShortCutWidgetFrame;->create(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Landroid/appwidget/AppWidgetManager;)Lcom/android/internal/policy/impl/keyguard/sec/ShortCutWidgetFrame;

    move-result-object v6

    .line 2216
    .local v6, "shortcutWidget":Landroid/view/View;
    if-eqz v6, :cond_28

    .line 2217
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v11, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;)V

    .line 2218
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mNeedToAddShotCutWidget:Z

    .line 2222
    .end local v6    # "shortcutWidget":Landroid/view/View;
    :cond_28
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v2

    .line 2223
    .local v2, "childCount":I
    const/4 v8, 0x0

    .line 2224
    .local v8, "widgetPageExists":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_30
    if-ge v3, v2, :cond_43

    .line 2225
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v11, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isWidgetPage(I)Z

    move-result v11

    if-eqz v11, :cond_ca

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v11, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isContextualPage(I)Z

    move-result v11

    if-nez v11, :cond_ca

    .line 2226
    const/4 v8, 0x1

    .line 2230
    :cond_43
    if-nez v8, :cond_10

    iget-boolean v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsFMMEnabled:Z

    if-nez v11, :cond_10

    iget-boolean v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsCarrierLockEnabled:Z

    if-nez v11, :cond_10

    .line 2231
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getInsertPageIndex()I

    move-result v4

    .line 2233
    .local v4, "insertPageIndex":I
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->widgetsDisabledByDpm()Z

    move-result v11

    if-nez v11, :cond_ce

    move v7, v9

    .line 2234
    .local v7, "userAddedWidgetsEnabled":Z
    :goto_58
    const/4 v0, 0x0

    .line 2237
    .local v0, "addedDefaultAppWidget":Z
    iget-boolean v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v11, :cond_8e

    if-eqz v7, :cond_8e

    iget-boolean v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsEasyUxOn:Z

    if-nez v11, :cond_8e

    iget-boolean v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsMultipleLockOn:Z

    if-eqz v11, :cond_8e

    iget-boolean v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsWidgetPreloaded:Z

    if-nez v11, :cond_8e

    .line 2238
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->allocateIdForPreloadAppWidget()I

    move-result v5

    .line 2239
    .local v5, "preloadWidgetId":I
    if-eqz v5, :cond_8e

    .line 2240
    invoke-direct {p0, v5, v4, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addWidget(IIZ)Z

    .line 2241
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v12, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v11, v12, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->onAddView(Landroid/view/View;I)V

    .line 2242
    add-int/lit8 v4, v4, 0x1

    .line 2244
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsWidgetPreloaded:Z

    .line 2245
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "kg_preloaded_widget"

    invoke-static {v11, v12, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2250
    .end local v5    # "preloadWidgetId":I
    :cond_8e
    iget-boolean v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v11, :cond_a2

    .line 2251
    if-eqz v7, :cond_d0

    iget-boolean v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsEasyUxOn:Z

    if-nez v11, :cond_d0

    .line 2252
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->allocateIdForDefaultAppWidget()I

    move-result v1

    .line 2253
    .local v1, "appWidgetId":I
    if-eqz v1, :cond_a2

    .line 2254
    invoke-direct {p0, v1, v4, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addWidget(IIZ)Z

    move-result v0

    .line 2278
    .end local v1    # "appWidgetId":I
    :cond_a2
    :goto_a2
    if-nez v0, :cond_ab

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsFMMEnabled:Z

    if-nez v9, :cond_ab

    .line 2279
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addDefaultStatusWidget(I)V

    .line 2283
    :cond_ab
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v9, :cond_10

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsEasyUxOn:Z

    if-nez v9, :cond_10

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsMultipleLockOn:Z

    if-eqz v9, :cond_10

    if-eqz v7, :cond_10

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsFMMEnabled:Z

    if-nez v9, :cond_10

    .line 2284
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v10, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v9, v10, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->onAddView(Landroid/view/View;I)V

    goto/16 :goto_10

    .line 2224
    .end local v0    # "addedDefaultAppWidget":Z
    .end local v4    # "insertPageIndex":I
    .end local v7    # "userAddedWidgetsEnabled":Z
    :cond_ca
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_30

    .restart local v4    # "insertPageIndex":I
    :cond_ce
    move v7, v10

    .line 2233
    goto :goto_58

    .line 2259
    .restart local v0    # "addedDefaultAppWidget":Z
    .restart local v7    # "userAddedWidgetsEnabled":Z
    :cond_d0
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->getFallbackAppWidgetId()I

    move-result v1

    .line 2260
    .restart local v1    # "appWidgetId":I
    if-nez v1, :cond_e3

    .line 2261
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->allocateIdForDefaultAppWidget()I

    move-result v1

    .line 2262
    if-eqz v1, :cond_e3

    .line 2263
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9, v1}, Lcom/android/internal/widget/LockPatternUtils;->writeFallbackAppWidgetId(I)V

    .line 2266
    :cond_e3
    if-eqz v1, :cond_a2

    .line 2267
    invoke-direct {p0, v1, v4, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addWidget(IIZ)Z

    move-result v0

    .line 2268
    if-nez v0, :cond_a2

    .line 2269
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v9, v1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 2270
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->writeFallbackAppWidgetId(I)V

    goto :goto_a2
.end method

.method public cleanUp()V
    .registers 5

    .prologue
    .line 2563
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v0

    .line 2564
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_15

    .line 2565
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v1

    .line 2566
    .local v1, "frame":Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->removeAllViews()V

    .line 2564
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 2568
    .end local v1    # "frame":Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    :cond_15
    return-void
.end method

.method public clearAppWidgetToShow()V
    .registers 2

    .prologue
    .line 1736
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    .line 1737
    return-void
.end method

.method public dismiss()V
    .registers 2

    .prologue
    .line 2624
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showNextSecurityScreenOrFinish(Z)V

    .line 2625
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 577
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 578
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_c

    .line 579
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDoneDrawing()V

    .line 581
    :cond_c
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 3019
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    .line 3020
    .local v1, "mode":Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2c

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2c

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_2c

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SPass:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v1, v2, :cond_2c

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Signature:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v1, v2, :cond_2c

    .line 3025
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mResetStateLockedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3026
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mResetStateLockedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->post(Ljava/lang/Runnable;)Z

    .line 3029
    :cond_2c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_58

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    if-nez v2, :cond_58

    .line 3030
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3031
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_58

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v2

    if-eqz v2, :cond_58

    .line 3032
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    if-eqz v2, :cond_58

    .line 3033
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 3037
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_58
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    return v2
.end method

.method getMountService()Landroid/os/storage/IMountService;
    .registers 4

    .prologue
    .line 2747
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_12

    .line 2748
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2749
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_15

    .line 2750
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mMountService:Landroid/os/storage/IMountService;

    .line 2756
    .end local v0    # "service":Landroid/os/IBinder;
    :cond_12
    :goto_12
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mMountService:Landroid/os/storage/IMountService;

    return-object v1

    .line 2752
    .restart local v0    # "service":Landroid/os/IBinder;
    :cond_15
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v1, :cond_12

    .line 2753
    const-string v1, "KeyguardHostView"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method public getSecurityView()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    .registers 2

    .prologue
    .line 1660
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    return-object v0
.end method

.method public getUserActivityTimeout()J
    .registers 3

    .prologue
    .line 982
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SPass:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_9

    .line 983
    const-wide/16 v0, 0x1388

    .line 990
    :goto_8
    return-wide v0

    .line 987
    :cond_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    if-eqz v0, :cond_14

    .line 988
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getUserActivityTimeout()J

    move-result-wide v0

    goto :goto_8

    .line 990
    :cond_14
    const-wide/16 v0, -0x1

    goto :goto_8
.end method

.method public goToUserSwitcher()V
    .registers 3

    .prologue
    .line 2588
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    const v1, 0x10203b2

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getWidgetPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setCurrentPage(I)V

    .line 2589
    return-void
.end method

.method public goToWidget(I)V
    .registers 3
    .param p1, "appWidgetId"    # I

    .prologue
    .line 2592
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    .line 2593
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2594
    return-void
.end method

.method public handleBackKey()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 2607
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->isHelpOverlayVisible()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2617
    :cond_d
    :goto_d
    return v0

    .line 2609
    :cond_e
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->BackupPin:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v2, :cond_22

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->isChallengeShowing()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2612
    :cond_22
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v1, v2, :cond_34

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->BackupPin:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v1, v2, :cond_34

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SPassPassword:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v2, :cond_39

    .line 2615
    :cond_34
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 2617
    :cond_39
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public handleMenuKey()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 2598
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->shouldEnableMenuKey()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2599
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showNextSecurityScreenOrFinish(Z)V

    .line 2600
    const/4 v0, 0x1

    .line 2602
    :cond_b
    return v0
.end method

.method public initializeSwitchingUserState(Z)V
    .registers 4
    .param p1, "switching"    # Z

    .prologue
    .line 963
    if-nez p1, :cond_c

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    if-eqz v0, :cond_c

    .line 964
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->finalizeActiveUserView(Z)V

    .line 966
    :cond_c
    return-void
.end method

.method public isAddPageEnabled(I)Z
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 2976
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isAddPage(I)Z

    move-result v0

    return v0
.end method

.method public isCameraPageEnabled(I)Z
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 2980
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v0

    return v0
.end method

.method isMusicPage(I)Z
    .registers 3
    .param p1, "pageIndex"    # I

    .prologue
    .line 2437
    if-ltz p1, :cond_d

    const v0, 0x10203da

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getWidgetPosition(I)I

    move-result v0

    if-ne p1, v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    .line 848
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->onAttachedToWindow()V

    .line 849
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHost;->startListening()V

    .line 850
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mUpdateMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 851
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContextualMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;)V

    .line 853
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->shouldShowPopupForDualClock(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 854
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTimeZoneAlertDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_6c

    .line 856
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDialogTheme:I

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 857
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x1040800

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 858
    const v1, 0x1040801

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 859
    const v1, 0x108039a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 860
    const v1, 0x1040013

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$4;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 872
    const v1, 0x1040009

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$5;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$5;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 880
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTimeZoneAlertDialog:Landroid/app/AlertDialog;

    .line 881
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTimeZoneAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 884
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_6c
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTimeZoneAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_79

    .line 885
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTimeZoneAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 889
    :cond_79
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsGloveTouchOn:Z

    if-eqz v1, :cond_8d

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 890
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->setGloveMode(Z)V

    .line 892
    :cond_8d
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 5

    .prologue
    .line 896
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->onDetachedFromWindow()V

    .line 897
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHost;->stopListening()V

    .line 898
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mUpdateMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 899
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->removeCallback()V

    .line 901
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTimeZoneAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_41

    .line 902
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTimeZoneAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 903
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTimeZoneAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 909
    :cond_2d
    const/4 v0, 0x0

    .line 910
    .local v0, "nullOnClickListener":Landroid/content/DialogInterface$OnClickListener;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTimeZoneAlertDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    const-string v3, " "

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 911
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTimeZoneAlertDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x2

    const-string v3, " "

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 913
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTimeZoneAlertDialog:Landroid/app/AlertDialog;

    .line 915
    .end local v0    # "nullOnClickListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_41
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mtelephony:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_4d

    .line 916
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mtelephony:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 918
    :cond_4d
    return-void
.end method

.method protected onFinishInflate()V
    .registers 14

    .prologue
    const v11, 0x10203a5

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 604
    const-string v7, "KeyguardHostView"

    const-string v10, "onFinishInflate "

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockScreenOverlay:Landroid/view/View;

    if-eqz v7, :cond_1c

    .line 607
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockScreenOverlay:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 608
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockScreenOverlay:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->removeView(Landroid/view/View;)V

    .line 614
    :cond_1c
    const v7, 0x10203a6

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 616
    .local v1, "deleteDropTarget":Landroid/view/View;
    const v7, 0x10203a7

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    .line 617
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v7, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setVisibility(I)V

    .line 618
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mWidgetCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-virtual {v7, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setCallbacks(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;)V

    .line 619
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v7, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setDeleteDropTarget(Landroid/view/View;)V

    .line 620
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    const/high16 v10, 0x3f000000

    invoke-virtual {v7, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setMinScale(F)V

    .line 622
    const v7, 0x10203ab

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    .line 623
    invoke-virtual {p0, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mMultiPaneChallengeLayout:Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;

    .line 624
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-eqz v7, :cond_7d

    .line 625
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    sget-object v10, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v7, v10}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setOnChallengeScrolledListener(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;)V

    .line 626
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-virtual {v7, v10}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setSecurityCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V

    .line 627
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v7

    if-eqz v7, :cond_25b

    sget-boolean v7, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwipeLockShowingBeforeTimeout:Z

    if-nez v7, :cond_25b

    move v7, v8

    :goto_7a
    invoke-virtual {v10, v7}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setIsSecured(Z)V

    .line 629
    :cond_7d
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    sget-object v10, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v7, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setViewStateManager(Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;)V

    .line 630
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 632
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-eqz v7, :cond_25e

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    .line 634
    .local v0, "challenge":Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;
    :goto_91
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-interface {v0, v7}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;->setOnBouncerStateChangedListener(Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;)V

    .line 635
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;->getBouncerAnimationDuration()I

    move-result v10

    invoke-virtual {v7, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setBouncerAnimationDuration(I)V

    .line 636
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v7, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->setPagedView(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;)V

    .line 637
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v7, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->setChallengeLayout(Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;)V

    .line 638
    const v7, 0x10203a9

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    .line 639
    const v7, 0x10203be

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyguardSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    .line 642
    const v7, 0x10203aa

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyguardWidgetNavigation:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;

    .line 643
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyguardWidgetNavigation:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;

    if-eqz v7, :cond_d7

    .line 644
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyguardWidgetNavigation:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v7, v10}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;->setPagedView(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;)V

    .line 647
    :cond_d7
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v7, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->setSecurityViewContainer(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;)V

    .line 648
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyguardWidgetNavigation:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;

    if-eqz v7, :cond_e9

    .line 649
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyguardWidgetNavigation:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;

    invoke-virtual {v7, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->setKeyguardWidgetNavigation(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;)V

    .line 651
    :cond_e9
    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->setBackButtonEnabled(Z)V

    .line 654
    const v7, 0x10202a3

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mExpandChallengeView:Landroid/widget/ImageButton;

    .line 655
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mExpandChallengeView:Landroid/widget/ImageButton;

    if-eqz v7, :cond_102

    .line 656
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mExpandChallengeView:Landroid/widget/ImageButton;

    invoke-virtual {v7, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->setExpandChallengeView(Landroid/widget/ImageButton;)V

    .line 659
    :cond_102
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v5

    .line 662
    .local v5, "mode":Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v5, v7, :cond_267

    .line 663
    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->setBackgroundColor(I)V

    .line 668
    :goto_10f
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierLock:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v5, v7, :cond_26e

    .line 669
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsCarrierLockEnabled:Z

    .line 670
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addCarrierLockWidgets()V

    .line 682
    :goto_118
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->shouldEnableAddWidget()Z

    move-result v7

    if-nez v7, :cond_123

    .line 683
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v7, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setAddWidgetEnabled(Z)V

    .line 685
    :cond_123
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->checkAppWidgetConsistency()V

    .line 686
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    .line 688
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->showUsabilityHints()V

    .line 690
    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showPrimarySecurityScreen(Z)V

    .line 691
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->updateSecurityViews()V

    .line 693
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isAutoWipeFeature()Z

    move-result v7

    if-eqz v7, :cond_28b

    sget-object v7, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v5, v7, :cond_28b

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isITPolicyEnabled()Z

    move-result v7

    if-nez v7, :cond_28b

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v7

    if-nez v7, :cond_28b

    .line 697
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "auto_swipe_main_user"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_288

    move v7, v8

    :goto_163
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsAutoWipe:Z

    .line 702
    :goto_165
    const-string v7, "KeyguardHostView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AUTO_WIPE = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsAutoWipe:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v5, v7, :cond_18b

    sget-object v7, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v5, v7, :cond_18b

    sget-object v7, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SmartcardPIN:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v5, v7, :cond_1ed

    .line 709
    :cond_18b
    const/4 v3, 0x0

    .line 710
    .local v3, "failedAttempts":I
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isITPolicyEnabled()Z

    move-result v7

    if-nez v7, :cond_19c

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsAutoWipe:Z

    if-eqz v7, :cond_28f

    .line 711
    :cond_19c
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttemptswithITPolicy()I

    move-result v7

    add-int/lit8 v3, v7, 0x1

    .line 716
    :goto_1a8
    sget-boolean v7, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v7, :cond_1c4

    .line 717
    const-string v7, "KeyguardHostView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "reportFailedPatternAttempt: #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_1c4
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v7

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v11

    invoke-virtual {v7, v10, v11}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v4

    .line 720
    .local v4, "failedAttemptsBeforeWipe":I
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsAutoWipe:Z

    if-eqz v7, :cond_1dd

    if-gtz v4, :cond_1dd

    .line 721
    const/16 v4, 0xa

    .line 724
    :cond_1dd
    if-lez v4, :cond_29d

    sub-int v6, v4, v3

    .line 728
    .local v6, "remainingBeforeWipe":I
    :goto_1e1
    if-gtz v6, :cond_1ed

    .line 730
    const-string v7, "KeyguardHostView"

    const-string v10, "Too many unlock attempts; device will be wiped!"

    invoke-static {v7, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showWipeDialog(I)V

    .line 737
    .end local v3    # "failedAttempts":I
    .end local v4    # "failedAttemptsBeforeWipe":I
    .end local v6    # "remainingBeforeWipe":I
    :cond_1ed
    :try_start_1ed
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockScreenOverlay:Landroid/view/View;

    if-nez v7, :cond_205

    .line 738
    new-instance v7, Lcom/sec/widget/lso/LockscreenOverlayView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-direct {v7, v10}, Lcom/sec/widget/lso/LockscreenOverlayView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockScreenOverlay:Landroid/view/View;

    .line 739
    sget-boolean v7, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v7, :cond_205

    const-string v7, "KeyguardHostView"

    const-string v10, "Creating Lockscreen overlay"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :cond_205
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockScreenOverlay:Landroid/view/View;

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v7, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 742
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockScreenOverlay:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V
    :try_end_217
    .catch Ljava/lang/Exception; {:try_start_1ed .. :try_end_217} :catch_2a2

    .line 749
    :cond_217
    :goto_217
    const v7, 0x10203ac

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;

    .line 750
    const-string v7, "KeyguardHostView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mLockscreenHelpOverlay : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;

    if-eqz v7, :cond_24a

    .line 752
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-virtual {v7, v10}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->setCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V

    .line 753
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->updateHelpOverlay()V

    .line 758
    :cond_24a
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "auto_adjust_touch"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_2c1

    :goto_258
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsGloveTouchOn:Z

    .line 760
    return-void

    .end local v0    # "challenge":Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;
    .end local v5    # "mode":Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_25b
    move v7, v9

    .line 627
    goto/16 :goto_7a

    .line 632
    :cond_25e
    invoke-virtual {p0, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    move-object v0, v7

    goto/16 :goto_91

    .line 665
    .restart local v0    # "challenge":Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;
    .restart local v5    # "mode":Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_267
    const/high16 v7, 0x19000000

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->setBackgroundColor(I)V

    goto/16 :goto_10f

    .line 671
    :cond_26e
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->FMM:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v5, v7, :cond_279

    .line 672
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsFMMEnabled:Z

    .line 673
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addFMMWidgets()V

    goto/16 :goto_118

    .line 675
    :cond_279
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsFMMEnabled:Z

    .line 676
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsCarrierLockEnabled:Z

    .line 677
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addDefaultWidgets()V

    .line 678
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addContextualWidgetsFromSettings()V

    .line 679
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addWidgetsFromSettings()V

    goto/16 :goto_118

    :cond_288
    move v7, v9

    .line 697
    goto/16 :goto_163

    .line 700
    :cond_28b
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsAutoWipe:Z

    goto/16 :goto_165

    .line 713
    .restart local v3    # "failedAttempts":I
    :cond_28f
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v7

    add-int/lit8 v3, v7, 0x1

    goto/16 :goto_1a8

    .line 724
    .restart local v4    # "failedAttemptsBeforeWipe":I
    :cond_29d
    const v6, 0x7fffffff

    goto/16 :goto_1e1

    .line 743
    .end local v3    # "failedAttempts":I
    .end local v4    # "failedAttemptsBeforeWipe":I
    :catch_2a2
    move-exception v2

    .line 745
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v7, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v7, :cond_217

    const-string v7, "KeyguardHostView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Lockscren Overlay creation fails: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_217

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2c1
    move v8, v9

    .line 758
    goto :goto_258
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 2345
    instance-of v1, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;

    if-nez v1, :cond_8

    .line 2346
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2355
    :goto_7
    return-void

    :cond_8
    move-object v0, p1

    .line 2349
    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;

    .line 2350
    .local v0, "ss":Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2351
    iget v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;->transportState:I

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportState:I

    .line 2352
    iget v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;->appWidgetToShow:I

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    .line 2353
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v1, :cond_38

    const-string v1, "KeyguardHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRestoreInstanceState, transport="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2354
    :cond_38
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->post(Ljava/lang/Runnable;)Z

    goto :goto_7
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 7

    .prologue
    .line 2332
    sget-boolean v3, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v3, :cond_1e

    const-string v3, "KeyguardHostView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSaveInstanceState, tstate="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    :cond_1e
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 2334
    .local v2, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2336
    .local v1, "ss":Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    if-eqz v3, :cond_40

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageIndex(Landroid/view/View;)I

    move-result v3

    if-ltz v3, :cond_40

    const/4 v0, 0x1

    .line 2338
    .local v0, "showing":Z
    :goto_36
    if-eqz v0, :cond_42

    const/4 v3, 0x2

    :goto_39
    iput v3, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;->transportState:I

    .line 2339
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    iput v3, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;->appWidgetToShow:I

    .line 2340
    return-object v1

    .line 2336
    .end local v0    # "showing":Z
    :cond_40
    const/4 v0, 0x0

    goto :goto_36

    .line 2338
    .restart local v0    # "showing":Z
    :cond_42
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportState:I

    goto :goto_39
.end method

.method public onScreenTurnedOff()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 1716
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v1, :cond_28

    const-string v1, "KeyguardHostView"

    const-string v2, "screen off, instance %s at %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    :cond_28
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 1724
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->clearAppWidgetToShow()V

    .line 1725
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->checkAppWidgetConsistency()V

    .line 1726
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showPrimarySecurityScreen(Z)V

    .line 1727
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getSecurityView(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->onPause()V

    .line 1728
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findCameraPage()Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    move-result-object v0

    .line 1729
    .local v0, "cameraPage":Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;
    if-eqz v0, :cond_4c

    .line 1730
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->onScreenTurnedOff()V

    .line 1732
    :cond_4c
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->clearFocus()V

    .line 1733
    return-void
.end method

.method public onScreenTurnedOn()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1665
    sget-boolean v3, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v3, :cond_26

    const-string v3, "KeyguardHostView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "screen on, instance "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    :cond_26
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isTabletNavigationBarEnabled()Z

    move-result v3

    if-eqz v3, :cond_3d

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v3

    if-nez v3, :cond_3d

    .line 1668
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 1669
    .local v2, "wInputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_3d

    .line 1670
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    .line 1673
    .end local v2    # "wInputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_3d
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showPrimarySecurityScreen(Z)V

    .line 1674
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getSecurityView(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    move-result-object v3

    invoke-interface {v3, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->onResume(I)V

    .line 1679
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->requestLayout()V

    .line 1681
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    if-eqz v3, :cond_55

    .line 1682
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->showUsabilityHints()V

    .line 1686
    :cond_55
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_on"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1687
    .local v0, "drivingMode":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_unlock_screen_contents"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1688
    .local v1, "unlockDrivingMode":I
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isDualModeDevice()I

    move-result v3

    if-eqz v3, :cond_98

    .line 1690
    if-ne v0, v6, :cond_94

    if-ne v1, v6, :cond_94

    .line 1691
    invoke-static {}, Landroid/telephony/TelephonyManager;->getFirst()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-eq v3, v6, :cond_94

    invoke-static {}, Landroid/telephony/TelephonyManager;->getSecondary()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-eq v3, v6, :cond_94

    .line 1693
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsTalkbackDrvModeOn:Z

    if-nez v3, :cond_94

    .line 1694
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;

    .line 1711
    :cond_94
    :goto_94
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->requestFocus()Z

    .line 1712
    return-void

    .line 1701
    :cond_98
    if-ne v0, v6, :cond_94

    if-ne v1, v6, :cond_94

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-eq v3, v6, :cond_94

    .line 1704
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsTalkbackDrvModeOn:Z

    if-nez v3, :cond_94

    .line 1705
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/UnlockTextToSpeech;

    goto :goto_94
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 566
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 567
    .local v0, "result":Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 568
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 569
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 570
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_28

    if-eqz v0, :cond_39

    :cond_28
    const/4 v0, 0x1

    .line 571
    :goto_29
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 572
    return v0

    :cond_39
    move v0, v1

    .line 570
    goto :goto_29
.end method

.method public onUserActivityTimeoutChanged()V
    .registers 2

    .prologue
    .line 975
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_9

    .line 976
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->onUserActivityTimeoutChanged()V

    .line 978
    :cond_9
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 6
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 2359
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->onWindowFocusChanged(Z)V

    .line 2360
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v1, :cond_23

    const-string v2, "KeyguardHostView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Window is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_48

    const-string v1, "focused"

    :goto_18
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2361
    :cond_23
    if-eqz p1, :cond_40

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mShowSecurityWhenReturn:Z

    if-eqz v1, :cond_40

    .line 2362
    const v1, 0x10203ab

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    .line 2364
    .local v0, "slider":Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    if-eqz v0, :cond_3d

    .line 2365
    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setHandleAlpha(F)V

    .line 2366
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->showChallenge(Z)V

    .line 2368
    :cond_3d
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mShowSecurityWhenReturn:Z

    .line 2371
    .end local v0    # "slider":Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    :cond_40
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsGloveTouchOn:Z

    if-eqz v1, :cond_47

    .line 2372
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->setGloveMode(Z)V

    .line 2374
    :cond_47
    return-void

    .line 2360
    :cond_48
    const-string v1, "unfocused"

    goto :goto_18
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 1497
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsVerifyUnlockOnly:Z

    .line 1498
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    const v1, 0x10203d4

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getWidgetPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setCurrentPage(I)V

    .line 1499
    return-void
.end method

.method setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 3
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 841
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 842
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 843
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->updateSecurityViews()V

    .line 844
    return-void
.end method

.method protected setOnDismissAction(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;)V
    .registers 2
    .param p1, "action"    # Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;

    .prologue
    .line 1506
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDismissAction:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;

    .line 1507
    return-void
.end method

.method public show()V
    .registers 3

    .prologue
    .line 1741
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "KeyguardHostView"

    const-string v1, "show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    :cond_b
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showPrimarySecurityScreen(Z)V

    .line 1743
    return-void
.end method

.method public showAssistant()V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 2628
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const-string v2, "search"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    const/4 v5, -0x2

    invoke-virtual {v0, v2, v3, v5}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v1

    .line 2631
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_16

    .line 2641
    :goto_15
    return-void

    .line 2633
    :cond_16
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const v2, 0x10a002f

    const v3, 0x10a0030

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-static {v0, v2, v3, v5, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v6

    .line 2637
    .local v6, "opts":Landroid/app/ActivityOptions;
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2639
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    const/4 v2, 0x0

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;->launchActivityWithAnimation(Landroid/content/Intent;ZLandroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_15
.end method

.method public showNextSecurityScreenIfPresent()Z
    .registers 3

    .prologue
    .line 1294
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 1296
    .local v0, "securityMode":Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getAlternateFor(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 1297
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v0, :cond_12

    .line 1298
    const/4 v1, 0x0

    .line 1301
    :goto_11
    return v1

    .line 1300
    :cond_12
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 1301
    const/4 v1, 0x1

    goto :goto_11
.end method

.method showPrimarySecurityScreen(Z)V
    .registers 7
    .param p1, "turningOff"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1237
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 1238
    .local v0, "securityMode":Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v1, :cond_29

    const-string v1, "KeyguardHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showPrimarySecurityScreen(turningOff="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    :cond_29
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isDualLCDFolderDevice(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 1241
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isFolderOpened(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 1242
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 1248
    :cond_43
    :goto_43
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsCoverLockEnabled:Z

    if-eqz v1, :cond_66

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->BackupPin:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v1, v2, :cond_66

    .line 1249
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 1260
    :cond_4f
    :goto_4f
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->updateBackgroundGradation(Z)V

    .line 1261
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 1262
    return-void

    .line 1244
    :cond_5c
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    goto :goto_43

    .line 1250
    :cond_66
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Signature:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_6f

    .line 1251
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getSecurityModeInSignature()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    goto :goto_4f

    .line 1252
    :cond_6f
    if-nez p1, :cond_4f

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isAlternateUnlockEnabled()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 1256
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getAlternateFor(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    goto :goto_4f
.end method

.method updateHelpOverlay()V
    .registers 3

    .prologue
    .line 3057
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;

    if-eqz v0, :cond_21

    .line 3058
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mHelpEsayUxOn:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsTalkbackDrvModeOn:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->checkOverlayCondition()Z

    move-result v0

    if-nez v0, :cond_22

    .line 3061
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->setVisibility(I)V

    .line 3066
    :cond_21
    :goto_21
    return-void

    .line 3063
    :cond_22
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenHelpOverlay;->setVisibility(I)V

    goto :goto_21
.end method

.method public userActivity()V
    .registers 2

    .prologue
    .line 969
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_9

    .line 970
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->userActivity()V

    .line 972
    :cond_9
    return-void
.end method

.method public verifyUnlock()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1793
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 1794
    .local v0, "securityMode":Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_18

    .line 1795
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v1, :cond_17

    .line 1796
    sput-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwipeLockShowingBeforeTimeout:Z

    .line 1797
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v1, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDone(Z)V

    .line 1812
    :cond_17
    :goto_17
    return-void

    .line 1799
    :cond_18
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_32

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_32

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_32

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SmartcardPIN:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_32

    .line 1804
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v1, :cond_17

    .line 1805
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDone(Z)V

    goto :goto_17

    .line 1809
    :cond_32
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsVerifyUnlockOnly:Z

    .line 1810
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_17
.end method

.method public wakeWhenReadyTq(I)V
    .registers 4
    .param p1, "keyCode"    # I

    .prologue
    .line 1779
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "KeyguardHostView"

    const-string v1, "onWakeKey"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    :cond_b
    const/16 v0, 0x52

    if-ne p1, v0, :cond_2f

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1781
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_20

    const-string v0, "KeyguardHostView"

    const-string v1, "switching screens to unlock screen because wake key was MENU"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    :cond_20
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 1786
    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_2e

    .line 1787
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->wakeUp()V

    .line 1789
    :cond_2e
    return-void

    .line 1784
    :cond_2f
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_25

    const-string v0, "KeyguardHostView"

    const-string v1, "poking wake lock immediately"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25
.end method
