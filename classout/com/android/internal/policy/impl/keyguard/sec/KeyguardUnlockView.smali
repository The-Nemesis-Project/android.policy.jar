.class public Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;
.super Landroid/widget/LinearLayout;
.source "KeyguardUnlockView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$HelpTextCallback;,
        Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;
    }
.end annotation


# static fields
.field private static final ACTION_CLEAR_COVER_OPEN:Ljava/lang/String; = "com.samsung.cover.OPEN"

.field private static final AWAKE_INTERVAL_DEFAULT_MS:I = 0x2710

.field private static final DEBUG:Z

.field private static final MAX_AWAKE_TIME:I = 0x7530

.field private static final MSG_CHANGE_TOUCH_EXPLORATION:I = 0x12f0

.field private static final TAG:Ljava/lang/String; = "SecuritySelectorView"


# instance fields
.field private final FADE_IN_OUT_ANIMATION_DURATION:I

.field private isIgnoreTouch:Z

.field private mAnim:Landroid/animation/ObjectAnimator;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private mBouncerFrameView:Landroid/widget/LinearLayout;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mClearCoverOpened:Z

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mDefaultHelpText:Ljava/lang/String;

.field private mDistance:D

.field private mEcaView:Landroid/widget/LinearLayout;

.field private mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

.field private mFadeView:Landroid/view/View;

.field private mFirstBorder:I

.field private final mHandler:Landroid/os/Handler;

.field private mHelpTextCallback:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

.field private mHelpTextView:Landroid/widget/TextView;

.field private mIsAirViewEnabled:Z

.field private mIsBouncing:Z

.field private mIsCoverLockEnabled:Z

.field private mIsFirst:Z

.field private mIsHelpTextEnabled:Z

.field private mIsTouchExplorationEnabled:Z

.field private mIsVoiceUnlockFailed:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mResumedTimeMillis:J

.field private mSecondBorder:I

.field private mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

.field private mShortcutView:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

.field private mStartX:F

.field private mStartY:F

.field private mUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

.field private mUsingWakeUpCommand:Z

.field private mVoiceEngineThread:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

.field private mVoiceHelpTextView:Landroid/widget/TextView;

.field private mWakeUpCallback:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 74
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 230
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 231
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 234
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mDistance:D

    .line 104
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsFirst:Z

    .line 106
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->isIgnoreTouch:Z

    .line 115
    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    .line 116
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z

    .line 124
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsTouchExplorationEnabled:Z

    .line 126
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsAirViewEnabled:Z

    .line 128
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsHelpTextEnabled:Z

    .line 130
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsVoiceUnlockFailed:Z

    .line 132
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    .line 134
    const/16 v1, 0x12c

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->FADE_IN_OUT_ANIMATION_DURATION:I

    .line 137
    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mEcaView:Landroid/widget/LinearLayout;

    .line 138
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsCoverLockEnabled:Z

    .line 146
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mWakeUpCallback:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;

    .line 189
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mClearCoverOpened:Z

    .line 191
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 216
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mHandler:Landroid/os/Handler;

    .line 742
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mResumedTimeMillis:J

    .line 812
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$14;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$14;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mHelpTextCallback:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

    .line 235
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 237
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mAudioManager:Landroid/media/AudioManager;

    .line 239
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->setFocusable(Z)V

    .line 240
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->setFocusableInTouchMode(Z)V

    .line 241
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->requestFocus()Z

    .line 243
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mFirstBorder:I

    .line 245
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mSecondBorder:I

    .line 249
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenWallpaper;->isFlipboardWallpaper(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsCoverLockEnabled:Z

    .line 251
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsTouchExplorationEnabled:Z

    if-nez v1, :cond_ad

    .line 252
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "touch_exploration_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 255
    .local v0, "exploreByTouchMode":I
    if-ne v0, v5, :cond_d7

    .line 256
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsTouchExplorationEnabled:Z

    .line 257
    const-string v1, "SecuritySelectorView"

    const-string v2, "explore by touch mode on"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .end local v0    # "exploreByTouchMode":I
    :cond_ad
    :goto_ad
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$4;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContentObserver:Landroid/database/ContentObserver;

    .line 274
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "touch_exploration_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 277
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 278
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 280
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->checkWakeUpCommandCondition()V

    .line 281
    return-void

    .line 259
    .restart local v0    # "exploreByTouchMode":I
    :cond_d7
    const-string v1, "SecuritySelectorView"

    const-string v2, "explore by touch mode off"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ad
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsHelpTextEnabled:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->handleChangeTouchExploration()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsVoiceUnlockFailed:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsVoiceUnlockFailed:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->refreshDefaultHelpText()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mDefaultHelpText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mDefaultHelpText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Landroid/view/animation/AlphaAnimation;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mVoiceHelpTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mClearCoverOpened:Z

    return p1
.end method

.method private checkWakeUpCommandCondition()V
    .registers 14

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 301
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "wake_up_lock_screen"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v9, :cond_7d

    move v5, v9

    .line 303
    .local v5, "isMultipleWakeUpOn":Z
    :goto_11
    if-eqz v5, :cond_27

    .line 305
    :try_start_13
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.vlingo.midas"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 307
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    iget-boolean v10, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v10, :cond_7f

    .line 308
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_27} :catch_83

    .line 318
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_27
    :goto_27
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z

    if-eqz v10, :cond_3e

    .line 321
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "easy_mode_switch"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v9, :cond_8e

    move v4, v8

    .line 323
    .local v4, "isEasyUxOn":Z
    :goto_3a
    if-eqz v4, :cond_3e

    .line 324
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z

    .line 328
    .end local v4    # "isEasyUxOn":Z
    :cond_3e
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z

    if-eqz v10, :cond_5a

    .line 329
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "enabled_accessibility_services"

    invoke-static {v10, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "accesibilityService":Ljava/lang/String;
    if-eqz v0, :cond_5a

    .line 332
    const-string v10, "(?i).*talkback.*"

    invoke-virtual {v0, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    .line 333
    .local v6, "talkbackEnabled":Z
    if-eqz v6, :cond_5a

    .line 334
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z

    .line 339
    .end local v0    # "accesibilityService":Ljava/lang/String;
    .end local v6    # "talkbackEnabled":Z
    :cond_5a
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z

    if-eqz v10, :cond_7c

    .line 340
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "driving_mode_on"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 342
    .local v1, "drivingMode":I
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "driving_mode_unlock_screen_contents"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 345
    .local v7, "unlockDrivingMode":I
    if-ne v1, v9, :cond_7c

    if-ne v7, v9, :cond_7c

    .line 346
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z

    .line 349
    .end local v1    # "drivingMode":I
    .end local v7    # "unlockDrivingMode":I
    :cond_7c
    return-void

    .end local v5    # "isMultipleWakeUpOn":Z
    :cond_7d
    move v5, v8

    .line 301
    goto :goto_11

    .line 310
    .restart local v3    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "isMultipleWakeUpOn":Z
    :cond_7f
    const/4 v10, 0x0

    :try_start_80
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z
    :try_end_82
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_80 .. :try_end_82} :catch_83

    goto :goto_27

    .line 312
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_83
    move-exception v2

    .line 313
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z

    .line 314
    const-string v10, "SecuritySelectorView"

    const-string v11, "package not found"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_8e
    move v4, v9

    .line 321
    goto :goto_3a
.end method

.method private handleChangeTouchExploration()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 284
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "touch_exploration_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 286
    .local v0, "exploreByTouchMode":I
    if-ne v0, v4, :cond_41

    .line 287
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsTouchExplorationEnabled:Z

    .line 288
    const-string v1, "SecuritySelectorView"

    const-string v2, "[handleChangeTouchExploration]explore by touch mode on"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :goto_19
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->checkWakeUpCommandCondition()V

    .line 294
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->refreshDefaultHelpText()V

    .line 295
    const-string v1, "SecuritySelectorView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[handleChangeTouchExploration] mDefaultHelpText = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mDefaultHelpText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mDefaultHelpText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    return-void

    .line 290
    :cond_41
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsTouchExplorationEnabled:Z

    .line 291
    const-string v1, "SecuritySelectorView"

    const-string v2, "[handleChangeTouchExploration]explore by touch mode off"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19
.end method

.method private isActiveStreamExist()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 768
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isFMActive()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 769
    const-string v1, "SecuritySelectorView"

    const-string v2, "FM is active"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :goto_10
    return v0

    .line 771
    :cond_11
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 772
    const-string v1, "SecuritySelectorView"

    const-string v2, "Music is active"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 774
    :cond_21
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 775
    const-string v1, "SecuritySelectorView"

    const-string v2, "Recording is active"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 778
    :cond_31
    const-string v0, "SecuritySelectorView"

    const-string v1, "No active stream"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private pokeWakelockWithTimeCheck()V
    .registers 12

    .prologue
    const-wide/16 v9, 0x7530

    const-wide/16 v7, 0x4e20

    .line 749
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 750
    .local v2, "now":J
    iget-wide v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mResumedTimeMillis:J

    sub-long v0, v2, v4

    .line 751
    .local v0, "diff":J
    const-string v4, "SecuritySelectorView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pokeWakelockWithTimeCheck time diffence = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    cmp-long v4, v0, v7

    if-gtz v4, :cond_37

    .line 754
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v5, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 755
    const-string v4, "SecuritySelectorView"

    const-string v5, "pokeWakelockWithTimeCheck mCallback.pokeWakelock(AWAKE_INTERVAL_DEFAULT_MS)"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :goto_36
    return-void

    .line 757
    :cond_37
    cmp-long v4, v0, v7

    if-lez v4, :cond_69

    cmp-long v4, v0, v9

    if-gez v4, :cond_69

    .line 758
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    long-to-int v5, v0

    rsub-int v5, v5, 0x7530

    int-to-long v5, v5

    invoke-interface {v4, v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 759
    const-string v4, "SecuritySelectorView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pokeWakelockWithTimeCheck mCallback.pokeWakelock("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v9, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 763
    :cond_69
    const-string v4, "SecuritySelectorView"

    const-string v5, "pokeWakelockWithTimeCheck do nothing"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36
.end method

.method private refreshDefaultHelpText()V
    .registers 3

    .prologue
    const v1, 0x1040812

    .line 578
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z

    if-eqz v0, :cond_14

    .line 579
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mDefaultHelpText:Ljava/lang/String;

    .line 590
    :goto_13
    return-void

    .line 582
    :cond_14
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsTouchExplorationEnabled:Z

    if-nez v0, :cond_25

    .line 583
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_13

    .line 586
    :cond_25
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040813

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_13
.end method

.method private sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "sysfs"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 783
    const/4 v2, 0x0

    .line 787
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_c} :catch_19
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_1e

    .line 793
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_c
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 794
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_16} :catch_2b

    .line 805
    const/4 v4, 0x1

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_18
    return v4

    .line 788
    :catch_19
    move-exception v0

    .line 789
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_18

    .line 795
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1e
    move-exception v0

    .line 796
    .local v0, "e":Ljava/io/IOException;
    :goto_1f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 798
    :try_start_22
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_18

    .line 799
    :catch_26
    move-exception v1

    .line 800
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    .line 795
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_2b
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_1f
.end method


# virtual methods
.method doTransition(Landroid/view/View;F)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "to"    # F

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_9

    .line 647
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 649
    :cond_9
    const-string v0, "alpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mAnim:Landroid/animation/ObjectAnimator;

    .line 650
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 651
    return-void
.end method

.method public getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .registers 2

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public hideBouncer(I)V
    .registers 6
    .param p1, "duration"    # I

    .prologue
    const/4 v3, 0x0

    .line 725
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsBouncing:Z

    .line 726
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 728
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    if-eqz v0, :cond_15

    .line 729
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->setVisibility(I)V

    .line 731
    :cond_15
    return-void
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 670
    const/4 v0, 0x0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 561
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 563
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z

    if-eqz v0, :cond_10

    .line 564
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 567
    :cond_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 571
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    if-eqz v0, :cond_24

    .line 572
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->cleanUp()V

    .line 574
    :cond_24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mWakeUpCallback:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;

    .line 575
    return-void
.end method

.method protected onFinishInflate()V
    .registers 12

    .prologue
    const/16 v10, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 454
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    .line 456
    const v5, 0x10203ca

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    .line 457
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x1040812

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mDefaultHelpText:Ljava/lang/String;

    .line 458
    const v5, 0x10203dd

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mVoiceHelpTextView:Landroid/widget/TextView;

    .line 461
    const v5, 0x1020359

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mEcaView:Landroid/widget/LinearLayout;

    .line 462
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mEcaView:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_5b

    .line 463
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenWallpaper;->isFlipboardWallpaper(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 464
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mEcaView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 465
    .local v3, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v3, :cond_5b

    .line 466
    const/16 v5, 0x1f4

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 467
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mEcaView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 472
    .end local v3    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5b
    const v5, 0x10202a2

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    .line 473
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    if-eqz v5, :cond_78

    .line 474
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-virtual {v5, v8}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V

    .line 475
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mHelpTextCallback:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

    invoke-virtual {v5, v8}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->setHelpTextCallback(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$HelpTextCallback;)V

    .line 478
    :cond_78
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->refreshDefaultHelpText()V

    .line 480
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mDefaultHelpText:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "easy_mode_switch"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_16f

    move v2, v7

    .line 487
    .local v2, "isEasyUxOn":Z
    :goto_91
    if-eqz v2, :cond_9a

    .line 489
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    const/high16 v8, 0x41b80000

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 492
    :cond_9a
    if-nez v2, :cond_ac

    .line 493
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mWakeUpCallback:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;

    invoke-direct {v5, v8, v9}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    .line 494
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->start()V

    .line 497
    :cond_ac
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "unlock_text"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_172

    move v5, v6

    :goto_bb
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsHelpTextEnabled:Z

    .line 499
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsHelpTextEnabled:Z

    if-eqz v5, :cond_175

    .line 500
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 501
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    new-instance v8, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$7;

    invoke-direct {v8, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$7;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 506
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    new-instance v8, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$8;

    invoke-direct {v8, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$8;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 512
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mVoiceHelpTextView:Landroid/widget/TextView;

    new-instance v8, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$9;

    invoke-direct {v8, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$9;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 517
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mVoiceHelpTextView:Landroid/widget/TextView;

    new-instance v8, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$10;

    invoke-direct {v8, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$10;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 526
    :goto_ee
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    .line 527
    const v5, 0x10203dc

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mBouncerFrameView:Landroid/widget/LinearLayout;

    .line 528
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mBouncerFrameView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 531
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v5

    if-eqz v5, :cond_11f

    .line 532
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v5

    if-eqz v5, :cond_11f

    .line 533
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 539
    :cond_11f
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "finger_air_view"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_17c

    :goto_12d
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsAirViewEnabled:Z

    .line 541
    const-string v5, "SecuritySelectorView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mIsAirViewEnabled ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsAirViewEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z

    if-eqz v5, :cond_16e

    .line 545
    :try_start_14d
    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    .line 547
    .local v4, "wm":Landroid/view/IWindowManager;
    invoke-interface {v4}, Landroid/view/IWindowManager;->isCoverOpen()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mClearCoverOpened:Z
    :try_end_15d
    .catch Landroid/os/RemoteException; {:try_start_14d .. :try_end_15d} :catch_17e

    .line 553
    .end local v4    # "wm":Landroid/view/IWindowManager;
    :goto_15d
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 554
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v5, "com.samsung.cover.OPEN"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 555
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 557
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_16e
    return-void

    .end local v2    # "isEasyUxOn":Z
    :cond_16f
    move v2, v6

    .line 484
    goto/16 :goto_91

    .restart local v2    # "isEasyUxOn":Z
    :cond_172
    move v5, v7

    .line 497
    goto/16 :goto_bb

    .line 523
    :cond_175
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_ee

    :cond_17c
    move v6, v7

    .line 539
    goto :goto_12d

    .line 548
    :catch_17e
    move-exception v0

    .line 549
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "SecuritySelectorView"

    const-string v6, "IWindowManager RemoteException"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15d
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 735
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsFirst:Z

    if-nez v0, :cond_6

    .line 736
    const/4 v0, 0x1

    .line 739
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->handleHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_5
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 675
    return-void
.end method

.method public onResume(I)V
    .registers 5
    .param p1, "reason"    # I

    .prologue
    const/4 v2, 0x1

    .line 679
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsVoiceUnlockFailed:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mClearCoverOpened:Z

    if-eqz v0, :cond_12

    .line 680
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->onResume()V

    .line 682
    :cond_12
    if-ne p1, v2, :cond_1c

    .line 683
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mResumedTimeMillis:J

    .line 684
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsFirst:Z

    .line 686
    :cond_1c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/high16 v10, 0x4000000000000000L

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 354
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 355
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 449
    :goto_19
    return v4

    .line 360
    :cond_1a
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsFirst:Z

    if-nez v6, :cond_20

    move v4, v5

    .line 361
    goto :goto_19

    .line 364
    :cond_20
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->isIgnoreTouch:Z

    if-eqz v6, :cond_33

    .line 365
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v5, :cond_2c

    .line 366
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->isIgnoreTouch:Z

    .line 368
    :cond_2c
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    invoke-interface {v4, v9, p1}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_19

    .line 371
    :cond_33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 372
    .local v2, "touchedEventX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 374
    .local v3, "touchedEventY":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_13e

    .line 449
    :cond_42
    :goto_42
    :pswitch_42
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    invoke-interface {v4, v9, p1}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_19

    .line 376
    :pswitch_49
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsCoverLockEnabled:Z

    if-eqz v5, :cond_56

    .line 377
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->handleTouchDown(Landroid/view/MotionEvent;)V

    .line 379
    :cond_56
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mStartX:F

    .line 380
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mStartY:F

    .line 381
    iput-wide v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mDistance:D

    .line 382
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->doTransition(Landroid/view/View;F)V

    .line 385
    :pswitch_62
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    if-eqz v5, :cond_69

    .line 386
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->pokeWakelockWithTimeCheck()V

    .line 390
    :cond_69
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mStartX:F

    sub-float v5, v2, v5

    float-to-int v0, v5

    .line 391
    .local v0, "diffX":I
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mStartY:F

    sub-float v5, v3, v5

    float-to-int v1, v5

    .line 393
    .local v1, "diffY":I
    int-to-double v5, v0

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    int-to-double v7, v1

    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mDistance:D

    .line 394
    sget-boolean v5, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->DEBUG:Z

    if-eqz v5, :cond_a2

    .line 395
    const-string v5, "SecuritySelectorView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_MOVE mDistance: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mDistance:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_a2
    iget-wide v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mDistance:D

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mSecondBorder:I

    int-to-double v7, v7

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_42

    .line 398
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsFirst:Z

    .line 399
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    invoke-interface {v4, v9, p1}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 400
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    if-eqz v4, :cond_42

    .line 401
    new-instance v4, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$5;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$5;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->getUnlockDelay()J

    move-result-wide v5

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_42

    .line 414
    .end local v0    # "diffX":I
    .end local v1    # "diffY":I
    :pswitch_c6
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->isIgnoreTouch:Z

    .line 416
    :pswitch_c8
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    const/high16 v5, 0x3f800000

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->doTransition(Landroid/view/View;F)V

    .line 417
    iput-wide v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mDistance:D

    goto/16 :goto_42

    .line 420
    :pswitch_d3
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsCoverLockEnabled:Z

    if-eqz v6, :cond_ec

    .line 421
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->handleTouchUp(Landroid/view/MotionEvent;)Z

    move-result v6

    if-ne v6, v5, :cond_ec

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    if-eqz v5, :cond_ec

    .line 422
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v5, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 425
    :cond_ec
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    const/high16 v6, 0x3f800000

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->doTransition(Landroid/view/View;F)V

    .line 426
    sget-boolean v5, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->DEBUG:Z

    if-eqz v5, :cond_111

    .line 427
    const-string v5, "SecuritySelectorView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_UP mDistance: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mDistance:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_111
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mFirstBorder:I

    int-to-double v5, v5

    iget-wide v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mDistance:D

    cmpg-double v5, v5, v7

    if-gez v5, :cond_42

    iget-wide v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mDistance:D

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mSecondBorder:I

    int-to-double v7, v7

    cmpg-double v5, v5, v7

    if-gez v5, :cond_42

    .line 430
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsFirst:Z

    .line 431
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    invoke-interface {v4, v9, p1}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 432
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    if-eqz v4, :cond_42

    .line 433
    new-instance v4, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$6;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$6;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->getUnlockDelay()J

    move-result-wide v5

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_42

    .line 374
    :pswitch_data_13e
    .packed-switch 0x0
        :pswitch_49
        :pswitch_d3
        :pswitch_62
        :pswitch_c8
        :pswitch_42
        :pswitch_42
        :pswitch_c6
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .registers 5
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 690
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 691
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->DEBUG:Z

    if-eqz v0, :cond_23

    const-string v1, "SecuritySelectorView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Window is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_37

    const-string v0, "focused"

    :goto_18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_23
    if-eqz p1, :cond_3a

    .line 696
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    if-eqz v0, :cond_36

    .line 697
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsVoiceUnlockFailed:Z

    if-nez v0, :cond_36

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mClearCoverOpened:Z

    if-eqz v0, :cond_36

    .line 698
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->onResume()V

    .line 706
    :cond_36
    :goto_36
    return-void

    .line 691
    :cond_37
    const-string v0, "unfocused"

    goto :goto_18

    .line 702
    :cond_3a
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    if-eqz v0, :cond_36

    .line 703
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardVoiceEngineThread;->onPause()V

    goto :goto_36
.end method

.method public reset()V
    .registers 1

    .prologue
    .line 666
    return-void
.end method

.method public setCarrierArea(Landroid/view/View;)V
    .registers 4
    .param p1, "carrierArea"    # Landroid/view/View;

    .prologue
    .line 593
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    .line 594
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    if-eqz v0, :cond_1a

    .line 595
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$11;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$11;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 600
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$12;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$12;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 606
    :cond_1a
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 654
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 655
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    if-eqz v0, :cond_b

    .line 656
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V

    .line 658
    :cond_b
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 2
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 661
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 662
    return-void
.end method

.method public showBouncer(I)V
    .registers 5
    .param p1, "duration"    # I

    .prologue
    .line 715
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mIsBouncing:Z

    .line 716
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 718
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    if-eqz v0, :cond_17

    .line 719
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->setVisibility(I)V

    .line 721
    :cond_17
    return-void
.end method

.method public showUsabilityHint()V
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 611
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 612
    .local v3, "outRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 613
    const-string v5, "SecuritySelectorView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "outRect: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    const-wide/16 v6, 0xfa

    invoke-interface {v5, v6, v7, v3}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    .line 616
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "easy_mode_switch"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_57

    .line 619
    .local v1, "isEasyUxOn":Z
    :goto_37
    if-eqz v1, :cond_56

    .line 621
    const v4, 0x10203de

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 622
    .local v2, "mBounserView":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    const v5, 0x10a0031

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 624
    .local v0, "AniFadeOut":Landroid/view/animation/Animation;
    new-instance v4, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$13;

    invoke-direct {v4, p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$13;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 640
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 643
    .end local v0    # "AniFadeOut":Landroid/view/animation/Animation;
    .end local v2    # "mBounserView":Landroid/widget/ImageView;
    :cond_56
    return-void

    .end local v1    # "isEasyUxOn":Z
    :cond_57
    move v1, v4

    .line 616
    goto :goto_37
.end method
