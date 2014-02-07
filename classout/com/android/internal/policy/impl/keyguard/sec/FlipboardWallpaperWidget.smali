.class public Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;
.super Landroid/widget/FrameLayout;
.source "FlipboardWallpaperWidget.java"


# static fields
.field private static final FLIPBOARD_USE_NATIVE_APP:Ljava/lang/String; = "flipboard.useNativeApp"

.field private static final KEY_ITEM_SECTION_ID:Ljava/lang/String; = "item_section_id"

.field private static final KEY_MORE:Ljava/lang/String; = "more"

.field private static final KEY_SOURCE:Ljava/lang/String; = "source"

.field private static final KEY_STREAM_ID:Ljava/lang/String; = "stream_id"

.field private static final NATIVE_APP_LINK_PREFIX:Ljava/lang/String; = "native_app_link:"

.field private static final SSTREAM_MAIN_ACTIVITY:Ljava/lang/String; = "sstream.app.activities.StreamActivity"

.field private static final SSTREAM_PACKAGE:Ljava/lang/String; = "sstream.app"

.field private static final SSTREAM_SCHEME:Ljava/lang/String; = "sstream"

.field private static final STORY_ITEM_AUTHORITY:Ljava/lang/String; = "storyitem"

.field private static final VALUE_TRUE:Ljava/lang/String; = "true"

.field private static sCurrentDataIdx:I

.field private static sWallpaperWidget:Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;


# instance fields
.field private ANIMATION_FULL_PLAY_TIME:I

.field private ANIMATION_HALF_PLAY_TIME:I

.field private ANIMATION_START_DELAY:I

.field private BEHIND_ALPHA_FROM:F

.field private BEHIND_ALPHA_TO:F

.field private BEHIND_IMAGE_SCALE_FROM:F

.field private BEHIND_IMAGE_SCALE_TO:F

.field private final DBG:Z

.field private final DEEP_LINK_ENABLED:Z

.field private FRONT_ALPHA_FROM:F

.field private FRONT_ALPHA_TO:F

.field private FRONT_IMAGE_SCALE_FROM:F

.field private FRONT_IMAGE_SCALE_TO:F

.field private final SHOW_ANIMATION:Z

.field private final TAG:Ljava/lang/String;

.field private mAuthorViews:[Landroid/widget/TextView;

.field private mBehindTextAlpha:Landroid/animation/ObjectAnimator;

.field private mBehindViewIdx:I

.field private mContentFrames:[Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mCoverLockTouchedDownTime:J

.field private mDeepLinkIcons:[Landroid/widget/LinearLayout;

.field private mFlipboardDataUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

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

.field private mFrontTextAlpha:Landroid/animation/ObjectAnimator;

.field private mFrontViewIdx:I

.field private mHandler:Landroid/os/Handler;

.field private mImageAnimatorSet:Landroid/animation/AnimatorSet;

.field private mIsAnimating:Z

.field private mIsContentViewVisible:Z

.field private mIsCoverLockIconTouchedDown:Z

.field private mIsIgnoreTouchEvent:Z

.field private mIsInitializationSucceed:Z

.field private mIsScreenOn:Z

.field private mIsSetFrontWallpaper:Z

.field private mRootFrames:[Landroid/widget/FrameLayout;

.field private mRootLayout:Landroid/widget/FrameLayout;

.field private mTimeViews:[Landroid/widget/TextView;

.field private mTitleViews:[Landroid/widget/TextView;

.field private mTransitionAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field mTransitionControlRunnable:Ljava/lang/Runnable;

.field private mWallpaperImageViews:[Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->sWallpaperWidget:Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    .line 86
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->sCurrentDataIdx:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 142
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 53
    const-string v0, "FlipboardWallpaperWidget"

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->TAG:Ljava/lang/String;

    .line 54
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->DBG:Z

    .line 60
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContext:Landroid/content/Context;

    .line 61
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mHandler:Landroid/os/Handler;

    .line 63
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFlipboardItemList:Ljava/util/ArrayList;

    .line 64
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsInitializationSucceed:Z

    .line 70
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootLayout:Landroid/widget/FrameLayout;

    .line 71
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootFrames:[Landroid/widget/FrameLayout;

    .line 72
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContentFrames:[Landroid/widget/LinearLayout;

    .line 73
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mDeepLinkIcons:[Landroid/widget/LinearLayout;

    .line 74
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mWallpaperImageViews:[Landroid/widget/ImageView;

    .line 75
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mTitleViews:[Landroid/widget/TextView;

    .line 76
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mAuthorViews:[Landroid/widget/TextView;

    .line 77
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mTimeViews:[Landroid/widget/TextView;

    .line 83
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->SHOW_ANIMATION:Z

    .line 84
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontViewIdx:I

    .line 85
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mBehindViewIdx:I

    .line 87
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsScreenOn:Z

    .line 88
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsSetFrontWallpaper:Z

    .line 89
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsContentViewVisible:Z

    .line 95
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->ANIMATION_START_DELAY:I

    .line 96
    const/16 v0, 0x29b

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->ANIMATION_HALF_PLAY_TIME:I

    .line 97
    const/16 v0, 0x535

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->ANIMATION_FULL_PLAY_TIME:I

    .line 98
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->FRONT_IMAGE_SCALE_FROM:F

    .line 99
    const v0, 0x3f8ccccd

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->FRONT_IMAGE_SCALE_TO:F

    .line 100
    const v0, 0x3f666666

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->BEHIND_IMAGE_SCALE_FROM:F

    .line 101
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->BEHIND_IMAGE_SCALE_TO:F

    .line 102
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->FRONT_ALPHA_FROM:F

    .line 103
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->FRONT_ALPHA_TO:F

    .line 104
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->BEHIND_ALPHA_FROM:F

    .line 105
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->BEHIND_ALPHA_TO:F

    .line 106
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsAnimating:Z

    .line 107
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mImageAnimatorSet:Landroid/animation/AnimatorSet;

    .line 108
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontTextAlpha:Landroid/animation/ObjectAnimator;

    .line 109
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mBehindTextAlpha:Landroid/animation/ObjectAnimator;

    .line 115
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsCoverLockIconTouchedDown:Z

    .line 116
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mCoverLockTouchedDownTime:J

    .line 117
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsIgnoreTouchEvent:Z

    .line 123
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->DEEP_LINK_ENABLED:Z

    .line 547
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget$1;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mTransitionControlRunnable:Ljava/lang/Runnable;

    .line 555
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget$2;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mTransitionAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 765
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget$3;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFlipboardDataUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 144
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContext:Landroid/content/Context;

    .line 145
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mHandler:Landroid/os/Handler;

    .line 147
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->loadViews()Z

    .line 148
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->init()V

    .line 150
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFlipboardDataUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->generateAndStartAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    .prologue
    .line 47
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->ANIMATION_START_DELAY:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->switchViewOrder()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFlipboardItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFlipboardItemList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private adjustContentFramePosition()V
    .registers 9

    .prologue
    const/16 v7, 0x636

    const/16 v6, 0x546

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 498
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsInitializationSucceed:Z

    if-nez v3, :cond_b

    .line 529
    :cond_a
    :goto_a
    return-void

    .line 501
    :cond_b
    const/16 v0, 0x212

    .line 502
    .local v0, "NORMAL_TOP_MARGIN":I
    const/16 v1, 0x1c2

    .line 504
    .local v1, "SHORTCUT_TOP_MARGIN":I
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->isShortcutEnabled()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 505
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContentFrames:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 506
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v2, :cond_2a

    .line 507
    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 508
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContentFrames:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v4

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 511
    :cond_2a
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContentFrames:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 512
    .restart local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v2, :cond_a

    .line 513
    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 514
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContentFrames:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v5

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a

    .line 517
    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_40
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContentFrames:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 518
    .restart local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v2, :cond_55

    .line 519
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 520
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContentFrames:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v4

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 523
    :cond_55
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContentFrames:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 524
    .restart local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v2, :cond_a

    .line 525
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 526
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContentFrames:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v5

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a
.end method

.method private declared-synchronized disableAnimation()V
    .registers 1

    .prologue
    .line 634
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method private declared-synchronized enableAnimation()V
    .registers 1

    .prologue
    .line 622
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method private generateAndStartAnimation()V
    .registers 14

    .prologue
    const/high16 v12, 0x3f800000

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 572
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsInitializationSucceed:Z

    if-nez v5, :cond_a

    .line 618
    :cond_9
    :goto_9
    return-void

    .line 575
    :cond_a
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFlipboardItemList:Ljava/util/ArrayList;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFlipboardItemList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v9, :cond_9

    .line 578
    const-string v5, "FlipboardWallpaperWidget"

    const-string v6, "generateAndStartAnimation"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->setLockScreenWallpaper()V

    .line 581
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mWallpaperImageViews:[Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontViewIdx:I

    aget-object v5, v5, v6

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->FRONT_IMAGE_SCALE_FROM:F

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 582
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mWallpaperImageViews:[Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontViewIdx:I

    aget-object v5, v5, v6

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->FRONT_IMAGE_SCALE_FROM:F

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 583
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mWallpaperImageViews:[Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontViewIdx:I

    aget-object v5, v5, v6

    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 584
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mWallpaperImageViews:[Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontViewIdx:I

    aget-object v5, v5, v6

    const-string v6, "scaleX"

    new-array v7, v11, [F

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->FRONT_IMAGE_SCALE_FROM:F

    aput v8, v7, v10

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->FRONT_IMAGE_SCALE_TO:F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 586
    .local v3, "frontImageScaleX":Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mWallpaperImageViews:[Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontViewIdx:I

    aget-object v5, v5, v6

    const-string v6, "scaleY"

    new-array v7, v11, [F

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->FRONT_IMAGE_SCALE_FROM:F

    aput v8, v7, v10

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->FRONT_IMAGE_SCALE_TO:F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 588
    .local v4, "frontImageScaleY":Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mWallpaperImageViews:[Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontViewIdx:I

    aget-object v5, v5, v6

    const-string v6, "alpha"

    new-array v7, v11, [F

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->FRONT_ALPHA_FROM:F

    aput v8, v7, v10

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->FRONT_ALPHA_TO:F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 591
    .local v2, "frontImageAlpha":Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mWallpaperImageViews:[Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mBehindViewIdx:I

    aget-object v5, v5, v6

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->BEHIND_IMAGE_SCALE_FROM:F

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 592
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mWallpaperImageViews:[Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mBehindViewIdx:I

    aget-object v5, v5, v6

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->BEHIND_IMAGE_SCALE_FROM:F

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 593
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mWallpaperImageViews:[Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mBehindViewIdx:I

    aget-object v5, v5, v6

    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 594
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mWallpaperImageViews:[Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mBehindViewIdx:I

    aget-object v5, v5, v6

    const-string v6, "scaleX"

    new-array v7, v11, [F

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->BEHIND_IMAGE_SCALE_FROM:F

    aput v8, v7, v10

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->BEHIND_IMAGE_SCALE_TO:F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 596
    .local v0, "behindImageScaleX":Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mWallpaperImageViews:[Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mBehindViewIdx:I

    aget-object v5, v5, v6

    const-string v6, "scaleY"

    new-array v7, v11, [F

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->BEHIND_IMAGE_SCALE_FROM:F

    aput v8, v7, v10

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->BEHIND_IMAGE_SCALE_TO:F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 599
    .local v1, "behindImageScaleY":Landroid/animation/ObjectAnimator;
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mImageAnimatorSet:Landroid/animation/AnimatorSet;

    .line 600
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mImageAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v6, 0x5

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v3, v6, v10

    aput-object v4, v6, v9

    aput-object v2, v6, v11

    const/4 v7, 0x3

    aput-object v0, v6, v7

    const/4 v7, 0x4

    aput-object v1, v6, v7

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 601
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mImageAnimatorSet:Landroid/animation/AnimatorSet;

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->ANIMATION_FULL_PLAY_TIME:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 602
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mImageAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mTransitionAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 604
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContentFrames:[Landroid/widget/LinearLayout;

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontViewIdx:I

    aget-object v5, v5, v6

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->FRONT_ALPHA_FROM:F

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 605
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContentFrames:[Landroid/widget/LinearLayout;

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontViewIdx:I

    aget-object v5, v5, v6

    const-string v6, "alpha"

    new-array v7, v11, [F

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->FRONT_ALPHA_FROM:F

    aput v8, v7, v10

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->FRONT_ALPHA_TO:F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontTextAlpha:Landroid/animation/ObjectAnimator;

    .line 607
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontTextAlpha:Landroid/animation/ObjectAnimator;

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->ANIMATION_HALF_PLAY_TIME:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 609
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContentFrames:[Landroid/widget/LinearLayout;

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mBehindViewIdx:I

    aget-object v5, v5, v6

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->BEHIND_ALPHA_FROM:F

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 610
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContentFrames:[Landroid/widget/LinearLayout;

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mBehindViewIdx:I

    aget-object v5, v5, v6

    const-string v6, "alpha"

    new-array v7, v11, [F

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->BEHIND_ALPHA_FROM:F

    aput v8, v7, v10

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->BEHIND_ALPHA_TO:F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mBehindTextAlpha:Landroid/animation/ObjectAnimator;

    .line 612
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mBehindTextAlpha:Landroid/animation/ObjectAnimator;

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->ANIMATION_HALF_PLAY_TIME:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 613
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mBehindTextAlpha:Landroid/animation/ObjectAnimator;

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->ANIMATION_HALF_PLAY_TIME:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 615
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontTextAlpha:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    .line 616
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mBehindTextAlpha:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    .line 617
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mImageAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_9
.end method

.method public static getCurrentDataIdx()I
    .registers 2

    .prologue
    .line 539
    sget v0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->sCurrentDataIdx:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->sCurrentDataIdx:I

    return v0
.end method

.method private getCurrentItem()Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;
    .registers 4

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFlipboardItemList:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    .line 533
    const/4 v0, 0x0

    .line 535
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFlipboardItemList:Ljava/util/ArrayList;

    sget v1, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->sCurrentDataIdx:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFlipboardItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;

    goto :goto_5
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;
    .registers 2
    .param p0, "cotext"    # Landroid/content/Context;

    .prologue
    .line 312
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->sWallpaperWidget:Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    if-nez v0, :cond_b

    .line 313
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->sWallpaperWidget:Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    .line 315
    :cond_b
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->sWallpaperWidget:Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    return-object v0
.end method

.method private getTimeString(J)Ljava/lang/CharSequence;
    .registers 9
    .param p1, "time"    # J

    .prologue
    const-wide/16 v4, 0x3e8

    .line 460
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_b

    .line 461
    const-string v0, ""

    .line 463
    :goto_a
    return-object v0

    :cond_b
    mul-long v0, p1, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_a
.end method

.method public static getWallpaper(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "itemData"    # Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;

    .prologue
    .line 405
    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    .line 406
    :cond_4
    const/4 v0, 0x0

    .line 408
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->wallpaperPath:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->getWallpaper(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_5
.end method

.method public static getWallpaper(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wallpaperPath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 412
    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 438
    :cond_b
    :goto_b
    return-object v3

    .line 415
    :cond_c
    const/4 v2, 0x0

    .line 416
    .local v2, "is":Ljava/io/InputStream;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 418
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 420
    :try_start_18
    new-instance v2, Ljava/io/FileInputStream;

    .end local v2    # "is":Ljava/io/InputStream;
    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_33

    .line 425
    .restart local v2    # "is":Ljava/io/InputStream;
    if-eqz v2, :cond_b

    .line 429
    :cond_1f
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 432
    .local v3, "tempBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v2, :cond_b

    .line 433
    :try_start_2a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_b

    .line 434
    :catch_2e
    move-exception v0

    .line 435
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 421
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "tempBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :catch_33
    move-exception v0

    .line 422
    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_b
.end method

.method public static getWallpaperBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v7, 0x780

    const/16 v6, 0x438

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 383
    if-nez p0, :cond_a

    .line 384
    const/4 v1, 0x0

    .line 401
    :goto_9
    return-object v1

    .line 386
    :cond_a
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    move-result-object v0

    .line 387
    .local v0, "flipboardWallpaper":Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->setLockScreenWallpaper()V

    .line 389
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->getMeasuredHeight()I

    move-result v3

    if-gtz v3, :cond_1a

    .line 390
    invoke-virtual {v0, v4, v4}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->measure(II)V

    .line 392
    :cond_1a
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 396
    .local v1, "wallpaperBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 398
    .local v2, "wallpaperCanvas":Landroid/graphics/Canvas;
    invoke-virtual {v0, v5, v5, v6, v7}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->layout(IIII)V

    .line 399
    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->draw(Landroid/graphics/Canvas;)V

    goto :goto_9
.end method

.method private isInCoverLockIconArea(Landroid/view/MotionEvent;)Z
    .registers 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 682
    const/16 v1, 0x3c

    .line 683
    .local v1, "DELTA":I
    const/16 v2, 0x387

    .line 684
    .local v2, "LEFT":I
    const/16 v3, 0x708

    .line 685
    .local v3, "RIGHT":I
    const/16 v4, 0x3d7

    .line 686
    .local v4, "TOP":I
    const/16 v0, 0x758

    .line 688
    .local v0, "BOTTOM":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    .line 689
    .local v5, "touchedEventX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    .line 691
    .local v6, "touchedEventY":F
    const v7, 0x4461c000

    cmpg-float v7, v7, v5

    if-gtz v7, :cond_2e

    const/high16 v7, 0x44e10000

    cmpg-float v7, v5, v7

    if-gtz v7, :cond_2e

    const v7, 0x4475c000

    cmpg-float v7, v7, v6

    if-gtz v7, :cond_2e

    const/high16 v7, 0x44eb0000

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_2e

    .line 693
    const/4 v7, 0x1

    .line 695
    :goto_2d
    return v7

    :cond_2e
    const/4 v7, 0x0

    goto :goto_2d
.end method

.method private isShortcutEnabled()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v5, -0x2

    const/4 v1, 0x0

    .line 483
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_screen_shortcut"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_12

    .line 494
    :cond_11
    :goto_11
    return v1

    .line 487
    :cond_12
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "easy_mode_switch"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_11

    .line 490
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_screen_shortcut_app_list"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, "activityList":Ljava/lang/String;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    move v1, v2

    .line 494
    goto :goto_11
.end method

.method private launchMagazineApp()V
    .registers 10

    .prologue
    .line 699
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->getCurrentItem()Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;

    move-result-object v1

    .line 700
    .local v1, "currentItem":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;
    if-nez v1, :cond_7

    .line 758
    :goto_6
    return-void

    .line 704
    :cond_7
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 705
    .local v0, "builder":Landroid/net/Uri$Builder;
    const/4 v2, 0x0

    .line 707
    .local v2, "secondDepthIntent":Landroid/content/Intent;
    const-string v6, "flipboard.useNativeApp"

    iget-object v7, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->appPackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_68

    iget-object v6, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->source:Ljava/lang/String;

    if-eqz v6, :cond_68

    iget-object v6, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->source:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_68

    .line 708
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "secondDepthIntent":Landroid/content/Intent;
    const-string v6, "android.intent.action.VIEW"

    iget-object v7, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->source:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 736
    .restart local v2    # "secondDepthIntent":Landroid/content/Intent;
    :cond_30
    :goto_30
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/high16 v7, 0x10000

    invoke-virtual {v6, v2, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-eqz v6, :cond_db

    .line 737
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 738
    .local v4, "sstreamIntent":Landroid/content/Intent;
    const-string v6, "stream_id"

    iget-object v7, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->streamId:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 739
    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "sstream.app"

    const-string v8, "sstream.app.activities.StreamActivity"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 740
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v5

    .line 741
    .local v5, "taskStackBuilder":Landroid/app/TaskStackBuilder;
    invoke-virtual {v5, v4}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    .line 742
    invoke-virtual {v5, v2}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    .line 743
    invoke-virtual {v5}, Landroid/app/TaskStackBuilder;->startActivities()V

    goto :goto_6

    .line 710
    .end local v4    # "sstreamIntent":Landroid/content/Intent;
    .end local v5    # "taskStackBuilder":Landroid/app/TaskStackBuilder;
    :cond_68
    iget-object v3, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->source:Ljava/lang/String;

    .line 712
    .local v3, "source":Ljava/lang/String;
    if-eqz v3, :cond_a4

    const-string v6, "native_app_link:"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a4

    .line 713
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "secondDepthIntent":Landroid/content/Intent;
    const-string v6, "android.intent.action.VIEW"

    const-string v7, "native_app_link:"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 728
    .restart local v2    # "secondDepthIntent":Landroid/content/Intent;
    :cond_89
    :goto_89
    if-eqz v3, :cond_93

    const-string v6, "native_app_link:"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_30

    .line 731
    :cond_93
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "secondDepthIntent":Landroid/content/Intent;
    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 732
    .restart local v2    # "secondDepthIntent":Landroid/content/Intent;
    iget-object v6, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->appPackage:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_30

    .line 715
    :cond_a4
    const-string v6, "sstream"

    invoke-virtual {v0, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 716
    const-string v6, "storyitem"

    invoke-virtual {v0, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 717
    iget-object v6, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->id:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 718
    iget v6, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->getMore:I

    if-eqz v6, :cond_be

    .line 719
    const-string v6, "more"

    const-string v7, "true"

    invoke-virtual {v0, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 721
    :cond_be
    if-eqz v3, :cond_cb

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_cb

    .line 722
    const-string v6, "source"

    invoke-virtual {v0, v6, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 724
    :cond_cb
    if-eqz v3, :cond_89

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_89

    .line 725
    const-string v6, "item_section_id"

    iget-object v7, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->target:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_89

    .line 745
    .end local v3    # "source":Ljava/lang/String;
    :cond_db
    const-string v6, "FlipboardWallpaperWidget"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no activity found for intent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6
.end method

.method private loadViews()Z
    .registers 9

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 154
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsInitializationSucceed:Z

    .line 156
    const v1, 0x1090075

    .line 157
    .local v1, "layoutId":I
    if-nez v1, :cond_14

    .line 158
    const-string v2, "FlipboardWallpaperWidget"

    const-string v3, "LayoutId is 0"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsInitializationSucceed:Z

    .line 234
    :goto_13
    return v2

    .line 162
    :cond_14
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 163
    .local v0, "inflater":Landroid/view/LayoutInflater;
    if-nez v0, :cond_26

    .line 164
    const-string v2, "FlipboardWallpaperWidget"

    const-string v3, "Fail to get LayoutInflater"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsInitializationSucceed:Z

    goto :goto_13

    .line 168
    :cond_26
    invoke-virtual {v0, v1, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootLayout:Landroid/widget/FrameLayout;

    .line 169
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootLayout:Landroid/widget/FrameLayout;

    if-nez v2, :cond_3c

    .line 170
    const-string v2, "FlipboardWallpaperWidget"

    const-string v3, "Fail to inflate"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsInitializationSucceed:Z

    goto :goto_13

    .line 174
    :cond_3c
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->addView(Landroid/view/View;)V

    .line 176
    new-array v2, v7, [Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootFrames:[Landroid/widget/FrameLayout;

    .line 177
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootFrames:[Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootLayout:Landroid/widget/FrameLayout;

    const v4, 0x1020374

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    aput-object v2, v3, v6

    .line 178
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootFrames:[Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootLayout:Landroid/widget/FrameLayout;

    const v4, 0x102037b

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    aput-object v2, v3, v5

    .line 179
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootFrames:[Landroid/widget/FrameLayout;

    aget-object v2, v2, v5

    if-eqz v2, :cond_6f

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootFrames:[Landroid/widget/FrameLayout;

    aget-object v2, v2, v6

    if-nez v2, :cond_79

    .line 180
    :cond_6f
    const-string v2, "FlipboardWallpaperWidget"

    const-string v3, "Fail to load root frames"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsInitializationSucceed:Z

    goto :goto_13

    .line 184
    :cond_79
    new-array v2, v7, [Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContentFrames:[Landroid/widget/LinearLayout;

    .line 185
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContentFrames:[Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootLayout:Landroid/widget/FrameLayout;

    const v4, 0x1020376

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    aput-object v2, v3, v6

    .line 186
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContentFrames:[Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootLayout:Landroid/widget/FrameLayout;

    const v4, 0x102037d

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    aput-object v2, v3, v5

    .line 187
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContentFrames:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v5

    if-eqz v2, :cond_a7

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContentFrames:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v6

    if-nez v2, :cond_b2

    .line 188
    :cond_a7
    const-string v2, "FlipboardWallpaperWidget"

    const-string v3, "Fail to load content frames"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsInitializationSucceed:Z

    goto/16 :goto_13

    .line 192
    :cond_b2
    new-array v2, v7, [Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mDeepLinkIcons:[Landroid/widget/LinearLayout;

    .line 193
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mDeepLinkIcons:[Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootLayout:Landroid/widget/FrameLayout;

    const v4, 0x102037a

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    aput-object v2, v3, v6

    .line 194
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mDeepLinkIcons:[Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootLayout:Landroid/widget/FrameLayout;

    const v4, 0x1020381

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    aput-object v2, v3, v5

    .line 195
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mDeepLinkIcons:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v5

    if-eqz v2, :cond_e0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mDeepLinkIcons:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v6

    if-nez v2, :cond_eb

    .line 196
    :cond_e0
    const-string v2, "FlipboardWallpaperWidget"

    const-string v3, "Fail to load deep link icons"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsInitializationSucceed:Z

    goto/16 :goto_13

    .line 200
    :cond_eb
    new-array v2, v7, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mWallpaperImageViews:[Landroid/widget/ImageView;

    .line 201
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mWallpaperImageViews:[Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootLayout:Landroid/widget/FrameLayout;

    const v4, 0x1020375

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v3, v6

    .line 202
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mWallpaperImageViews:[Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootLayout:Landroid/widget/FrameLayout;

    const v4, 0x102037c

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v3, v5

    .line 203
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mWallpaperImageViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v5

    if-eqz v2, :cond_119

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mWallpaperImageViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v6

    if-nez v2, :cond_124

    .line 204
    :cond_119
    const-string v2, "FlipboardWallpaperWidget"

    const-string v3, "Fail to load wallpaper image views"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsInitializationSucceed:Z

    goto/16 :goto_13

    .line 208
    :cond_124
    new-array v2, v7, [Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mTitleViews:[Landroid/widget/TextView;

    .line 209
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mTitleViews:[Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootLayout:Landroid/widget/FrameLayout;

    const v4, 0x1020377

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v3, v6

    .line 210
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mTitleViews:[Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootLayout:Landroid/widget/FrameLayout;

    const v4, 0x102037e

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v3, v5

    .line 211
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mTitleViews:[Landroid/widget/TextView;

    aget-object v2, v2, v5

    if-eqz v2, :cond_152

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mTitleViews:[Landroid/widget/TextView;

    aget-object v2, v2, v6

    if-nez v2, :cond_15d

    .line 212
    :cond_152
    const-string v2, "FlipboardWallpaperWidget"

    const-string v3, "Fail to load title views"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsInitializationSucceed:Z

    goto/16 :goto_13

    .line 216
    :cond_15d
    new-array v2, v7, [Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mAuthorViews:[Landroid/widget/TextView;

    .line 217
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mAuthorViews:[Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootLayout:Landroid/widget/FrameLayout;

    const v4, 0x1020378

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v3, v6

    .line 218
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mAuthorViews:[Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootLayout:Landroid/widget/FrameLayout;

    const v4, 0x102037f

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v3, v5

    .line 219
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mAuthorViews:[Landroid/widget/TextView;

    aget-object v2, v2, v5

    if-eqz v2, :cond_18b

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mAuthorViews:[Landroid/widget/TextView;

    aget-object v2, v2, v6

    if-nez v2, :cond_196

    .line 220
    :cond_18b
    const-string v2, "FlipboardWallpaperWidget"

    const-string v3, "Fail to load author views"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsInitializationSucceed:Z

    goto/16 :goto_13

    .line 224
    :cond_196
    new-array v2, v7, [Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mTimeViews:[Landroid/widget/TextView;

    .line 225
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mTimeViews:[Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootLayout:Landroid/widget/FrameLayout;

    const v4, 0x1020379

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v3, v6

    .line 226
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mTimeViews:[Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootLayout:Landroid/widget/FrameLayout;

    const v4, 0x1020380

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v3, v5

    .line 227
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mTimeViews:[Landroid/widget/TextView;

    aget-object v2, v2, v5

    if-eqz v2, :cond_1c4

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mTimeViews:[Landroid/widget/TextView;

    aget-object v2, v2, v6

    if-nez v2, :cond_1cf

    .line 228
    :cond_1c4
    const-string v2, "FlipboardWallpaperWidget"

    const-string v3, "Fail to load time views"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsInitializationSucceed:Z

    goto/16 :goto_13

    .line 232
    :cond_1cf
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsInitializationSucceed:Z

    .line 234
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsInitializationSucceed:Z

    goto/16 :goto_13
.end method

.method private setViewData(I)V
    .registers 7
    .param p1, "viewIdx"    # I

    .prologue
    const/4 v4, 0x0

    .line 345
    const-string v1, "FlipboardWallpaperWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setViewData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    sget v1, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->sCurrentDataIdx:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->sCurrentDataIdx:I

    .line 349
    sget v1, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->sCurrentDataIdx:I

    if-gez v1, :cond_25

    .line 350
    sput v4, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->sCurrentDataIdx:I

    .line 352
    :cond_25
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->getCurrentItem()Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;

    move-result-object v0

    .line 353
    .local v0, "currentItem":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;
    if-nez v0, :cond_2c

    .line 380
    :cond_2b
    :goto_2b
    return-void

    .line 356
    :cond_2c
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mDeepLinkIcons:[Landroid/widget/LinearLayout;

    aget-object v1, v1, p1

    if-eqz v1, :cond_49

    .line 357
    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->id:Ljava/lang/String;

    if-eqz v1, :cond_3e

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 358
    :cond_3e
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mDeepLinkIcons:[Landroid/widget/LinearLayout;

    aget-object v1, v1, p1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 359
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsIgnoreTouchEvent:Z

    .line 366
    :cond_49
    :goto_49
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mWallpaperImageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    if-eqz v1, :cond_5c

    .line 367
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mWallpaperImageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->getWallpaper(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 369
    :cond_5c
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mTitleViews:[Landroid/widget/TextView;

    aget-object v1, v1, p1

    if-eqz v1, :cond_6b

    .line 370
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mTitleViews:[Landroid/widget/TextView;

    aget-object v1, v1, p1

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    :cond_6b
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mAuthorViews:[Landroid/widget/TextView;

    aget-object v1, v1, p1

    if-eqz v1, :cond_7a

    .line 373
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mAuthorViews:[Landroid/widget/TextView;

    aget-object v1, v1, p1

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->author:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    :cond_7a
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mTimeViews:[Landroid/widget/TextView;

    aget-object v1, v1, p1

    if-eqz v1, :cond_8d

    .line 376
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mTimeViews:[Landroid/widget/TextView;

    aget-object v1, v1, p1

    iget-wide v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$FlipboardItemData;->time:J

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->getTimeString(J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    :cond_8d
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootFrames:[Landroid/widget/FrameLayout;

    aget-object v1, v1, p1

    if-eqz v1, :cond_2b

    .line 379
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootFrames:[Landroid/widget/FrameLayout;

    aget-object v1, v1, p1

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2b

    .line 361
    :cond_9b
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mDeepLinkIcons:[Landroid/widget/LinearLayout;

    aget-object v1, v1, p1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 362
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsIgnoreTouchEvent:Z

    goto :goto_49
.end method

.method private switchViewOrder()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 442
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsInitializationSucceed:Z

    if-nez v0, :cond_7

    .line 457
    :goto_6
    return-void

    .line 445
    :cond_7
    const-string v0, "FlipboardWallpaperWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchViewOrder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontViewIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootFrames:[Landroid/widget/FrameLayout;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontViewIdx:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 448
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootFrames:[Landroid/widget/FrameLayout;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontViewIdx:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 450
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontViewIdx:I

    if-nez v0, :cond_40

    .line 451
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontViewIdx:I

    .line 452
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mBehindViewIdx:I

    goto :goto_6

    .line 454
    :cond_40
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontViewIdx:I

    .line 455
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mBehindViewIdx:I

    goto :goto_6
.end method


# virtual methods
.method public cleanUp()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 292
    const-string v0, "FlipboardWallpaperWidget"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsInitializationSucceed:Z

    if-nez v0, :cond_f

    .line 304
    :goto_e
    return-void

    .line 297
    :cond_f
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->disableAnimation()V

    .line 298
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFlipboardDataUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 299
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mWallpaperImageViews:[Landroid/widget/ImageView;

    aget-object v0, v0, v2

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 300
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mWallpaperImageViews:[Landroid/widget/ImageView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsScreenOn:Z

    .line 303
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsSetFrontWallpaper:Z

    goto :goto_e
.end method

.method public handleTouchDown(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 650
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsIgnoreTouchEvent:Z

    if-eqz v0, :cond_5

    .line 657
    :cond_4
    :goto_4
    return-void

    .line 653
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->isInCoverLockIconArea(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsCoverLockIconTouchedDown:Z

    .line 655
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsCoverLockIconTouchedDown:Z

    if-eqz v0, :cond_4

    .line 656
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mCoverLockTouchedDownTime:J

    goto :goto_4
.end method

.method public handleTouchUp(Landroid/view/MotionEvent;)Z
    .registers 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 661
    const/4 v2, 0x0

    .line 663
    .local v2, "isDismissRequesed":Z
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsIgnoreTouchEvent:Z

    if-eqz v4, :cond_7

    move v3, v2

    .line 678
    .end local v2    # "isDismissRequesed":Z
    .local v3, "isDismissRequesed":I
    :goto_6
    return v3

    .line 666
    .end local v3    # "isDismissRequesed":I
    .restart local v2    # "isDismissRequesed":Z
    :cond_7
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsCoverLockIconTouchedDown:Z

    if-eqz v4, :cond_23

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->isInCoverLockIconArea(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 667
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 669
    .local v0, "currentTime":J
    iget-wide v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mCoverLockTouchedDownTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x1f4

    cmp-long v4, v4, v6

    if-gez v4, :cond_23

    .line 670
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->launchMagazineApp()V

    .line 671
    const/4 v2, 0x1

    .line 675
    .end local v0    # "currentTime":J
    :cond_23
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsCoverLockIconTouchedDown:Z

    .line 676
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mCoverLockTouchedDownTime:J

    move v3, v2

    .line 678
    .restart local v3    # "isDismissRequesed":I
    goto :goto_6
.end method

.method public init()V
    .registers 4

    .prologue
    const/4 v2, 0x4

    .line 238
    const-string v0, "FlipboardWallpaperWidget"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getFlipboardItemList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFlipboardItemList:Ljava/util/ArrayList;

    .line 241
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->sCurrentDataIdx:I

    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsIgnoreTouchEvent:Z

    .line 244
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootFrames:[Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontViewIdx:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_2b

    .line 245
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootFrames:[Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontViewIdx:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 246
    :cond_2b
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootFrames:[Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mBehindViewIdx:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_3c

    .line 247
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mRootFrames:[Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mBehindViewIdx:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 249
    :cond_3c
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->setLockScreenWallpaper()V

    .line 250
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 267
    const-string v0, "FlipboardWallpaperWidget"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->adjustContentFramePosition()V

    .line 270
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->setContentVisible(Z)V

    .line 271
    return-void
.end method

.method public screenTurnedOff()V
    .registers 3

    .prologue
    .line 281
    const-string v0, "FlipboardWallpaperWidget"

    const-string v1, "screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsScreenOn:Z

    .line 288
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->setLockScreenWallpaper()V

    .line 289
    return-void
.end method

.method public screenTurnedOn()V
    .registers 3

    .prologue
    .line 274
    const-string v0, "FlipboardWallpaperWidget"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsScreenOn:Z

    .line 277
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->enableAnimation()V

    .line 278
    return-void
.end method

.method public setContentVisible(Z)V
    .registers 5
    .param p1, "visible"    # Z

    .prologue
    .line 467
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsContentViewVisible:Z

    if-ne v1, p1, :cond_5

    .line 480
    :cond_4
    :goto_4
    return-void

    .line 470
    :cond_5
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsContentViewVisible:Z

    .line 472
    const/4 v0, 0x0

    .line 473
    .local v0, "visibility":I
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsContentViewVisible:Z

    if-nez v1, :cond_d

    .line 474
    const/4 v0, 0x4

    .line 476
    :cond_d
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContentFrames:[Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontViewIdx:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_1e

    .line 477
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContentFrames:[Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontViewIdx:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 478
    :cond_1e
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContentFrames:[Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mBehindViewIdx:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_4

    .line 479
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContentFrames:[Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mBehindViewIdx:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4
.end method

.method public setLockScreenWallpaper()V
    .registers 3

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFlipboardItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFlipboardItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_14

    .line 320
    :cond_c
    const-string v0, "FlipboardWallpaperWidget"

    const-string v1, "item list is null or empty"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :goto_13
    return-void

    .line 324
    :cond_14
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsInitializationSucceed:Z

    if-nez v0, :cond_26

    .line 325
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->loadViews()Z

    move-result v0

    if-nez v0, :cond_26

    .line 326
    const-string v0, "FlipboardWallpaperWidget"

    const-string v1, "Initialization failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 340
    :cond_26
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFrontViewIdx:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->setViewData(I)V

    goto :goto_13
.end method

.method public show()V
    .registers 3

    .prologue
    .line 253
    const-string v0, "FlipboardWallpaperWidget"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getFlipboardItemList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mFlipboardItemList:Ljava/util/ArrayList;

    .line 256
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->adjustContentFramePosition()V

    .line 257
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->setContentVisible(Z)V

    .line 258
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->setLockScreenWallpaper()V

    .line 260
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->mIsScreenOn:Z

    if-eqz v0, :cond_25

    .line 261
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->enableAnimation()V

    .line 264
    :goto_24
    return-void

    .line 263
    :cond_25
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->disableAnimation()V

    goto :goto_24
.end method
