.class public Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;
.super Ljava/lang/Object;
.source "KeyguardViewStateManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;
.implements Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;


# static fields
.field private static final SCREEN_ON_HINT_DURATION:I = 0x4b0

.field private static final SCREEN_ON_RING_HINT_DELAY:I = 0x12c

.field public static mIsAddWidget:Z


# instance fields
.field private mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

.field mChallengeTop:I

.field private mCurrentPage:I

.field private mExpandChallengeView:Landroid/widget/ImageButton;

.field private mHideHintsRunnable:Ljava/lang/Runnable;

.field private mKeyguardHostView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

.field private mKeyguardSecurityContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

.field private mKeyguardWidgetNavigation:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;

.field private mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

.field mLastScrollState:I

.field mMainQueue:Landroid/os/Handler;

.field private mPageIndexOnPageBeginMoving:I

.field private mPageListeningToSlider:I

.field private mTmpLoc:[I

.field private mTmpPoint:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 163
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mIsAddWidget:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V
    .registers 6
    .param p1, "hostView"    # Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mTmpPoint:[I

    .line 39
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mMainQueue:Landroid/os/Handler;

    .line 46
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mLastScrollState:I

    .line 49
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    .line 50
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mCurrentPage:I

    .line 51
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageIndexOnPageBeginMoving:I

    .line 53
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeTop:I

    .line 323
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    .line 58
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    return-object v0
.end method

.method private getChallengeTopRelativeToFrame(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;I)I
    .registers 6
    .param p1, "frame"    # Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    .param p2, "top"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 211
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mTmpPoint:[I

    aput v1, v0, v1

    .line 212
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mTmpPoint:[I

    aput p2, v0, v2

    .line 213
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mTmpPoint:[I

    invoke-direct {p0, v0, p1, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mapPoint(Landroid/view/View;Landroid/view/View;[I)V

    .line 214
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mTmpPoint:[I

    aget v0, v0, v2

    return v0
.end method

.method private mapPoint(Landroid/view/View;Landroid/view/View;[I)V
    .registers 12
    .param p1, "fromView"    # Landroid/view/View;
    .param p2, "toView"    # Landroid/view/View;
    .param p3, "pt"    # [I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 226
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 228
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    aget v2, v4, v6

    .line 229
    .local v2, "x":I
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    aget v3, v4, v7

    .line 231
    .local v3, "y":I
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    invoke-virtual {p2, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 232
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    aget v0, v4, v6

    .line 233
    .local v0, "vX":I
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    aget v1, v4, v7

    .line 235
    .local v1, "vY":I
    aget v4, p3, v6

    sub-int v5, v2, v0

    add-int/2addr v4, v5

    aput v4, p3, v6

    .line 236
    aget v4, p3, v7

    sub-int v5, v3, v1

    add-int/2addr v4, v5

    aput v4, p3, v7

    .line 237
    return-void
.end method

.method private updateEdgeSwiping()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    if-eqz v0, :cond_16

    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;->isChallengeOverlapping()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setOnlyAllowEdgeSwipes(Z)V

    .line 79
    :cond_16
    :goto_16
    return-void

    .line 76
    :cond_17
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setOnlyAllowEdgeSwipes(Z)V

    goto :goto_16
.end method

.method private userActivity()V
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    if-eqz v0, :cond_e

    .line 241
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->onUserActivityTimeoutChanged()V

    .line 242
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->userActivity()V

    .line 244
    :cond_e
    return-void
.end method


# virtual methods
.method public cancelHideHintRunnable()V
    .registers 3

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_e

    .line 349
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mMainQueue:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 350
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    .line 352
    :cond_e
    return-void
.end method

.method public fadeInSecurity(I)V
    .registers 5
    .param p1, "duration"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 121
    return-void
.end method

.method public fadeOutSecurity(I)V
    .registers 5
    .param p1, "duration"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 117
    return-void
.end method

.method public isBouncing()Z
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;->isBouncing()Z

    move-result v0

    return v0
.end method

.method public isChallengeOverlapping()Z
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    if-eqz v0, :cond_b

    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;->isChallengeOverlapping()Z

    move-result v0

    .line 92
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isChallengeShowing()Z
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    if-eqz v0, :cond_b

    .line 83
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;->isChallengeShowing()Z

    move-result v0

    .line 85
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onAddView(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetNavigation:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;

    if-eqz v0, :cond_9

    .line 373
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetNavigation:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;->updateWidgetNavigation()V

    .line 375
    :cond_9
    return-void
.end method

.method public onBouncerStateChanged(Z)V
    .registers 4
    .param p1, "bouncerActive"    # Z

    .prologue
    .line 357
    if-eqz p1, :cond_8

    .line 358
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->zoomOutToBouncer()V

    .line 365
    :cond_7
    :goto_7
    return-void

    .line 360
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->zoomInFromBouncer()V

    .line 361
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    if-eqz v0, :cond_7

    .line 362
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->setOnDismissAction(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;)V

    goto :goto_7
.end method

.method public onPageBeginMoving()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 124
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;->isChallengeOverlapping()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    instance-of v1, v1, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-eqz v1, :cond_1e

    .line 126
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    .line 127
    .local v0, "scl":Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->fadeOutChallenge()V

    .line 128
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getCurrentPage()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageIndexOnPageBeginMoving:I

    .line 132
    .end local v0    # "scl":Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    :cond_1e
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    if-eqz v1, :cond_2c

    .line 133
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->clearAppWidgetToShow()V

    .line 134
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->setOnDismissAction(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;)V

    .line 136
    :cond_2c
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_39

    .line 137
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mMainQueue:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 138
    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    .line 140
    :cond_39
    return-void
.end method

.method public onPageEndMoving()V
    .registers 2

    .prologue
    .line 143
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageIndexOnPageBeginMoving:I

    .line 144
    return-void
.end method

.method public onPageSwitched(Landroid/view/View;I)V
    .registers 10
    .param p1, "newPage"    # Landroid/view/View;
    .param p2, "newPageIndex"    # I

    .prologue
    .line 171
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mCurrentPage:I

    if-ne v5, p2, :cond_5

    .line 208
    :cond_4
    :goto_4
    return-void

    .line 173
    :cond_5
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    if-eqz v5, :cond_51

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    if-eqz v5, :cond_51

    .line 174
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mCurrentPage:I

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v4

    .line 175
    .local v4, "prevPage":Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    if-eqz v4, :cond_2a

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mCurrentPage:I

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    if-eq v5, v6, :cond_2a

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mCurrentPage:I

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetToResetOnPageFadeOut()I

    move-result v6

    if-eq v5, v6, :cond_2a

    .line 177
    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->resetSize()V

    .line 180
    :cond_2a
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v5, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v3

    .line 181
    .local v3, "newCurPage":Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;->isChallengeOverlapping()Z

    move-result v0

    .line 182
    .local v0, "challengeOverlapping":Z
    if-eqz v0, :cond_49

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->isSmall()Z

    move-result v5

    if-nez v5, :cond_49

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    if-eq v5, p2, :cond_49

    instance-of v5, p1, Lcom/android/internal/policy/impl/keyguard/sec/ShortCutWidgetFrame;

    if-nez v5, :cond_49

    .line 184
    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->shrinkWidget()V

    .line 186
    :cond_49
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v5, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isAddPage(I)Z

    move-result v5

    sput-boolean v5, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mIsAddWidget:Z

    .line 189
    .end local v0    # "challengeOverlapping":Z
    .end local v3    # "newCurPage":Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    .end local v4    # "prevPage":Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    :cond_51
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mCurrentPage:I

    .line 190
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetNavigation:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;

    if-eqz v5, :cond_5c

    .line 191
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetNavigation:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;->updateWidgetNavigation()V

    .line 194
    :cond_5c
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mExpandChallengeView:Landroid/widget/ImageButton;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    instance-of v5, v5, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;->isChallengeOverlapping()Z

    move-result v5

    if-nez v5, :cond_4

    .line 197
    instance-of v2, p1, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    .line 198
    .local v2, "isCameraPage":Z
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mExpandChallengeView:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 200
    .local v1, "handleAnim":Landroid/graphics/drawable/AnimationDrawable;
    if-nez v2, :cond_4

    .line 204
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/graphics/drawable/AnimationDrawable;->setVisible(ZZ)Z

    .line 205
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_4
.end method

.method public onPageSwitching(Landroid/view/View;I)V
    .registers 8
    .param p1, "newPage"    # Landroid/view/View;
    .param p2, "newPageIndex"    # I

    .prologue
    const/4 v4, -0x1

    .line 147
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    instance-of v2, v2, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-eqz v2, :cond_17

    .line 148
    instance-of v0, p1, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    .line 149
    .local v0, "isCameraPage":Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-nez v0, :cond_36

    const/4 v3, 0x1

    :goto_14
    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setChallengeInteractive(Z)V

    .line 154
    .end local v0    # "isCameraPage":Z
    :cond_17
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageIndexOnPageBeginMoving:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getNextPage()I

    move-result v3

    if-ne v2, v3, :cond_33

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    instance-of v2, v2, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-eqz v2, :cond_33

    .line 156
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    .line 157
    .local v1, "scl":Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->fadeInChallenge()V

    .line 158
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setWidgetToResetOnPageFadeOut(I)V

    .line 160
    .end local v1    # "scl":Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    :cond_33
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageIndexOnPageBeginMoving:I

    .line 161
    return-void

    .line 149
    .restart local v0    # "isCameraPage":Z
    :cond_36
    const/4 v3, 0x0

    goto :goto_14
.end method

.method public onRemoveView(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetNavigation:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;

    if-eqz v0, :cond_9

    .line 379
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetNavigation:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;->updateWidgetNavigation()V

    .line 381
    :cond_9
    return-void
.end method

.method public onScrollPositionChanged(FI)V
    .registers 6
    .param p1, "scrollPosition"    # F
    .param p2, "challengeTop"    # I

    .prologue
    .line 316
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeTop:I

    .line 317
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v0

    .line 318
    .local v0, "frame":Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    if-eqz v0, :cond_1a

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mLastScrollState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1a

    .line 319
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeTop:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->getChallengeTopRelativeToFrame(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->adjustFrame(I)V

    .line 321
    :cond_1a
    return-void
.end method

.method public onScrollStateChanged(I)V
    .registers 7
    .param p1, "scrollState"    # I

    .prologue
    const/4 v4, 0x3

    .line 248
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    if-nez v2, :cond_a

    .line 312
    :cond_9
    :goto_9
    return-void

    .line 250
    :cond_a
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;->isChallengeOverlapping()Z

    move-result v0

    .line 252
    .local v0, "challengeOverlapping":Z
    if-nez p1, :cond_63

    .line 253
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v1

    .line 254
    .local v1, "frame":Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    if-eqz v1, :cond_9

    .line 256
    if-nez v0, :cond_2c

    .line 257
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isPageMoving()Z

    move-result v2

    if-nez v2, :cond_55

    .line 258
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->resetSize()V

    .line 259
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->userActivity()V

    .line 264
    :cond_2c
    :goto_2c
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->isSmall()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 267
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getSmallFrameHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setFrameHeight(I)V

    .line 269
    :cond_39
    if-eq p1, v4, :cond_3e

    .line 270
    invoke-virtual {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->hideFrame(Ljava/lang/Object;)V

    .line 272
    :cond_3e
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->updateEdgeSwiping()V

    .line 274
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;->isChallengeShowing()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 275
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->onResume(I)V

    .line 279
    :goto_4f
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    .line 311
    .end local v1    # "frame":Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    :cond_52
    :goto_52
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mLastScrollState:I

    goto :goto_9

    .line 261
    .restart local v1    # "frame":Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    :cond_55
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setWidgetToResetOnPageFadeOut(I)V

    goto :goto_2c

    .line 277
    :cond_5d
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->onPause()V

    goto :goto_4f

    .line 280
    .end local v1    # "frame":Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    :cond_63
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mLastScrollState:I

    if-nez v2, :cond_52

    .line 284
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getNextPage()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    .line 285
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v1

    .line 286
    .restart local v1    # "frame":Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    if-eqz v1, :cond_9

    .line 289
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;->isBouncing()Z

    move-result v2

    if-nez v2, :cond_9e

    .line 290
    if-eq p1, v4, :cond_86

    .line 291
    invoke-virtual {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->showFrame(Ljava/lang/Object;)V

    .line 296
    :cond_86
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->isSmall()Z

    move-result v2

    if-nez v2, :cond_98

    .line 298
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getNextPage()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    .line 299
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->shrinkWidget(Z)V

    .line 309
    :cond_98
    :goto_98
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->onPause()V

    goto :goto_52

    .line 302
    :cond_9e
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->isSmall()Z

    move-result v2

    if-nez v2, :cond_98

    .line 304
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getNextPage()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    goto :goto_98
.end method

.method public setChallengeLayout(Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;)V
    .registers 2
    .param p1, "layout"    # Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    .line 68
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->updateEdgeSwiping()V

    .line 69
    return-void
.end method

.method public setExpandChallengeView(Landroid/widget/ImageButton;)V
    .registers 2
    .param p1, "expandChallengeView"    # Landroid/widget/ImageButton;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mExpandChallengeView:Landroid/widget/ImageButton;

    .line 385
    return-void
.end method

.method public setKeyguardWidgetNavigation(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;)V
    .registers 2
    .param p1, "keyguardWidgetNavigation"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetNavigation:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;

    .line 369
    return-void
.end method

.method public setPagedView(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;)V
    .registers 2
    .param p1, "pagedView"    # Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    .line 63
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->updateEdgeSwiping()V

    .line 64
    return-void
.end method

.method public setSecurityViewContainer(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;)V
    .registers 2
    .param p1, "container"    # Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    .line 97
    return-void
.end method

.method public showBouncer(Z)V
    .registers 3
    .param p1, "show"    # Z

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isPageMoving()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 109
    :goto_c
    return-void

    .line 104
    :cond_d
    if-eqz p1, :cond_15

    .line 105
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;->showBouncer()V

    goto :goto_c

    .line 107
    :cond_15
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;->hideBouncer()V

    goto :goto_c
.end method

.method public showUsabilityHints()V
    .registers 5

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mMainQueue:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 341
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->showInitialPageHints()V

    .line 342
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1e

    .line 343
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mMainQueue:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 345
    :cond_1e
    return-void
.end method
