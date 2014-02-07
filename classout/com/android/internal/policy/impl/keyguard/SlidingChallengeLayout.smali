.class public Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
.super Landroid/view/ViewGroup;
.source "SlidingChallengeLayout.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;,
        Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;
    }
.end annotation


# static fields
.field private static final CHALLENGE_FADE_IN_DURATION:I = 0xa0

.field private static final CHALLENGE_FADE_OUT_DURATION:I = 0x64

.field private static final DEBUG:Z = false

.field private static final DRAG_HANDLE_CLOSED_ABOVE:I = 0x8

.field private static final DRAG_HANDLE_CLOSED_BELOW:I = 0x0

.field private static final DRAG_HANDLE_OPEN_ABOVE:I = 0x8

.field private static final DRAG_HANDLE_OPEN_BELOW:I = 0x0

.field static final HANDLE_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final HANDLE_ANIMATE_DURATION:I = 0xfa

.field private static final INVALID_POINTER:I = -0x1

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_FADING:I = 0x3

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SlidingChallengeLayout"

.field private static final sHandleFadeInterpolator:Landroid/view/animation/Interpolator;

.field private static final sMotionInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private isIgnoreTouch:Z

.field private mActivePointerId:I

.field private mBlockDrag:Z

.field private mBouncerListener:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mChallengeBottomBound:I

.field private mChallengeInteractiveExternal:Z

.field private mChallengeInteractiveInternal:Z

.field private mChallengeOffset:F

.field private mChallengeShowing:Z

.field private mChallengeShowingTargetState:Z

.field private mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDistance:D

.field private mDragHandleClosedAbove:I

.field private mDragHandleClosedBelow:I

.field private mDragHandleEdgeSlop:I

.field private mDragHandleOpenAbove:I

.field private mDragHandleOpenBelow:I

.field private mDragging:Z

.field private mEdgeCaptured:Z

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private final mExpandChallengeClickListener:Landroid/view/View$OnClickListener;

.field private mExpandChallengeHandleCaptured:Z

.field private mExpandChallengeLockView:Landroid/view/View;

.field private final mExpandChallengeTouchListener:Landroid/view/View$OnTouchListener;

.field private mExpandChallengeView:Landroid/view/View;

.field private mFader:Landroid/animation/ObjectAnimator;

.field private mFinishBouncing:Z

.field private mFirstBorder:I

.field mFrameAlpha:F

.field private mFrameAnimation:Landroid/animation/ObjectAnimator;

.field mFrameAnimationTarget:F

.field private mGestureStartChallengeBottom:I

.field private mGestureStartX:F

.field private mGestureStartY:F

.field mHandleAlpha:F

.field private mHandleAnimation:Landroid/animation/ObjectAnimator;

.field private mHasGlowpad:Z

.field private mHasLayout:Z

.field private mHasNavigationBar:Z

.field private mHeightOfNavigationBar:I

.field private mIsBouncing:Z

.field private mIsEasyUxOn:Z

.field private mIsFirst:Z

.field private mIsJBPUpgrade:Z

.field private mIsKorean:Z

.field private mIsSecured:Z

.field private mMaxVelocity:I

.field private mMinVelocity:I

.field private mNavigationView:Landroid/view/View;

.field private final mScrimClickListener:Landroid/view/View$OnClickListener;

.field private mScrimView:Landroid/view/View;

.field private mScrollListener:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

.field private mScrollState:I

.field private final mScroller:Landroid/widget/Scroller;

.field private mSecondBorder:I

.field private mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

.field private mStartX:F

.field private mStartY:F

.field private mTouchSlop:I

.field private mTouchSlopSquare:I

.field private mUnlockEffect:I

.field private mUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWasChallengeShowing:Z

.field private mWidgetsView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 159
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$1;

    const-string v1, "handleAlpha"

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->HANDLE_ALPHA:Landroid/util/Property;

    .line 176
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$2;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$2;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->sMotionInterpolator:Landroid/view/animation/Interpolator;

    .line 183
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$3;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$3;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->sHandleFadeInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 253
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 254
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 257
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 258
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v9, 0x41000000

    const/4 v8, 0x0

    const/high16 v7, 0x3f000000

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 261
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    const/high16 v5, 0x3f800000

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeOffset:F

    .line 86
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    .line 87
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowingTargetState:Z

    .line 88
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mWasChallengeShowing:Z

    .line 89
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    .line 110
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    .line 138
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mFrameAnimationTarget:F

    .line 145
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeInteractiveExternal:Z

    .line 146
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeInteractiveInternal:Z

    .line 148
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mFinishBouncing:Z

    .line 150
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHasNavigationBar:Z

    .line 154
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsKorean:Z

    .line 189
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$4;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$4;-><init>(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 195
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$5;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$5;-><init>(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrimClickListener:Landroid/view/View$OnClickListener;

    .line 202
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$6;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$6;-><init>(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeClickListener:Landroid/view/View$OnClickListener;

    .line 210
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsJBPUpgrade:Z

    .line 1420
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDistance:D

    .line 1421
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsFirst:Z

    .line 1422
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isIgnoreTouch:Z

    .line 1427
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeHandleCaptured:Z

    .line 1431
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$10;-><init>(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeTouchListener:Landroid/view/View$OnTouchListener;

    .line 1534
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsSecured:Z

    .line 263
    new-instance v5, Landroid/widget/Scroller;

    sget-object v6, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->sMotionInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v5, p1, v6}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScroller:Landroid/widget/Scroller;

    .line 265
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 266
    .local v2, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mMinVelocity:I

    .line 267
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mMaxVelocity:I

    .line 269
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 270
    .local v1, "res":Landroid/content/res/Resources;
    const v5, 0x1050075

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragHandleEdgeSlop:I

    .line 272
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mTouchSlop:I

    .line 273
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mTouchSlop:I

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mTouchSlop:I

    mul-int/2addr v5, v6

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mTouchSlopSquare:I

    .line 275
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 276
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    .line 279
    .local v0, "density":F
    mul-float v5, v9, v0

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragHandleClosedAbove:I

    .line 280
    mul-float v5, v8, v0

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragHandleClosedBelow:I

    .line 281
    mul-float v5, v9, v0

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragHandleOpenAbove:I

    .line 282
    mul-float v5, v8, v0

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragHandleOpenBelow:I

    .line 285
    const v5, 0x105006a

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeBottomBound:I

    .line 287
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110069

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsJBPUpgrade:Z

    .line 290
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setWillNotDraw(Z)V

    .line 291
    const/16 v5, 0x100

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setSystemUiVisibility(I)V

    .line 294
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "easy_mode_switch"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_123

    :goto_d7
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsEasyUxOn:Z

    .line 300
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x10500a8

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mFirstBorder:I

    .line 302
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x10500a9

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mSecondBorder:I

    .line 305
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    .line 306
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "lockscreen_ripple_effect"

    const/4 v6, -0x2

    invoke-static {v3, v5, v4, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mUnlockEffect:I

    .line 309
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->hasNavigationBar()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHasNavigationBar:Z

    .line 310
    const v3, 0x10500d6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHeightOfNavigationBar:I

    .line 318
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-direct {v3, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    .line 319
    return-void

    :cond_123
    move v3, v4

    .line 294
    goto :goto_d7
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mFinishBouncing:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mSecondBorder:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mFirstBorder:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mUnlockEffect:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->onFadeStart(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->onFadeEnd(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsFirst:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsFirst:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isIgnoreTouch:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isIgnoreTouch:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mStartX:F

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    .param p1, "x1"    # F

    .prologue
    .line 57
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mStartX:F

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mStartY:F

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    .param p1, "x1"    # F

    .prologue
    .line 57
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mStartY:F

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)D
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDistance:D

    return-wide v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;D)D
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    .param p1, "x1"    # D

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDistance:D

    return-wide p1
.end method

.method private cancelTransitionsInProgress()V
    .registers 2

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1166
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1167
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->completeChallengeScroll()V

    .line 1169
    :cond_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mFader:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_19

    .line 1170
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mFader:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1172
    :cond_19
    return-void
.end method

.method private crossedDragHandle(FFF)Z
    .registers 10
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "initialY"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 888
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getTop()I

    move-result v0

    .line 889
    .local v0, "challengeTop":I
    const/4 v5, 0x0

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_36

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, p1, v5

    if-gez v5, :cond_36

    move v1, v3

    .line 892
    .local v1, "horizOk":Z
    :goto_17
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-eqz v5, :cond_3a

    .line 893
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getDragHandleSizeAbove()I

    move-result v5

    sub-int v5, v0, v5

    int-to-float v5, v5

    cmpg-float v5, p3, v5

    if-gez v5, :cond_38

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getDragHandleSizeBelow()I

    move-result v5

    add-int/2addr v5, v0

    int-to-float v5, v5

    cmpl-float v5, p2, v5

    if-lez v5, :cond_38

    move v2, v3

    .line 899
    .local v2, "vertOk":Z
    :goto_31
    if-eqz v1, :cond_53

    if-eqz v2, :cond_53

    :goto_35
    return v3

    .end local v1    # "horizOk":Z
    .end local v2    # "vertOk":Z
    :cond_36
    move v1, v4

    .line 889
    goto :goto_17

    .restart local v1    # "horizOk":Z
    :cond_38
    move v2, v4

    .line 893
    goto :goto_31

    .line 896
    :cond_3a
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getDragHandleSizeBelow()I

    move-result v5

    add-int/2addr v5, v0

    int-to-float v5, v5

    cmpl-float v5, p3, v5

    if-lez v5, :cond_51

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getDragHandleSizeAbove()I

    move-result v5

    sub-int v5, v0, v5

    int-to-float v5, v5

    cmpg-float v5, p2, v5

    if-gez v5, :cond_51

    move v2, v3

    .restart local v2    # "vertOk":Z
    :goto_50
    goto :goto_31

    .end local v2    # "vertOk":Z
    :cond_51
    move v2, v4

    goto :goto_50

    .restart local v2    # "vertOk":Z
    :cond_53
    move v3, v4

    .line 899
    goto :goto_35
.end method

.method private getChallengeAlpha()F
    .registers 4

    .prologue
    const/high16 v2, 0x3f800000

    .line 606
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeOffset:F

    sub-float v0, v1, v2

    .line 607
    .local v0, "x":F
    mul-float v1, v0, v0

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    return v1
.end method

.method private getChallengeBottom()I
    .registers 2

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 1305
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getBottom()I

    move-result v0

    goto :goto_5
.end method

.method private getChallengeMargin(Z)I
    .registers 3
    .param p1, "expanded"    # Z

    .prologue
    .line 602
    if-eqz p1, :cond_8

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHasGlowpad:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragHandleEdgeSlop:I

    goto :goto_7
.end method

.method private getContextualWidgetsString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 619
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_contextual_widget_ids"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 621
    .local v0, "appWidgetIdString":Ljava/lang/String;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_16

    .line 624
    .end local v0    # "appWidgetIdString":Ljava/lang/String;
    :goto_15
    return-object v0

    .restart local v0    # "appWidgetIdString":Ljava/lang/String;
    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private getDragHandleSizeAbove()I
    .registers 2

    .prologue
    .line 864
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isChallengeShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragHandleOpenAbove:I

    :goto_8
    return v0

    :cond_9
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragHandleClosedAbove:I

    goto :goto_8
.end method

.method private getDragHandleSizeBelow()I
    .registers 2

    .prologue
    .line 867
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isChallengeShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragHandleOpenBelow:I

    :goto_8
    return v0

    :cond_9
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragHandleClosedBelow:I

    goto :goto_8
.end method

.method private getLayoutBottom()I
    .registers 5

    .prologue
    .line 1292
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-nez v2, :cond_11

    const/4 v0, 0x0

    .line 1295
    .local v0, "bottomMargin":I
    :goto_5
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v1, v2, v0

    .line 1296
    .local v1, "layoutBottom":I
    return v1

    .line 1292
    .end local v0    # "bottomMargin":I
    .end local v1    # "layoutBottom":I
    :cond_11
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;

    iget v0, v2, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->bottomMargin:I

    goto :goto_5
.end method

.method private getMaxChallengeBottom()I
    .registers 5

    .prologue
    .line 1205
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-nez v2, :cond_6

    const/4 v2, 0x0

    .line 1209
    :goto_5
    return v2

    .line 1206
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getLayoutBottom()I

    move-result v1

    .line 1207
    .local v1, "layoutBottom":I
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getMeasuredHeight()I

    move-result v0

    .line 1209
    .local v0, "challengeHeight":I
    add-int v2, v1, v0

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeBottomBound:I

    sub-int/2addr v2, v3

    goto :goto_5
.end method

.method private getMinChallengeBottom()I
    .registers 2

    .prologue
    .line 1213
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getLayoutBottom()I

    move-result v0

    return v0
.end method

.method private isChallengeInteractionBlocked()Z
    .registers 2

    .prologue
    .line 688
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeInteractiveExternal:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeInteractiveInternal:Z

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isEdgeSwipeBeginEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 851
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eqz v2, :cond_8

    .line 856
    :cond_7
    :goto_7
    return v1

    .line 855
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 856
    .local v0, "x":F
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragHandleEdgeSlop:I

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_1f

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragHandleEdgeSlop:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_7

    :cond_1f
    const/4 v1, 0x1

    goto :goto_7
.end method

.method private isExpandChallengeViewBeginEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 841
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eqz v2, :cond_8

    .line 842
    const/4 v2, 0x0

    .line 847
    :goto_7
    return v2

    .line 845
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 846
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 847
    .local v1, "y":F
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isInDragHandle(FF)Z

    move-result v2

    goto :goto_7
.end method

.method private isInChallengeView(FF)Z
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 871
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isPointInView(FFLandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private isInDragHandle(FF)Z
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 875
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isPointInView(FFLandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private isPointInView(FFLandroid/view/View;)Z
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 879
    if-nez p3, :cond_4

    .line 882
    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_3

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_3

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_3

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method private makeChildMeasureSpec(II)I
    .registers 6
    .param p1, "maxSize"    # I
    .param p2, "childDimen"    # I

    .prologue
    .line 905
    packed-switch p2, :pswitch_data_16

    .line 915
    const/high16 v0, 0x40000000

    .line 916
    .local v0, "mode":I
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 919
    .local v1, "size":I
    :goto_9
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    .line 907
    .end local v0    # "mode":I
    .end local v1    # "size":I
    :pswitch_e
    const/high16 v0, -0x80000000

    .line 908
    .restart local v0    # "mode":I
    move v1, p1

    .line 909
    .restart local v1    # "size":I
    goto :goto_9

    .line 911
    .end local v0    # "mode":I
    .end local v1    # "size":I
    :pswitch_12
    const/high16 v0, 0x40000000

    .line 912
    .restart local v0    # "mode":I
    move v1, p1

    .line 913
    .restart local v1    # "size":I
    goto :goto_9

    .line 905
    :pswitch_data_16
    .packed-switch -0x2
        :pswitch_e
        :pswitch_12
    .end packed-switch
.end method

.method private moveChallengeTo(I)Z
    .registers 10
    .param p1, "bottom"    # I

    .prologue
    const/4 v3, 0x1

    .line 1259
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHasLayout:Z

    if-nez v4, :cond_b

    .line 1260
    :cond_9
    const/4 v3, 0x0

    .line 1284
    :goto_a
    return v3

    .line 1263
    :cond_b
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getLayoutBottom()I

    move-result v1

    .line 1264
    .local v1, "layoutBottom":I
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getHeight()I

    move-result v0

    .line 1266
    .local v0, "challengeHeight":I
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getMinChallengeBottom()I

    move-result v4

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getMaxChallengeBottom()I

    move-result v5

    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1269
    const/high16 v4, 0x3f800000

    sub-int v5, p1, v1

    int-to-float v5, v5

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeBottomBound:I

    sub-int v6, v0, v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    sub-float v2, v4, v5

    .line 1271
    .local v2, "offset":F
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeOffset:F

    .line 1272
    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-lez v4, :cond_40

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-nez v4, :cond_40

    .line 1273
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setChallengeShowing(Z)V

    .line 1276
    :cond_40
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getHeight()I

    move-result v6

    sub-int v6, p1, v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getRight()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->layout(IIII)V

    .line 1279
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getChallengeAlpha()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->setAlpha(F)V

    .line 1280
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrollListener:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

    if-eqz v4, :cond_71

    .line 1281
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrollListener:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getTop()I

    move-result v5

    invoke-interface {v4, v2, v5}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;->onScrollPositionChanged(FI)V

    .line 1283
    :cond_71
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->postInvalidateOnAnimation()V

    goto :goto_a
.end method

.method private onFadeEnd(Z)V
    .registers 5
    .param p1, "show"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeInteractiveInternal:Z

    .line 1230
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setChallengeShowing(Z)V

    .line 1232
    if-nez p1, :cond_11

    .line 1233
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getMaxChallengeBottom()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->moveChallengeTo(I)Z

    .line 1236
    :cond_11
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1237
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mFader:Landroid/animation/ObjectAnimator;

    .line 1238
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setScrollState(I)V

    .line 1239
    return-void
.end method

.method private onFadeStart(Z)V
    .registers 5
    .param p1, "show"    # Z

    .prologue
    .line 1218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeInteractiveInternal:Z

    .line 1219
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1221
    if-eqz p1, :cond_13

    .line 1222
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getMinChallengeBottom()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->moveChallengeTo(I)Z

    .line 1225
    :cond_13
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setScrollState(I)V

    .line 1226
    return-void
.end method

.method private resetTouch()V
    .registers 2

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 693
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 694
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    .line 695
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mBlockDrag:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragging:Z

    .line 696
    return-void
.end method

.method private sendInitialListenerUpdates()V
    .registers 4

    .prologue
    .line 354
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrollListener:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

    if-eqz v1, :cond_1c

    .line 355
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getTop()I

    move-result v0

    .line 356
    .local v0, "challengeTop":I
    :goto_e
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrollListener:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeOffset:F

    invoke-interface {v1, v2, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;->onScrollPositionChanged(FI)V

    .line 357
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrollListener:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrollState:I

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;->onScrollStateChanged(I)V

    .line 359
    .end local v0    # "challengeTop":I
    :cond_1c
    return-void

    .line 355
    :cond_1d
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private setChallengeShowing(Z)V
    .registers 5
    .param p1, "showChallenge"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 484
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-ne v0, p1, :cond_7

    .line 520
    :cond_6
    :goto_6
    return-void

    .line 487
    :cond_7
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    .line 489
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mNavigationView:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 496
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-eqz v0, :cond_48

    .line 497
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 499
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mNavigationView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 500
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->setVisibility(I)V

    .line 501
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 502
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->requestAccessibilityFocus()Z

    .line 503
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mContext:Landroid/content/Context;

    const v2, 0x1040553

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 507
    :cond_48
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 509
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mNavigationView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 510
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 512
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 516
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mContext:Landroid/content/Context;

    const v2, 0x1040554

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_6
.end method

.method private showChallenge(I)V
    .registers 7
    .param p1, "velocity"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1322
    const/4 v0, 0x0

    .line 1323
    .local v0, "show":Z
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mMinVelocity:I

    if-le v3, v4, :cond_14

    .line 1324
    if-gez p1, :cond_12

    move v0, v1

    .line 1328
    :goto_e
    invoke-direct {p0, v0, p1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->showChallenge(ZI)V

    .line 1329
    return-void

    :cond_12
    move v0, v2

    .line 1324
    goto :goto_e

    .line 1326
    :cond_14
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeOffset:F

    const/high16 v4, 0x3f000000

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1e

    move v0, v1

    :goto_1d
    goto :goto_e

    :cond_1e
    move v0, v2

    goto :goto_1d
.end method

.method private showChallenge(ZI)V
    .registers 6
    .param p1, "show"    # Z
    .param p2, "velocity"    # I

    .prologue
    .line 1332
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-nez v1, :cond_9

    .line 1333
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setChallengeShowing(Z)V

    .line 1343
    :cond_8
    :goto_8
    return-void

    .line 1337
    :cond_9
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHasLayout:Z

    if-eqz v1, :cond_8

    .line 1338
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowingTargetState:Z

    .line 1339
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getLayoutBottom()I

    move-result v0

    .line 1340
    .local v0, "layoutBottom":I
    if-eqz p1, :cond_19

    .end local v0    # "layoutBottom":I
    :goto_15
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->animateChallengeTo(II)V

    goto :goto_8

    .restart local v0    # "layoutBottom":I
    :cond_19
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getHeight()I

    move-result v1

    add-int/2addr v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeBottomBound:I

    sub-int v0, v1, v2

    goto :goto_15
.end method


# virtual methods
.method animateChallengeTo(II)V
    .registers 16
    .param p1, "y"    # I
    .param p2, "velocity"    # I

    .prologue
    const/4 v11, 0x2

    const/4 v1, 0x0

    const/high16 v12, 0x3f800000

    .line 445
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-nez v0, :cond_9

    .line 481
    :goto_8
    return-void

    .line 450
    :cond_9
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->cancelTransitionsInProgress()V

    .line 452
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeInteractiveInternal:Z

    .line 453
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    const/4 v3, 0x0

    invoke-virtual {v0, v11, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 454
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getBottom()I

    move-result v2

    .line 455
    .local v2, "sy":I
    sub-int v4, p1, v2

    .line 456
    .local v4, "dy":I
    if-nez v4, :cond_22

    .line 457
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->completeChallengeScroll()V

    goto :goto_8

    .line 461
    :cond_22
    invoke-virtual {p0, v11}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setScrollState(I)V

    .line 463
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getHeight()I

    move-result v7

    .line 464
    .local v7, "childHeight":I
    div-int/lit8 v10, v7, 0x2

    .line 465
    .local v10, "halfHeight":I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v12

    int-to-float v3, v7

    div-float/2addr v0, v3

    invoke-static {v12, v0}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 466
    .local v9, "distanceRatio":F
    int-to-float v0, v10

    int-to-float v3, v10

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->distanceInfluenceForSnapDuration(F)F

    move-result v11

    mul-float/2addr v3, v11

    add-float v8, v0, v3

    .line 469
    .local v8, "distance":F
    const/4 v5, 0x0

    .line 470
    .local v5, "duration":I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 471
    if-lez p2, :cond_69

    .line 472
    const/high16 v0, 0x447a0000

    int-to-float v3, p2

    div-float v3, v8, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v5, v0, 0x4

    .line 477
    :goto_59
    const/16 v0, 0x258

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 479
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScroller:Landroid/widget/Scroller;

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 480
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->postInvalidateOnAnimation()V

    goto :goto_8

    .line 474
    :cond_69
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v3, v7

    div-float v6, v0, v3

    .line 475
    .local v6, "childDelta":F
    add-float v0, v6, v12

    const/high16 v3, 0x42c80000

    mul-float/2addr v0, v3

    float-to-int v5, v0

    goto :goto_59
.end method

.method animateHandle(Z)V
    .registers 6
    .param p1, "visible"    # Z

    .prologue
    .line 339
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHandleAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_c

    .line 340
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHandleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 341
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHandleAnimation:Landroid/animation/ObjectAnimator;

    .line 343
    :cond_c
    if-eqz p1, :cond_17

    const/high16 v0, 0x3f800000

    .line 344
    .local v0, "targetAlpha":F
    :goto_10
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHandleAlpha:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_19

    .line 351
    :goto_16
    return-void

    .line 343
    .end local v0    # "targetAlpha":F
    :cond_17
    const/4 v0, 0x0

    goto :goto_10

    .line 347
    .restart local v0    # "targetAlpha":F
    :cond_19
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->HANDLE_ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHandleAnimation:Landroid/animation/ObjectAnimator;

    .line 348
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHandleAnimation:Landroid/animation/ObjectAnimator;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->sHandleFadeInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 349
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHandleAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 350
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHandleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_16
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1364
    instance-of v0, p1, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;

    return v0
.end method

.method completeChallengeScroll()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 421
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowingTargetState:Z

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setChallengeShowing(Z)V

    .line 422
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-eqz v0, :cond_1b

    const/high16 v0, 0x3f800000

    :goto_c
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeOffset:F

    .line 423
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setScrollState(I)V

    .line 424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeInteractiveInternal:Z

    .line 425
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 426
    return-void

    .line 422
    :cond_1b
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public computeScroll()V
    .registers 3

    .prologue
    .line 1145
    invoke-super {p0}, Landroid/view/ViewGroup;->computeScroll()V

    .line 1147
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1148
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-nez v0, :cond_1c

    .line 1150
    const-string v0, "SlidingChallengeLayout"

    const-string v1, "Challenge view missing in computeScroll"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1162
    :cond_1b
    :goto_1b
    return-void

    .line 1155
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1156
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->moveChallengeTo(I)Z

    .line 1158
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1159
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_1b
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 797
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 798
    .local v0, "action":I
    const/4 v1, 0x0

    .line 799
    .local v1, "handled":Z
    if-nez v0, :cond_c

    .line 801
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mEdgeCaptured:Z

    .line 802
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeHandleCaptured:Z

    .line 805
    :cond_c
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_32

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsSecured:Z

    if-nez v2, :cond_32

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeHandleCaptured:Z

    if-nez v2, :cond_26

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isExpandChallengeViewBeginEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 808
    :cond_26
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeHandleCaptured:Z

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    or-int v1, v2, v3

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeHandleCaptured:Z

    .line 811
    :cond_32
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-eqz v2, :cond_52

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mEdgeCaptured:Z

    if-nez v2, :cond_52

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-eqz v2, :cond_52

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isInChallengeView(FF)Z

    move-result v2

    if-eqz v2, :cond_52

    if-nez v1, :cond_52

    .line 814
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 817
    :cond_52
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mWidgetsView:Landroid/view/View;

    if-eqz v2, :cond_72

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    if-nez v2, :cond_72

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mEdgeCaptured:Z

    if-nez v2, :cond_64

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isEdgeSwipeBeginEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_72

    :cond_64
    if-nez v1, :cond_72

    .line 825
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mEdgeCaptured:Z

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mWidgetsView:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    or-int v1, v2, v3

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mEdgeCaptured:Z

    .line 828
    :cond_72
    if-nez v1, :cond_80

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mEdgeCaptured:Z

    if-nez v2, :cond_80

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeHandleCaptured:Z

    if-nez v2, :cond_80

    .line 829
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 832
    :cond_80
    const/4 v2, 0x1

    if-eq v0, v2, :cond_86

    const/4 v2, 0x3

    if-ne v0, v2, :cond_8a

    .line 833
    :cond_86
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mEdgeCaptured:Z

    .line 834
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeHandleCaptured:Z

    .line 837
    :cond_8a
    return v1
.end method

.method distanceInfluenceForSnapDuration(F)F
    .registers 6
    .param p1, "f"    # F

    .prologue
    .line 404
    const/high16 v0, 0x3f000000

    sub-float/2addr p1, v0

    .line 405
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 406
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 1131
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1142
    return-void
.end method

.method public fadeChallenge(Z)V
    .registers 8
    .param p1, "show"    # Z

    .prologue
    .line 1183
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-eqz v2, :cond_34

    .line 1185
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->cancelTransitionsInProgress()V

    .line 1186
    if-eqz p1, :cond_35

    const/high16 v0, 0x3f800000

    .line 1187
    .local v0, "alpha":F
    :goto_b
    if-eqz p1, :cond_37

    const/16 v1, 0xa0

    .line 1188
    .local v1, "duration":I
    :goto_f
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    const-string v3, "alpha"

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mFader:Landroid/animation/ObjectAnimator;

    .line 1189
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mFader:Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$9;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$9;-><init>(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;Z)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1199
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mFader:Landroid/animation/ObjectAnimator;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1200
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mFader:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 1202
    .end local v0    # "alpha":F
    .end local v1    # "duration":I
    :cond_34
    return-void

    .line 1186
    :cond_35
    const/4 v0, 0x0

    goto :goto_b

    .line 1187
    .restart local v0    # "alpha":F
    :cond_37
    const/16 v1, 0x64

    goto :goto_f
.end method

.method public fadeInChallenge()V
    .registers 2

    .prologue
    .line 1175
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->fadeChallenge(Z)V

    .line 1176
    return-void
.end method

.method public fadeOutChallenge()V
    .registers 2

    .prologue
    .line 1179
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->fadeChallenge(Z)V

    .line 1180
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    .line 1359
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1347
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1352
    instance-of v0, p1, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;

    if-eqz v0, :cond_c

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;

    check-cast p1, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;-><init>(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;)V

    :goto_b
    return-object v0

    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_c
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_18

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_b

    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_18
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b
.end method

.method public getBouncerAnimationDuration()I
    .registers 2

    .prologue
    .line 541
    const/16 v0, 0xfa

    return v0
.end method

.method public getMaxChallengeTop()I
    .registers 4

    .prologue
    .line 1242
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-nez v2, :cond_6

    const/4 v2, 0x0

    .line 1246
    :goto_5
    return v2

    .line 1244
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getLayoutBottom()I

    move-result v1

    .line 1245
    .local v1, "layoutBottom":I
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getMeasuredHeight()I

    move-result v0

    .line 1246
    .local v0, "challengeHeight":I
    sub-int v2, v1, v0

    goto :goto_5
.end method

.method public hideBouncer()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 573
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    if-nez v1, :cond_6

    .line 599
    :cond_5
    :goto_5
    return-void

    .line 574
    :cond_6
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mWasChallengeShowing:Z

    if-nez v1, :cond_d

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->showChallenge(Z)V

    .line 575
    :cond_d
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    .line 577
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    if-eqz v1, :cond_31

    .line 578
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    const-string v2, "alpha"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 579
    .local v0, "anim":Landroid/animation/Animator;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 580
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$8;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$8;-><init>(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 591
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 593
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_31
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-eqz v1, :cond_3c

    .line 594
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    const/16 v2, 0xfa

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->hideBouncer(I)V

    .line 596
    :cond_3c
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mBouncerListener:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    if-eqz v1, :cond_5

    .line 597
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mBouncerListener:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    invoke-interface {v1, v5}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;->onBouncerStateChanged(Z)V

    goto :goto_5
.end method

.method public isBouncing()Z
    .registers 2

    .prologue
    .line 536
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    return v0
.end method

.method public isChallengeOverlapping()Z
    .registers 2

    .prologue
    .line 531
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    return v0
.end method

.method public isChallengeShowing()Z
    .registers 2

    .prologue
    .line 526
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .registers 2

    .prologue
    .line 374
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 376
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHasLayout:Z

    .line 377
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 381
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 383
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 384
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHasLayout:Z

    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 387
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v6, 0x0

    .line 630
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v3

    .line 632
    .local v3, "mode":Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsEasyUxOn:Z

    if-nez v7, :cond_20

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsSecured:Z

    if-eqz v7, :cond_21

    sget-object v7, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->FMM:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v3, v7, :cond_21

    sget-object v7, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierLock:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v3, v7, :cond_21

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getContextualWidgetsString()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_21

    .line 684
    :cond_20
    :goto_20
    return v6

    .line 640
    :cond_21
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v7, :cond_2b

    .line 641
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 643
    :cond_2b
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 645
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 646
    .local v0, "action":I
    packed-switch v0, :pswitch_data_ac

    .line 679
    :cond_37
    :goto_37
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mBlockDrag:Z

    if-nez v7, :cond_41

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isChallengeInteractionBlocked()Z

    move-result v7

    if-eqz v7, :cond_45

    .line 680
    :cond_41
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    .line 681
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragging:Z

    .line 684
    :cond_45
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragging:Z

    goto :goto_20

    .line 648
    :pswitch_48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mGestureStartX:F

    .line 649
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mGestureStartY:F

    .line 650
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mBlockDrag:Z

    goto :goto_37

    .line 655
    :pswitch_57
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->resetTouch()V

    goto :goto_37

    .line 658
    :pswitch_5b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 659
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_60
    if-ge v2, v1, :cond_37

    .line 660
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 661
    .local v4, "x":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 662
    .local v5, "y":F
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    if-nez v7, :cond_9f

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    if-ne v7, v9, :cond_9f

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mGestureStartY:F

    invoke-direct {p0, v4, v5, v7}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->crossedDragHandle(FFF)Z

    move-result v7

    if-nez v7, :cond_84

    invoke-direct {p0, v4, v5}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isInChallengeView(FF)Z

    move-result v7

    if-eqz v7, :cond_9f

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrollState:I

    if-ne v7, v11, :cond_9f

    .line 666
    :cond_84
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    .line 667
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mGestureStartX:F

    .line 668
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mGestureStartY:F

    .line 669
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getChallengeBottom()I

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mGestureStartChallengeBottom:I

    .line 670
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragging:Z

    .line 671
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    const/4 v8, 0x0

    invoke-virtual {v7, v11, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 659
    :cond_9c
    :goto_9c
    add-int/lit8 v2, v2, 0x1

    goto :goto_60

    .line 672
    :cond_9f
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-eqz v7, :cond_9c

    invoke-direct {p0, v4, v5}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isInChallengeView(FF)Z

    move-result v7

    if-eqz v7, :cond_9c

    .line 673
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mBlockDrag:Z

    goto :goto_9c

    .line 646
    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_48
        :pswitch_57
        :pswitch_5b
        :pswitch_57
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 33
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1067
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getPaddingLeft()I

    move-result v17

    .line 1068
    .local v17, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getPaddingTop()I

    move-result v19

    .line 1069
    .local v19, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getPaddingRight()I

    move-result v18

    .line 1070
    .local v18, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getPaddingBottom()I

    move-result v16

    .line 1071
    .local v16, "paddingBottom":I
    sub-int v22, p4, p2

    .line 1072
    .local v22, "width":I
    sub-int v11, p5, p3

    .line 1074
    .local v11, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getChildCount()I

    move-result v9

    .line 1075
    .local v9, "count":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_19
    if-ge v12, v9, :cond_132

    .line 1076
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1078
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v23

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_30

    .line 1075
    :goto_2d
    add-int/lit8 v12, v12, 0x1

    goto :goto_19

    .line 1080
    :cond_30
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;

    .line 1082
    .local v15, "lp":Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;
    iget v0, v15, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_9f

    .line 1085
    add-int v23, v17, v22

    sub-int v23, v23, v18

    div-int/lit8 v5, v23, 0x2

    .line 1086
    .local v5, "center":I
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 1087
    .local v8, "childWidth":I
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1088
    .local v7, "childHeight":I
    div-int/lit8 v23, v8, 0x2

    sub-int v14, v5, v23

    .line 1089
    .local v14, "left":I
    sub-int v23, v11, v16

    iget v0, v15, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->bottomMargin:I

    move/from16 v24, v0

    sub-int v13, v23, v24

    .line 1092
    .local v13, "layoutBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeBottomBound:I

    move/from16 v23, v0

    sub-int v10, v7, v23

    .line 1094
    .local v10, "handleHeight":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHasNavigationBar:Z

    move/from16 v23, v0

    if-eqz v23, :cond_74

    .line 1095
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHeightOfNavigationBar:I

    move/from16 v23, v0

    sub-int v10, v10, v23

    .line 1097
    :cond_74
    int-to-float v0, v10

    move/from16 v23, v0

    const/high16 v24, 0x3f800000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeOffset:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    add-int v4, v13, v23

    .line 1099
    .local v4, "bottom":I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getChallengeAlpha()F

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1100
    sub-int v23, v4, v7

    add-int v24, v14, v8

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v6, v14, v0, v1, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_2d

    .line 1101
    .end local v4    # "bottom":I
    .end local v5    # "center":I
    .end local v7    # "childHeight":I
    .end local v8    # "childWidth":I
    .end local v10    # "handleHeight":I
    .end local v13    # "layoutBottom":I
    .end local v14    # "left":I
    :cond_9f
    iget v0, v15, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    move/from16 v23, v0

    const/16 v24, 0x6

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d6

    .line 1102
    add-int v23, v17, v22

    sub-int v23, v23, v18

    div-int/lit8 v5, v23, 0x2

    .line 1103
    .restart local v5    # "center":I
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    sub-int v14, v5, v23

    .line 1104
    .restart local v14    # "left":I
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    add-int v20, v14, v23

    .line 1105
    .local v20, "right":I
    sub-int v23, v11, v16

    iget v0, v15, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->bottomMargin:I

    move/from16 v24, v0

    sub-int v4, v23, v24

    .line 1106
    .restart local v4    # "bottom":I
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    sub-int v21, v4, v23

    .line 1107
    .local v21, "top":I
    move/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v6, v14, v0, v1, v4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2d

    .line 1108
    .end local v4    # "bottom":I
    .end local v5    # "center":I
    .end local v14    # "left":I
    .end local v20    # "right":I
    .end local v21    # "top":I
    :cond_d6
    iget v0, v15, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    move/from16 v23, v0

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_10d

    .line 1109
    add-int v23, v17, v22

    sub-int v23, v23, v18

    div-int/lit8 v5, v23, 0x2

    .line 1110
    .restart local v5    # "center":I
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    sub-int v14, v5, v23

    .line 1111
    .restart local v14    # "left":I
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    add-int v20, v14, v23

    .line 1112
    .restart local v20    # "right":I
    sub-int v23, v11, v16

    iget v0, v15, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->bottomMargin:I

    move/from16 v24, v0

    sub-int v4, v23, v24

    .line 1113
    .restart local v4    # "bottom":I
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    sub-int v21, v4, v23

    .line 1114
    .restart local v21    # "top":I
    move/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v6, v14, v0, v1, v4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2d

    .line 1117
    .end local v4    # "bottom":I
    .end local v5    # "center":I
    .end local v14    # "left":I
    .end local v20    # "right":I
    .end local v21    # "top":I
    :cond_10d
    iget v0, v15, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->leftMargin:I

    move/from16 v23, v0

    add-int v23, v23, v17

    iget v0, v15, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->topMargin:I

    move/from16 v24, v0

    add-int v24, v24, v19

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v25

    add-int v25, v25, v17

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    add-int v26, v26, v19

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2d

    .line 1124
    .end local v6    # "child":Landroid/view/View;
    .end local v15    # "lp":Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;
    :cond_132
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHasLayout:Z

    move/from16 v23, v0

    if-nez v23, :cond_142

    .line 1125
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHasLayout:Z

    .line 1127
    :cond_142
    return-void
.end method

.method protected onMeasure(II)V
    .registers 30
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 924
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v3, 0x40000000

    if-ne v2, v3, :cond_10

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v3, 0x40000000

    if-eq v2, v3, :cond_18

    .line 926
    :cond_10
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "SlidingChallengeLayout must be measured with an exact size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 930
    :cond_18
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v24

    .line 931
    .local v24, "width":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 932
    .local v15, "height":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setMeasuredDimension(II)V

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    move-object/from16 v19, v0

    .line 936
    .local v19, "oldChallengeView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    move-object/from16 v20, v0

    .line 937
    .local v20, "oldExpandChallengeView":Landroid/view/View;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    .line 938
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    .line 939
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mNavigationView:Landroid/view/View;

    .line 940
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getChildCount()I

    move-result v13

    .line 944
    .local v13, "count":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_48
    move/from16 v0, v16

    if-ge v0, v13, :cond_1a3

    .line 945
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 946
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;

    .line 947
    .local v17, "lp":Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_10d

    .line 948
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-eqz v2, :cond_6f

    .line 949
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "There may only be one child with layout_isChallenge=\"true\""

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 952
    :cond_6f
    instance-of v2, v8, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-nez v2, :cond_7b

    .line 953
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Challenge must be a KeyguardSecurityContainer"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7b
    move-object v2, v8

    .line 956
    check-cast v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    .line 957
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    move-object/from16 v0, v19

    if-eq v2, v0, :cond_98

    .line 958
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-eqz v2, :cond_e1

    const/4 v2, 0x0

    :goto_95
    invoke-virtual {v3, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->setVisibility(I)V

    .line 961
    :cond_98
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHasLayout:Z

    if-nez v2, :cond_dd

    .line 963
    const v2, 0x10203be

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_e3

    const/4 v2, 0x1

    :goto_a8
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHasGlowpad:Z

    .line 964
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHasGlowpad:Z

    .line 965
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getChallengeMargin(Z)I

    move-result v2

    move-object/from16 v0, v17

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->rightMargin:I

    move-object/from16 v0, v17

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->leftMargin:I

    .line 967
    const v2, 0x10203c1

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_e5

    .line 968
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500d7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    .line 970
    .local v21, "padding":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, v21

    move/from16 v1, v21

    invoke-virtual {v8, v0, v2, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 944
    .end local v21    # "padding":I
    :cond_dd
    :goto_dd
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_48

    .line 958
    :cond_e1
    const/4 v2, 0x4

    goto :goto_95

    .line 963
    :cond_e3
    const/4 v2, 0x0

    goto :goto_a8

    .line 971
    :cond_e5
    const v2, 0x10203b8

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_f6

    .line 973
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v8, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_dd

    .line 974
    :cond_f6
    const v2, 0x10203db

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_dd

    .line 976
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragHandleEdgeSlop:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragHandleEdgeSlop:I

    const/4 v5, 0x0

    invoke-virtual {v8, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_dd

    .line 979
    :cond_10d
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_15c

    .line 980
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    if-eqz v2, :cond_122

    .line 981
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "There may only be one child with layout_childType=\"expandChallengeHandle\""

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 985
    :cond_122
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    .line 986
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    move-object/from16 v0, v20

    if-eq v2, v0, :cond_dd

    .line 987
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-eqz v2, :cond_14e

    const/4 v2, 0x4

    :goto_139
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 988
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsSecured:Z

    if-eqz v2, :cond_150

    .line 989
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_dd

    .line 987
    :cond_14e
    const/4 v2, 0x0

    goto :goto_139

    .line 991
    :cond_150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_dd

    .line 994
    :cond_15c
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_188

    .line 995
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mNavigationView:Landroid/view/View;

    if-eqz v2, :cond_172

    .line 996
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "There may only be one child with layout_childType=\"navigation\""

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1000
    :cond_172
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mNavigationView:Landroid/view/View;

    .line 1001
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mNavigationView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-eqz v2, :cond_186

    const/4 v2, 0x4

    :goto_181
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_dd

    :cond_186
    const/4 v2, 0x0

    goto :goto_181

    .line 1002
    :cond_188
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_196

    .line 1003
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setScrimView(Landroid/view/View;)V

    goto/16 :goto_dd

    .line 1004
    :cond_196
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_dd

    .line 1005
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mWidgetsView:Landroid/view/View;

    goto/16 :goto_dd

    .line 1012
    .end local v8    # "child":Landroid/view/View;
    .end local v17    # "lp":Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;
    :cond_1a3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-eqz v2, :cond_1fa

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1fa

    .line 1019
    move/from16 v6, p2

    .line 1020
    .local v6, "challengeHeightSpec":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getRootView()Landroid/view/View;

    move-result-object v22

    .line 1021
    .local v22, "root":Landroid/view/View;
    if-eqz v22, :cond_1ed

    .line 1022
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;

    .line 1023
    .restart local v17    # "lp":Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v23

    .line 1024
    .local v23, "specSize":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int v25, v2, v3

    .line 1025
    .local v25, "windowHeight":I
    sub-int v14, v25, v23

    .line 1026
    .local v14, "diff":I
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->maxHeight:I

    sub-int v18, v2, v14

    .line 1027
    .local v18, "maxChallengeHeight":I
    if-lez v18, :cond_1ed

    .line 1028
    move-object/from16 v0, v17

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->makeChildMeasureSpec(II)I

    move-result v6

    .line 1031
    .end local v14    # "diff":I
    .end local v17    # "lp":Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;
    .end local v18    # "maxChallengeHeight":I
    .end local v23    # "specSize":I
    .end local v25    # "windowHeight":I
    :cond_1ed
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1035
    .end local v6    # "challengeHeightSpec":I
    .end local v22    # "root":Landroid/view/View;
    :cond_1fa
    const/16 v16, 0x0

    :goto_1fc
    move/from16 v0, v16

    if-ge v0, v13, :cond_25c

    .line 1036
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1037
    .restart local v8    # "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_213

    .line 1035
    :cond_210
    :goto_210
    add-int/lit8 v16, v16, 0x1

    goto :goto_1fc

    .line 1041
    :cond_213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-eq v8, v2, :cond_210

    .line 1045
    move/from16 v9, p1

    .local v9, "parentWidthSpec":I
    move/from16 v11, p2

    .line 1046
    .local v11, "parentHeightSpec":I
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;

    .line 1047
    .restart local v17    # "lp":Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_254

    .line 1048
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getRootView()Landroid/view/View;

    move-result-object v22

    .line 1049
    .restart local v22    # "root":Landroid/view/View;
    if-eqz v22, :cond_254

    .line 1053
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v26, v0

    .line 1054
    .local v26, "windowWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int v25, v2, v3

    .line 1055
    .restart local v25    # "windowHeight":I
    const/high16 v2, 0x40000000

    move/from16 v0, v26

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 1057
    const/high16 v2, 0x40000000

    move/from16 v0, v25

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 1061
    .end local v22    # "root":Landroid/view/View;
    .end local v25    # "windowHeight":I
    .end local v26    # "windowWidth":I
    :cond_254
    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_210

    .line 1063
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "parentWidthSpec":I
    .end local v11    # "parentHeightSpec":I
    .end local v17    # "lp":Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;
    :cond_25c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 700
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v4

    .line 702
    .local v4, "mode":Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsEasyUxOn:Z

    if-nez v10, :cond_1f

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsSecured:Z

    if-eqz v10, :cond_21

    sget-object v10, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->FMM:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v4, v10, :cond_21

    sget-object v10, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierLock:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v4, v10, :cond_21

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getContextualWidgetsString()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_21

    :cond_1f
    move v8, v9

    .line 785
    :cond_20
    :goto_20
    return v8

    .line 710
    :cond_21
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_2b

    .line 711
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 713
    :cond_2b
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 715
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 716
    .local v0, "action":I
    packed-switch v0, :pswitch_data_116

    :pswitch_37
    goto :goto_20

    .line 718
    :pswitch_38
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mBlockDrag:Z

    .line 719
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mGestureStartX:F

    .line 720
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mGestureStartY:F

    goto :goto_20

    .line 724
    :pswitch_47
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragging:Z

    if-eqz v10, :cond_54

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isChallengeInteractionBlocked()Z

    move-result v10

    if-nez v10, :cond_54

    .line 725
    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->showChallenge(I)V

    .line 727
    :cond_54
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->resetTouch()V

    goto :goto_20

    .line 731
    :pswitch_58
    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v10

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    if-ne v9, v10, :cond_20

    .line 735
    :pswitch_64
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragging:Z

    if-eqz v9, :cond_84

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isChallengeInteractionBlocked()Z

    move-result v9

    if-nez v9, :cond_84

    .line 736
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v10, 0x3e8

    iget v11, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mMaxVelocity:I

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 737
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    invoke-virtual {v9, v10}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v9

    float-to-int v9, v9

    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->showChallenge(I)V

    .line 739
    :cond_84
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->resetTouch()V

    goto :goto_20

    .line 743
    :pswitch_88
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragging:Z

    if-nez v10, :cond_de

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mBlockDrag:Z

    if-nez v10, :cond_de

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    if-nez v10, :cond_de

    .line 744
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 745
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_99
    if-ge v2, v1, :cond_de

    .line 746
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 747
    .local v6, "x":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 749
    .local v7, "y":F
    invoke-direct {p0, v6, v7}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isInDragHandle(FF)Z

    move-result v10

    if-nez v10, :cond_bb

    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mGestureStartY:F

    invoke-direct {p0, v6, v7, v10}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->crossedDragHandle(FFF)Z

    move-result v10

    if-nez v10, :cond_bb

    invoke-direct {p0, v6, v7}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isInChallengeView(FF)Z

    move-result v10

    if-eqz v10, :cond_f5

    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrollState:I

    if-ne v10, v12, :cond_f5

    :cond_bb
    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_f5

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isChallengeInteractionBlocked()Z

    move-result v10

    if-nez v10, :cond_f5

    .line 753
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mGestureStartX:F

    .line 754
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mGestureStartY:F

    .line 755
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    .line 756
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getChallengeBottom()I

    move-result v10

    iput v10, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mGestureStartChallengeBottom:I

    .line 757
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragging:Z

    .line 758
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    const/4 v11, 0x0

    invoke-virtual {v10, v12, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 764
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v6    # "x":F
    .end local v7    # "y":F
    :cond_de
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mDragging:Z

    if-eqz v10, :cond_20

    .line 767
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setScrollState(I)V

    .line 769
    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 770
    .local v3, "index":I
    if-gez v3, :cond_f8

    .line 773
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->resetTouch()V

    .line 774
    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->showChallenge(I)V

    goto/16 :goto_20

    .line 745
    .end local v3    # "index":I
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v6    # "x":F
    .restart local v7    # "y":F
    :cond_f5
    add-int/lit8 v2, v2, 0x1

    goto :goto_99

    .line 777
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v6    # "x":F
    .end local v7    # "y":F
    .restart local v3    # "index":I
    :cond_f8
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 778
    .restart local v7    # "y":F
    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mGestureStartY:F

    sub-float v9, v7, v9

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getLayoutBottom()I

    move-result v10

    iget v11, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeBottomBound:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 781
    .local v5, "pos":F
    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mGestureStartChallengeBottom:I

    float-to-int v10, v5

    add-int/2addr v9, v10

    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->moveChallengeTo(I)Z

    goto/16 :goto_20

    .line 716
    nop

    :pswitch_data_116
    .packed-switch 0x0
        :pswitch_38
        :pswitch_64
        :pswitch_88
        :pswitch_47
        :pswitch_37
        :pswitch_37
        :pswitch_58
    .end packed-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-eq p1, v0, :cond_b

    .line 394
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->hideBouncer()V

    .line 396
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 397
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2
    .param p1, "allowIntercept"    # Z

    .prologue
    .line 615
    return-void
.end method

.method public setChallengeInteractive(Z)V
    .registers 3
    .param p1, "interactive"    # Z

    .prologue
    .line 332
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeInteractiveExternal:Z

    .line 333
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 334
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 336
    :cond_b
    return-void
.end method

.method public setHandleAlpha(F)V
    .registers 3
    .param p1, "alpha"    # F

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 323
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 326
    :cond_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mNavigationView:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 327
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mNavigationView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 329
    :cond_12
    return-void
.end method

.method public setIsSecured(Z)V
    .registers 2
    .param p1, "secured"    # Z

    .prologue
    .line 1537
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsSecured:Z

    .line 1538
    return-void
.end method

.method public setOnBouncerStateChangedListener(Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mBouncerListener:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    .line 370
    return-void
.end method

.method public setOnChallengeScrolledListener(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrollListener:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

    .line 363
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mHasLayout:Z

    if-eqz v0, :cond_9

    .line 364
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->sendInitialListenerUpdates()V

    .line 366
    :cond_9
    return-void
.end method

.method setScrimView(Landroid/view/View;)V
    .registers 4
    .param p1, "scrim"    # Landroid/view/View;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 430
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    :cond_a
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    .line 433
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    :goto_13
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 434
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 435
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrimClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    return-void

    .line 433
    :cond_24
    const/16 v0, 0x8

    goto :goto_13
.end method

.method setScrollState(I)V
    .registers 3
    .param p1, "state"    # I

    .prologue
    .line 410
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrollState:I

    if-eq v0, p1, :cond_19

    .line 411
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrollState:I

    .line 413
    if-nez p1, :cond_1a

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_d
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->animateHandle(Z)V

    .line 414
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrollListener:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

    if-eqz v0, :cond_19

    .line 415
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrollListener:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;->onScrollStateChanged(I)V

    .line 418
    :cond_19
    return-void

    .line 413
    :cond_1a
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setSecurityCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 1531
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 1532
    return-void
.end method

.method public showBouncer()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 546
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mFinishBouncing:Z

    if-nez v1, :cond_6

    .line 569
    :cond_5
    :goto_5
    return-void

    .line 547
    :cond_6
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    if-nez v1, :cond_5

    .line 548
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mWasChallengeShowing:Z

    .line 549
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    .line 550
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->showChallenge(Z)V

    .line 551
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    if-eqz v1, :cond_36

    .line 552
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    const-string v2, "alpha"

    new-array v3, v6, [F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 553
    .local v0, "anim":Landroid/animation/Animator;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 554
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$7;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$7;-><init>(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 560
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 562
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_36
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-eqz v1, :cond_41

    .line 563
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    const/16 v2, 0xfa

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->showBouncer(I)V

    .line 566
    :cond_41
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mBouncerListener:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    if-eqz v1, :cond_5

    .line 567
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mBouncerListener:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    invoke-interface {v1, v6}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;->onBouncerStateChanged(Z)V

    goto :goto_5
.end method

.method public showChallenge(Z)V
    .registers 3
    .param p1, "show"    # Z

    .prologue
    .line 1313
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->showChallenge(ZI)V

    .line 1314
    if-nez p1, :cond_9

    .line 1317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->mBlockDrag:Z

    .line 1319
    :cond_9
    return-void
.end method
