.class public Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;
.super Landroid/widget/LinearLayout;
.source "KeyguardPatternView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$12;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MIN_PATTERN_BEFORE_POKE_WAKELOCK:I = 0x2

.field private static final PATTERN_CLEAR_TIMEOUT_MS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "SecurityPatternView"

.field private static final UNLOCK_PATTERN_WAKE_INTERVAL_FIRST_DOTS_MS:I = 0x7d0

.field private static final UNLOCK_PATTERN_WAKE_INTERVAL_MS:I = 0x1b58


# instance fields
.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mCancelPatternRunnable:Ljava/lang/Runnable;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mEcaView:Landroid/view/View;

.field private mEmergencyButton:Landroid/widget/Button;

.field private mEmergencyCircleText:Landroid/widget/TextView;

.field private mEmergencyCircleView:Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;

.field private mEmergencyFrame:Landroid/widget/FrameLayout;

.field private mEnableFallback:Z

.field private mFailedPatternAttemptsSinceLastTimeout:I

.field private mForgotPatternButton:Landroid/widget/Button;

.field private mHandGripChangeObserver:Landroid/database/ContentObserver;

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsFlatMode:Z

.field private mIsPassInputEventToEffectView:Z

.field private mLastPokeTime:J

.field private mLeftArrowImage:Landroid/widget/ImageView;

.field private mLeftPressed:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mOnehandAnyScreenObserver:Landroid/database/ContentObserver;

.field private mOnehandClickLitener:Landroid/view/View$OnClickListener;

.field private mOnehandLockPattern:Landroid/widget/LinearLayout;

.field private mRegisterFlatListener:Z

.field private mRightArrowImage:Landroid/widget/ImageView;

.field private mRootLayout:Landroid/widget/FrameLayout;

.field private mSContextListener:Landroid/hardware/scontext/SContextListener;

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

.field private mSpareKeyButton:Landroid/widget/Button;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTotalFailedPatternAttempts:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 210
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 213
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mFailedPatternAttemptsSinceLastTimeout:I

    .line 98
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I

    .line 99
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 122
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 123
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mIsFlatMode:Z

    .line 124
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mRegisterFlatListener:Z

    .line 127
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mIsPassInputEventToEffectView:Z

    .line 135
    const-wide/16 v1, -0x1b58

    iput-wide v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLastPokeTime:J

    .line 140
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;

    .line 145
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    .line 150
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mHandGripChangeObserver:Landroid/database/ContentObserver;

    .line 166
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$3;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mOnehandAnyScreenObserver:Landroid/database/ContentObserver;

    .line 665
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$9;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$9;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 741
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$10;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$10;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mOnehandClickLitener:Landroid/view/View$OnClickListener;

    .line 888
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$11;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$11;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    .line 217
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_ripple_effect"

    const/4 v3, -0x2

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 220
    .local v0, "unlockEffect":I
    if-ne v0, v4, :cond_64

    .line 221
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mIsPassInputEventToEffectView:Z

    .line 224
    :cond_64
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenWallpaper;->isFlipboardWallpaper(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 225
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mIsPassInputEventToEffectView:Z

    .line 226
    :cond_6e
    return-void
.end method

.method private UnregisterFlatMotionListener()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 870
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.feature.sensorhub"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->getHandAdaptableOperationValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4b

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mRegisterFlatListener:Z

    if-eqz v3, :cond_4b

    .line 872
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mRegisterFlatListener:Z

    .line 873
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-nez v3, :cond_2c

    .line 874
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    const-string v4, "scontext"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/scontext/SContextManager;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 877
    :cond_2c
    :try_start_2c
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v5, 0x14

    invoke-virtual {v3, v4, v5}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V
    :try_end_35
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2c .. :try_end_35} :catch_4c

    .line 881
    :goto_35
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    const-string v4, "pref"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 882
    .local v2, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 883
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "flatlisten"

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mRegisterFlatListener:Z

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 884
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 886
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "pref":Landroid/content/SharedPreferences;
    :cond_4b
    return-void

    .line 878
    :catch_4c
    move-exception v0

    .line 879
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "SecurityPatternView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receiver not registered : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->getHandAdaptableOperationValue()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->startHandAdaptableObserver()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyCircleView:Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    .prologue
    .line 80
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;
    .param p1, "x1"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I

    return p1
.end method

.method static synthetic access$1908(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    .prologue
    .line 80
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mIsFlatMode:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;
    .param p1, "x1"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mFailedPatternAttemptsSinceLastTimeout:I

    return p1
.end method

.method static synthetic access$2008(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    .prologue
    .line 80
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mFailedPatternAttemptsSinceLastTimeout:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mFailedPatternAttemptsSinceLastTimeout:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mIsFlatMode:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;J)V
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;
    .param p1, "x1"    # J

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->handleAttemptLockout(J)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEnableFallback:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEnableFallback:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->displayDefaultSecurityMessage()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;
    .param p1, "x1"    # Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mRootLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyCircleText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->getOneHandSwitchState()I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSpareKeyButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;
    .param p1, "x1"    # Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;
    .param p2, "x2"    # Z

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->movePatternLock(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLeftPressed:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLeftPressed:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->isOnehandMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->isOnehandAnyScreenMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->stopHandAdaptableObserver()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method private displayDefaultSecurityMessage()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 493
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getMaxBiometricUnlockAttemptsReached()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 494
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, 0x1040512

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 498
    :goto_15
    return-void

    .line 496
    :cond_16
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, 0x10408f0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_15
.end method

.method private getHandAdaptableOperationValue()I
    .registers 4

    .prologue
    .line 810
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hand_adaptable_operation"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getOneHandSwitchState()I
    .registers 4

    .prologue
    .line 805
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "onehand_switch_state"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private handleAttemptLockout(J)V
    .registers 11
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 632
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 633
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 634
    .local v6, "elapsedRealtime":J
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEnableFallback:Z

    if-eqz v0, :cond_18

    .line 635
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;->ForgotLockPattern:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;)V

    .line 638
    :cond_18
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$8;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$8;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;JJ)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$8;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 663
    return-void
.end method

.method private isOnehandAnyScreenMode()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 814
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "any_screen_running"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_11

    :goto_10
    return v0

    :cond_11
    move v0, v1

    goto :goto_10
.end method

.method private isOnehandMode()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 819
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 822
    :goto_a
    return v1

    :cond_b
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "onehand_pattern_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1b

    :goto_19
    move v1, v0

    goto :goto_a

    :cond_1b
    move v0, v1

    goto :goto_19
.end method

.method private maybeEnableFallback(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 578
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Landroid/accounts/AccountManager;Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$1;)V

    .line 579
    .local v0, "accountAnalyzer":Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;->start()V

    .line 580
    return-void
.end method

.method private movePatternLock(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;Z)V
    .registers 8
    .param p1, "mode"    # Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;
    .param p2, "bIsHandAdaptable"    # Z

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x3

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 762
    if-eqz p2, :cond_35

    .line 763
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_10

    .line 764
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 766
    :cond_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_19

    .line 767
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 769
    :cond_19
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;->Left:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;

    if-ne p1, v0, :cond_27

    .line 770
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_26

    .line 771
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 801
    :cond_26
    :goto_26
    return-void

    .line 773
    :cond_27
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;->Right:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;

    if-ne p1, v0, :cond_26

    .line 774
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_26

    .line 775
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_26

    .line 779
    :cond_35
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;->Left:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;

    if-ne p1, v0, :cond_55

    .line 780
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_42

    .line 781
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 783
    :cond_42
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_4b

    .line 784
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 786
    :cond_4b
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_26

    .line 787
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_26

    .line 789
    :cond_55
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;->Right:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;

    if-ne p1, v0, :cond_26

    .line 790
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_62

    .line 791
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 793
    :cond_62
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_6b

    .line 794
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 796
    :cond_6b
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_26

    .line 797
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_26
.end method

.method private registerFlatMotionListener()V
    .registers 7

    .prologue
    const/16 v5, 0x14

    const/4 v4, 0x1

    .line 852
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.sensorhub"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->getHandAdaptableOperationValue()I

    move-result v2

    if-ne v2, v4, :cond_5a

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mRegisterFlatListener:Z

    if-nez v2, :cond_5a

    .line 854
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mRegisterFlatListener:Z

    .line 855
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-nez v2, :cond_2d

    .line 856
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    const-string v3, "scontext"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/scontext/SContextManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 858
    :cond_2d
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    invoke-virtual {v2, v5}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 859
    const-string v2, "SecurityPatternView"

    const-string v3, "registerFlatMotionListener - notAvailable"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :cond_3c
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    invoke-virtual {v2, v3, v5}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    .line 862
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    const-string v3, "pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 863
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 864
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "flatlisten"

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mRegisterFlatListener:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 865
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 867
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "pref":Landroid/content/SharedPreferences;
    :cond_5a
    return-void
.end method

.method private startHandAdaptableObserver()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 826
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->isOnehandMode()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->getHandAdaptableOperationValue()I

    move-result v1

    if-ne v1, v4, :cond_42

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->isOnehandAnyScreenMode()Z

    move-result v1

    if-nez v1, :cond_42

    .line 827
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 828
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 829
    const-string v1, "SSRM_STATUS_NAME"

    const-string v2, "Lockscreen_patternLock"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 830
    const-string v1, "SSRM_STATUS_VALUE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 831
    const-string v1, "PackageName"

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 832
    const-string v1, "PID"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 833
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 835
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_42
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "onehand_switch_state"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mHandGripChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 836
    return-void
.end method

.method private stopHandAdaptableObserver()V
    .registers 4

    .prologue
    .line 839
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->isOnehandMode()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->getHandAdaptableOperationValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_43

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->isOnehandAnyScreenMode()Z

    move-result v1

    if-nez v1, :cond_43

    .line 840
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 841
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 842
    const-string v1, "SSRM_STATUS_NAME"

    const-string v2, "Lockscreen_patternLock"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 843
    const-string v1, "SSRM_STATUS_VALUE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 844
    const-string v1, "PackageName"

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 845
    const-string v1, "PID"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 846
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 848
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_43
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mHandGripChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 849
    return-void
.end method

.method private updateFooter(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;)V
    .registers 9
    .param p1, "mode"    # Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/16 v2, 0x8

    const/4 v5, 0x0

    .line 360
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    if-nez v0, :cond_a

    .line 421
    :cond_9
    :goto_9
    return-void

    .line 361
    :cond_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSpareKeyButton:Landroid/widget/Button;

    if-eqz v0, :cond_9

    .line 364
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mRootLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_44

    .line 365
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v6

    .line 366
    .local v6, "phoneState":I
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyCircleText:Landroid/widget/TextView;

    if-eqz v0, :cond_44

    const/4 v0, 0x2

    if-ne v6, v0, :cond_44

    .line 367
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;->ForgotLockPattern:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;

    if-eq p1, v0, :cond_44

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;->SpareKey:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;

    if-eq p1, v0, :cond_44

    .line 368
    const-string v0, "SecurityPatternView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFooter return, mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 374
    .end local v6    # "phoneState":I
    :cond_44
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$12;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardPatternView$FooterMode:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_10c

    goto :goto_9

    .line 377
    :pswitch_50
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSpareKeyButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mRootLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyCircleText:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyButton:Landroid/widget/Button;

    if-eqz v0, :cond_9

    .line 381
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyCircleText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_9

    .line 387
    :pswitch_71
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 388
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->savedBackupPinExists()Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 389
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSpareKeyButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 394
    :goto_83
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mRootLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyCircleText:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyButton:Landroid/widget/Button;

    if-eqz v0, :cond_9

    .line 395
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyCircleText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v2

    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->USE_UPPER_CASE:Z

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;IZZZ)V

    goto/16 :goto_9

    .line 391
    :cond_ae
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSpareKeyButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_83

    .line 402
    :pswitch_b4
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSpareKeyButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mRootLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyCircleText:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyButton:Landroid/widget/Button;

    if-eqz v0, :cond_9

    .line 406
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyCircleText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 408
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v2

    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->USE_UPPER_CASE:Z

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;IZZZ)V

    goto/16 :goto_9

    .line 413
    :pswitch_e9
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 414
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSpareKeyButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 416
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mRootLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyCircleText:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyButton:Landroid/widget/Button;

    if-eqz v0, :cond_9

    .line 417
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyCircleText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 418
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_9

    .line 374
    nop

    :pswitch_data_10c
    .packed-switch 0x1
        :pswitch_50
        :pswitch_71
        :pswitch_b4
        :pswitch_e9
    .end packed-switch
.end method


# virtual methods
.method public cleanUp()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 507
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 508
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 509
    return-void
.end method

.method public getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .registers 2

    .prologue
    .line 726
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public hideBouncer(I)V
    .registers 5
    .param p1, "duration"    # I

    .prologue
    .line 737
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 739
    return-void
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 686
    const/4 v0, 0x0

    return v0
.end method

.method public onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 717
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->isOnehandMode()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 718
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->UnregisterFlatMotionListener()V

    .line 719
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->stopHandAdaptableObserver()V

    .line 720
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mOnehandAnyScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 722
    :cond_17
    return-void
.end method

.method protected onFinishInflate()V
    .registers 9

    .prologue
    const/4 v7, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 238
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 239
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v2, :cond_1b2

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    :goto_11
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 242
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v5, "input_method"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 244
    const v2, 0x10203b7

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/LockPatternView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 245
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternView;->setSaveEnabled(Z)V

    .line 246
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternView;->setFocusable(Z)V

    .line 247
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$1;)V

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 250
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v2

    if-nez v2, :cond_1b6

    move v2, v3

    :goto_4c
    invoke-virtual {v5, v2}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 253
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 256
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mIsPassInputEventToEffectView:Z

    if-eqz v2, :cond_68

    .line 257
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$4;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)V

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/LockPatternView;->setOnTouchEventHandlerForKeyguardEffect(Lcom/android/internal/widget/LockPatternView$OnTouchEventHandlerForKeyguardEffect;)V

    .line 265
    :cond_68
    const v2, 0x1020367

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    .line 266
    const v2, 0x1020368

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSpareKeyButton:Landroid/widget/Button;

    .line 269
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    if-eqz v2, :cond_94

    .line 270
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    const v5, 0x10408e9

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(I)V

    .line 271
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$5;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$5;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    :cond_94
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSpareKeyButton:Landroid/widget/Button;

    if-eqz v2, :cond_aa

    .line 279
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSpareKeyButton:Landroid/widget/Button;

    const v5, 0x10408ea

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(I)V

    .line 280
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSpareKeyButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$6;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$6;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    :cond_aa
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->setFocusableInTouchMode(Z)V

    .line 289
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->maybeEnableFallback(Landroid/content/Context;)V

    .line 290
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    .line 291
    const v2, 0x1020359

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    .line 292
    const v2, 0x1020357

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 293
    .local v0, "bouncerFrameView":Landroid/view/View;
    if-eqz v0, :cond_d1

    .line 294
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 298
    :cond_d1
    const v2, 0x10202a1

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mRootLayout:Landroid/widget/FrameLayout;

    .line 299
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mRootLayout:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_118

    .line 300
    const v2, 0x10202a0

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyCircleText:Landroid/widget/TextView;

    .line 301
    const v2, 0x1020366

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyButton:Landroid/widget/Button;

    .line 302
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyCircleText:Landroid/widget/TextView;

    if-eqz v2, :cond_118

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyButton:Landroid/widget/Button;

    if-eqz v2, :cond_118

    .line 303
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyCircleView:Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;

    .line 304
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mRootLayout:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyCircleView:Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;

    invoke-virtual {v2, v5, v7, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 305
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyCircleText:Landroid/widget/TextView;

    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$7;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$7;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 314
    :cond_118
    const v2, 0x10202a4

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyFrame:Landroid/widget/FrameLayout;

    .line 315
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyFrame:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_136

    .line 316
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v2

    if-nez v2, :cond_136

    .line 317
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyFrame:Landroid/widget/FrameLayout;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 322
    :cond_136
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->isOnehandMode()Z

    move-result v2

    if-eqz v2, :cond_1b1

    .line 323
    const v2, 0x10203b9

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/widget/LinearLayout;

    .line 324
    const v2, 0x10203ba

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageView;

    .line 325
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageView;

    if-eqz v2, :cond_15d

    .line 326
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mOnehandClickLitener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    :cond_15d
    const v2, 0x10203bb

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageView;

    .line 329
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageView;

    if-eqz v2, :cond_173

    .line 330
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mOnehandClickLitener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    :cond_173
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->getHandAdaptableOperationValue()I

    move-result v2

    if-ne v2, v3, :cond_1bb

    .line 334
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "onehand_switch_state"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1b9

    move v2, v3

    :goto_188
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLeftPressed:Z

    .line 339
    :goto_18a
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    const-string v5, "pref"

    invoke-virtual {v2, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 340
    .local v1, "pref":Landroid/content/SharedPreferences;
    const-string v2, "flat"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mIsFlatMode:Z

    .line 341
    const-string v2, "flatlistener"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mRegisterFlatListener:Z

    .line 343
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->getHandAdaptableOperationValue()I

    move-result v2

    if-ne v2, v3, :cond_1d5

    .line 344
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLeftPressed:Z

    if-eqz v2, :cond_1cf

    .line 345
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;->Left:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->movePatternLock(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;Z)V

    .line 357
    .end local v1    # "pref":Landroid/content/SharedPreferences;
    :cond_1b1
    :goto_1b1
    return-void

    .line 239
    .end local v0    # "bouncerFrameView":Landroid/view/View;
    :cond_1b2
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    goto/16 :goto_11

    :cond_1b6
    move v2, v4

    .line 250
    goto/16 :goto_4c

    .restart local v0    # "bouncerFrameView":Landroid/view/View;
    :cond_1b9
    move v2, v4

    .line 334
    goto :goto_188

    .line 336
    :cond_1bb
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "onehand_operation_left_is_pressed"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1cd

    move v2, v3

    :goto_1ca
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLeftPressed:Z

    goto :goto_18a

    :cond_1cd
    move v2, v4

    goto :goto_1ca

    .line 347
    .restart local v1    # "pref":Landroid/content/SharedPreferences;
    :cond_1cf
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;->Right:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->movePatternLock(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;Z)V

    goto :goto_1b1

    .line 350
    :cond_1d5
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLeftPressed:Z

    if-eqz v2, :cond_1df

    .line 351
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;->Left:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;

    invoke-direct {p0, v2, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->movePatternLock(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;Z)V

    goto :goto_1b1

    .line 353
    :cond_1df
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;->Right:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;

    invoke-direct {p0, v2, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->movePatternLock(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$OneHandMode;Z)V

    goto :goto_1b1
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 691
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->isOnehandMode()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 692
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->stopHandAdaptableObserver()V

    .line 693
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->UnregisterFlatMotionListener()V

    .line 694
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mOnehandAnyScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 696
    :cond_17
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_23

    .line 697
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 698
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 700
    :cond_23
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 701
    return-void
.end method

.method public onResume(I)V
    .registers 6
    .param p1, "reason"    # I

    .prologue
    .line 705
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->isOnehandMode()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 706
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->startHandAdaptableObserver()V

    .line 707
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->registerFlatMotionListener()V

    .line 708
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "any_screen_running"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mOnehandAnyScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 710
    :cond_1e
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->reset()V

    .line 711
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 712
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 426
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mIsPassInputEventToEffectView:Z

    if-eqz v4, :cond_f

    .line 427
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, p1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 429
    :cond_f
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 432
    .local v2, "result":Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLastPokeTime:J

    sub-long v0, v4, v6

    .line 433
    .local v0, "elapsed":J
    if-eqz v2, :cond_29

    const-wide/16 v4, 0x1af4

    cmp-long v4, v0, v4

    if-lez v4, :cond_29

    .line 434
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLastPokeTime:J

    .line 436
    :cond_29
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 437
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 438
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 439
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v4, p1}, Lcom/android/internal/widget/LockPatternView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_4c

    if-eqz v2, :cond_5d

    :cond_4c
    const/4 v2, 0x1

    .line 440
    :goto_4d
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 441
    return v2

    :cond_5d
    move v2, v3

    .line 439
    goto :goto_4d
.end method

.method public onWindowFocusChanged(Z)V
    .registers 5
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 513
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 514
    const-string v1, "SecurityPatternView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Window is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_25

    const-string v0, "focused"

    :goto_14
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    if-eqz p1, :cond_24

    .line 517
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->reset()V

    .line 519
    :cond_24
    return-void

    .line 514
    :cond_25
    const-string v0, "unfocused"

    goto :goto_14
.end method

.method public reset()V
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x5

    .line 445
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v2, :cond_11

    .line 446
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 449
    :cond_11
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 450
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 451
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 454
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 455
    .local v0, "deadline":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_6d

    .line 456
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->handleAttemptLockout(J)V

    .line 461
    :goto_30
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->isOnehandAnyScreenMode()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 462
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageView;

    if-eqz v2, :cond_3f

    .line 463
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 465
    :cond_3f
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageView;

    if-eqz v2, :cond_48

    .line 466
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 468
    :cond_48
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_53

    .line 469
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/widget/LinearLayout;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 475
    :cond_53
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I

    .line 478
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->isVerifyUnlockOnly()Z

    move-result v2

    if-eqz v2, :cond_71

    .line 479
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;->VerifyUnlocked:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;)V

    .line 490
    :goto_6c
    return-void

    .line 458
    :cond_6d
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->displayDefaultSecurityMessage()V

    goto :goto_30

    .line 480
    :cond_71
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEnableFallback:Z

    if-eqz v2, :cond_7f

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I

    if-lt v2, v5, :cond_7f

    .line 482
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;->ForgotLockPattern:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;)V

    goto :goto_6c

    .line 483
    :cond_7f
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->savedBackupPinExists()Z

    move-result v2

    if-eqz v2, :cond_91

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I

    if-lt v2, v5, :cond_91

    .line 485
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;->SpareKey:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;)V

    goto :goto_6c

    .line 487
    :cond_91
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;->Normal:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;)V

    goto :goto_6c
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 230
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 2
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 234
    return-void
.end method

.method public showBouncer(I)V
    .registers 5
    .param p1, "duration"    # I

    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 733
    return-void
.end method

.method public showUsabilityHint()V
    .registers 1

    .prologue
    .line 502
    return-void
.end method
