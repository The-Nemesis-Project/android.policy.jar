.class public Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;
.super Ljava/lang/Object;
.source "KeyguardViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field static final DIGIT_PRESS_WAKE_MILLIS:I = 0x1388

.field public static final IS_SWITCHING_USER:Ljava/lang/String; = "is_switching_user"

.field private static TAG:Ljava/lang/String;

.field public static USE_UPPER_CASE:Z


# instance fields
.field private POST_DRAW_TIMEOUT:I

.field private mBlackCoverLayer:Landroid/view/View;

.field private mConfigChangeReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDelayedScreenOnRequested:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsHideBackgroundView:Z

.field private mKeyguardHost:Landroid/widget/FrameLayout;

.field private mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

.field private mKeyguardViewFrame:Landroid/widget/FrameLayout;

.field private mLastOrientation:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNeedsInput:Z

.field private mPostDrawTimeOut:Ljava/lang/Runnable;

.field private mPostDrawWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mScreenOn:Z

.field private mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

.field mStateContainer:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewManager:Landroid/view/ViewManager;

.field private final mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 71
    const-string v0, "KeyguardViewManager"

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->USE_UPPER_CASE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewManager;Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewManager"    # Landroid/view/ViewManager;
    .param p3, "callback"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;
    .param p4, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 164
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mNeedsInput:Z

    .line 89
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mScreenOn:Z

    .line 92
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mBlackCoverLayer:Landroid/view/View;

    .line 94
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mDelayedScreenOnRequested:Z

    .line 96
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mIsHideBackgroundView:Z

    .line 104
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, v5, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mHandler:Landroid/os/Handler;

    .line 105
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mLastOrientation:I

    .line 107
    const/16 v1, 0x1388

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->POST_DRAW_TIMEOUT:I

    .line 108
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mPostDrawTimeOut:Ljava/lang/Runnable;

    .line 120
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mConfigChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 288
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mStateContainer:Landroid/util/SparseArray;

    .line 165
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    .line 166
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    .line 167
    iput-object p3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    .line 168
    iput-object p4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 169
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 170
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "mPostDrawWakeLock"

    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mPostDrawWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 171
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mPostDrawWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 172
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-direct {v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    .line 173
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mPostDrawWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->shouldEnableScreenRotation()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardViewFrame:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mIsHideBackgroundView:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    .prologue
    .line 69
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mLastOrientation:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;ZZLandroid/os/Bundle;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->maybeCreateKeyguardLocked(ZZLandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->dumpStackTrack(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mDelayedScreenOnRequested:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mDelayedScreenOnRequested:Z

    return p1
.end method

.method private dumpStackTrack(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 14
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "depth"    # I

    .prologue
    .line 441
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 442
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 443
    .local v3, "elements":[Ljava/lang/StackTraceElement;
    add-int/lit8 v5, p3, 0x1

    array-length v6, v3

    if-ge v5, v6, :cond_55

    add-int/lit8 v0, p3, 0x1

    .line 444
    .local v0, "callDepth":I
    :goto_10
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_11
    if-ge v4, v0, :cond_57

    .line 445
    aget-object v2, v3, v4

    .line 446
    .local v2, "element":Ljava/lang/StackTraceElement;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%s.%s (%s:%s)"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 443
    .end local v0    # "callDepth":I
    .end local v2    # "element":Ljava/lang/StackTraceElement;
    .end local v4    # "i":I
    :cond_55
    array-length v0, v3

    goto :goto_10

    .line 448
    .restart local v0    # "callDepth":I
    .restart local v4    # "i":I
    :cond_57
    return-void
.end method

.method private inflateKeyguardView(Landroid/os/Bundle;)V
    .registers 14
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    const v11, 0x10203a4

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 451
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardViewFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v11}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 452
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_12

    .line 453
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardViewFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 458
    :cond_12
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 459
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x109007b

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardViewFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v7, v10, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 460
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    .line 461
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 462
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-virtual {v7, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->setViewMediatorCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;)V

    .line 463
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    if-eqz p1, :cond_a4

    const-string v7, "is_switching_user"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a4

    move v7, v8

    :goto_44
    invoke-virtual {v10, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->initializeSwitchingUserState(Z)V

    .line 477
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v7, :cond_62

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getSecurityView()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    move-result-object v7

    if-eqz v7, :cond_62

    .line 478
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getSecurityView()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->needsInput()Z

    move-result v8

    invoke-interface {v7, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->setNeedsInput(Z)V

    .line 480
    :cond_62
    if-eqz p1, :cond_71

    .line 481
    const-string v7, "showappwidget"

    invoke-virtual {p1, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 483
    .local v6, "widgetToShow":I
    if-eqz v6, :cond_71

    .line 484
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v7, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->goToWidget(I)V

    .line 487
    .end local v6    # "widgetToShow":I
    :cond_71
    const/4 v3, 0x0

    .line 488
    .local v3, "mNM":Landroid/app/NotificationManager;
    const/4 v0, 0x0

    .line 489
    .local v0, "MsgNotiInfo":Landroid/app/NotificationInfo;
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "mNM":Landroid/app/NotificationManager;
    check-cast v3, Landroid/app/NotificationManager;

    .line 490
    .restart local v3    # "mNM":Landroid/app/NotificationManager;
    if-eqz v3, :cond_87

    .line 491
    const-string v7, "com.android.mms"

    const/16 v8, 0x7b

    invoke-virtual {v3, v7, v8}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v0

    .line 492
    :cond_87
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v7

    if-eqz v7, :cond_a3

    if-eqz v0, :cond_a3

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->isShowingAndNotHidden()Z

    move-result v7

    if-eqz v7, :cond_a3

    .line 493
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.android.mms.intent.action.ACTION_NOTIFY_DATASET_CHANGED"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 494
    .local v2, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 496
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_a3
    return-void

    .end local v0    # "MsgNotiInfo":Landroid/app/NotificationInfo;
    .end local v3    # "mNM":Landroid/app/NotificationManager;
    :cond_a4
    move v7, v9

    .line 463
    goto :goto_44
.end method

.method private maybeCreateKeyguardLocked(ZZLandroid/os/Bundle;)V
    .registers 23
    .param p1, "enableScreenRotation"    # Z
    .param p2, "force"    # Z
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 292
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    instance-of v11, v3, Landroid/app/Activity;

    .line 294
    .local v11, "isActivity":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_17

    .line 295
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mStateContainer:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 298
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-nez v3, :cond_111

    .line 299
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v4, "keyguard host is null, creating it..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    .line 303
    const v6, 0x110d00

    .line 309
    .local v6, "flags":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mNeedsInput:Z

    if-nez v3, :cond_3f

    .line 310
    const/high16 v3, 0x20000

    or-int/2addr v6, v3

    .line 312
    :cond_3f
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 313
    const/high16 v3, 0x1000000

    or-int/2addr v6, v3

    .line 316
    :cond_48
    const/4 v15, -0x1

    .line 317
    .local v15, "stretch":I
    if-eqz v11, :cond_1bf

    const/4 v5, 0x2

    .line 319
    .local v5, "type":I
    :goto_4c
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v7, -0x3

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 321
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x10

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 322
    const v3, 0x10301e8

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 326
    if-eqz p1, :cond_1cb

    .line 327
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v4, "Rotation sensor for lock screen On!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->keyboard:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c3

    const/4 v8, 0x1

    .line 329
    .local v8, "UseQwertyKeypad":Z
    :goto_78
    if-eqz v8, :cond_1c6

    .line 330
    const/4 v3, 0x5

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 340
    .end local v8    # "UseQwertyKeypad":Z
    :goto_7d
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v3

    if-eqz v3, :cond_90

    .line 341
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x1000000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 342
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 345
    :cond_90
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 346
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v3, v3, 0x200

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 347
    if-eqz v11, :cond_a4

    .line 348
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 350
    :cond_a4
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 351
    const-wide/16 v3, 0x0

    iput-wide v3, v2, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 352
    if-eqz v11, :cond_1d7

    const-string v3, "KeyguardMock"

    :goto_b2
    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 353
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 354
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-interface {v3, v4, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->getBackgroundLayout()Landroid/widget/FrameLayout;

    move-result-object v4

    const/4 v7, -0x1

    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v3, v4, v7, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 359
    new-instance v3, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardViewFrame:Landroid/widget/FrameLayout;

    .line 360
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardViewFrame:Landroid/widget/FrameLayout;

    const/4 v7, -0x1

    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v3, v4, v7, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 362
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->getForegroundLayout()Landroid/widget/FrameLayout;

    move-result-object v4

    const/4 v7, -0x1

    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v3, v4, v7, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 377
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "type":I
    .end local v6    # "flags":I
    .end local v15    # "stretch":I
    :cond_111
    if-nez p2, :cond_119

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    if-nez v3, :cond_127

    .line 378
    :cond_119
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->inflateKeyguardView(Landroid/os/Bundle;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->requestFocus()Z

    .line 383
    :cond_127
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v9

    .line 384
    .local v9, "childViewCount":I
    const/16 v16, 0x0

    .line 385
    .local v16, "tmpView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v13, v3, Landroid/content/res/Configuration;->orientation:I

    .line 386
    .local v13, "orient":I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->shouldEnableScreenRotation()Z

    move-result v14

    .line 387
    .local v14, "rotationEnabled":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->isHidden()Z

    move-result v3

    if-nez v3, :cond_1db

    const/4 v12, 0x1

    .line 402
    .local v12, "isNotHidden":Z
    :goto_14e
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "maybeCreateKeyguardLocked() orient="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " rotationEnabled="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " isNotHidden="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v4, "   at "

    const/4 v7, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->dumpStackTrack(Ljava/lang/String;Ljava/lang/String;I)V

    .line 404
    if-nez v14, :cond_256

    .line 405
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_187
    if-ge v10, v9, :cond_205

    .line 406
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v10}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 407
    if-eqz v16, :cond_1bc

    .line 409
    const/4 v3, 0x1

    if-ne v13, v3, :cond_1de

    .line 410
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 411
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "maybeCreateKeyguardLocked() set view="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " VISIBLE in portrait mode"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_1bc
    :goto_1bc
    add-int/lit8 v10, v10, 0x1

    goto :goto_187

    .line 317
    .end local v9    # "childViewCount":I
    .end local v10    # "i":I
    .end local v12    # "isNotHidden":Z
    .end local v13    # "orient":I
    .end local v14    # "rotationEnabled":Z
    .end local v16    # "tmpView":Landroid/view/View;
    .restart local v6    # "flags":I
    .restart local v15    # "stretch":I
    :cond_1bf
    const/16 v5, 0x7d4

    goto/16 :goto_4c

    .line 328
    .restart local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v5    # "type":I
    :cond_1c3
    const/4 v8, 0x0

    goto/16 :goto_78

    .line 332
    .restart local v8    # "UseQwertyKeypad":Z
    :cond_1c6
    const/4 v3, 0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto/16 :goto_7d

    .line 335
    .end local v8    # "UseQwertyKeypad":Z
    :cond_1cb
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v4, "Rotation sensor for lock screen Off!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/4 v3, 0x1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto/16 :goto_7d

    .line 352
    :cond_1d7
    const-string v3, "Keyguard"

    goto/16 :goto_b2

    .line 387
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "type":I
    .end local v6    # "flags":I
    .end local v15    # "stretch":I
    .restart local v9    # "childViewCount":I
    .restart local v13    # "orient":I
    .restart local v14    # "rotationEnabled":Z
    .restart local v16    # "tmpView":Landroid/view/View;
    :cond_1db
    const/4 v12, 0x0

    goto/16 :goto_14e

    .line 413
    .restart local v10    # "i":I
    .restart local v12    # "isNotHidden":Z
    :cond_1de
    const/4 v3, 0x4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 414
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "maybeCreateKeyguardLocked() set view="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " INVISIBLE in landscape mode"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1bc

    .line 419
    :cond_205
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mLastOrientation:I

    .line 421
    const/4 v3, 0x1

    if-ne v13, v3, :cond_22f

    .line 423
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mDelayedScreenOnRequested:Z

    .line 434
    .end local v10    # "i":I
    :goto_211
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->updateUserActivityTimeoutInWindowLayoutParams()V

    .line 435
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v7}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 437
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mStateContainer:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 438
    return-void

    .line 425
    .restart local v10    # "i":I
    :cond_22f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mPostDrawWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 426
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mPostDrawTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 427
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mPostDrawTimeOut:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->POST_DRAW_TIMEOUT:I

    int-to-long v0, v7

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_211

    .line 430
    .end local v10    # "i":I
    :cond_256
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->wakeUpIfNeeded()V

    goto :goto_211
.end method

.method private maybeEnableScreenRotation(Z)V
    .registers 6
    .param p1, "enableScreenRotation"    # Z

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    .line 534
    if-eqz p1, :cond_31

    .line 535
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v2, "Rotation sensor for lock screen On!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    if-ne v1, v3, :cond_2a

    .line 538
    .local v0, "UseQwertyKeypad":Z
    :goto_19
    if-eqz v0, :cond_2c

    .line 539
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x5

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 547
    .end local v0    # "UseQwertyKeypad":Z
    :goto_20
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 548
    return-void

    .line 537
    :cond_2a
    const/4 v0, 0x0

    goto :goto_19

    .line 541
    .restart local v0    # "UseQwertyKeypad":Z
    :cond_2c
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_20

    .line 544
    .end local v0    # "UseQwertyKeypad":Z
    :cond_31
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v2, "Rotation sensor for lock screen Off!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_20
.end method

.method private shouldEnableScreenRotation()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 225
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 226
    .local v0, "res":Landroid/content/res/Resources;
    const-string v2, "lockscreen.rot_override"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_18

    const v2, 0x1110028

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_18
    const/4 v1, 0x1

    :cond_19
    return v1
.end method

.method private updateUserActivityTimeoutInWindowLayoutParams()V
    .registers 12

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const-wide/16 v7, 0x2710

    const-wide/16 v5, 0x1388

    .line 505
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    if-eqz v4, :cond_1f

    .line 506
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getUserActivityTimeout()J

    move-result-wide v1

    .line 507
    .local v1, "timeout":J
    const-wide/16 v9, 0x0

    cmp-long v4, v1, v9

    if-ltz v4, :cond_1f

    .line 508
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput-wide v1, v3, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 509
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput-wide v1, v3, Landroid/view/WindowManager$LayoutParams;->buttonLightTimeout:J

    .line 530
    .end local v1    # "timeout":J
    :goto_1e
    return-void

    .line 516
    :cond_1f
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v9, "intelligent_sleep_mode"

    invoke-static {v4, v9, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v0, :cond_4c

    .line 518
    .local v0, "isSmartStayOn":Z
    :goto_2d
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v3

    if-eqz v3, :cond_4e

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v3

    if-eqz v3, :cond_4e

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 519
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput-wide v7, v3, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 520
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput-wide v7, v3, Landroid/view/WindowManager$LayoutParams;->buttonLightTimeout:J

    goto :goto_1e

    .end local v0    # "isSmartStayOn":Z
    :cond_4c
    move v0, v3

    .line 516
    goto :goto_2d

    .line 521
    .restart local v0    # "isSmartStayOn":Z
    :cond_4e
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isDualLCDFolderDevice(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_67

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isFolderOpened(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_67

    .line 522
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput-wide v5, v3, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 523
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput-wide v5, v3, Landroid/view/WindowManager$LayoutParams;->buttonLightTimeout:J

    goto :goto_1e

    .line 525
    :cond_67
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_75

    move-wide v3, v5

    :goto_6c
    iput-wide v3, v9, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 527
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_77

    :goto_72
    iput-wide v5, v3, Landroid/view/WindowManager$LayoutParams;->buttonLightTimeout:J

    goto :goto_1e

    :cond_75
    move-wide v3, v7

    .line 525
    goto :goto_6c

    :cond_77
    move-wide v5, v7

    .line 527
    goto :goto_72
.end method


# virtual methods
.method public declared-synchronized dismiss()V
    .registers 2

    .prologue
    .line 721
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mScreenOn:Z

    if-eqz v0, :cond_a

    .line 722
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->dismiss()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 724
    :cond_a
    monitor-exit p0

    return-void

    .line 721
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hide()V
    .registers 6

    .prologue
    .line 685
    monitor-enter p0

    :try_start_1
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v2, "hide()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_30

    .line 688
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mIsHideBackgroundView:Z

    .line 689
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 694
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mStateContainer:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 698
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    if-eqz v1, :cond_30

    .line 699
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    .line 700
    .local v0, "lastView":Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    .line 701
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$4;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 714
    .end local v0    # "lastView":Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;
    :cond_30
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->cleanUp()V
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_3b

    .line 715
    monitor-exit p0

    return-void

    .line 685
    :catchall_3b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isShowing()Z
    .registers 2

    .prologue
    .line 730
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_12

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_e
    monitor-exit p0

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onScreenTurnedOff()V
    .registers 3

    .prologue
    .line 583
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v1, "onScreenTurnedOff()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mScreenOn:Z

    .line 585
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    if-eqz v0, :cond_14

    .line 586
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->onScreenTurnedOff()V

    .line 590
    :cond_14
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->screenTurnedOff()V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 591
    monitor-exit p0

    return-void

    .line 583
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onScreenTurnedOn(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V
    .registers 4
    .param p1, "showListener"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;

    .prologue
    .line 595
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v1, "onScreenTurnedOn()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mScreenOn:Z

    .line 597
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    if-eqz v0, :cond_3b

    .line 598
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->onScreenTurnedOn()V

    .line 602
    if-eqz p1, :cond_28

    .line 603
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_33

    .line 606
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$3;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 624
    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->screenTurnedOn()V
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_38

    .line 625
    monitor-exit p0

    return-void

    .line 617
    :cond_33
    const/4 v0, 0x0

    :try_start_34
    invoke-interface {p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;->onShown(Landroid/os/IBinder;)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_28

    .line 595
    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0

    .line 620
    :cond_3b
    if-eqz p1, :cond_28

    .line 621
    const/4 v0, 0x0

    :try_start_3e
    invoke-interface {p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;->onShown(Landroid/os/IBinder;)V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_38

    goto :goto_28
.end method

.method public declared-synchronized reset(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 574
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->shouldEnableScreenRotation()Z

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->maybeCreateKeyguardLocked(ZZLandroid/os/Bundle;)V

    .line 579
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->reset()V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 580
    monitor-exit p0

    return-void

    .line 574
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNeedsInput(Z)V
    .registers 6
    .param p1, "needsInput"    # Z

    .prologue
    .line 551
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mNeedsInput:Z

    .line 552
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_1b

    .line 553
    if-eqz p1, :cond_1c

    .line 554
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x20001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 562
    :goto_12
    :try_start_12
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_1b} :catch_26

    .line 568
    :cond_1b
    :goto_1b
    return-void

    .line 557
    :cond_1c
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_12

    .line 563
    :catch_26
    move-exception v0

    .line 565
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t update input method on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " window not attached"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method public declared-synchronized show(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 180
    monitor-enter p0

    :try_start_1
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "show(); mKeyguardView=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mIsHideBackgroundView:Z

    .line 183
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->shouldEnableScreenRotation()Z

    move-result v0

    .line 185
    .local v0, "enableScreenRotation":Z
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 186
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mConfigChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 189
    const/4 v4, 0x0

    invoke-direct {p0, v0, v4, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->maybeCreateKeyguardLocked(ZZLandroid/os/Bundle;)V

    .line 190
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->maybeEnableScreenRotation(Z)V

    .line 197
    const v3, 0x201400

    .line 200
    .local v3, "visFlags":I
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isCameraSpecialized()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 203
    or-int/lit8 v3, v3, 0x8

    .line 206
    :cond_45
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "show:setSystemUiVisibility("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 209
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    .line 210
    .local v2, "mode":Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v2, v4, :cond_9f

    .line 211
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v5, 0x0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 216
    :goto_7b
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v4, v5, v6}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 218
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->show()V

    .line 219
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->requestFocus()Z

    .line 221
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->show()V
    :try_end_9d
    .catchall {:try_start_1 .. :try_end_9d} :catchall_a7

    .line 222
    monitor-exit p0

    return-void

    .line 213
    :cond_9f
    :try_start_9f
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v5, 0x10301e8

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I
    :try_end_a6
    .catchall {:try_start_9f .. :try_end_a6} :catchall_a7

    goto :goto_7b

    .line 180
    .end local v0    # "enableScreenRotation":Z
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "mode":Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    .end local v3    # "visFlags":I
    :catchall_a7
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public showAssistant()V
    .registers 2

    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    if-eqz v0, :cond_9

    .line 735
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showAssistant()V

    .line 737
    :cond_9
    return-void
.end method

.method public updateUserActivityTimeout()V
    .registers 4

    .prologue
    .line 499
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->updateUserActivityTimeoutInWindowLayoutParams()V

    .line 500
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 501
    return-void
.end method

.method public declared-synchronized verifyUnlock()V
    .registers 3

    .prologue
    .line 628
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v1, "verifyUnlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->show(Landroid/os/Bundle;)V

    .line 630
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->verifyUnlock()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 631
    monitor-exit p0

    return-void

    .line 628
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public wakeWhenReadyTq(I)Z
    .registers 12
    .param p1, "keyCode"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 645
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "wakeWhenReady("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v2, v7, Landroid/content/res/Configuration;->orientation:I

    .line 647
    .local v2, "orient":I
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->shouldEnableScreenRotation()Z

    move-result v3

    .line 648
    .local v3, "rotationEnabled":Z
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    if-eqz v7, :cond_8e

    .line 649
    if-nez v3, :cond_87

    if-eq v2, v6, :cond_87

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->isShowingAndNotHidden()Z

    move-result v7

    if-eqz v7, :cond_87

    .line 651
    sget-boolean v7, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mIsInLandscapeWakeTimeLimit:Z

    if-eqz v7, :cond_51

    .line 653
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v8, "mKeyguardView is not in portrait mode."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v7, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->requestWakeUpAfterDrawing(Z)V

    .line 678
    :goto_50
    return v5

    .line 660
    :cond_51
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    .line 661
    .local v0, "childViewCount":I
    const/4 v4, 0x0

    .line 663
    .local v4, "tmpView":Landroid/view/View;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_59
    if-ge v1, v0, :cond_87

    .line 664
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 665
    if-eqz v4, :cond_84

    .line 666
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 668
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "wakeWhenReadyTq() set view="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " VISIBLE in landscape mode"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_84
    add-int/lit8 v1, v1, 0x1

    goto :goto_59

    .line 674
    .end local v0    # "childViewCount":I
    .end local v1    # "i":I
    .end local v4    # "tmpView":Landroid/view/View;
    :cond_87
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v5, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->wakeWhenReadyTq(I)V

    move v5, v6

    .line 675
    goto :goto_50

    .line 677
    :cond_8e
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v7, "mKeyguardView is null in wakeWhenReadyTq"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50
.end method
