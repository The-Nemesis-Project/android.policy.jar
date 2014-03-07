.class public Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;
.super Ljava/lang/Object;
.source "SViewCoverManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SCoverWidgetComparator;,
        Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SCoverWidget;,
        Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;,
        Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$CoverRemoteViews;
    }
.end annotation


# static fields
.field public static final ACTION_CLEAR_COVER_OPEN:Ljava/lang/String; = "com.samsung.cover.OPEN"

.field public static final ACTION_CLEAR_COVER_REMOTEVIEWS_UPDATE:Ljava/lang/String; = "com.samsung.cover.REMOTEVIEWS_UPDATE"

.field public static final ACTION_CLEAR_COVER_STATE_CHANGE:Ljava/lang/String; = "com.samsung.cover.STATE_CHANGE"

.field private static final COVER_TYPE_FLIP_WALLET:I = 0x0

.field private static final COVER_TYPE_NONE:I = 0x2

.field private static final COVER_TYPE_SVIEW:I = 0x1

.field private static final COVER_TYPE_SVIEW_CHARGER:I = 0x3

.field private static final DEBUG:Z = true

.field private static final MISSED_EVENT_ARRIVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationArrived"

.field private static final MISSED_EVENT_REMOVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationRemoved"

.field private static final MSG_BACKGROUND_COLOR_UPDATED:I = 0x6

.field private static final MSG_CREATE_SVIEW:I = 0x0

.field private static final MSG_DISABLE_PARTIAL_DISP:I = 0x5

.field private static final MSG_DISMISS:I = 0x1

.field private static final MSG_ENABLE_PARTIAL_DISP:I = 0x4

.field private static final MSG_SHOW:I = 0x2

.field private static final MSG_UPDATE_REMOTEVIEWS:I = 0x3

.field private static final PARTIAL_DISP_PATH:Ljava/lang/String; = "/sys/class/lcd/panel/partial_disp"

.field private static final PICK_UP_MOTION:Ljava/lang/String; = "com.android.server.NotificationManagerService.PickupMotionArrived"

.field private static final SVIEW_COVER_COVER_CLOSED_TIMEOUT:I = 0x1770

.field private static final SVIEW_COVER_DIM_TIMEOUT_DEFAULT:I = 0x0

.field private static final SVIEW_COVER_DISPLAY_TIMEOUT_DEFAULT:I = 0x1770

.field private static final SVIEW_COVER_LETF_MOST_PAGE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SViewCoverManager"

.field public static mIsSCover2:Z

.field public static mIsSmartAlertNeedToBeChecked:Z


# instance fields
.field private final MMS_PACKAGE:Ljava/lang/String;

.field private final PHONE_PACKAGE:Ljava/lang/String;

.field private mBatteryContainer:Landroid/widget/FrameLayout;

.field private mBatteryRemoteView:Landroid/view/View;

.field private mCalendarRemoteView:Landroid/view/View;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mCoverChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mCoverOpen:Z

.field private mCoverOpenWakeLock:Landroid/os/PowerManager$WakeLock;

.field mCurrentContextualWidget:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SCoverWidget;

.field private mCurrentCoverBackgroundColor:I

.field private mCurrentCoverType:I

.field private mCurrentSViewCover:Landroid/view/View;

.field private mCurrntColor:I

.field private mCustomSViewBG:I

.field private mFlipCoverWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mGoToSleepRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mHomeMissedEventWidget:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;

.field private mHomeWidget:Landroid/view/View;

.field private mIWindowManager:Landroid/view/IWindowManager;

.field protected mIsAddedMissedEventWidget:Z

.field private mIsSViewCover:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mKeyguardViewMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field mMissedCallbacks:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;

.field private mMissedEventWidget:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

.field private mMissedEventWidgetLayout:Landroid/view/View;

.field private mMusicContatiner:Landroid/widget/FrameLayout;

.field private mMusicRemoteView:Landroid/view/View;

.field protected mNeedToAddMissedEventWidget:Z

.field private mPMS:Landroid/os/PowerManager;

.field private mPhoneState:I

.field private mSHealthContainer:Landroid/widget/FrameLayout;

.field private mSViewCover:Landroid/view/View;

.field private mSViewCoverBackground:Landroid/widget/ImageView;

.field private mSViewCoverColorSelector:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;

.field private mSViewCoverManagerCallback:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;

.field private mSViewCoverPagerNavigation:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;

.field private mSViewCoverUnlockArea:Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

.field private mSViewPager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;

.field private mSVoiceRemoteView:Landroid/view/View;

.field private mShealthRemoteView:Landroid/view/View;

.field private mShortcuts:Landroid/view/View;

.field private mShowingCoverUI:Z

.field private mSuppressCoverUI:Z

.field private mVolumeRemoteView:Landroid/view/View;

.field private mWakeUpScreenRunnable:Ljava/lang/Runnable;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 146
    sput-boolean v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIsSCover2:Z

    .line 152
    sput-boolean v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIsSmartAlertNeedToBeChecked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 510
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$1;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mGoToSleepRunnable:Ljava/lang/Runnable;

    .line 95
    new-instance v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$2;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverManagerCallback:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;

    .line 128
    const-string v0, "com.android.phone"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->PHONE_PACKAGE:Ljava/lang/String;

    .line 130
    const-string v0, "com.android.mms"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->MMS_PACKAGE:Ljava/lang/String;

    .line 136
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSuppressCoverUI:Z

    .line 138
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mShowingCoverUI:Z

    .line 140
    iput v7, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mPhoneState:I

    .line 148
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mNeedToAddMissedEventWidget:Z

    .line 150
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIsAddedMissedEventWidget:Z

    .line 158
    new-instance v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$3;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mMissedCallbacks:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;

    .line 180
    new-instance v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$4;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCoverChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 272
    new-instance v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$5;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mWakeUpScreenRunnable:Ljava/lang/Runnable;

    .line 291
    new-instance v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$6;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$6;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;

    .line 350
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCurrentContextualWidget:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SCoverWidget;

    .line 366
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCoverOpen:Z

    .line 383
    iput v8, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCurrentCoverType:I

    .line 511
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mContext:Landroid/content/Context;

    .line 513
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1110070

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIsSViewCover:Z

    .line 515
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mPMS:Landroid/os/PowerManager;

    .line 516
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mWindowManager:Landroid/view/WindowManager;

    .line 517
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIWindowManager:Landroid/view/IWindowManager;

    .line 518
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 520
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "s_vew_cover_background_color"

    const/high16 v3, -0x1000000

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCurrentCoverBackgroundColor:I

    .line 522
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mPMS:Landroid/os/PowerManager;

    const-string v2, "SViewCoverManager.mCoverOpenWakeLock"

    invoke-virtual {v0, v8, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCoverOpenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 523
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCoverOpenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 525
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mPMS:Landroid/os/PowerManager;

    const-string v2, "SViewCoverManager.mFlipCoverWakeLock"

    invoke-virtual {v0, v8, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mFlipCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 526
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mFlipCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 528
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 529
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v0, "com.samsung.cover.OPEN"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 530
    const-string v0, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 531
    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 532
    const-string v0, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 533
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 534
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 535
    const-string v0, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 536
    const-string v0, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 537
    const-string v0, "com.android.server.NotificationManagerService.PickupMotionArrived"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 538
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCoverChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 541
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIsSViewCover:Z

    if-eqz v0, :cond_fb

    .line 542
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 545
    :cond_fb
    new-instance v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$7;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$7;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mContentObserver:Landroid/database/ContentObserver;

    .line 555
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "s_vew_cover_background_color"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v7, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 556
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "custom_sview_background"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v7, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 557
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x832

    const v4, 0x80c00

    move v2, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 564
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 565
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "SViewCover"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 566
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x4000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 568
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iput v7, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 569
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 570
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-wide/16 v1, 0x1770

    iput-wide v1, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 571
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 572
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 573
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Landroid/os/PowerManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mPMS:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mGoToSleepRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->moveToHomePage()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    .prologue
    .line 66
    iget v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCurrentCoverType:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->updateSViewCoverUnlockArea(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCoverOpenWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCover:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Landroid/view/IWindowManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIWindowManager:Landroid/view/IWindowManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->buildSViewCover()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->handleHide()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->handleShow()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$CoverRemoteViews;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;
    .param p1, "x1"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$CoverRemoteViews;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->handleRemoteView(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$CoverRemoteViews;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->handleSetPartialScreen(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewPager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->updateMissedEventWidget()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSuppressCoverUI:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSuppressCoverUI:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mPhoneState:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->makeSViewMeasureSpec()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIsSViewCover:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->updateBatteryContainer()V

    return-void
.end method

.method private buildSViewCover()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 587
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mContext:Landroid/content/Context;

    const v2, 0x10900e0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCover:Landroid/view/View;

    .line 588
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCover:Landroid/view/View;

    const v2, 0x10202c6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverBackground:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "custom_sview_background"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCustomSViewBG:I

    iget v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCustomSViewBG:I

    if-eqz v2, :cond_3d

    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverBackground:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverBackground:Landroid/widget/ImageView;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    const v2, 0x108109c

    goto :goto_40

    :cond_3d
    const v2, 0x1080597

    :goto_40
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 589
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCover:Landroid/view/View;

    const v2, 0x10202be

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewPager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;

    .line 590
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewPager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;

    if-eqz v0, :cond_16a

    const/4 v0, 0x1

    :goto_57
    sput-boolean v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIsSCover2:Z

    .line 592
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCover:Landroid/view/View;

    const/16 v2, 0x1400

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 595
    sget-boolean v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIsSCover2:Z

    if-eqz v0, :cond_169

    .line 596
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewPager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverManagerCallback:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;->setSViewCoverManagerCallback(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;)V

    .line 597
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIsAddedMissedEventWidget:Z

    .line 598
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverBackground:Landroid/widget/ImageView;

    if-eqz v0, :cond_89

    .line 599
    iget v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCustomSViewBG:I

    if-nez v2, :cond_89

    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverBackground:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCurrentCoverBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 600
    iget v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCurrentCoverBackgroundColor:I

    const/high16 v1, -0x1000000

    if-ne v0, v1, :cond_16d

    .line 601
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverBackground:Landroid/widget/ImageView;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 606
    :cond_89
    :goto_89
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mContext:Landroid/content/Context;

    const v1, 0x10900dc

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHomeWidget:Landroid/view/View;

    .line 607
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHomeWidget:Landroid/view/View;

    const v1, 0x10202b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHomeMissedEventWidget:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;

    .line 608
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHomeWidget:Landroid/view/View;

    const v1, 0x10202a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSHealthContainer:Landroid/widget/FrameLayout;

    .line 609
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHomeWidget:Landroid/view/View;

    const v1, 0x10202a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mBatteryContainer:Landroid/widget/FrameLayout;

    .line 610
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mContext:Landroid/content/Context;

    const v1, 0x10900de

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mMissedEventWidgetLayout:Landroid/view/View;

    .line 611
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mMissedEventWidgetLayout:Landroid/view/View;

    const v1, 0x10202b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mMissedEventWidget:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    .line 612
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mMissedEventWidget:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    if-eqz v0, :cond_ef

    .line 613
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mMissedEventWidget:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mMissedCallbacks:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->setCallbacks(Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;)V

    .line 614
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mMissedEventWidget:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mKeyguardViewMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->setKeyguardViewMediator(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 615
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mMissedEventWidget:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->registerObserverAndReceiver()V

    .line 616
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mMissedEventWidget:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->updateMissedEvents()V

    .line 618
    :cond_ef
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mContext:Landroid/content/Context;

    const v1, 0x10900df

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mShortcuts:Landroid/view/View;

    .line 619
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mShortcuts:Landroid/view/View;

    const v1, 0x10202c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mMusicContatiner:Landroid/widget/FrameLayout;

    .line 620
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCover:Landroid/view/View;

    const v1, 0x10202bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverPagerNavigation:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;

    .line 621
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverPagerNavigation:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewPager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;->setPager(Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;)V

    .line 623
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCover:Landroid/view/View;

    const v1, 0x10202c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverColorSelector:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;

    .line 624
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverColorSelector:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCover:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->setControlView(Landroid/view/View;)V

    .line 625
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverColorSelector:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverManagerCallback:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->setSViewCoverManagerCallback(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;)V

    .line 627
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCover:Landroid/view/View;

    const v1, 0x10202cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverUnlockArea:Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    .line 628
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverUnlockArea:Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverPagerNavigation:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->setPagerNavigation(Lcom/android/internal/policy/impl/sviewcover/SViewCoverPagerNavigation;)V

    .line 629
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverUnlockArea:Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewPager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->setSViewPager(Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;)V

    .line 630
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverUnlockArea:Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverManagerCallback:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->setSViewCoverManagerCallback(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;)V

    .line 632
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewPager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHomeWidget:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;->addView(Landroid/view/View;)V

    .line 633
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewPager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mShortcuts:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;->addView(Landroid/view/View;)V

    .line 634
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->moveToHomePage()V

    .line 636
    :cond_169
    return-void

    :cond_16a
    move v0, v1

    .line 590
    goto/16 :goto_57

    .line 603
    :cond_16d
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverBackground:Landroid/widget/ImageView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto/16 :goto_89
.end method

.method private handleHide()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 842
    const-string v1, "SViewCoverManager"

    const-string v2, "handleHide()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mGoToSleepRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 845
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mGoToSleepRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 847
    :cond_19
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mShowingCoverUI:Z

    if-eqz v1, :cond_3f

    .line 848
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCurrentSViewCover:Landroid/view/View;

    if-eqz v1, :cond_2e

    .line 849
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCurrentSViewCover:Landroid/view/View;

    .line 850
    .local v0, "lastView":Landroid/view/View;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCurrentSViewCover:Landroid/view/View;

    .line 851
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->updateSViewCoverUnlockArea(Z)V

    .line 852
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 854
    .end local v0    # "lastView":Landroid/view/View;
    :cond_2e
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mShowingCoverUI:Z

    .line 855
    sget-boolean v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIsSCover2:Z

    if-eqz v1, :cond_3f

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCoverOpen:Z

    if-eqz v1, :cond_3f

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSuppressCoverUI:Z

    if-nez v1, :cond_3f

    .line 856
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->moveToHomePage()V

    .line 860
    :cond_3f
    sget-boolean v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIsSCover2:Z

    if-eqz v1, :cond_4e

    .line 861
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mShortcuts:Landroid/view/View;

    if-eqz v1, :cond_4e

    .line 862
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mShortcuts:Landroid/view/View;

    check-cast v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts;

    invoke-virtual {v1, v4}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts;->setMarquee(Z)V

    .line 867
    :cond_4e
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mPMS:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_74

    .line 868
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mPMS:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 869
    const-string v1, "SViewCoverManager"

    const-string v2, "userActivity at handleHide"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCoverOpenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_73

    .line 871
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCoverOpenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 893
    :cond_73
    :goto_73
    return-void

    .line 875
    :cond_74
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v1

    if-eqz v1, :cond_86

    .line 876
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$8;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$8;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 891
    :cond_86
    const-string v1, "SViewCoverManager"

    const-string v2, "wakeUp at handleHide"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73
.end method

.method private handleRemoteView(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$CoverRemoteViews;)V
    .registers 9
    .param p1, "coverRemoteViews"    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$CoverRemoteViews;

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 405
    const-string v4, "SViewCoverManager"

    const-string v5, "handleUpdateRemoteView"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v1, p1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$CoverRemoteViews;->type:Ljava/lang/String;

    .line 407
    .local v1, "type":Ljava/lang/String;
    iget-boolean v2, p1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$CoverRemoteViews;->visibility:Z

    .line 408
    .local v2, "visibility":Z
    iget-object v0, p1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$CoverRemoteViews;->remoteViews:Landroid/widget/RemoteViews;

    .line 410
    .local v0, "remoteViews":Landroid/widget/RemoteViews;
    const-string v4, "shealth"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 411
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSHealthContainer:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_27

    .line 412
    if-eqz v2, :cond_25

    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSHealthContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    :cond_25
    iput-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mShealthRemoteView:Landroid/view/View;

    .line 413
    :cond_27
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->updateSHealthContainer()V

    .line 444
    :cond_2a
    :goto_2a
    return-void

    .line 415
    :cond_2b
    const-string v4, "music"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 416
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mMusicContatiner:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_43

    .line 417
    if-eqz v2, :cond_41

    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mMusicContatiner:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    :cond_41
    iput-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mMusicRemoteView:Landroid/view/View;

    .line 418
    :cond_43
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->updateMusicContainer()V

    goto :goto_2a

    .line 420
    :cond_47
    const-string v4, "battery"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_63

    .line 421
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mBatteryContainer:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_5f

    .line 422
    if-eqz v2, :cond_5d

    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mBatteryContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    :cond_5d
    iput-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mBatteryRemoteView:Landroid/view/View;

    .line 423
    :cond_5f
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->updateBatteryContainer()V

    goto :goto_2a

    .line 425
    :cond_63
    const-string v4, "svoice"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 426
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mBatteryContainer:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_7b

    .line 427
    if-eqz v2, :cond_79

    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mBatteryContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    :cond_79
    iput-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSVoiceRemoteView:Landroid/view/View;

    .line 428
    :cond_7b
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->updateBatteryContainer()V

    .line 429
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->moveToHomePage()V

    .line 430
    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->updateSViewCoverUnlockArea(Z)V

    goto :goto_2a

    .line 432
    :cond_85
    const-string v4, "calendar"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a1

    .line 433
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mBatteryContainer:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_9d

    .line 434
    if-eqz v2, :cond_9b

    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mBatteryContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    :cond_9b
    iput-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCalendarRemoteView:Landroid/view/View;

    .line 435
    :cond_9d
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->updateBatteryContainer()V

    goto :goto_2a

    .line 437
    :cond_a1
    const-string v4, "volume"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 438
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mBatteryContainer:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_b9

    .line 439
    if-eqz v2, :cond_b7

    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mBatteryContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    :cond_b7
    iput-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mVolumeRemoteView:Landroid/view/View;

    .line 440
    :cond_b9
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->updateBatteryContainer()V

    .line 441
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->moveToHomePage()V

    .line 442
    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->updateSViewCoverUnlockArea(Z)V

    goto/16 :goto_2a
.end method

.method private declared-synchronized handleSetPartialScreen(Z)V
    .registers 10
    .param p1, "enabled"    # Z

    .prologue
    .line 934
    monitor-enter p0

    :try_start_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 935
    .local v4, "res":Landroid/content/res/Resources;
    const-string v3, "0 0"

    .line 937
    .local v3, "parameters":Ljava/lang/String;
    const v5, 0x1110071

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 939
    .local v1, "isCover2":Z
    if-nez v1, :cond_1b

    .line 940
    const-string v5, "SViewCoverManager"

    const-string v6, "Not a 2.0 cover"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_6f

    .line 957
    :goto_19
    monitor-exit p0

    return-void

    .line 944
    :cond_1b
    if-eqz p1, :cond_3b

    .line 945
    :try_start_1d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x10500e1

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 948
    :cond_3b
    const-string v5, "SViewCoverManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parameters="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_1d .. :try_end_53} :catchall_6f

    .line 951
    :try_start_53
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    const-string v6, "/sys/class/lcd/panel/partial_disp"

    invoke-direct {v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 952
    .local v2, "out":Ljava/io/BufferedWriter;
    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 953
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_65} :catch_66
    .catchall {:try_start_53 .. :try_end_65} :catchall_6f

    goto :goto_19

    .line 954
    .end local v2    # "out":Ljava/io/BufferedWriter;
    :catch_66
    move-exception v0

    .line 955
    .local v0, "e":Ljava/io/IOException;
    :try_start_67
    const-string v5, "SViewCoverManager"

    const-string v6, "Failed to write partial_disp"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catchall {:try_start_67 .. :try_end_6e} :catchall_6f

    goto :goto_19

    .line 934
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "isCover2":Z
    .end local v3    # "parameters":Ljava/lang/String;
    .end local v4    # "res":Landroid/content/res/Resources;
    :catchall_6f
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private handleShow()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 775
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSuppressCoverUI:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mShowingCoverUI:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCoverOpen:Z

    if-nez v0, :cond_11

    iget v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mPhoneState:I

    if-eqz v0, :cond_62

    .line 777
    :cond_11
    const-string v0, "SViewCoverManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleShow( not show SViewCover) mSuppressCoverUI="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSuppressCoverUI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mShowingCoverUI="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mShowingCoverUI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPhoneState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mPhoneState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCoverOpenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 780
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCoverOpenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 783
    :cond_50
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mGoToSleepRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 784
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mGoToSleepRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 818
    :cond_61
    :goto_61
    return-void

    .line 788
    :cond_62
    const-string v0, "SViewCoverManager"

    const-string v1, "handleShow()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    sget-boolean v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIsSCover2:Z

    if-eqz v0, :cond_7b

    .line 791
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->makeSViewMeasureSpec()V

    .line 792
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mShortcuts:Landroid/view/View;

    if-eqz v0, :cond_7b

    .line 793
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mShortcuts:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverShortcuts;->setMarquee(Z)V

    .line 798
    :cond_7b
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverColorSelector:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;

    if-eqz v0, :cond_86

    .line 799
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverColorSelector:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;

    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCurrntColor:I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->updateCurrentCoverColor(I)V

    .line 801
    :cond_86
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->moveToHomePage()V

    .line 802
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->updateSViewCoverUnlockArea(Z)V

    .line 803
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->updateSecureFlags()V

    .line 804
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCover:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 805
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCover:Landroid/view/View;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCurrentSViewCover:Landroid/view/View;

    .line 808
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCover:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mWakeUpScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 811
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mMissedEventWidget:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    if-eqz v0, :cond_ac

    .line 812
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mMissedEventWidget:Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverMissedEvents;->updateMissedEvents()V

    .line 814
    :cond_ac
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mShowingCoverUI:Z

    .line 815
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCoverOpenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 816
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCoverOpenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_61
.end method

.method private makeSViewMeasureSpec()V
    .registers 8

    .prologue
    const/high16 v6, 0x40000000

    .line 824
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewPager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 825
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 827
    .local v2, "res":Landroid/content/res/Resources;
    const v4, 0x10500e2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v3, v4, v5

    .line 828
    .local v3, "width":I
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 830
    .local v0, "height":I
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewPager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;->measure(II)V

    .line 832
    return-void
.end method

.method private moveToHomePage()V
    .registers 4

    .prologue
    .line 835
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewPager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;

    if-eqz v1, :cond_11

    .line 836
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewPager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHomeWidget:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 837
    .local v0, "home_index":I
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewPager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;->setCurrentPage(I)V

    .line 839
    .end local v0    # "home_index":I
    :cond_11
    return-void
.end method

.method private declared-synchronized updateBatteryContainer()V
    .registers 5

    .prologue
    .line 465
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mBatteryContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_17

    .line 466
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mBatteryContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 468
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mVolumeRemoteView:Landroid/view/View;

    if-eqz v0, :cond_19

    .line 469
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mBatteryContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mVolumeRemoteView:Landroid/view/View;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_27

    .line 492
    :cond_17
    :goto_17
    monitor-exit p0

    return-void

    .line 472
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mBatteryRemoteView:Landroid/view/View;

    if-eqz v0, :cond_2a

    .line 473
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mBatteryContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mBatteryRemoteView:Landroid/view/View;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_27

    goto :goto_17

    .line 465
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0

    .line 476
    :cond_2a
    :try_start_2a
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSVoiceRemoteView:Landroid/view/View;

    if-eqz v0, :cond_38

    .line 477
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mBatteryContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSVoiceRemoteView:Landroid/view/View;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    goto :goto_17

    .line 480
    :cond_38
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHomeMissedEventWidget:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;

    if-eqz v0, :cond_52

    .line 481
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHomeMissedEventWidget:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->getMissedEventCount()I

    move-result v0

    if-lez v0, :cond_17

    .line 482
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mBatteryContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHomeMissedEventWidget:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 483
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->updateSViewCoverUnlockArea(Z)V

    goto :goto_17

    .line 487
    :cond_52
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCalendarRemoteView:Landroid/view/View;

    if-eqz v0, :cond_17

    .line 488
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mBatteryContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCalendarRemoteView:Landroid/view/View;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V
    :try_end_5f
    .catchall {:try_start_2a .. :try_end_5f} :catchall_27

    goto :goto_17
.end method

.method private updateMissedEventWidget()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 653
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    .line 654
    .local v0, "isSecureLock":Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewPager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;

    if-eqz v1, :cond_23

    .line 655
    if-nez v0, :cond_11

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mNeedToAddMissedEventWidget:Z

    if-nez v1, :cond_24

    .line 656
    :cond_11
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIsAddedMissedEventWidget:Z

    if-eqz v1, :cond_23

    .line 657
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewPager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mMissedEventWidgetLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;->removeView(Landroid/view/View;)V

    .line 658
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIsAddedMissedEventWidget:Z

    .line 659
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverUnlockArea:Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->hideNotiPageButton()V

    .line 669
    :cond_23
    :goto_23
    return-void

    .line 662
    :cond_24
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mNeedToAddMissedEventWidget:Z

    if-eqz v1, :cond_23

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIsAddedMissedEventWidget:Z

    if-nez v1, :cond_23

    .line 663
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewPager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mMissedEventWidgetLayout:Landroid/view/View;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;->addView(Landroid/view/View;I)V

    .line 664
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIsAddedMissedEventWidget:Z

    .line 665
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverUnlockArea:Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->showNotiPageButton()V

    goto :goto_23
.end method

.method private updateMusicContainer()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 495
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mMusicContatiner:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_15

    .line 496
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mMusicContatiner:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 497
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mMusicRemoteView:Landroid/view/View;

    if-eqz v0, :cond_15

    .line 498
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mMusicContatiner:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mMusicRemoteView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 500
    :cond_15
    return-void
.end method

.method private updateSHealthContainer()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 503
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSHealthContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_15

    .line 504
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSHealthContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 505
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mShealthRemoteView:Landroid/view/View;

    if-eqz v0, :cond_15

    .line 506
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSHealthContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mShealthRemoteView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 508
    :cond_15
    return-void
.end method

.method private updateSViewCoverUnlockArea(Z)V
    .registers 10
    .param p1, "visibility"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v7, -0x1

    .line 896
    sget-boolean v5, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIsSCover2:Z

    if-nez v5, :cond_8

    .line 915
    :goto_7
    return-void

    .line 900
    :cond_8
    iget-object v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewPager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;

    iget-object v6, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHomeWidget:Landroid/view/View;

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 901
    .local v0, "homeIndex":I
    iget-object v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewPager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;->getCurrentPage()I

    move-result v5

    if-ne v5, v0, :cond_1f

    .line 902
    if-eqz p1, :cond_3f

    .line 903
    iget-object v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverUnlockArea:Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->handleShow()V

    .line 908
    :cond_1f
    :goto_1f
    iget-object v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mBatteryContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSVoiceRemoteView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v5

    if-ne v5, v7, :cond_45

    move v1, v3

    .line 909
    .local v1, "isSVoiceRemoteViewExist":Z
    :goto_2a
    iget-object v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mBatteryContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mVolumeRemoteView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v5

    if-ne v5, v7, :cond_47

    move v2, v3

    .line 910
    .local v2, "isVolumeRemoteViewExist":Z
    :goto_35
    if-nez v1, :cond_39

    if-eqz v2, :cond_49

    .line 911
    :cond_39
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverUnlockArea:Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->handleHideIconsOnly()V

    goto :goto_7

    .line 905
    .end local v1    # "isSVoiceRemoteViewExist":Z
    .end local v2    # "isVolumeRemoteViewExist":Z
    :cond_3f
    iget-object v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverUnlockArea:Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->handleHide()V

    goto :goto_1f

    :cond_45
    move v1, v4

    .line 908
    goto :goto_2a

    .restart local v1    # "isSVoiceRemoteViewExist":Z
    :cond_47
    move v2, v4

    .line 909
    goto :goto_35

    .line 913
    .restart local v2    # "isVolumeRemoteViewExist":Z
    :cond_49
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverUnlockArea:Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverUnlockArea;->handleShowIconsOnly()V

    goto :goto_7
.end method

.method private updateSecureFlags()V
    .registers 7

    .prologue
    .line 639
    const/high16 v2, 0x400000

    .line 642
    .local v2, "secure_flags":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v5, -0x400001

    and-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 644
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "automatic_unlock"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 646
    .local v0, "isAutoUnlock":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    .line 647
    .local v1, "isSecureLock":Z
    if-nez v1, :cond_2b

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2b

    .line 648
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v4, v2

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 650
    :cond_2b
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 918
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 919
    const-string v0, "mSViewCoverDialog="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 920
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCover:Landroid/view/View;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 921
    const-string v0, "mSViewPager="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 922
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewPager:Lcom/android/internal/policy/impl/sviewcover/SViewCoverPager;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 923
    const-string v0, "mCurrentContextualWidget="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 924
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCurrentContextualWidget:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SCoverWidget;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 925
    const-string v0, " mSuppressCoverUI="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 926
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSuppressCoverUI:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 927
    const-string v0, " mShowingCoverUI="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 928
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mShowingCoverUI:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 929
    const-string v0, " mPhoneState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 930
    iget v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mPhoneState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 931
    return-void
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 577
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 578
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCoverChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 579
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 580
    return-void
.end method

.method protected handleBackgroundColorUpdated()V
    .registers 5

    .prologue
    const/high16 v2, -0x1000000

    .line 453
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "s_vew_cover_background_color"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCurrentCoverBackgroundColor:I

    .line 454
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverBackground:Landroid/widget/ImageView;

    if-eqz v0, :cond_56

    .line 455
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "custom_sview_background"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCustomSViewBG:I

    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCustomSViewBG:I

    if-eqz v1, :cond_38

    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverBackground:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverBackground:Landroid/widget/ImageView;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    const v1, 0x108109c

    goto :goto_3b

    :cond_38
    const v1, 0x1080597

    :goto_3b
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCustomSViewBG:I

    if-nez v1, :cond_56

    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverBackground:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCurrentCoverBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 456
    iget v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCurrentCoverBackgroundColor:I

    if-ne v0, v2, :cond_57

    .line 457
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverBackground:Landroid/widget/ImageView;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 462
    :cond_56
    :goto_56
    return-void

    .line 459
    :cond_57
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverBackground:Landroid/widget/ImageView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_56
.end method

.method protected handleUpdateSView()V
    .registers 4

    .prologue
    .line 447
    const-string v0, "SViewCoverManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShowingCoverUI = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mShowingCoverUI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSViewCover.getVisibility() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCover:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mShowingCoverUI:Z

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCover:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3f

    .line 449
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCover:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 450
    :cond_3f
    return-void
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 771
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mShowingCoverUI:Z

    return v0
.end method

.method public releaseCoverOpenWakeLock()V
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCoverOpenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCoverOpenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 176
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCoverOpenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 178
    :cond_11
    return-void
.end method

.method public setKeyguardMediator(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .registers 2
    .param p1, "keyguardViewMediator"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    .prologue
    .line 583
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mKeyguardViewMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    .line 584
    return-void
.end method

.method public updateCoverState(ZIIZLandroid/content/ComponentName;)V
    .registers 16
    .param p1, "isCoverOpen"    # Z
    .param p2, "coverType"    # I
    .param p3, "coverColor"    # I
    .param p4, "isBoot"    # Z
    .param p5, "topComponent"    # Landroid/content/ComponentName;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 672
    const-string v4, "SViewCoverManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCoverState  isBoot: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isCoverOpen: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " coverType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " coverColor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iput p3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCurrntColor:I

    .line 678
    iget v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCurrentCoverType:I

    if-eq v4, p2, :cond_59

    .line 679
    iget v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCurrentCoverType:I

    if-eq v4, v2, :cond_4a

    iget v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCurrentCoverType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_57

    .line 680
    :cond_4a
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mShowingCoverUI:Z

    if-eqz v4, :cond_57

    .line 681
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCover:Landroid/view/View;

    invoke-interface {v4, v5}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 682
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mShowingCoverUI:Z

    .line 685
    :cond_57
    iput p2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCurrentCoverType:I

    .line 689
    :cond_59
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v4

    if-nez v4, :cond_61

    if-ne p2, v9, :cond_62

    .line 761
    :cond_61
    :goto_61
    return-void

    .line 694
    :cond_62
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIsSViewCover:Z

    if-eqz v4, :cond_68

    if-nez p2, :cond_c1

    .line 695
    :cond_68
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mFlipCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 696
    if-eqz p1, :cond_b7

    .line 699
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "automatic_unlock"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_a3

    move v1, v2

    .line 701
    .local v1, "isAutoUnlock":Z
    :goto_7e
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mKeyguardViewMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v4

    if-eqz v4, :cond_ad

    .line 702
    if-eqz v1, :cond_a5

    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mKeyguardViewMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isDismissable()Z

    move-result v4

    if-eqz v4, :cond_a5

    .line 703
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mKeyguardViewMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v4, v3, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    .line 715
    .end local v1    # "isAutoUnlock":Z
    :goto_95
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mFlipCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 716
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mFlipCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_61

    :cond_a3
    move v1, v3

    .line 699
    goto :goto_7e

    .line 705
    .restart local v1    # "isAutoUnlock":Z
    :cond_a5
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mKeyguardViewMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/16 v3, 0x1a

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->onWakeKeyWhenKeyguardShowingTq(I)V

    goto :goto_95

    .line 708
    :cond_ad
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mPMS:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->wakeUp(J)V

    goto :goto_95

    .line 713
    .end local v1    # "isAutoUnlock":Z
    :cond_b7
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mPMS:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->goToSleep(J)V

    goto :goto_95

    .line 720
    :cond_c1
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCoverOpen:Z

    .line 722
    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCoverOpenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 724
    if-eqz p1, :cond_f0

    .line 726
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_d7

    .line 727
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 728
    :cond_d7
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_e4

    .line 729
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 730
    :cond_e4
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 731
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_61

    .line 736
    :cond_f0
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverColorSelector:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;

    if-eqz v2, :cond_105

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverColorSelector:Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverColorSelector;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_105

    .line 737
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mGoToSleepRunnable:Ljava/lang/Runnable;

    const-wide/16 v5, 0x1770

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 740
    :cond_105
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v2

    if-eqz v2, :cond_141

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSuppressCoverUI:Z

    if-eqz v2, :cond_141

    if-eqz p5, :cond_141

    .line 741
    invoke-virtual {p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 742
    .local v0, "currentPackage":Ljava/lang/String;
    if-eqz v0, :cond_141

    .line 743
    const-string v2, "com.sec.android.app.clockpackage"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_141

    const-string v2, "com.android.phone"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_141

    const-string v2, "com.sec.imsphone"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_141

    const-string v2, "com.android.calendar"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_141

    const-string v2, "com.sec.android.app.dmb"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_141

    .line 748
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSuppressCoverUI:Z

    .line 752
    .end local v0    # "currentPackage":Ljava/lang/String;
    :cond_141
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mPMS:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_159

    .line 753
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mPMS:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 754
    const-string v2, "SViewCoverManager"

    const-string v3, "[userActivity] Closed the cover"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_159
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 757
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_16b

    .line 758
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 759
    :cond_16b
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v7, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_61
.end method

.method public updateSupressCover(Z)V
    .registers 2
    .param p1, "isSupress"    # Z

    .prologue
    .line 767
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSuppressCoverUI:Z

    .line 768
    return-void
.end method
