.class public Lcom/android/internal/policy/impl/BarController;
.super Ljava/lang/Object;
.source "BarController.java"


# static fields
.field private static final COCKTAIL_DEBUG:Z = true

.field private static final DEBUG:Z = true

.field private static final TRANSIENT_BAR_HIDING:I = 0x3

.field private static final TRANSIENT_BAR_NONE:I = 0x0

.field private static final TRANSIENT_BAR_SHIFTING:I = 0x4

.field private static final TRANSIENT_BAR_SHIFT_SHOWING:I = 0x5

.field private static final TRANSIENT_BAR_SHOWING:I = 0x2

.field private static final TRANSIENT_BAR_SHOW_REQUESTED:I = 0x1

.field private static final TRANSIENT_BAR_TRANSPARENT_SHIFTING:I = 0x6

.field private static final TRANSIENT_BAR_TRANSPARENT_SHIFT_SHOWING:I = 0x7

.field private static final TRANSLUCENT_ANIMATION_DELAY_MS:I = 0x3e8


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mLastTranslucent:J

.field private mPendingShow:Z

.field private final mServiceAquireLock:Ljava/lang/Object;

.field private mState:I

.field private final mStatusBarManagerId:I

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mTag:Ljava/lang/String;

.field private mTransientBarState:I

.field private final mTransientFlag:I

.field private final mTranslucentFlag:I

.field private final mTranslucentWmFlag:I

.field private final mUnhideFlag:I

.field private mWin:Landroid/view/WindowManagerPolicy$WindowState;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIII)V
    .registers 9
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "transientFlag"    # I
    .param p3, "unhideFlag"    # I
    .param p4, "translucentFlag"    # I
    .param p5, "statusBarManagerId"    # I
    .param p6, "translucentWmFlag"    # I

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mServiceAquireLock:Ljava/lang/Object;

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/BarController;->mState:I

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BarController."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mTag:Ljava/lang/String;

    .line 72
    iput p2, p0, Lcom/android/internal/policy/impl/BarController;->mTransientFlag:I

    .line 73
    iput p3, p0, Lcom/android/internal/policy/impl/BarController;->mUnhideFlag:I

    .line 74
    iput p4, p0, Lcom/android/internal/policy/impl/BarController;->mTranslucentFlag:I

    .line 75
    iput p5, p0, Lcom/android/internal/policy/impl/BarController;->mStatusBarManagerId:I

    .line 76
    iput p6, p0, Lcom/android/internal/policy/impl/BarController;->mTranslucentWmFlag:I

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mHandler:Landroid/os/Handler;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/BarController;)Lcom/android/internal/statusbar/IStatusBarService;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BarController;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BarController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/BarController;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BarController;

    .prologue
    .line 36
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mStatusBarManagerId:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/BarController;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BarController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/BarController;Lcom/android/internal/statusbar/IStatusBarService;)Lcom/android/internal/statusbar/IStatusBarService;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BarController;
    .param p1, "x1"    # Lcom/android/internal/statusbar/IStatusBarService;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/internal/policy/impl/BarController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object p1
.end method

.method private computeStateLw(ZZLandroid/view/WindowManagerPolicy$WindowState;Z)I
    .registers 11
    .param p1, "wasVis"    # Z
    .param p2, "wasAnim"    # Z
    .param p3, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p4, "change"    # Z

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 366
    invoke-interface {p3}, Landroid/view/WindowManagerPolicy$WindowState;->hasDrawnLw()Z

    move-result v5

    if-eqz v5, :cond_30

    .line 367
    invoke-interface {p3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    .line 368
    .local v1, "vis":Z
    invoke-interface {p3}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v0

    .line 369
    .local v0, "anim":Z
    iget v5, p0, Lcom/android/internal/policy/impl/BarController;->mState:I

    if-ne v5, v4, :cond_1a

    if-nez p4, :cond_1a

    if-nez v1, :cond_1a

    .line 381
    .end local v0    # "anim":Z
    .end local v1    # "vis":Z
    :goto_19
    return v2

    .line 371
    .restart local v0    # "anim":Z
    .restart local v1    # "vis":Z
    :cond_1a
    iget v5, p0, Lcom/android/internal/policy/impl/BarController;->mState:I

    if-ne v5, v2, :cond_22

    if-eqz v1, :cond_22

    move v2, v3

    .line 372
    goto :goto_19

    .line 373
    :cond_22
    if-eqz p4, :cond_30

    .line 374
    if-eqz p1, :cond_2e

    if-eqz v1, :cond_2e

    if-nez p2, :cond_2e

    if-eqz v0, :cond_2e

    move v2, v4

    .line 375
    goto :goto_19

    :cond_2e
    move v2, v3

    .line 377
    goto :goto_19

    .line 381
    .end local v0    # "anim":Z
    .end local v1    # "vis":Z
    :cond_30
    iget v2, p0, Lcom/android/internal/policy/impl/BarController;->mState:I

    goto :goto_19
.end method

.method private getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 3

    .prologue
    .line 480
    iget-object v1, p0, Lcom/android/internal/policy/impl/BarController;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 481
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_13

    .line 482
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 485
    :cond_13
    iget-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v1

    return-object v0

    .line 486
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method private setTransientBarState(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x2

    .line 470
    iget-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_33

    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    if-eq p1, v0, :cond_33

    .line 471
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    if-eq v0, v1, :cond_f

    if-ne p1, v1, :cond_15

    .line 472
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/BarController;->mLastTranslucent:J

    .line 474
    :cond_15
    iput p1, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    .line 475
    iget-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTransientBarState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/internal/policy/impl/BarController;->transientBarStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_33
    return-void
.end method

.method private static transientBarStateToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "state"    # I

    .prologue
    .line 490
    const/4 v0, 0x3

    if-ne p0, v0, :cond_6

    const-string v0, "TRANSIENT_BAR_HIDING"

    .line 498
    :goto_5
    return-object v0

    .line 491
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    const-string v0, "TRANSIENT_BAR_SHOWING"

    goto :goto_5

    .line 492
    :cond_c
    const/4 v0, 0x1

    if-ne p0, v0, :cond_12

    const-string v0, "TRANSIENT_BAR_SHOW_REQUESTED"

    goto :goto_5

    .line 493
    :cond_12
    if-nez p0, :cond_17

    const-string v0, "TRANSIENT_BAR_NONE"

    goto :goto_5

    .line 495
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    const-string v0, "TRANSIENT_BAR_SHIFTING"

    goto :goto_5

    .line 496
    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    const-string v0, "TRANSIENT_BAR_SHIFT_SHOWING"

    goto :goto_5

    .line 497
    :cond_23
    const/4 v0, 0x6

    if-ne p0, v0, :cond_29

    const-string v0, "TRANSIENT_BAR_TRANSPARENT_SHIFTING"

    goto :goto_5

    .line 498
    :cond_29
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2f

    const-string v0, "TRANSIENT_BAR_TRANSPARENT_SHIFT_SHOWING"

    goto :goto_5

    .line 500
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateStateLw(I)Z
    .registers 5
    .param p1, "state"    # I

    .prologue
    .line 385
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mState:I

    if-eq p1, v0, :cond_2e

    .line 386
    iput p1, p0, Lcom/android/internal/policy/impl/BarController;->mState:I

    .line 387
    iget-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/BarController$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/BarController$1;-><init>(Lcom/android/internal/policy/impl/BarController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 403
    const/4 v0, 0x1

    .line 405
    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method


# virtual methods
.method public adjustCocktailBarVisibilityLw(Z)Z
    .registers 4
    .param p1, "visibility"    # Z

    .prologue
    const/4 v0, 0x0

    .line 249
    iget-object v1, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_11

    .line 250
    if-eqz p1, :cond_26

    .line 251
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BarController;->isTransientShifting()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 252
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(I)V

    .line 274
    :cond_11
    :goto_11
    return v0

    .line 254
    :cond_12
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BarController;->isTransientTransparentShifting()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 255
    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(I)V

    goto :goto_11

    .line 258
    :cond_1d
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(I)V

    .line 271
    :goto_21
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/BarController;->setCocktailBarShowingLw(Z)Z

    move-result v0

    goto :goto_11

    .line 261
    :cond_26
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BarController;->isTransientShiftShowing()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 262
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(I)V

    goto :goto_11

    .line 264
    :cond_31
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BarController;->isTransientTransparentShiftShowing()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 265
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(I)V

    goto :goto_11

    .line 268
    :cond_3c
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(I)V

    goto :goto_21
.end method

.method public adjustSystemUiVisibilityLw(II)V
    .registers 6
    .param p1, "oldVis"    # I
    .param p2, "vis"    # I

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 110
    .local v0, "isPanelExpanded":Z
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BarController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->getPanelExpandState()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_35

    move-result v0

    .line 114
    :goto_9
    iget-object v1, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_22

    iget v1, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_22

    iget v1, p0, Lcom/android/internal/policy/impl/BarController;->mTransientFlag:I

    and-int/2addr v1, p2

    if-nez v1, :cond_22

    if-nez v0, :cond_22

    .line 117
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(I)V

    .line 118
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    .line 123
    :cond_21
    :goto_21
    return-void

    .line 119
    :cond_22
    iget-object v1, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_21

    iget v1, p0, Lcom/android/internal/policy/impl/BarController;->mUnhideFlag:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_21

    iget v1, p0, Lcom/android/internal/policy/impl/BarController;->mUnhideFlag:I

    and-int/2addr v1, p2

    if-nez v1, :cond_21

    .line 121
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    goto :goto_21

    .line 111
    :catch_35
    move-exception v1

    goto :goto_9
.end method

.method public applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;II)I
    .registers 6
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "vis"    # I
    .param p3, "oldVis"    # I

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1e

    .line 337
    if-eqz p1, :cond_25

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_25

    .line 339
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, p0, Lcom/android/internal/policy/impl/BarController;->mTranslucentWmFlag:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1f

    .line 340
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mTranslucentFlag:I

    or-int/2addr p2, v0

    .line 348
    :cond_1e
    :goto_1e
    return p2

    .line 342
    :cond_1f
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mTranslucentFlag:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p2, v0

    goto :goto_1e

    .line 345
    :cond_25
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mTranslucentFlag:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p2

    iget v1, p0, Lcom/android/internal/policy/impl/BarController;->mTranslucentFlag:I

    and-int/2addr v1, p3

    or-int p2, v0, v1

    goto :goto_1e
.end method

.method public checkCocktailBarHiddenLw()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 321
    iget-object v1, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->hasDrawnLw()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 322
    iget v1, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_24

    iget-object v1, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    if-nez v1, :cond_24

    .line 324
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(I)V

    .line 325
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/BarController;->mPendingShow:Z

    if-eqz v1, :cond_24

    .line 326
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/BarController;->mPendingShow:Z

    .line 327
    const/4 v0, 0x1

    .line 331
    :cond_24
    return v0
.end method

.method public checkHiddenLw()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 409
    iget-object v2, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->hasDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 410
    iget-object v2, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-nez v2, :cond_22

    iget-object v2, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_22

    .line 411
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/BarController;->updateStateLw(I)Z

    .line 413
    :cond_22
    iget v2, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3c

    iget-object v2, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-nez v2, :cond_3c

    .line 415
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(I)V

    .line 416
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/BarController;->mPendingShow:Z

    if-eqz v2, :cond_3b

    .line 417
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    .line 418
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/BarController;->mPendingShow:Z

    .line 423
    :cond_3b
    :goto_3b
    return v0

    :cond_3c
    move v0, v1

    goto :goto_3b
.end method

.method public checkShowTransientBarLw()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 427
    iget v2, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_f

    .line 428
    iget-object v1, p0, Lcom/android/internal/policy/impl/BarController;->mTag:Ljava/lang/String;

    const-string v2, "Not showing transient bar, already shown"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :goto_e
    return v0

    .line 430
    :cond_f
    iget v2, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    if-ne v2, v1, :cond_1b

    .line 431
    iget-object v1, p0, Lcom/android/internal/policy/impl/BarController;->mTag:Ljava/lang/String;

    const-string v2, "Not showing transient bar, already requested"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 433
    :cond_1b
    iget-object v2, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v2, :cond_27

    .line 434
    iget-object v1, p0, Lcom/android/internal/policy/impl/BarController;->mTag:Ljava/lang/String;

    const-string v2, "Not showing transient bar, bar doesn\'t exist"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 436
    :cond_27
    iget-object v2, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isDisplayedLw()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 437
    iget-object v1, p0, Lcom/android/internal/policy/impl/BarController;->mTag:Ljava/lang/String;

    const-string v2, "Not showing transient bar, bar already visible"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_37
    move v0, v1

    .line 440
    goto :goto_e
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x3d

    .line 504
    iget-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_40

    .line 505
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 506
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 507
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mState:I

    invoke-static {v0}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransientBar"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 509
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    invoke-static {v0}, Lcom/android/internal/policy/impl/BarController;->transientBarStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 511
    :cond_40
    return-void
.end method

.method public getCurrentTransientBarState()I
    .registers 2

    .prologue
    .line 317
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    return v0
.end method

.method public isImplicitTransientShiftShowing()Z
    .registers 2

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BarController;->isTransientShiftShowing()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BarController;->isTransientTransparentShiftShowing()Z

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

.method public isImplicitTransientShifting()Z
    .registers 2

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BarController;->isTransientShifting()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BarController;->isTransientTransparentShifting()Z

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

.method public isTransientHiding()Z
    .registers 3

    .prologue
    .line 99
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isTransientNone()Z
    .registers 2

    .prologue
    .line 127
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isTransientShift()Z
    .registers 2

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BarController;->isTransientShifting()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BarController;->isTransientShiftShowing()Z

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

.method public isTransientShiftShowing()Z
    .registers 3

    .prologue
    .line 135
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isTransientShifting()Z
    .registers 3

    .prologue
    .line 131
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isTransientShowRequested()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 95
    iget v1, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isTransientShowing()Z
    .registers 3

    .prologue
    .line 91
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isTransientTransparent()Z
    .registers 2

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BarController;->isTransientTransparentShifting()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BarController;->isTransientTransparentShiftShowing()Z

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

.method public isTransientTransparentShiftShowing()Z
    .registers 3

    .prologue
    .line 143
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isTransientTransparentShifting()Z
    .registers 3

    .prologue
    .line 139
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public setBarShowingLw(Z)Z
    .registers 11
    .param p1, "show"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 352
    iget-object v7, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v7, :cond_7

    .line 362
    :cond_6
    :goto_6
    return v5

    .line 353
    :cond_7
    if-eqz p1, :cond_11

    iget v7, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_11

    .line 354
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/BarController;->mPendingShow:Z

    goto :goto_6

    .line 357
    :cond_11
    iget-object v7, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    .line 358
    .local v4, "wasVis":Z
    iget-object v7, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v3

    .line 359
    .local v3, "wasAnim":Z
    if-eqz p1, :cond_35

    iget-object v7, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7, v6}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v0

    .line 360
    .local v0, "change":Z
    :goto_25
    iget-object v7, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-direct {p0, v4, v3, v7, v0}, Lcom/android/internal/policy/impl/BarController;->computeStateLw(ZZLandroid/view/WindowManagerPolicy$WindowState;Z)I

    move-result v1

    .line 361
    .local v1, "state":I
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/BarController;->updateStateLw(I)Z

    move-result v2

    .line 362
    .local v2, "stateChanged":Z
    if-nez v0, :cond_33

    if-eqz v2, :cond_6

    :cond_33
    move v5, v6

    goto :goto_6

    .line 359
    .end local v0    # "change":Z
    .end local v1    # "state":I
    .end local v2    # "stateChanged":Z
    :cond_35
    iget-object v7, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7, v6}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v0

    goto :goto_25
.end method

.method public setCocktailBarShowingLw(Z)Z
    .registers 3
    .param p1, "show"    # Z

    .prologue
    .line 278
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/BarController;->setCocktailBarShowingLw(ZZ)Z

    move-result v0

    return v0
.end method

.method public setCocktailBarShowingLw(ZZ)Z
    .registers 8
    .param p1, "show"    # Z
    .param p2, "doAnimation"    # Z

    .prologue
    const/4 v0, 0x0

    .line 282
    iget-object v3, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v3, :cond_6

    .line 292
    :goto_5
    return v0

    .line 283
    :cond_6
    if-eqz p1, :cond_15

    iget v3, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_15

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/BarController;->mPendingShow:Z

    if-nez v3, :cond_15

    .line 284
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/BarController;->mPendingShow:Z

    goto :goto_5

    .line 288
    :cond_15
    iget-object v3, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    .line 289
    .local v2, "wasVis":Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v1

    .line 290
    .local v1, "wasAnim":Z
    if-eqz p1, :cond_2a

    iget-object v3, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3, p2}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v0

    .line 292
    .local v0, "change":Z
    :goto_29
    goto :goto_5

    .line 290
    .end local v0    # "change":Z
    :cond_2a
    iget-object v3, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3, p2}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v0

    goto :goto_29
.end method

.method public setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 82
    return-void
.end method

.method public showTransient()V
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_8

    .line 86
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(I)V

    .line 88
    :cond_8
    return-void
.end method

.method public updateTransientShow(Z)Z
    .registers 5
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x0

    .line 223
    iget-object v2, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_12

    .line 224
    const/4 v0, 0x1

    .line 225
    .local v0, "doAnimation":Z
    if-nez p1, :cond_23

    .line 226
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BarController;->isTransientShiftShowing()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 227
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(I)V

    .line 245
    .end local v0    # "doAnimation":Z
    :cond_12
    :goto_12
    return v1

    .line 229
    .restart local v0    # "doAnimation":Z
    :cond_13
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BarController;->isTransientShifting()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 230
    const/4 v0, 0x0

    .line 232
    :cond_1a
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(I)V

    .line 242
    :cond_1e
    :goto_1e
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/BarController;->setCocktailBarShowingLw(ZZ)Z

    move-result v1

    goto :goto_12

    .line 234
    :cond_23
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BarController;->isTransientShiftShowing()Z

    move-result v2

    if-nez v2, :cond_35

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BarController;->isTransientShowing()Z

    move-result v2

    if-nez v2, :cond_35

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BarController;->isTransientTransparentShiftShowing()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 236
    :cond_35
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(I)V

    goto :goto_12

    .line 238
    :cond_39
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BarController;->isTransientShowRequested()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 239
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(I)V

    goto :goto_1e
.end method

.method public updateTransientState(ZZZ)I
    .registers 11
    .param p1, "shift"    # Z
    .param p2, "visible"    # Z
    .param p3, "transparent"    # Z

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x4

    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 163
    iget-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_49

    .line 165
    iget-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTransientState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    invoke-static {v2}, Lcom/android/internal/policy/impl/BarController;->transientBarStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",shift="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",visible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",transparent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    packed-switch v0, :pswitch_data_a4

    .line 212
    :cond_49
    :goto_49
    if-eqz p3, :cond_53

    .line 213
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    if-ne v0, v4, :cond_9b

    .line 214
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(I)V

    .line 219
    :cond_53
    :goto_53
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    return v0

    .line 169
    :pswitch_56
    if-nez p2, :cond_5c

    .line 170
    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(I)V

    goto :goto_49

    .line 171
    :cond_5c
    if-eqz p1, :cond_49

    .line 172
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(I)V

    goto :goto_49

    .line 176
    :pswitch_62
    if-eqz p1, :cond_68

    .line 177
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(I)V

    goto :goto_49

    .line 178
    :cond_68
    if-eqz p2, :cond_49

    .line 179
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(I)V

    goto :goto_49

    .line 184
    :pswitch_6e
    if-eqz p1, :cond_74

    .line 185
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(I)V

    goto :goto_49

    .line 186
    :cond_74
    if-eqz p2, :cond_49

    .line 187
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(I)V

    goto :goto_49

    .line 192
    :pswitch_7a
    if-nez p2, :cond_81

    .line 193
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(I)V

    goto :goto_49

    .line 194
    :cond_81
    if-nez p1, :cond_87

    .line 195
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(I)V

    goto :goto_49

    .line 197
    :cond_87
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(I)V

    goto :goto_49

    .line 202
    :pswitch_8b
    if-nez p2, :cond_91

    .line 203
    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(I)V

    goto :goto_49

    .line 204
    :cond_91
    if-nez p1, :cond_97

    .line 205
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(I)V

    goto :goto_49

    .line 207
    :cond_97
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(I)V

    goto :goto_49

    .line 215
    :cond_9b
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    if-ne v0, v5, :cond_53

    .line 216
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(I)V

    goto :goto_53

    .line 167
    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_56
        :pswitch_6e
        :pswitch_62
        :pswitch_6e
        :pswitch_7a
        :pswitch_8b
        :pswitch_7a
        :pswitch_8b
    .end packed-switch
.end method

.method public updateVisibilityLw(Z)I
    .registers 4
    .param p1, "transientAllowed"    # Z

    .prologue
    const/4 v0, 0x0

    .line 296
    iget-object v1, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v1, :cond_6

    .line 313
    :goto_5
    return v0

    .line 298
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BarController;->isTransientShowing()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BarController;->isTransientShowRequested()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 299
    :cond_12
    if-eqz p1, :cond_1b

    .line 300
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(I)V

    .line 313
    :cond_18
    :goto_18
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    goto :goto_5

    .line 302
    :cond_1b
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(I)V

    goto :goto_18

    .line 304
    :cond_1f
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BarController;->isTransientHiding()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 305
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(I)V

    goto :goto_18

    .line 307
    :cond_2a
    if-nez p1, :cond_18

    .line 308
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/BarController;->mPendingShow:Z

    .line 309
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(I)V

    goto :goto_18
.end method

.method public updateVisibilityLw(ZII)I
    .registers 7
    .param p1, "transientAllowed"    # Z
    .param p2, "oldVis"    # I
    .param p3, "vis"    # I

    .prologue
    const/4 v2, 0x0

    .line 445
    iget-object v1, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v1, :cond_7

    move v0, p3

    .line 466
    .end local p3    # "vis":I
    .local v0, "vis":I
    :goto_6
    return v0

    .line 446
    .end local v0    # "vis":I
    .restart local p3    # "vis":I
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BarController;->isTransientShowing()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BarController;->isTransientShowRequested()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 447
    :cond_13
    if-eqz p1, :cond_3f

    .line 448
    iget v1, p0, Lcom/android/internal/policy/impl/BarController;->mTransientFlag:I

    or-int/2addr p3, v1

    .line 449
    iget v1, p0, Lcom/android/internal/policy/impl/BarController;->mTransientFlag:I

    and-int/2addr v1, p2

    if-nez v1, :cond_20

    .line 450
    iget v1, p0, Lcom/android/internal/policy/impl/BarController;->mUnhideFlag:I

    or-int/2addr p3, v1

    .line 452
    :cond_20
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(I)V

    .line 459
    :cond_24
    :goto_24
    iget v1, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    if-eqz v1, :cond_2d

    .line 460
    iget v1, p0, Lcom/android/internal/policy/impl/BarController;->mTransientFlag:I

    or-int/2addr p3, v1

    .line 461
    and-int/lit8 p3, p3, -0x2

    .line 463
    :cond_2d
    iget v1, p0, Lcom/android/internal/policy/impl/BarController;->mTranslucentFlag:I

    and-int/2addr v1, p3

    if-nez v1, :cond_37

    iget v1, p0, Lcom/android/internal/policy/impl/BarController;->mTranslucentFlag:I

    and-int/2addr v1, p2

    if-eqz v1, :cond_3d

    .line 464
    :cond_37
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/policy/impl/BarController;->mLastTranslucent:J

    :cond_3d
    move v0, p3

    .line 466
    .end local p3    # "vis":I
    .restart local v0    # "vis":I
    goto :goto_6

    .line 454
    .end local v0    # "vis":I
    .restart local p3    # "vis":I
    :cond_3f
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(I)V

    goto :goto_24

    .line 456
    :cond_43
    if-nez p1, :cond_24

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BarController;->isTransientHiding()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 457
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(I)V

    goto :goto_24
.end method

.method public wasRecentlyTranslucent()Z
    .registers 5

    .prologue
    .line 103
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/BarController;->mLastTranslucent:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method
