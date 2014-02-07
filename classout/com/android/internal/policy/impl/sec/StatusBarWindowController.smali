.class public abstract Lcom/android/internal/policy/impl/sec/StatusBarWindowController;
.super Ljava/lang/Object;
.source "StatusBarWindowController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/StatusBarWindowController$SettingsObserver;,
        Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;,
        Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;,
        Lcom/android/internal/policy/impl/sec/StatusBarWindowController$EventInjectionGestureListener;
    }
.end annotation


# static fields
.field static final ACTION_COLLAPSE:Ljava/lang/String; = "com.android.systemui.statusbar.COLLAPSED"

.field static final ACTION_EXPAND:Ljava/lang/String; = "com.android.systemui.statusbar.EXPANDED"

.field static final ACTION_NOTIFICATION_ARRIVED:Ljava/lang/String; = "com.system.action.NOTIFICATION"

.field static final ACTION_TOGGLE:Ljava/lang/String; = "com.android.systemui.statusbar.TOGGLED"

.field static final DELAY_ANIMATING_HIDE_IN_FULLSCREEN:I = 0x12c

.field static final DELAY_HIDE_IN_FULLSCREEN:I = 0xbb8

.field static final DELAY_HIDE_IN_FULLSCREEN_BY_NOTIFICATION:I = 0x9c4

.field static final DELAY_SHOW_HOVERING_IN_FULLSCREEN:I = 0x1f4

.field static final DELAY_SHOW_IN_FULLSCREEN_BY_NOTIFICATION:I = 0x3e8

.field static final KEY_DISABLE_STATUS_BAR_OPEN:Ljava/lang/String; = "com.system.notification.DashNotificationManagerService.Disable"

.field static final MIN_RAW_PY_CONTROL_VOLUME:I = 0xa

.field static final NOTIFICATION_FIELD_TYPE:Ljava/lang/String; = "com.system.notification.DashNotificationManagerService.Type"

.field static final NOTIFICATION_TYPE_ADD:I = 0x1

.field static final POINTER_COUNT_CONTROL_VOLUME:I = 0x2

.field static final TAG:Ljava/lang/String; = "StatusBarWindowController"


# instance fields
.field final DEBUG:Z

.field final SAFE_DEBUG:Z

.field mAnimatingHideOnFullScreen:Ljava/lang/Runnable;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field mDefaultHideOnFullScreen:Ljava/lang/Runnable;

.field mDefaultShowOnFullScreen:Ljava/lang/Runnable;

.field mDefaultShowOnFullScreenByNotification:Ljava/lang/Runnable;

.field mEventDispatchThread:Ljava/lang/Thread;

.field mEventInjectionGestureDetector:Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;

.field mFlingGestureMaxXVelocityPx:F

.field mFlingGestureMinVelocityPy:F

.field mHandler:Landroid/os/Handler;

.field mHideNormalScreenGestureDetector:Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;

.field mHoveringInStatusBarArea:Z

.field mInstrumentation:Landroid/app/Instrumentation;

.field mIsFingerAirViewEnabled:Z

.field mIsShowUpIndicatorEnabled:Z

.field mIsStatusBarExpandEnabled:Z

.field mIsStatusBarHideEnabled:Z

.field mIsStatusBarWindow:Z

.field mLastControlEventRawY:F

.field mPreviousHiddenOnNormalScreen:Z

.field mPreviousShownOnFullScreen:Z

.field mReadyControlStatusBar:Z

.field mReadyInjectionBackKeyEvent:Z

.field final mServiceAquireLock:Ljava/lang/Object;

.field mShowFullScreenGestureDetector:Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;

.field mStatusBarExpanded:Z

.field mStatusBarHeight:I

.field mStatusBarHiddenOnNormalScreen:Z

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field mStatusBarShownOnFullScreen:Z

.field mTopIsFullScreen:Z

.field mUseStatusBarOpenByNotification:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 648
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->DEBUG:Z

    .line 42
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v3

    if-ne v3, v5, :cond_f1

    move v3, v4

    :goto_e
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->SAFE_DEBUG:Z

    .line 69
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mEventDispatchThread:Ljava/lang/Thread;

    .line 71
    new-instance v3, Ljava/lang/Object;

    invoke-direct/range {v3 .. v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mServiceAquireLock:Ljava/lang/Object;

    .line 77
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mTopIsFullScreen:Z

    .line 78
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mUseStatusBarOpenByNotification:Z

    .line 79
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsStatusBarWindow:Z

    .line 80
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsStatusBarExpandEnabled:Z

    .line 81
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarExpanded:Z

    .line 83
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyControlStatusBar:Z

    .line 85
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarShownOnFullScreen:Z

    .line 86
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mPreviousShownOnFullScreen:Z

    .line 88
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarHiddenOnNormalScreen:Z

    .line 89
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mPreviousHiddenOnNormalScreen:Z

    .line 91
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsStatusBarHideEnabled:Z

    .line 92
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsFingerAirViewEnabled:Z

    .line 93
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsShowUpIndicatorEnabled:Z

    .line 95
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHoveringInStatusBarArea:Z

    .line 97
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mReadyInjectionBackKeyEvent:Z

    .line 98
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mLastControlEventRawY:F

    .line 100
    new-instance v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;-><init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 460
    new-instance v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$3;-><init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultShowOnFullScreen:Ljava/lang/Runnable;

    .line 472
    new-instance v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$4;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$4;-><init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultShowOnFullScreenByNotification:Ljava/lang/Runnable;

    .line 486
    new-instance v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$5;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$5;-><init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultHideOnFullScreen:Ljava/lang/Runnable;

    .line 493
    new-instance v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$6;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$6;-><init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mAnimatingHideOnFullScreen:Ljava/lang/Runnable;

    .line 649
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mContext:Landroid/content/Context;

    .line 651
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 653
    .local v1, "res":Landroid/content/res/Resources;
    const v3, 0x10500ac

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mFlingGestureMaxXVelocityPx:F

    .line 655
    const v3, 0x10500ad

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mFlingGestureMinVelocityPy:F

    .line 657
    const v3, 0x105000c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarHeight:I

    .line 660
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    .line 661
    new-instance v3, Landroid/app/Instrumentation;

    invoke-direct {v3}, Landroid/app/Instrumentation;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mInstrumentation:Landroid/app/Instrumentation;

    .line 663
    new-instance v2, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$SettingsObserver;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;)V

    .line 664
    .local v2, "settingsObserver":Lcom/android/internal/policy/impl/sec/StatusBarWindowController$SettingsObserver;
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$SettingsObserver;->observe()V

    .line 666
    new-instance v3, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$ShowFullScreenGestureListener;-><init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;)V

    invoke-direct {v3, v5, v6}, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper$SamsungPolicyOnGestureListener;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mShowFullScreenGestureDetector:Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;

    .line 668
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mShowFullScreenGestureDetector:Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;->setIsLongpressEnabled(Z)V

    .line 670
    new-instance v3, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$HideNormalScreenGestureListener;-><init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;)V

    invoke-direct {v3, v5, v6}, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper$SamsungPolicyOnGestureListener;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHideNormalScreenGestureDetector:Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;

    .line 672
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHideNormalScreenGestureDetector:Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;->setIsLongpressEnabled(Z)V

    .line 674
    new-instance v3, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$EventInjectionGestureListener;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$EventInjectionGestureListener;-><init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;)V

    invoke-direct {v3, v5, v6}, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper$SamsungPolicyOnGestureListener;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mEventInjectionGestureDetector:Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;

    .line 676
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mEventInjectionGestureDetector:Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;->setIsLongpressEnabled(Z)V

    .line 678
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 679
    .local v0, "mReceiveFilter":Landroid/content/IntentFilter;
    const-string v3, "com.android.systemui.statusbar.COLLAPSED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 680
    const-string v3, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 681
    const-string v3, "com.android.systemui.statusbar.TOGGLED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 682
    const-string v3, "com.system.action.NOTIFICATION"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 683
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 684
    return-void

    .end local v0    # "mReceiveFilter":Landroid/content/IntentFilter;
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "settingsObserver":Lcom/android/internal/policy/impl/sec/StatusBarWindowController$SettingsObserver;
    :cond_f1
    move v3, v5

    .line 42
    goto/16 :goto_e
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/StatusBarWindowController;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->injectionKeyEvent(I)V

    return-void
.end method

.method private injectionKeyEvent(I)V
    .registers 4
    .param p1, "key"    # I

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mEventDispatchThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 224
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_17

    .line 225
    const-string v0, "StatusBarWindowController"

    const-string v1, "send interrupt to previous mEventDispatchThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_17
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 230
    :cond_1c
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$2;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$2;-><init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mEventDispatchThread:Ljava/lang/Thread;

    .line 250
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 251
    return-void
.end method

.method private postHoverEvent(Landroid/view/MotionEvent;)V
    .registers 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/16 v8, 0xbb8

    const-wide/16 v6, 0x1f4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 394
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 402
    .local v0, "action":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1a

    .line 403
    iget v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarHeight:I

    div-int/lit8 v1, v2, 0x2

    .line 418
    .local v1, "hoverAllowHeight":I
    :goto_15
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarExpanded:Z

    if-eqz v2, :cond_1f

    .line 458
    :cond_19
    :goto_19
    return-void

    .line 405
    .end local v1    # "hoverAllowHeight":I
    :cond_1a
    iget v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarHeight:I

    mul-int/lit8 v1, v2, 0x2

    .restart local v1    # "hoverAllowHeight":I
    goto :goto_15

    .line 419
    :cond_1f
    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_8c

    :pswitch_24
    goto :goto_19

    .line 441
    :pswitch_25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    int-to-float v3, v1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_77

    .line 442
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultHideOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 443
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHoveringInStatusBarArea:Z

    .line 445
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarShownOnFullScreen:Z

    if-nez v2, :cond_19

    .line 446
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultShowOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_19

    .line 422
    :pswitch_43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    int-to-float v3, v1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_61

    .line 423
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultHideOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 424
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHoveringInStatusBarArea:Z

    .line 426
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarShownOnFullScreen:Z

    if-nez v2, :cond_19

    .line 427
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultShowOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_19

    .line 431
    :cond_61
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHoveringInStatusBarArea:Z

    goto :goto_19

    .line 435
    :pswitch_64
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultShowOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 436
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarShownOnFullScreen:Z

    if-eqz v2, :cond_19

    .line 437
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultHideOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_19

    .line 450
    :cond_77
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultShowOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 451
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHoveringInStatusBarArea:Z

    .line 452
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarShownOnFullScreen:Z

    if-eqz v2, :cond_19

    .line 453
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultHideOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_19

    .line 419
    :pswitch_data_8c
    .packed-switch 0x7
        :pswitch_25
        :pswitch_24
        :pswitch_43
        :pswitch_64
    .end packed-switch
.end method


# virtual methods
.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 3

    .prologue
    .line 789
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 790
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_13

    .line 791
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 794
    :cond_13
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v1

    return-object v0

    .line 795
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public abstract onHideStatusBarOnNormalScreen(Z)V
.end method

.method public onInputPointerEvent(Landroid/view/MotionEvent;Z)V
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "isStatusBarWindow"    # Z

    .prologue
    .line 699
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsStatusBarWindow:Z

    .line 706
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 707
    .local v0, "action":I
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    .line 709
    .local v1, "type":I
    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_56

    .line 743
    :cond_10
    :goto_10
    :pswitch_10
    return-void

    .line 716
    :pswitch_11
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isWatchSpecialized()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 717
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mEventInjectionGestureDetector:Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_10

    .line 719
    :cond_1d
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mTopIsFullScreen:Z

    if-eqz v2, :cond_27

    .line 720
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mShowFullScreenGestureDetector:Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_10

    .line 721
    :cond_27
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsStatusBarHideEnabled:Z

    if-eqz v2, :cond_10

    .line 722
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHideNormalScreenGestureDetector:Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_10

    .line 729
    :pswitch_31
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mTopIsFullScreen:Z

    if-eqz v2, :cond_44

    const/4 v2, 0x1

    if-ne v1, v2, :cond_44

    .line 730
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsFingerAirViewEnabled:Z

    if-eqz v2, :cond_10

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsShowUpIndicatorEnabled:Z

    if-eqz v2, :cond_10

    .line 731
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->postHoverEvent(Landroid/view/MotionEvent;)V

    goto :goto_10

    .line 734
    :cond_44
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mTopIsFullScreen:Z

    if-eqz v2, :cond_10

    const/4 v2, 0x3

    if-ne v1, v2, :cond_10

    .line 735
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isStatusBarHoverOpenEnabled()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 736
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->postHoverEvent(Landroid/view/MotionEvent;)V

    goto :goto_10

    .line 709
    nop

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_11
        :pswitch_11
        :pswitch_31
        :pswitch_10
        :pswitch_31
        :pswitch_31
    .end packed-switch
.end method

.method public abstract onShowStatusBarOnFullScreen(Z)V
.end method

.method public performHideStatusBarOnNormalScreen(Z)V
    .registers 3
    .param p1, "hide"    # Z

    .prologue
    .line 627
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->performHideStatusBarOnNormalScreen(ZZ)V

    .line 628
    return-void
.end method

.method public performHideStatusBarOnNormalScreen(ZZ)V
    .registers 4
    .param p1, "hide"    # Z
    .param p2, "force"    # Z

    .prologue
    .line 636
    if-nez p2, :cond_6

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mPreviousHiddenOnNormalScreen:Z

    if-eq p1, v0, :cond_e

    .line 637
    :cond_6
    if-eqz p1, :cond_11

    .line 638
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarHiddenOnNormalScreen:Z

    .line 642
    :goto_b
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->onHideStatusBarOnNormalScreen(Z)V

    .line 644
    :cond_e
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mPreviousHiddenOnNormalScreen:Z

    .line 645
    return-void

    .line 640
    :cond_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarHiddenOnNormalScreen:Z

    goto :goto_b
.end method

.method public performShowStatusBarOnFullScreen(Z)V
    .registers 3
    .param p1, "show"    # Z

    .prologue
    .line 370
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->performShowStatusBarOnFullScreen(ZZ)V

    .line 371
    return-void
.end method

.method public performShowStatusBarOnFullScreen(ZZ)V
    .registers 7
    .param p1, "show"    # Z
    .param p2, "force"    # Z

    .prologue
    const/4 v1, 0x1

    .line 379
    if-nez p2, :cond_7

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mPreviousShownOnFullScreen:Z

    if-eq p1, v0, :cond_e

    .line 380
    :cond_7
    if-eqz p1, :cond_11

    .line 381
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarShownOnFullScreen:Z

    .line 388
    :goto_b
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->onShowStatusBarOnFullScreen(Z)V

    .line 390
    :cond_e
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mPreviousShownOnFullScreen:Z

    .line 391
    return-void

    .line 383
    :cond_11
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->setStatusBarHidingOnFullScreen(Z)V

    .line 384
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mAnimatingHideOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 385
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mAnimatingHideOnFullScreen:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b
.end method

.method public setProperties(ZZ)V
    .registers 5
    .param p1, "topIsFullScreen"    # Z
    .param p2, "openByNotification"    # Z

    .prologue
    .line 687
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mTopIsFullScreen:Z

    if-eq v0, p1, :cond_d

    .line 688
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mTopIsFullScreen:Z

    .line 689
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultShowOnFullScreenByNotification:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 691
    :cond_d
    if-eqz p1, :cond_15

    if-eqz p2, :cond_15

    const/4 v0, 0x1

    :goto_12
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mUseStatusBarOpenByNotification:Z

    .line 696
    return-void

    .line 691
    :cond_15
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public abstract setStatusBarHidingOnFullScreen(Z)V
.end method

.method updateSetting()V
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 770
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 771
    .local v3, "resolver":Landroid/content/ContentResolver;
    const-string v6, "finger_air_view"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_36

    move v0, v4

    .line 773
    .local v0, "isFingerAirViewEnabled":Z
    :goto_11
    const-string v6, "finger_air_view_show_up_indicator"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_38

    move v1, v4

    .line 775
    .local v1, "isShowUpIndicatorEnabled":Z
    :goto_1a
    const-string v6, "use_status_bar_hide"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_3a

    move v2, v4

    .line 777
    .local v2, "isStatusBarHideEnabled":Z
    :goto_23
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsFingerAirViewEnabled:Z

    if-eq v4, v0, :cond_29

    .line 778
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsFingerAirViewEnabled:Z

    .line 780
    :cond_29
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsShowUpIndicatorEnabled:Z

    if-eq v4, v1, :cond_2f

    .line 781
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsShowUpIndicatorEnabled:Z

    .line 783
    :cond_2f
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsStatusBarHideEnabled:Z

    if-eq v4, v2, :cond_35

    .line 784
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mIsStatusBarHideEnabled:Z

    .line 786
    :cond_35
    return-void

    .end local v0    # "isFingerAirViewEnabled":Z
    .end local v1    # "isShowUpIndicatorEnabled":Z
    .end local v2    # "isStatusBarHideEnabled":Z
    :cond_36
    move v0, v5

    .line 771
    goto :goto_11

    .restart local v0    # "isFingerAirViewEnabled":Z
    :cond_38
    move v1, v5

    .line 773
    goto :goto_1a

    .restart local v1    # "isShowUpIndicatorEnabled":Z
    :cond_3a
    move v2, v5

    .line 775
    goto :goto_23
.end method
