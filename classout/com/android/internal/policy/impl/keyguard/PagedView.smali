.class public abstract Lcom/android/internal/policy/impl/keyguard/PagedView;
.super Landroid/view/ViewGroup;
.source "PagedView.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;,
        Lcom/android/internal/policy/impl/keyguard/PagedView$SavedState;,
        Lcom/android/internal/policy/impl/keyguard/PagedView$ScrollInterpolator;,
        Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;
    }
.end annotation


# static fields
.field protected static final ALPHA_QUANTIZE_LEVEL:F = 1.0E-4f

.field static final AUTOMATIC_PAGE_SPACING:I = -0x1

.field private static final DEBUG:Z = false

.field private static final DISABLE_FLING_TO_DELETE:Z = false

.field private static final DISABLE_TOUCH_INTERACTION:Z = false

.field private static final DISABLE_TOUCH_SIDE_PAGES:Z = true

.field private static final FLING_THRESHOLD_VELOCITY:I = 0x1f4

.field protected static final INVALID_PAGE:I = -0x1

.field protected static final INVALID_POINTER:I = -0x1

.field private static final MIN_FLING_VELOCITY:I = 0xfa

.field private static final MIN_LENGTH_FOR_FLING:I = 0x19

.field private static final MIN_SNAP_VELOCITY:I = 0x5dc

.field protected static final NANOTIME_DIV:F = 1.0E9f

.field private static final OVERSCROLL_ACCELERATE_FACTOR:F = 2.0f

.field private static final OVERSCROLL_DAMP_FACTOR:F = 0.14f

.field protected static final PAGE_SNAP_ANIMATION_DURATION:I = 0x2ee

.field private static final RETURN_TO_ORIGINAL_PAGE_THRESHOLD:F = 0.33f

.field private static final SIGNIFICANT_MOVE_THRESHOLD:F = 0.4f

.field protected static final SLOW_PAGE_SNAP_ANIMATION_DURATION:I = 0x3b6

.field private static final TAG:Ljava/lang/String; = "WidgetPagedView"

.field protected static final TOUCH_STATE_NEXT_PAGE:I = 0x3

.field protected static final TOUCH_STATE_PREV_PAGE:I = 0x2

.field protected static final TOUCH_STATE_REORDERING:I = 0x4

.field protected static final TOUCH_STATE_REST:I = 0x0

.field protected static final TOUCH_STATE_SCROLLING:I = 0x1

.field protected static final sScrollIndicatorFadeInDuration:I = 0x96

.field protected static final sScrollIndicatorFadeOutDuration:I = 0x28a

.field protected static final sScrollIndicatorFlashDuration:I = 0x28a


# instance fields
.field private DELETE_SLIDE_IN_SIDE_PAGE_DURATION:I

.field private DRAG_TO_DELETE_FADE_OUT_DURATION:I

.field private FLING_TO_DELETE_FADE_OUT_DURATION:I

.field private FLING_TO_DELETE_FRICTION:F

.field private FLING_TO_DELETE_MAX_FLING_DEGREES:F

.field private NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

.field private REORDERING_DELETE_DROP_TARGET_FADE_DURATION:J

.field private REORDERING_DROP_REPOSITION_DURATION:I

.field protected REORDERING_REORDER_REPOSITION_DURATION:I

.field private REORDERING_SIDE_PAGE_BUFFER_PERCENTAGE:F

.field private REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

.field protected REORDERING_ZOOM_IN_OUT_DURATION:I

.field hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

.field protected mActivePointerId:I

.field private mAirGestureMonitor:Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor;

.field private mAirGestureMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor$AirGestureMonitorCallback;

.field protected mAllowOverScroll:Z

.field private mAltTmpRect:Landroid/graphics/Rect;

.field protected mCellCountX:I

.field protected mCellCountY:I

.field protected mChildCountOnLastMeasure:I

.field private mChildOffsets:[I

.field private mChildOffsetsWithLayoutScale:[I

.field private mChildRelativeOffsets:[I

.field protected mContentIsRefreshable:Z

.field protected mCurrentPage:I

.field protected mDeferScrollUpdate:Z

.field private mDeferringForDelete:Z

.field private mDeleteDropTarget:Landroid/view/View;

.field protected mDensity:F

.field protected mDirtyPageContent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDownEventOnEdge:Z

.field private mDownMotionX:F

.field private mDownMotionY:F

.field private mDownScrollX:F

.field protected mDragView:Landroid/view/View;

.field private mEdgeSwipeRegionSize:I

.field protected mFadeInAdjacentScreens:Z

.field protected mFirstLayout:Z

.field protected mFlingThresholdVelocity:I

.field protected mFlingToDeleteThresholdVelocity:I

.field protected mForceDrawAllChildrenNextFrame:Z

.field protected mForceScreenScrolled:Z

.field protected mIsDataReady:Z

.field protected mIsPageMoving:Z

.field private mIsReordering:Z

.field protected mLastMotionX:F

.field protected mLastMotionXRemainder:F

.field protected mLastMotionY:F

.field private mLastScreenCenter:I

.field protected mLayoutScale:F

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mMaxScrollX:I

.field private mMaximumVelocity:I

.field protected mMinFlingVelocity:I

.field private mMinScale:F

.field protected mMinSnapVelocity:I

.field private mMinimumWidth:I

.field protected mNextPage:I

.field private mOnlyAllowEdgeSwipes:Z

.field protected mOverScrollX:I

.field protected mPageSpacing:I

.field private mPageSwitchListener:Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;

.field private mPagingTouchSlop:I

.field private mPagingTouchSlopScale:I

.field private mParentDownMotionX:F

.field private mParentDownMotionY:F

.field private mPostReorderingPreZoomInRemainingAnimationCount:I

.field private mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

.field private mReorderFocusView:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

.field private mReorderingStarted:Z

.field private mScrollIndicator:Landroid/view/View;

.field private mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

.field private mScrollIndicatorPaddingLeft:I

.field private mScrollIndicatorPaddingRight:I

.field protected mScroller:Landroid/widget/Scroller;

.field private mShouldShowScrollIndicator:Z

.field private mShouldShowScrollIndicatorImmediately:Z

.field private mSidePageHoverByAirRunnable:Ljava/lang/Runnable;

.field private mSidePageHoverIndex:I

.field private mSidePageHoverRunnable:Ljava/lang/Runnable;

.field protected mSmoothingTime:F

.field protected mTempVisiblePagesRange:[I

.field private mTmpInvMatrix:Landroid/graphics/Matrix;

.field private mTmpPoint:[F

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTopAlignPageWhenShrinkingForBouncer:Z

.field protected mTotalMotionX:F

.field protected mTouchSlop:I

.field protected mTouchState:I

.field protected mTouchX:F

.field protected mUnboundedScrollX:I

.field protected mUsePagingTouchSlop:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewport:Landroid/graphics/Rect;

.field protected mZoomInOutAnim:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 270
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 273
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 274
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v8, 0x3f800000

    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 277
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mFirstLayout:Z

    .line 113
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    .line 127
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastScreenCenter:I

    .line 140
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    .line 141
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mForceScreenScrolled:Z

    .line 151
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCellCountX:I

    .line 152
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCellCountY:I

    .line 153
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mAllowOverScroll:Z

    .line 155
    new-array v2, v7, [I

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    .line 164
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLayoutScale:F

    .line 168
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mActivePointerId:I

    .line 175
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mContentIsRefreshable:Z

    .line 178
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mFadeInAdjacentScreens:Z

    .line 182
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mUsePagingTouchSlop:Z

    .line 186
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeferScrollUpdate:Z

    .line 188
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsPageMoving:Z

    .line 191
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsDataReady:Z

    .line 198
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mShouldShowScrollIndicator:Z

    .line 199
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mShouldShowScrollIndicatorImmediately:Z

    .line 206
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    .line 211
    const/16 v2, 0xc8

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_DROP_REPOSITION_DURATION:I

    .line 212
    const/16 v2, 0x12c

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_REORDER_REPOSITION_DURATION:I

    .line 213
    const/16 v2, 0xfa

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_ZOOM_IN_OUT_DURATION:I

    .line 214
    const/16 v2, 0x12c

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

    .line 215
    const v2, 0x3dcccccd

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_SIDE_PAGE_BUFFER_PERCENTAGE:F

    .line 216
    const-wide/16 v2, 0x96

    iput-wide v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_DELETE_DROP_TARGET_FADE_DURATION:J

    .line 217
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinScale:F

    .line 221
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mSidePageHoverIndex:I

    .line 223
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mReorderingStarted:Z

    .line 228
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

    .line 233
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mOnlyAllowEdgeSwipes:Z

    .line 234
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownEventOnEdge:Z

    .line 235
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mEdgeSwipeRegionSize:I

    .line 238
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpInvMatrix:Landroid/graphics/Matrix;

    .line 239
    new-array v2, v7, [F

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpPoint:[F

    .line 240
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    .line 241
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    .line 244
    const/16 v2, 0x15e

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->FLING_TO_DELETE_FADE_OUT_DURATION:I

    .line 245
    const v2, 0x3d0f5c29

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->FLING_TO_DELETE_FRICTION:F

    .line 247
    const/high16 v2, 0x42820000

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->FLING_TO_DELETE_MAX_FLING_DEGREES:F

    .line 248
    const/16 v2, -0x578

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mFlingToDeleteThresholdVelocity:I

    .line 250
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeferringForDelete:Z

    .line 251
    const/16 v2, 0xfa

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->DELETE_SLIDE_IN_SIDE_PAGE_DURATION:I

    .line 252
    const/16 v2, 0x15e

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->DRAG_TO_DELETE_FADE_OUT_DURATION:I

    .line 258
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTopAlignPageWhenShrinkingForBouncer:Z

    .line 261
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mReorderFocusView:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    .line 1958
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/PagedView$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/PagedView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    .line 2643
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/PagedView$13;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/PagedView$13;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mAirGestureMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor$AirGestureMonitorCallback;

    .line 278
    sget-object v2, Lcom/android/internal/R$styleable;->PagedView:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 280
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->setPageSpacing(I)V

    .line 281
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorPaddingLeft:I

    .line 283
    invoke-virtual {v0, v7, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorPaddingRight:I

    .line 285
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 287
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 288
    .local v1, "r":Landroid/content/res/Resources;
    const v2, 0x1050075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mEdgeSwipeRegionSize:I

    .line 289
    const v2, 0x1110002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTopAlignPageWhenShrinkingForBouncer:Z

    .line 292
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/PagedView;->setHapticFeedbackEnabled(Z)V

    .line 293
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->init()V

    .line 298
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/PagedView;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/PagedView;
    .param p1, "x1"    # F

    .prologue
    .line 68
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownScrollX:F

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/keyguard/PagedView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/PagedView;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mSidePageHoverIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/PagedView;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/PagedView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/PagedView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/PagedView;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onPostReorderingAnimationCompleted()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/PagedView;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/PagedView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/PagedView;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/PagedView;

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_DELETE_DROP_TARGET_FADE_DURATION:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/PagedView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/PagedView;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->DELETE_SLIDE_IN_SIDE_PAGE_DURATION:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/keyguard/PagedView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/PagedView;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeferringForDelete:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/PagedView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/PagedView;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->FLING_TO_DELETE_FADE_OUT_DURATION:I

    return v0
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1671
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 1672
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1674
    :cond_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1675
    return-void
.end method

.method private createPostDeleteAnimationRunnable(Landroid/view/View;)Ljava/lang/Runnable;
    .registers 3
    .param p1, "dragView"    # Landroid/view/View;

    .prologue
    .line 2388
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/PagedView$9;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView$9;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;Landroid/view/View;)V

    return-object v0
.end method

.method private isFlingingToDelete()Landroid/graphics/PointF;
    .registers 9

    .prologue
    .line 2329
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 2330
    .local v0, "config":Landroid/view/ViewConfiguration;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2332
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mFlingToDeleteThresholdVelocity:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_62

    .line 2334
    new-instance v3, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2336
    .local v3, "vel":Landroid/graphics/PointF;
    new-instance v2, Landroid/graphics/PointF;

    const/4 v4, 0x0

    const/high16 v5, -0x40800000

    invoke-direct {v2, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2337
    .local v2, "upVec":Landroid/graphics/PointF;
    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, v5

    iget v5, v3, Landroid/graphics/PointF;->y:F

    iget v6, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v3}, Landroid/graphics/PointF;->length()F

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/PointF;->length()F

    move-result v6

    mul-float/2addr v5, v6

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 2339
    .local v1, "theta":F
    float-to-double v4, v1

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->FLING_TO_DELETE_MAX_FLING_DEGREES:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_62

    .line 2343
    .end local v1    # "theta":F
    .end local v2    # "upVec":Landroid/graphics/PointF;
    .end local v3    # "vel":Landroid/graphics/PointF;
    :goto_61
    return-object v3

    :cond_62
    const/4 v3, 0x0

    goto :goto_61
.end method

.method private isHoveringOverDeleteDropTarget(II)Z
    .registers 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, 0x0

    .line 2534
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;

    if-eqz v2, :cond_35

    .line 2535
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 2536
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2537
    .local v0, "parent":Landroid/view/View;
    if-eqz v0, :cond_19

    .line 2538
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2540
    :cond_19
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2541
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 2542
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    .line 2544
    .end local v0    # "parent":Landroid/view/View;
    :cond_35
    return v1
.end method

.method private isTouchPointInCurrentPage(II)Z
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, 0x0

    .line 1051
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1052
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_2c

    .line 1053
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollX()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1055
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    .line 1057
    :cond_2c
    return v1
.end method

.method private isTouchPointInViewportWithBuffer(II)Z
    .registers 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1046
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private onDropToDelete()V
    .registers 15

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 2550
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    .line 2552
    .local v3, "dragView":Landroid/view/View;
    const/4 v7, 0x0

    .line 2553
    .local v7, "toScale":F
    const/4 v6, 0x0

    .line 2556
    .local v6, "toAlpha":F
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2557
    .local v2, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2558
    .local v4, "motionAnim":Landroid/animation/AnimatorSet;
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v9, 0x40000000

    invoke-direct {v8, v9}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2559
    const/4 v8, 0x2

    new-array v8, v8, [Landroid/animation/Animator;

    const-string v9, "scaleX"

    new-array v10, v12, [F

    aput v13, v10, v11

    invoke-static {v3, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v8, v11

    const-string v9, "scaleY"

    new-array v10, v12, [F

    aput v13, v10, v11

    invoke-static {v3, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-virtual {v4, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2562
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2564
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2565
    .local v0, "alphaAnim":Landroid/animation/AnimatorSet;
    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2566
    new-array v8, v12, [Landroid/animation/Animator;

    const-string v9, "alpha"

    new-array v10, v12, [F

    aput v13, v10, v11

    invoke-static {v3, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2568
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2570
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->createPostDeleteAnimationRunnable(Landroid/view/View;)Ljava/lang/Runnable;

    move-result-object v5

    .line 2572
    .local v5, "onAnimationEndRunnable":Ljava/lang/Runnable;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2573
    .local v1, "anim":Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2574
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->DRAG_TO_DELETE_FADE_OUT_DURATION:I

    int-to-long v8, v8

    invoke-virtual {v1, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2575
    new-instance v8, Lcom/android/internal/policy/impl/keyguard/PagedView$12;

    invoke-direct {v8, p0, v5}, Lcom/android/internal/policy/impl/keyguard/PagedView$12;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2580
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 2582
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;

    invoke-virtual {v8, v11}, Landroid/view/View;->setPressed(Z)V

    .line 2583
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mReorderFocusView:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    .line 2584
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeferringForDelete:Z

    .line 2585
    return-void
.end method

.method private onPostReorderingAnimationCompleted()V
    .registers 2

    .prologue
    .line 2172
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    .line 2173
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    if-nez v0, :cond_16

    .line 2175
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    .line 2178
    :cond_16
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1685
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 1687
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1688
    .local v1, "pointerId":I
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mActivePointerId:I

    if-ne v1, v3, :cond_35

    .line 1692
    if-nez v2, :cond_36

    const/4 v0, 0x1

    .line 1693
    .local v0, "newPointerIndex":I
    :goto_15
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownMotionX:F

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    .line 1694
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionY:F

    .line 1695
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionXRemainder:F

    .line 1696
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mActivePointerId:I

    .line 1697
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_35

    .line 1698
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1701
    .end local v0    # "newPointerIndex":I
    :cond_35
    return-void

    .line 1692
    :cond_36
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private overScrollInfluenceCurve(F)F
    .registers 4
    .param p1, "f"    # F

    .prologue
    const/high16 v1, 0x3f800000

    .line 1260
    sub-float/2addr p1, v1

    .line 1261
    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private releaseVelocityTracker()V
    .registers 2

    .prologue
    .line 1678
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_c

    .line 1679
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1680
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1682
    :cond_c
    return-void
.end method

.method private resetTouchState()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1632
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->releaseVelocityTracker()V

    .line 1633
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->endReordering()V

    .line 1634
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    .line 1635
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mActivePointerId:I

    .line 1636
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownEventOnEdge:Z

    .line 1637
    return-void
.end method

.method private updateScrollingIndicator()V
    .registers 3

    .prologue
    .line 2042
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_8

    .line 2052
    :cond_7
    :goto_7
    return-void

    .line 2043
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2045
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollingIndicator()Landroid/view/View;

    .line 2046
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v0, :cond_18

    .line 2047
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->updateScrollingIndicatorPosition()V

    .line 2049
    :cond_18
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mShouldShowScrollIndicator:Z

    if-eqz v0, :cond_7

    .line 2050
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mShouldShowScrollIndicatorImmediately:Z

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->showScrollingIndicator(Z)V

    goto :goto_7
.end method

.method private updateScrollingIndicatorPosition()V
    .registers 15

    .prologue
    .line 2055
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v10

    if-nez v10, :cond_7

    .line 2078
    :cond_6
    :goto_6
    return-void

    .line 2056
    :cond_7
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v10, :cond_6

    .line 2057
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v6

    .line 2058
    .local v6, "numPages":I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportWidth()I

    move-result v8

    .line 2059
    .local v8, "pageWidth":I
    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2060
    .local v4, "lastChildIndex":I
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildOffset(I)I

    move-result v10

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v11

    sub-int v5, v10, v11

    .line 2061
    .local v5, "maxScrollX":I
    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorPaddingLeft:I

    sub-int v10, v8, v10

    iget v11, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorPaddingRight:I

    sub-int v9, v10, v11

    .line 2062
    .local v9, "trackWidth":I
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    sub-int v3, v10, v11

    .line 2065
    .local v3, "indicatorWidth":I
    const/4 v10, 0x0

    const/high16 v11, 0x3f800000

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollX()I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v5

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 2066
    .local v7, "offset":F
    div-int v2, v9, v6

    .line 2067
    .local v2, "indicatorSpace":I
    sub-int v10, v9, v2

    int-to-float v10, v10

    mul-float/2addr v10, v7

    float-to-int v10, v10

    iget v11, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorPaddingLeft:I

    add-int v1, v10, v11

    .line 2068
    .local v1, "indicatorPos":I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->hasElasticScrollIndicator()Z

    move-result v10

    if-eqz v10, :cond_84

    .line 2069
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    if-eq v10, v2, :cond_7d

    .line 2070
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iput v2, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2071
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->requestLayout()V

    .line 2077
    :cond_7d
    :goto_7d
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    int-to-float v11, v1

    invoke-virtual {v10, v11}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_6

    .line 2074
    :cond_84
    div-int/lit8 v10, v2, 0x2

    div-int/lit8 v11, v3, 0x2

    sub-int v0, v10, v11

    .line 2075
    .local v0, "indicatorCenterOffset":I
    add-int/2addr v1, v0

    goto :goto_7d
.end method


# virtual methods
.method protected acceleratedOverScroll(F)V
    .registers 8
    .param p1, "amount"    # F

    .prologue
    const/4 v5, 0x0

    .line 1265
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportWidth()I

    move-result v2

    .line 1269
    .local v2, "screenSize":I
    const/high16 v3, 0x40000000

    int-to-float v4, v2

    div-float v4, p1, v4

    mul-float v0, v3, v4

    .line 1271
    .local v0, "f":F
    cmpl-float v3, v0, v5

    if-nez v3, :cond_11

    .line 1287
    :goto_10
    return-void

    .line 1274
    :cond_11
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_20

    .line 1275
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    .line 1278
    :cond_20
    int-to-float v3, v2

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1279
    .local v1, "overScrollAmount":I
    cmpg-float v3, p1, v5

    if-gez v3, :cond_38

    .line 1280
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mOverScrollX:I

    .line 1281
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1286
    :goto_34
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->invalidate()V

    goto :goto_10

    .line 1283
    :cond_38
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mOverScrollX:I

    .line 1284
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMaxScrollX:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_34
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 6
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 986
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_15

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 987
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 989
    :cond_15
    const/16 v0, 0x11

    if-ne p2, v0, :cond_29

    .line 990
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    if-lez v0, :cond_28

    .line 991
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 998
    :cond_28
    :goto_28
    return-void

    .line 993
    :cond_29
    const/16 v0, 0x42

    if-ne p2, v0, :cond_28

    .line 994
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_28

    .line 995
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_28
.end method

.method animateDragViewToOriginalPosition()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2082
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    if-eqz v1, :cond_3f

    .line 2083
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2084
    .local v0, "anim":Landroid/animation/AnimatorSet;
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_DROP_REPOSITION_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2085
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    const-string v3, "translationX"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    const-string v3, "translationY"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2088
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/PagedView$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/PagedView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2094
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2096
    .end local v0    # "anim":Landroid/animation/AnimatorSet;
    :cond_3f
    return-void
.end method

.method boundByReorderablePages(Z[I)V
    .registers 3
    .param p1, "isReordering"    # Z
    .param p2, "range"    # [I

    .prologue
    .line 850
    return-void
.end method

.method protected cancelScrollingIndicatorAnimations()V
    .registers 2

    .prologue
    .line 1995
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_9

    .line 1996
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1998
    :cond_9
    return-void
.end method

.method public computeScroll()V
    .registers 1

    .prologue
    .line 597
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->computeScrollHelper()Z

    .line 598
    return-void
.end method

.method protected computeScrollHelper()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 569
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 571
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    if-ne v1, v2, :cond_2d

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    if-ne v1, v2, :cond_2d

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mOverScrollX:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    if-eq v1, v2, :cond_3c

    .line 574
    :cond_2d
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->scrollTo(II)V

    .line 576
    :cond_3c
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->invalidate()V

    .line 592
    :goto_3f
    return v0

    .line 578
    :cond_40
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    if-eq v2, v4, :cond_66

    .line 579
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    .line 580
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    .line 581
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->notifyPageSwitched()V

    .line 585
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    if-nez v1, :cond_62

    .line 586
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->pageEndMoving()V

    .line 589
    :cond_62
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onPostReorderingAnimationCompleted()V

    goto :goto_3f

    :cond_66
    move v0, v1

    .line 592
    goto :goto_3f
.end method

.method protected dampedOverScroll(F)V
    .registers 8
    .param p1, "amount"    # F

    .prologue
    const/4 v5, 0x0

    .line 1290
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportWidth()I

    move-result v2

    .line 1292
    .local v2, "screenSize":I
    int-to-float v3, v2

    div-float v0, p1, v3

    .line 1294
    .local v0, "f":F
    cmpl-float v3, v0, v5

    if-nez v3, :cond_d

    .line 1311
    :goto_c
    return-void

    .line 1295
    :cond_d
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float v3, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard/PagedView;->overScrollInfluenceCurve(F)F

    move-result v4

    mul-float v0, v3, v4

    .line 1298
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2c

    .line 1299
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    .line 1302
    :cond_2c
    const v3, 0x3e0f5c29

    mul-float/2addr v3, v0

    int-to-float v4, v2

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1303
    .local v1, "overScrollAmount":I
    cmpg-float v3, p1, v5

    if-gez v3, :cond_48

    .line 1304
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mOverScrollX:I

    .line 1305
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1310
    :goto_44
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->invalidate()V

    goto :goto_c

    .line 1307
    :cond_48
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mOverScrollX:I

    .line 1308
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMaxScrollX:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_44
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1184
    const/high16 v0, 0x3f800000

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    .line 1185
    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)V
    .registers 15
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "touchSlopScale"    # F

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 1193
    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1194
    .local v0, "pointerIndex":I
    const/4 v10, -0x1

    if-ne v0, v10, :cond_c

    .line 1229
    :cond_b
    :goto_b
    return-void

    .line 1197
    :cond_c
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1198
    .local v2, "x":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 1199
    .local v6, "y":F
    float-to-int v10, v2

    float-to-int v11, v6

    invoke-direct {p0, v10, v11}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isTouchPointInViewportWithBuffer(II)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1203
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mOnlyAllowEdgeSwipes:Z

    if-eqz v10, :cond_24

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownEventOnEdge:Z

    if-eqz v10, :cond_b

    .line 1205
    :cond_24
    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    sub-float v10, v2, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v3, v10

    .line 1206
    .local v3, "xDiff":I
    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionY:F

    sub-float v10, v6, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v7, v10

    .line 1208
    .local v7, "yDiff":I
    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchSlop:I

    int-to-float v10, v10

    mul-float/2addr v10, p2

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1209
    .local v1, "touchSlop":I
    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPagingTouchSlopScale:I

    if-le v3, v10, :cond_8a

    move v5, v9

    .line 1210
    .local v5, "xPaged":Z
    :goto_43
    if-le v3, v1, :cond_8c

    move v4, v9

    .line 1211
    .local v4, "xMoved":Z
    :goto_46
    if-le v7, v1, :cond_49

    move v8, v9

    .line 1213
    .local v8, "yMoved":Z
    :cond_49
    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_50

    if-nez v5, :cond_b

    .line 1217
    :cond_50
    if-nez v4, :cond_56

    if-nez v5, :cond_56

    if-eqz v8, :cond_b

    .line 1218
    :cond_56
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mUsePagingTouchSlop:Z

    if-eqz v10, :cond_8e

    if-eqz v5, :cond_b

    .line 1220
    :goto_5c
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    .line 1221
    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTotalMotionX:F

    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    sub-float/2addr v10, v2

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    add-float/2addr v9, v10

    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTotalMotionX:F

    .line 1222
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    .line 1223
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionXRemainder:F

    .line 1224
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportOffsetX()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollX()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchX:F

    .line 1225
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    long-to-float v9, v9

    const v10, 0x4e6e6b28

    div-float/2addr v9, v10

    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mSmoothingTime:F

    .line 1226
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->pageBeginMoving()V

    goto :goto_b

    .end local v4    # "xMoved":Z
    .end local v5    # "xPaged":Z
    .end local v8    # "yMoved":Z
    :cond_8a
    move v5, v8

    .line 1209
    goto :goto_43

    .restart local v5    # "xPaged":Z
    :cond_8c
    move v4, v8

    .line 1210
    goto :goto_46

    .line 1218
    .restart local v4    # "xMoved":Z
    .restart local v8    # "yMoved":Z
    :cond_8e
    if-eqz v4, :cond_b

    goto :goto_5c
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 897
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportWidth()I

    move-result v9

    div-int/lit8 v2, v9, 0x2

    .line 900
    .local v2, "halfScreenSize":I
    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mOverScrollX:I

    add-int v7, v9, v2

    .line 902
    .local v7, "screenCenter":I
    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastScreenCenter:I

    if-ne v7, v9, :cond_12

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mForceScreenScrolled:Z

    if-eqz v9, :cond_1a

    .line 905
    :cond_12
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mForceScreenScrolled:Z

    .line 906
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/keyguard/PagedView;->screenScrolled(I)V

    .line 907
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastScreenCenter:I

    .line 911
    :cond_1a
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v5

    .line 912
    .local v5, "pageCount":I
    if-lez v5, :cond_93

    .line 913
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getVisiblePages([I)V

    .line 914
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    const/4 v10, 0x0

    aget v4, v9, v10

    .line 915
    .local v4, "leftScreen":I
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    const/4 v10, 0x1

    aget v6, v9, v10

    .line 916
    .local v6, "rightScreen":I
    const/4 v9, -0x1

    if-eq v4, v9, :cond_93

    const/4 v9, -0x1

    if-eq v6, v9, :cond_93

    .line 917
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getDrawingTime()J

    move-result-wide v0

    .line 919
    .local v0, "drawingTime":J
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 920
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollX()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollY()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollX()I

    move-result v11

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getLeft()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollY()I

    move-result v12

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getBottom()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getTop()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 924
    add-int/lit8 v3, v5, -0x1

    .local v3, "i":I
    :goto_65
    if-ltz v3, :cond_84

    .line 925
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    .line 926
    .local v8, "v":Landroid/view/View;
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    if-ne v8, v9, :cond_72

    .line 924
    :cond_6f
    :goto_6f
    add-int/lit8 v3, v3, -0x1

    goto :goto_65

    .line 927
    :cond_72
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mForceDrawAllChildrenNextFrame:Z

    if-nez v9, :cond_80

    if-gt v4, v3, :cond_6f

    if-gt v3, v6, :cond_6f

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/keyguard/PagedView;->shouldDrawChild(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_6f

    .line 929
    :cond_80
    invoke-virtual {p0, p1, v8, v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_6f

    .line 933
    .end local v8    # "v":Landroid/view/View;
    :cond_84
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    if-eqz v9, :cond_8d

    .line 934
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, p1, v9, v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 937
    :cond_8d
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mForceDrawAllChildrenNextFrame:Z

    .line 938
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 941
    .end local v0    # "drawingTime":J
    .end local v3    # "i":I
    .end local v4    # "leftScreen":I
    .end local v6    # "rightScreen":I
    :cond_93
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 6
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    const/4 v0, 0x1

    .line 970
    const/16 v1, 0x11

    if-ne p2, v1, :cond_15

    .line 971
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_2f

    .line 972
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(I)V

    .line 981
    :goto_14
    return v0

    .line 975
    :cond_15
    const/16 v1, 0x42

    if-ne p2, v1, :cond_2f

    .line 976
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2f

    .line 977
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(I)V

    goto :goto_14

    .line 981
    :cond_2f
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_14
.end method

.method distanceInfluenceForSnapDuration(F)F
    .registers 6
    .param p1, "f"    # F

    .prologue
    .line 1792
    const/high16 v0, 0x3f000000

    sub-float/2addr p1, v0

    .line 1793
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 1794
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method endReordering()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2242
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mReorderingStarted:Z

    if-nez v1, :cond_6

    .line 2275
    :cond_5
    :goto_5
    return-void

    .line 2243
    :cond_6
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mReorderingStarted:Z

    .line 2247
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/PagedView$6;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/PagedView$6;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;)V

    .line 2253
    .local v0, "onCompleteRunnable":Ljava/lang/Runnable;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeferringForDelete:Z

    if-nez v1, :cond_5

    .line 2254
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 2255
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/PagedView$7;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView$7;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    .line 2261
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    .line 2265
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(II)V

    .line 2268
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->setPageHoveringOverDeleteDropTarget(IZ)V

    .line 2270
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->animateDragViewToOriginalPosition()V

    goto :goto_5
.end method

.method protected flashScrollingIndicator(Z)V
    .registers 5
    .param p1, "animated"    # Z

    .prologue
    .line 1966
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1967
    if-nez p1, :cond_13

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->showScrollingIndicator(Z)V

    .line 1968
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x28a

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1969
    return-void

    .line 1967
    :cond_13
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .registers 6
    .param p1, "focused"    # Landroid/view/View;

    .prologue
    .line 1009
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1010
    .local v0, "current":Landroid/view/View;
    move-object v2, p1

    .line 1012
    .local v2, "v":Landroid/view/View;
    :goto_7
    if-ne v2, v0, :cond_d

    .line 1013
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 1023
    :cond_c
    return-void

    .line 1016
    :cond_d
    if-eq v2, p0, :cond_c

    .line 1019
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1020
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_c

    .line 1021
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2    # "v":Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .restart local v2    # "v":Landroid/view/View;
    goto :goto_7
.end method

.method protected getBoundedScrollProgress(ILandroid/view/View;I)F
    .registers 6
    .param p1, "screenCenter"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "page"    # I

    .prologue
    .line 1236
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportWidth()I

    move-result v1

    div-int/lit8 v0, v1, 0x2

    .line 1238
    .local v0, "halfScreenSize":I
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollX:I

    add-int/2addr v1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1239
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1241
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v1

    return v1
.end method

.method protected getChildIndexForRelativeOffset(I)I
    .registers 7
    .param p1, "relativeOffset"    # I

    .prologue
    .line 1713
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v0

    .line 1716
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_1d

    .line 1717
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    .line 1718
    .local v2, "left":I
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v4

    add-int v3, v2, v4

    .line 1719
    .local v3, "right":I
    if-gt v2, p1, :cond_1a

    if-gt p1, v3, :cond_1a

    .line 1723
    .end local v1    # "i":I
    .end local v2    # "left":I
    .end local v3    # "right":I
    :goto_19
    return v1

    .line 1716
    .restart local v1    # "i":I
    .restart local v2    # "left":I
    .restart local v3    # "right":I
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1723
    .end local v2    # "left":I
    .end local v3    # "right":I
    :cond_1d
    const/4 v1, -0x1

    goto :goto_19
.end method

.method protected getChildOffset(I)I
    .registers 7
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 801
    if-ltz p1, :cond_b

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le p1, v3, :cond_c

    .line 819
    :cond_b
    :goto_b
    return v2

    .line 803
    :cond_c
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLayoutScale:F

    const/high16 v4, 0x3f800000

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_22

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildOffsets:[I

    .line 806
    .local v0, "childOffsets":[I
    :goto_18
    if-eqz v0, :cond_25

    aget v3, v0, p1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_25

    .line 807
    aget v2, v0, p1

    goto :goto_b

    .line 803
    .end local v0    # "childOffsets":[I
    :cond_22
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildOffsetsWithLayoutScale:[I

    goto :goto_18

    .line 809
    .restart local v0    # "childOffsets":[I
    :cond_25
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_b

    .line 812
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    .line 813
    .local v2, "offset":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_30
    if-ge v1, p1, :cond_41

    .line 814
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSpacing:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 813
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 816
    :cond_41
    if-eqz v0, :cond_b

    .line 817
    aput v2, v0, p1

    goto :goto_b
.end method

.method protected getChildWidth(I)I
    .registers 5
    .param p1, "index"    # I

    .prologue
    .line 1729
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1730
    .local v0, "measuredWidth":I
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinimumWidth:I

    .line 1731
    .local v1, "minWidth":I
    if-le v1, v0, :cond_d

    .end local v1    # "minWidth":I
    :goto_c
    return v1

    .restart local v1    # "minWidth":I
    :cond_d
    move v1, v0

    goto :goto_c
.end method

.method public getCurrentPage()I
    .registers 2

    .prologue
    .line 420
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    return v0
.end method

.method protected getMaxScrollProgress()F
    .registers 2

    .prologue
    .line 1232
    const/high16 v0, 0x3f800000

    return v0
.end method

.method getNextPage()I
    .registers 3

    .prologue
    .line 424
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    :goto_7
    return v0

    :cond_8
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    goto :goto_7
.end method

.method getPageAt(I)Landroid/view/View;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 432
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPageCount()I
    .registers 2

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageForView(Landroid/view/View;)I
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1907
    const/4 v2, -0x1

    .line 1908
    .local v2, "result":I
    if-eqz p1, :cond_18

    .line 1909
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 1910
    .local v3, "vp":Landroid/view/ViewParent;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v0

    .line 1911
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_18

    .line 1912
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_15

    .line 1917
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "vp":Landroid/view/ViewParent;
    :goto_14
    return v1

    .line 1911
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v3    # "vp":Landroid/view/ViewParent;
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "vp":Landroid/view/ViewParent;
    :cond_18
    move v1, v2

    .line 1917
    goto :goto_14
.end method

.method getPageNearestToCenterOfScreen()I
    .registers 13

    .prologue
    .line 1747
    const v7, 0x7fffffff

    .line 1748
    .local v7, "minDistanceFromScreenCenter":I
    const/4 v8, -0x1

    .line 1749
    .local v8, "minDistanceFromScreenCenterIndex":I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportOffsetX()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollX()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int v9, v10, v11

    .line 1750
    .local v9, "screenCenter":I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v1

    .line 1751
    .local v1, "childCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1a
    if-ge v5, v1, :cond_3e

    .line 1752
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    .line 1753
    .local v6, "layout":Landroid/view/View;
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v2

    .line 1754
    .local v2, "childWidth":I
    div-int/lit8 v4, v2, 0x2

    .line 1755
    .local v4, "halfChildWidth":I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportOffsetX()I

    move-result v10

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildOffset(I)I

    move-result v11

    add-int/2addr v10, v11

    add-int v0, v10, v4

    .line 1756
    .local v0, "childCenter":I
    sub-int v10, v0, v9

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1757
    .local v3, "distanceFromScreenCenter":I
    if-ge v3, v7, :cond_3b

    .line 1758
    move v7, v3

    .line 1759
    move v8, v5

    .line 1751
    :cond_3b
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 1762
    .end local v0    # "childCenter":I
    .end local v2    # "childWidth":I
    .end local v3    # "distanceFromScreenCenter":I
    .end local v4    # "halfChildWidth":I
    .end local v6    # "layout":Landroid/view/View;
    :cond_3e
    return v8
.end method

.method getPageNearestToPoint(F)I
    .registers 6
    .param p1, "x"    # F

    .prologue
    .line 1735
    const/4 v1, 0x0

    .line 1736
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_20

    .line 1737
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1b

    .line 1743
    .end local v1    # "index":I
    :goto_1a
    return v1

    .line 1740
    .restart local v1    # "index":I
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    .line 1736
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1743
    :cond_20
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1a
.end method

.method protected getRelativeChildOffset(I)I
    .registers 7
    .param p1, "index"    # I

    .prologue
    .line 824
    if-ltz p1, :cond_a

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_c

    :cond_a
    const/4 v0, 0x0

    .line 835
    :cond_b
    :goto_b
    return v0

    .line 826
    :cond_c
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildRelativeOffsets:[I

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildRelativeOffsets:[I

    aget v2, v2, p1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1c

    .line 827
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildRelativeOffsets:[I

    aget v0, v2, p1

    goto :goto_b

    .line 829
    :cond_1c
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPaddingRight()I

    move-result v3

    add-int v1, v2, v3

    .line 830
    .local v1, "padding":I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportWidth()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildWidth(I)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 832
    .local v0, "offset":I
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildRelativeOffsets:[I

    if-eqz v2, :cond_b

    .line 833
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildRelativeOffsets:[I

    aput v0, v2, p1

    goto :goto_b
.end method

.method protected getScaledMeasuredWidth(Landroid/view/View;)I
    .registers 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 842
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 843
    .local v1, "measuredWidth":I
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinimumWidth:I

    .line 844
    .local v2, "minWidth":I
    if-le v2, v1, :cond_12

    move v0, v2

    .line 845
    .local v0, "maxWidth":I
    :goto_9
    int-to-float v3, v0

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLayoutScale:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000

    add-float/2addr v3, v4

    float-to-int v3, v3

    return v3

    .end local v0    # "maxWidth":I
    :cond_12
    move v0, v1

    .line 844
    goto :goto_9
.end method

.method protected getScrollProgress(ILandroid/view/View;I)F
    .registers 11
    .param p1, "screenCenter"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "page"    # I

    .prologue
    .line 1245
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportWidth()I

    move-result v4

    div-int/lit8 v1, v4, 0x2

    .line 1247
    .local v1, "halfScreenSize":I
    invoke-virtual {p0, p2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v4

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSpacing:I

    add-int v3, v4, v5

    .line 1248
    .local v3, "totalDistance":I
    invoke-virtual {p0, p3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildOffset(I)I

    move-result v4

    invoke-virtual {p0, p3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v1

    sub-int v0, p1, v4

    .line 1251
    .local v0, "delta":I
    int-to-float v4, v0

    int-to-float v5, v3

    const/high16 v6, 0x3f800000

    mul-float/2addr v5, v6

    div-float v2, v4, v5

    .line 1252
    .local v2, "scrollProgress":F
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getMaxScrollProgress()F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1253
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getMaxScrollProgress()F

    move-result v4

    neg-float v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1254
    return v2
.end method

.method protected getScrollingIndicator()Landroid/view/View;
    .registers 2

    .prologue
    .line 1951
    const/4 v0, 0x0

    return-object v0
.end method

.method getViewportHeight()I
    .registers 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method getViewportOffsetX()I
    .registers 3

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method getViewportOffsetY()I
    .registers 3

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method getViewportWidth()I
    .registers 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method protected getVisiblePages([I)V
    .registers 4
    .param p1, "range"    # [I

    .prologue
    const/4 v0, 0x0

    .line 854
    aput v0, p1, v0

    .line 855
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aput v1, p1, v0

    .line 889
    return-void
.end method

.method protected hasElasticScrollIndicator()Z
    .registers 2

    .prologue
    .line 2038
    const/4 v0, 0x1

    return v0
.end method

.method protected hideScrollingIndicator(Z)V
    .registers 7
    .param p1, "immediately"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 2001
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v0

    if-gt v0, v2, :cond_9

    .line 2031
    :cond_8
    :goto_8
    return-void

    .line 2002
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2004
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollingIndicator()Landroid/view/View;

    .line 2005
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 2007
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->updateScrollingIndicatorPosition()V

    .line 2008
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->cancelScrollingIndicatorAnimations()V

    .line 2009
    if-eqz p1, :cond_2a

    .line 2010
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2011
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_8

    .line 2013
    :cond_2a
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    const-string v1, "alpha"

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 2014
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x28a

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2015
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/PagedView$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/PagedView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2028
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_8
.end method

.method protected hitsNextPage(FF)Z
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1039
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportOffsetX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSpacing:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method protected hitsPreviousPage(FF)Z
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1032
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportOffsetX()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSpacing:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method protected indexToPage(I)I
    .registers 2
    .param p1, "index"    # I

    .prologue
    .line 436
    return p1
.end method

.method protected init()V
    .registers 5

    .prologue
    .line 304
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    .line 305
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 306
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/PagedView$ScrollInterpolator;

    invoke-direct {v3}, Lcom/android/internal/policy/impl/keyguard/PagedView$ScrollInterpolator;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    .line 307
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    .line 309
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 310
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchSlop:I

    .line 311
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPagingTouchSlop:I

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPagingTouchSlopScale:I

    .line 312
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMaximumVelocity:I

    .line 313
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDensity:F

    .line 316
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mFlingToDeleteThresholdVelocity:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mFlingToDeleteThresholdVelocity:I

    .line 319
    const/high16 v1, 0x43fa0000

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mFlingThresholdVelocity:I

    .line 320
    const/high16 v1, 0x437a0000

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinFlingVelocity:I

    .line 321
    const v1, 0x44bb8000

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinSnapVelocity:I

    .line 322
    invoke-virtual {p0, p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 323
    return-void
.end method

.method protected invalidateCachedOffsets()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 782
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v0

    .line 783
    .local v0, "count":I
    if-nez v0, :cond_f

    .line 784
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildOffsets:[I

    .line 785
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildRelativeOffsets:[I

    .line 786
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildOffsetsWithLayoutScale:[I

    .line 798
    :cond_e
    return-void

    .line 790
    :cond_f
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildOffsets:[I

    .line 791
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildRelativeOffsets:[I

    .line 792
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildOffsetsWithLayoutScale:[I

    .line 793
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    if-ge v1, v0, :cond_e

    .line 794
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildOffsets:[I

    aput v3, v2, v1

    .line 795
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildRelativeOffsets:[I

    aput v3, v2, v1

    .line 796
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildOffsetsWithLayoutScale:[I

    aput v3, v2, v1

    .line 793
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c
.end method

.method protected isDataReady()Z
    .registers 2

    .prologue
    .line 411
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsDataReady:Z

    return v0
.end method

.method protected isPageMoving()Z
    .registers 2

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsPageMoving:Z

    return v0
.end method

.method isReordering(Z)Z
    .registers 5
    .param p1, "testTouchState"    # Z

    .prologue
    .line 2233
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsReordering:Z

    .line 2234
    .local v0, "state":Z
    if-eqz p1, :cond_b

    .line 2235
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_c

    const/4 v1, 0x1

    :goto_a
    and-int/2addr v0, v1

    .line 2237
    :cond_b
    return v0

    .line 2235
    :cond_c
    const/4 v1, 0x0

    goto :goto_a
.end method

.method protected isScrollingIndicatorEnabled()Z
    .registers 2

    .prologue
    .line 1955
    const/4 v0, 0x0

    return v0
.end method

.method mapPointFromParentToView(Landroid/view/View;FF)[F
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpPoint:[F

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p2, v2

    aput v2, v0, v1

    .line 340
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpPoint:[F

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p3, v2

    aput v2, v0, v1

    .line 341
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpInvMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 342
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpInvMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpPoint:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 343
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpPoint:[F

    return-object v0
.end method

.method mapPointFromViewToParent(Landroid/view/View;FF)[F
    .registers 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 331
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpPoint:[F

    aput p2, v0, v3

    .line 332
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpPoint:[F

    aput p3, v0, v4

    .line 333
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpPoint:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 334
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpPoint:[F

    aget v1, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, v0, v3

    .line 335
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpPoint:[F

    aget v1, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 336
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTmpPoint:[F

    return-object v0
.end method

.method protected maxOverScroll()F
    .registers 4

    .prologue
    .line 1320
    const/high16 v0, 0x3f800000

    .line 1321
    .local v0, "f":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v1, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->overScrollInfluenceCurve(F)F

    move-result v2

    mul-float v0, v1, v2

    .line 1322
    const v1, 0x3e0f5c29

    mul-float/2addr v1, v0

    return v1
.end method

.method public moveByAirMove(Z)V
    .registers 9
    .param p1, "isLeft"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2651
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5a

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isReordering(Z)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 2652
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 2654
    .local v2, "touchedViewIndex":I
    const/4 v0, -0x1

    .line 2656
    .local v0, "pageIndexToSnapTo":I
    if-eqz p1, :cond_5b

    if-lez v2, :cond_5b

    .line 2657
    add-int/lit8 v0, v2, -0x1

    .line 2661
    :cond_1a
    :goto_1a
    move v1, v0

    .line 2662
    .local v1, "pageUnderPointIndex":I
    const/4 v3, -0x1

    if-le v1, v3, :cond_5a

    .line 2663
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aput v5, v3, v5

    .line 2664
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aput v4, v3, v6

    .line 2665
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v6, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->boundByReorderablePages(Z[I)V

    .line 2666
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v3, v3, v5

    if-gt v3, v1, :cond_5a

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v3, v3, v6

    if-gt v1, v3, :cond_5a

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mSidePageHoverIndex:I

    if-eq v1, v3, :cond_5a

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 2669
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mSidePageHoverIndex:I

    .line 2670
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/PagedView$14;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView$14;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;II)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mSidePageHoverByAirRunnable:Ljava/lang/Runnable;

    .line 2720
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mSidePageHoverByAirRunnable:Ljava/lang/Runnable;

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

    int-to-long v4, v4

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/internal/policy/impl/keyguard/PagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2724
    .end local v0    # "pageIndexToSnapTo":I
    .end local v1    # "pageUnderPointIndex":I
    .end local v2    # "touchedViewIndex":I
    :cond_5a
    return-void

    .line 2658
    .restart local v0    # "pageIndexToSnapTo":I
    .restart local v2    # "touchedViewIndex":I
    :cond_5b
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1a

    .line 2659
    add-int/lit8 v0, v2, 0x1

    goto :goto_1a
.end method

.method protected notifyPageSwitched()V
    .registers 4

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSwitchListener:Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;

    if-eqz v0, :cond_11

    .line 487
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSwitchListener:Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;->onPageSwitched(Landroid/view/View;I)V

    .line 489
    :cond_11
    return-void
.end method

.method protected notifyPageSwitching(I)V
    .registers 4
    .param p1, "whichPage"    # I

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSwitchListener:Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;

    if-eqz v0, :cond_d

    .line 481
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSwitchListener:Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;->onPageSwitching(Landroid/view/View;I)V

    .line 483
    :cond_d
    return-void
.end method

.method public abstract onAddView(Landroid/view/View;I)V
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 769
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mForceScreenScrolled:Z

    .line 770
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->invalidate()V

    .line 771
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->invalidateCachedOffsets()V

    .line 772
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 776
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mForceScreenScrolled:Z

    .line 777
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->invalidate()V

    .line 778
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->invalidateCachedOffsets()V

    .line 779
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 1771
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mAirGestureMonitor:Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor;

    if-eqz v0, :cond_e

    .line 1772
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mAirGestureMonitor:Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor;->removeCallback()V

    .line 1773
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mAirGestureMonitor:Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor;->unbindFromService()V

    .line 1775
    :cond_e
    return-void
.end method

.method protected onEndReordering()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2182
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mAirGestureMonitor:Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor;->removeCallback()V

    .line 2183
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mAirGestureMonitor:Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor;->unbindFromService()V

    .line 2185
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mReorderFocusView:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    if-eqz v2, :cond_30

    .line 2186
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mReorderFocusView:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v2, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setIsReordering(Z)V

    .line 2187
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mReorderFocusView:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getChildCount()I

    move-result v1

    .line 2188
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    if-ge v0, v1, :cond_30

    .line 2189
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mReorderFocusView:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2188
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 2192
    .end local v0    # "i":I
    .end local v1    # "index":I
    :cond_30
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mReorderFocusView:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    .line 2194
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 2195
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mContext:Landroid/content/Context;

    const v3, 0x104055b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2198
    :cond_4b
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsReordering:Z

    .line 2201
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getVisiblePages([I)V

    .line 2202
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v5, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->boundByReorderablePages(Z[I)V

    .line 2203
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_58
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v2

    if-ge v0, v2, :cond_7d

    .line 2204
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v2, v2, v4

    if-lt v0, v2, :cond_6a

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v2, v2, v5

    if-le v0, v2, :cond_7a

    .line 2205
    :cond_6a
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x3f800000

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 2206
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2203
    :cond_7a
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .line 2209
    :cond_7d
    return-void
.end method

.method public onFlingToDelete(Landroid/graphics/PointF;)V
    .registers 14
    .param p1, "vel"    # Landroid/graphics/PointF;

    .prologue
    .line 2480
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 2487
    .local v4, "startTime":J
    new-instance v9, Lcom/android/internal/policy/impl/keyguard/PagedView$10;

    invoke-direct {v9, p0, v4, v5}, Lcom/android/internal/policy/impl/keyguard/PagedView$10;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;J)V

    .line 2508
    .local v9, "tInterpolator":Landroid/animation/TimeInterpolator;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 2509
    .local v3, "from":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    .line 2510
    .local v1, "dragView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v3, Landroid/graphics/Rect;->left:I

    .line 2511
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    iput v2, v3, Landroid/graphics/Rect;->top:I

    .line 2512
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->FLING_TO_DELETE_FRICTION:F

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;-><init>(Landroid/view/View;Landroid/graphics/PointF;Landroid/graphics/Rect;JF)V

    .line 2515
    .local v0, "updateCb":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->createPostDeleteAnimationRunnable(Landroid/view/View;)Ljava/lang/Runnable;

    move-result-object v8

    .line 2518
    .local v8, "onAnimationEndRunnable":Ljava/lang/Runnable;
    new-instance v7, Landroid/animation/ValueAnimator;

    invoke-direct {v7}, Landroid/animation/ValueAnimator;-><init>()V

    .line 2519
    .local v7, "mDropAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2520
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->FLING_TO_DELETE_FADE_OUT_DURATION:I

    int-to-long v10, v2

    invoke-virtual {v7, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2521
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_54

    invoke-virtual {v7, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2522
    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2523
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/PagedView$11;

    invoke-direct {v2, p0, v8}, Lcom/android/internal/policy/impl/keyguard/PagedView$11;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;Ljava/lang/Runnable;)V

    invoke-virtual {v7, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2528
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 2529
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeferringForDelete:Z

    .line 2530
    return-void

    .line 2521
    nop

    :array_54
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x0

    .line 1643
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_12

    .line 1644
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_4a

    .line 1667
    :cond_12
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_16
    return v2

    .line 1649
    :pswitch_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_39

    .line 1650
    const/4 v1, 0x0

    .line 1651
    .local v1, "vscroll":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 1656
    .local v0, "hscroll":F
    :goto_24
    cmpl-float v2, v0, v3

    if-nez v2, :cond_2c

    cmpl-float v2, v1, v3

    if-eqz v2, :cond_12

    .line 1657
    :cond_2c
    cmpl-float v2, v0, v3

    if-gtz v2, :cond_34

    cmpl-float v2, v1, v3

    if-lez v2, :cond_45

    .line 1658
    :cond_34
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->scrollRight()V

    .line 1662
    :goto_37
    const/4 v2, 0x1

    goto :goto_16

    .line 1653
    .end local v0    # "hscroll":F
    .end local v1    # "vscroll":F
    :cond_39
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    neg-float v1, v2

    .line 1654
    .restart local v1    # "vscroll":F
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .restart local v0    # "hscroll":F
    goto :goto_24

    .line 1660
    :cond_45
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->scrollLeft()V

    goto :goto_37

    .line 1644
    nop

    :pswitch_data_4a
    .packed-switch 0x8
        :pswitch_17
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2635
    const/4 v0, 0x1

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2602
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2603
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 2604
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_20

    .line 2605
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 2606
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 2607
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 2609
    :cond_20
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v0, 0x1

    .line 2590
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2591
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v1

    if-le v1, v0, :cond_2a

    :goto_a
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2592
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1e

    .line 2593
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2595
    :cond_1e
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getCurrentPage()I

    move-result v0

    if-lez v0, :cond_29

    .line 2596
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2598
    :cond_29
    return-void

    .line 2591
    :cond_2a
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1071
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1074
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v10

    if-gtz v10, :cond_11

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 1180
    :cond_10
    :goto_10
    return v8

    .line 1081
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1082
    .local v0, "action":I
    const/4 v10, 0x2

    if-ne v0, v10, :cond_1c

    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    if-eq v10, v8, :cond_10

    .line 1087
    :cond_1c
    and-int/lit16 v10, v0, 0xff

    packed-switch v10, :pswitch_data_da

    .line 1180
    :cond_21
    :goto_21
    :pswitch_21
    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    if-nez v10, :cond_10

    move v8, v9

    goto :goto_10

    .line 1093
    :pswitch_27
    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mActivePointerId:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_30

    .line 1094
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto :goto_21

    .line 1105
    :cond_30
    :pswitch_30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 1106
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 1108
    .local v7, "y":F
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownMotionX:F

    .line 1109
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownMotionY:F

    .line 1110
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollX()I

    move-result v10

    int-to-float v10, v10

    iput v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownScrollX:F

    .line 1111
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    .line 1112
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionY:F

    .line 1113
    invoke-virtual {p0, p0, v5, v7}, Lcom/android/internal/policy/impl/keyguard/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v3

    .line 1114
    .local v3, "p":[F
    aget v10, v3, v9

    iput v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionX:F

    .line 1115
    aget v10, v3, v8

    iput v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionY:F

    .line 1116
    iput v12, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionXRemainder:F

    .line 1117
    iput v12, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTotalMotionX:F

    .line 1118
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mActivePointerId:I

    .line 1121
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportOffsetX()I

    move-result v10

    iget v11, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mEdgeSwipeRegionSize:I

    add-int v2, v10, v11

    .line 1122
    .local v2, "leftEdgeBoundary":I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getMeasuredWidth()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportOffsetX()I

    move-result v11

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mEdgeSwipeRegionSize:I

    sub-int v4, v10, v11

    .line 1123
    .local v4, "rightEdgeBoundary":I
    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownMotionX:F

    int-to-float v11, v2

    cmpg-float v10, v10, v11

    if-lez v10, :cond_80

    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownMotionX:F

    int-to-float v11, v4

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_82

    .line 1124
    :cond_80
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownEventOnEdge:Z

    .line 1132
    :cond_82
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->getFinalX()I

    move-result v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->getCurrX()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 1133
    .local v6, "xDist":I
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->isFinished()Z

    move-result v10

    if-nez v10, :cond_9f

    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchSlop:I

    if-ge v6, v10, :cond_ab

    :cond_9f
    move v1, v8

    .line 1134
    .local v1, "finishedScrolling":Z
    :goto_a0
    if-eqz v1, :cond_ad

    .line 1135
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    .line 1136
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->abortAnimation()V

    goto/16 :goto_21

    .end local v1    # "finishedScrolling":Z
    :cond_ab
    move v1, v9

    .line 1133
    goto :goto_a0

    .line 1138
    .restart local v1    # "finishedScrolling":Z
    :cond_ad
    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownMotionX:F

    float-to-int v10, v10

    iget v11, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownMotionY:F

    float-to-int v11, v11

    invoke-direct {p0, v10, v11}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isTouchPointInViewportWithBuffer(II)Z

    move-result v10

    if-eqz v10, :cond_bd

    .line 1139
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    goto/16 :goto_21

    .line 1141
    :cond_bd
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    goto/16 :goto_21

    .line 1163
    .end local v1    # "finishedScrolling":Z
    .end local v2    # "leftEdgeBoundary":I
    .end local v3    # "p":[F
    .end local v4    # "rightEdgeBoundary":I
    .end local v5    # "x":F
    .end local v6    # "xDist":I
    .end local v7    # "y":F
    :pswitch_c1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->resetTouchState()V

    .line 1165
    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    float-to-int v10, v10

    iget v11, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionY:F

    float-to-int v11, v11

    invoke-direct {p0, v10, v11}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isTouchPointInCurrentPage(II)Z

    move-result v10

    if-nez v10, :cond_21

    goto/16 :goto_10

    .line 1171
    :pswitch_d2
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1172
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_21

    .line 1087
    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_30
        :pswitch_c1
        :pswitch_27
        :pswitch_c1
        :pswitch_21
        :pswitch_21
        :pswitch_d2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 17
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 726
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsDataReady:Z

    if-eqz v9, :cond_a

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v9

    if-nez v9, :cond_b

    .line 760
    :cond_a
    :goto_a
    return-void

    .line 731
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v1

    .line 733
    .local v1, "childCount":I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportOffsetX()I

    move-result v7

    .line 734
    .local v7, "offsetX":I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportOffsetY()I

    move-result v8

    .line 737
    .local v8, "offsetY":I
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 739
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v9

    add-int v3, v7, v9

    .line 740
    .local v3, "childLeft":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_24
    if-ge v6, v1, :cond_51

    .line 741
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 742
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPaddingTop()I

    move-result v9

    add-int v4, v8, v9

    .line 743
    .local v4, "childTop":I
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_4e

    .line 744
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v5

    .line 745
    .local v5, "childWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 748
    .local v2, "childHeight":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v3

    add-int v10, v4, v2

    invoke-virtual {v0, v3, v4, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 750
    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSpacing:I

    add-int/2addr v9, v5

    add-int/2addr v3, v9

    .line 740
    .end local v2    # "childHeight":I
    .end local v5    # "childWidth":I
    :cond_4e
    add-int/lit8 v6, v6, 0x1

    goto :goto_24

    .line 754
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "childTop":I
    :cond_51
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mFirstLayout:Z

    if-eqz v9, :cond_a

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    if-ltz v9, :cond_a

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v10

    if-ge v9, v10, :cond_a

    .line 755
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/keyguard/PagedView;->setHorizontalScrollBarEnabled(Z)V

    .line 756
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->updateCurrentPageScroll()V

    .line 757
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/keyguard/PagedView;->setHorizontalScrollBarEnabled(Z)V

    .line 758
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mFirstLayout:Z

    goto :goto_a
.end method

.method protected onMeasure(II)V
    .registers 33
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 606
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsDataReady:Z

    move/from16 v27, v0

    if-eqz v27, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v27

    if-nez v27, :cond_12

    .line 607
    :cond_e
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 717
    :goto_11
    return-void

    .line 613
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    check-cast v18, Landroid/view/View;

    .line 614
    .local v18, "parent":Landroid/view/View;
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v25

    .line 615
    .local v25, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v26

    .line 616
    .local v26, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 617
    .local v11, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 620
    .local v12, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 621
    .local v10, "dm":Landroid/util/DisplayMetrics;
    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v27, v0

    iget v0, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v28, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 622
    .local v16, "maxSize":I
    const/high16 v27, 0x3fc00000

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v20, v0

    .line 623
    .local v20, "parentWidthSize":I
    move/from16 v19, v16

    .line 624
    .local v19, "parentHeightSize":I
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinScale:F

    move/from16 v28, v0

    div-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v22, v0

    .line 625
    .local v22, "scaledWidthSize":I
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinScale:F

    move/from16 v28, v0

    div-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v21, v0

    .line 626
    .local v21, "scaledHeightSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 628
    if-eqz v25, :cond_89

    if-nez v11, :cond_8d

    .line 629
    :cond_89
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    goto :goto_11

    .line 634
    :cond_8d
    if-lez v26, :cond_91

    if-gtz v12, :cond_96

    .line 635
    :cond_91
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    goto/16 :goto_11

    .line 644
    :cond_96
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPaddingTop()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPaddingBottom()I

    move-result v28

    add-int v24, v27, v28

    .line 645
    .local v24, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPaddingLeft()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPaddingRight()I

    move-result v28

    add-int v13, v27, v28

    .line 654
    .local v13, "horizontalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v5

    .line 655
    .local v5, "childCount":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_af
    if-ge v14, v5, :cond_f3

    .line 657
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    .line 658
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 661
    .local v15, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v27, v0

    const/16 v28, -0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_ed

    .line 662
    const/high16 v9, -0x80000000

    .line 668
    .local v9, "childWidthMode":I
    :goto_c9
    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v27, v0

    const/16 v28, -0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_f0

    .line 669
    const/high16 v7, -0x80000000

    .line 674
    .local v7, "childHeightMode":I
    :goto_d7
    sub-int v27, v26, v13

    move/from16 v0, v27

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 676
    .local v8, "childWidthMeasureSpec":I
    sub-int v27, v12, v24

    move/from16 v0, v27

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 679
    .local v6, "childHeightMeasureSpec":I
    invoke-virtual {v4, v8, v6}, Landroid/view/View;->measure(II)V

    .line 655
    add-int/lit8 v14, v14, 0x1

    goto :goto_af

    .line 664
    .end local v6    # "childHeightMeasureSpec":I
    .end local v7    # "childHeightMode":I
    .end local v8    # "childWidthMeasureSpec":I
    .end local v9    # "childWidthMode":I
    :cond_ed
    const/high16 v9, 0x40000000

    .restart local v9    # "childWidthMode":I
    goto :goto_c9

    .line 671
    :cond_f0
    const/high16 v7, 0x40000000

    .restart local v7    # "childHeightMode":I
    goto :goto_d7

    .line 681
    .end local v4    # "child":Landroid/view/View;
    .end local v7    # "childHeightMode":I
    .end local v9    # "childWidthMode":I
    .end local v15    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_f3
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->setMeasuredDimension(II)V

    .line 686
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->invalidateCachedOffsets()V

    .line 688
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildCountOnLastMeasure:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_124

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeferringForDelete:Z

    move/from16 v27, v0

    if-nez v27, :cond_124

    .line 689
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->setCurrentPage(I)V

    .line 691
    :cond_124
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mChildCountOnLastMeasure:I

    .line 693
    if-lez v5, :cond_169

    .line 698
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSpacing:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_169

    .line 703
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v17

    .line 704
    .local v17, "offset":I
    sub-int v27, v26, v17

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v0, v17

    move/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 706
    .local v23, "spacing":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->setPageSpacing(I)V

    .line 710
    .end local v17    # "offset":I
    .end local v23    # "spacing":I
    :cond_169
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->updateScrollingIndicatorPosition()V

    .line 712
    if-lez v5, :cond_18c

    .line 713
    add-int/lit8 v27, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildOffset(I)I

    move-result v27

    add-int/lit8 v28, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMaxScrollX:I

    goto/16 :goto_11

    .line 715
    :cond_18c
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMaxScrollX:I

    goto/16 :goto_11
.end method

.method protected onPageBeginMoving()V
    .registers 1

    .prologue
    .line 511
    return-void
.end method

.method protected onPageEndMoving()V
    .registers 1

    .prologue
    .line 515
    return-void
.end method

.method public abstract onRemoveView(Landroid/view/View;Z)V
.end method

.method public abstract onRemoveViewAnimationCompleted()V
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 7
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 956
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_12

    .line 957
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    .line 961
    .local v0, "focusablePage":I
    :goto_7
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 962
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_15

    .line 963
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    .line 965
    :goto_11
    return v2

    .line 959
    .end local v0    # "focusablePage":I
    .end local v1    # "v":Landroid/view/View;
    :cond_12
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    .restart local v0    # "focusablePage":I
    goto :goto_7

    .line 965
    .restart local v1    # "v":Landroid/view/View;
    :cond_15
    const/4 v2, 0x0

    goto :goto_11
.end method

.method protected onStartReordering()V
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 2135
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mAirGestureMonitor:Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor;

    .line 2136
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mAirGestureMonitor:Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mAirGestureMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor$AirGestureMonitorCallback;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/sec/AirGestureMonitor$AirGestureMonitorCallback;)V

    .line 2138
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 2139
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mReorderFocusView:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    .line 2140
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mReorderFocusView:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v2, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setIsReordering(Z)V

    .line 2141
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mReorderFocusView:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getChildCount()I

    move-result v1

    .line 2142
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_30
    if-ge v0, v1, :cond_3e

    .line 2143
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mReorderFocusView:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2142
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 2147
    .end local v0    # "i":I
    .end local v1    # "index":I
    :cond_3e
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_56

    .line 2148
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mContext:Landroid/content/Context;

    const v3, 0x104055a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2153
    :cond_56
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    .line 2154
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsReordering:Z

    .line 2157
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getVisiblePages([I)V

    .line 2158
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->boundByReorderablePages(Z[I)V

    .line 2159
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_65
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v2

    if-ge v0, v2, :cond_83

    .line 2160
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-lt v0, v2, :cond_78

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v2, v2, v4

    if-le v0, v2, :cond_80

    .line 2161
    :cond_78
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 2159
    :cond_80
    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    .line 2167
    :cond_83
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->invalidate()V

    .line 2168
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 36
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1332
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v31

    if-gtz v31, :cond_b

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v31

    .line 1623
    :goto_a
    return v31

    .line 1334
    :cond_b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1336
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1338
    .local v4, "action":I
    and-int/lit16 v0, v4, 0xff

    move/from16 v31, v0

    packed-switch v31, :pswitch_data_622

    .line 1623
    :cond_19
    :goto_19
    :pswitch_19
    const/16 v31, 0x1

    goto :goto_a

    .line 1344
    :pswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Scroller;->isFinished()Z

    move-result v31

    if-nez v31, :cond_31

    .line 1345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1349
    :cond_31
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownMotionX:F

    .line 1350
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionY:F

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownMotionY:F

    .line 1351
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollX()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownScrollX:F

    .line 1352
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionY:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v18

    .line 1353
    .local v18, "p":[F
    const/16 v31, 0x0

    aget v31, v18, v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionX:F

    .line 1354
    const/16 v31, 0x1

    aget v31, v18, v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionY:F

    .line 1355
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionXRemainder:F

    .line 1356
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTotalMotionX:F

    .line 1357
    const/16 v31, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mActivePointerId:I

    .line 1360
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportOffsetX()I

    move-result v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mEdgeSwipeRegionSize:I

    move/from16 v32, v0

    add-int v16, v31, v32

    .line 1361
    .local v16, "leftEdgeBoundary":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getMeasuredWidth()I

    move-result v31

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportOffsetX()I

    move-result v32

    sub-int v31, v31, v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mEdgeSwipeRegionSize:I

    move/from16 v32, v0

    sub-int v27, v31, v32

    .line 1362
    .local v27, "rightEdgeBoundary":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownMotionX:F

    move/from16 v31, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v32, v0

    cmpg-float v31, v31, v32

    if-lez v31, :cond_e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownMotionX:F

    move/from16 v31, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v32, v0

    cmpl-float v31, v31, v32

    if-ltz v31, :cond_f0

    .line 1363
    :cond_e8
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownEventOnEdge:Z

    .line 1366
    :cond_f0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_19

    .line 1367
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->pageBeginMoving()V

    goto/16 :goto_19

    .line 1372
    .end local v16    # "leftEdgeBoundary":I
    .end local v18    # "p":[F
    .end local v27    # "rightEdgeBoundary":I
    :pswitch_103
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1b8

    .line 1374
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mActivePointerId:I

    move/from16 v31, v0

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v23

    .line 1376
    .local v23, "pointerIndex":I
    const/16 v31, -0x1

    move/from16 v0, v23

    move/from16 v1, v31

    if-ne v0, v1, :cond_12b

    const/16 v31, 0x1

    goto/16 :goto_a

    .line 1378
    :cond_12b
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v30

    .line 1379
    .local v30, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionXRemainder:F

    move/from16 v32, v0

    add-float v31, v31, v32

    sub-float v7, v31, v30

    .line 1381
    .local v7, "deltaX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTotalMotionX:F

    move/from16 v31, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v32

    add-float v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTotalMotionX:F

    .line 1386
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v31

    const/high16 v32, 0x3f800000

    cmpl-float v31, v31, v32

    if-ltz v31, :cond_1b3

    .line 1387
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchX:F

    move/from16 v31, v0

    add-float v31, v31, v7

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchX:F

    .line 1388
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v31

    move-wide/from16 v0, v31

    long-to-float v0, v0

    move/from16 v31, v0

    const v32, 0x4e6e6b28

    div-float v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mSmoothingTime:F

    .line 1389
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeferScrollUpdate:Z

    move/from16 v31, v0

    if-nez v31, :cond_1af

    .line 1390
    float-to-int v0, v7

    move/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->scrollBy(II)V

    .line 1395
    :goto_197
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    .line 1396
    float-to-int v0, v7

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v31, v7, v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionXRemainder:F

    goto/16 :goto_19

    .line 1393
    :cond_1af
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->invalidate()V

    goto :goto_197

    .line 1398
    :cond_1b3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->awakenScrollBars()Z

    goto/16 :goto_19

    .line 1400
    .end local v7    # "deltaX":F
    .end local v23    # "pointerIndex":I
    .end local v30    # "x":F
    :cond_1b8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    move/from16 v31, v0

    const/16 v32, 0x4

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_398

    .line 1402
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    .line 1403
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionY:F

    .line 1407
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionY:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v24

    .line 1408
    .local v24, "pt":[F
    const/16 v31, 0x0

    aget v31, v24, v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionX:F

    .line 1409
    const/16 v31, 0x1

    aget v31, v24, v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionY:F

    .line 1410
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 1413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v8

    .line 1414
    .local v8, "dragViewIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_SIDE_PAGE_BUFFER_PERCENTAGE:F

    move/from16 v31, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportWidth()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v6, v0

    .line 1416
    .local v6, "bufferSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v31

    const/16 v32, 0x0

    aget v31, v31, v32

    int-to-float v0, v6

    move/from16 v32, v0

    add-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v15, v0

    .line 1418
    .local v15, "leftBufferEdge":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v31

    const/16 v32, 0x0

    aget v31, v31, v32

    int-to-float v0, v6

    move/from16 v32, v0

    sub-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v26, v0

    .line 1422
    .local v26, "rightBufferEdge":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionX:F

    move/from16 v31, v0

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionY:F

    move/from16 v32, v0

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isHoveringOverDeleteDropTarget(II)Z

    move-result v13

    .line 1424
    .local v13, "isHoveringOverDelete":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Landroid/view/View;->setPressed(Z)V

    .line 1425
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v13}, Lcom/android/internal/policy/impl/keyguard/PagedView;->setPageHoveringOverDeleteDropTarget(IZ)V

    .line 1434
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionX:F

    move/from16 v22, v0

    .line 1435
    .local v22, "parentX":F
    const/16 v19, -0x1

    .line 1436
    .local v19, "pageIndexToSnapTo":I
    int-to-float v0, v15

    move/from16 v31, v0

    cmpg-float v31, v22, v31

    if-gez v31, :cond_36a

    if-lez v8, :cond_36a

    .line 1437
    add-int/lit8 v19, v8, -0x1

    .line 1442
    :cond_2c6
    :goto_2c6
    move/from16 v20, v19

    .line 1443
    .local v20, "pageUnderPointIndex":I
    const/16 v31, -0x1

    move/from16 v0, v20

    move/from16 v1, v31

    if-le v0, v1, :cond_381

    if-nez v13, :cond_381

    .line 1444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    aput v33, v31, v32

    .line 1445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v33

    add-int/lit8 v33, v33, -0x1

    aput v33, v31, v32

    .line 1446
    const/16 v31, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->boundByReorderablePages(Z[I)V

    .line 1447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget v31, v31, v32

    move/from16 v0, v31

    move/from16 v1, v20

    if-gt v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v31, v0

    const/16 v32, 0x1

    aget v31, v31, v32

    move/from16 v0, v20

    move/from16 v1, v31

    if-gt v0, v1, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mSidePageHoverIndex:I

    move/from16 v31, v0

    move/from16 v0, v20

    move/from16 v1, v31

    if-eq v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Scroller;->isFinished()Z

    move-result v31

    if-eqz v31, :cond_19

    .line 1450
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mSidePageHoverIndex:I

    .line 1451
    new-instance v31, Lcom/android/internal/policy/impl/keyguard/PagedView$1;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v8}, Lcom/android/internal/policy/impl/keyguard/PagedView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;II)V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    .line 1501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_19

    .line 1438
    .end local v20    # "pageUnderPointIndex":I
    :cond_36a
    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v31, v0

    cmpl-float v31, v22, v31

    if-lez v31, :cond_2c6

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v31

    add-int/lit8 v31, v31, -0x1

    move/from16 v0, v31

    if-ge v8, v0, :cond_2c6

    .line 1439
    add-int/lit8 v19, v8, 0x1

    goto/16 :goto_2c6

    .line 1504
    .restart local v20    # "pageUnderPointIndex":I
    :cond_381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1505
    const/16 v31, -0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mSidePageHoverIndex:I

    goto/16 :goto_19

    .line 1508
    .end local v6    # "bufferSize":I
    .end local v8    # "dragViewIndex":I
    .end local v13    # "isHoveringOverDelete":Z
    .end local v15    # "leftBufferEdge":I
    .end local v19    # "pageIndexToSnapTo":I
    .end local v20    # "pageUnderPointIndex":I
    .end local v22    # "parentX":F
    .end local v24    # "pt":[F
    .end local v26    # "rightBufferEdge":I
    :cond_398
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto/16 :goto_19

    .line 1513
    :pswitch_39d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_50b

    .line 1514
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mActivePointerId:I

    .line 1515
    .local v5, "activePointerId":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v23

    .line 1517
    .restart local v23    # "pointerIndex":I
    const/16 v31, -0x1

    move/from16 v0, v23

    move/from16 v1, v31

    if-eq v0, v1, :cond_19

    .line 1518
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v30

    .line 1519
    .restart local v30    # "x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v28, v0

    .line 1520
    .local v28, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v31, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMaximumVelocity:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1521
    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v31

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v29, v0

    .line 1522
    .local v29, "velocityX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownMotionX:F

    move/from16 v31, v0

    sub-float v31, v30, v31

    move/from16 v0, v31

    float-to-int v7, v0

    .line 1523
    .local v7, "deltaX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v21

    .line 1524
    .local v21, "pageWidth":I
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v32, v0

    const v33, 0x3ecccccd

    mul-float v32, v32, v33

    cmpl-float v31, v31, v32

    if-lez v31, :cond_4c6

    const/4 v14, 0x1

    .line 1527
    .local v14, "isSignificantMove":Z
    :goto_425
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTotalMotionX:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionXRemainder:F

    move/from16 v33, v0

    add-float v32, v32, v33

    sub-float v32, v32, v30

    invoke-static/range {v32 .. v32}, Ljava/lang/Math;->abs(F)F

    move-result v32

    add-float v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTotalMotionX:F

    .line 1529
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTotalMotionX:F

    move/from16 v31, v0

    const/high16 v32, 0x41c80000

    cmpl-float v31, v31, v32

    if-lez v31, :cond_4c9

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(I)I

    move-result v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mFlingThresholdVelocity:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_4c9

    const/4 v12, 0x1

    .line 1535
    .local v12, "isFling":Z
    :goto_464
    const/16 v25, 0x0

    .line 1536
    .local v25, "returnToOriginalPage":Z
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v32, v0

    const v33, 0x3ea8f5c3

    mul-float v32, v32, v33

    cmpl-float v31, v31, v32

    if-lez v31, :cond_495

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->signum(F)F

    move-result v31

    int-to-float v0, v7

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Math;->signum(F)F

    move-result v32

    cmpl-float v31, v31, v32

    if-eqz v31, :cond_495

    if-eqz v12, :cond_495

    .line 1538
    const/16 v25, 0x1

    .line 1545
    :cond_495
    if-eqz v14, :cond_49b

    if-lez v7, :cond_49b

    if-eqz v12, :cond_49f

    :cond_49b
    if-eqz v12, :cond_4d4

    if-lez v29, :cond_4d4

    :cond_49f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    move/from16 v31, v0

    if-lez v31, :cond_4d4

    .line 1547
    if-eqz v25, :cond_4cb

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    .line 1548
    .local v9, "finalPage":I
    :goto_4ad
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPageWithVelocity(II)V

    .line 1606
    .end local v5    # "activePointerId":I
    .end local v7    # "deltaX":I
    .end local v9    # "finalPage":I
    .end local v12    # "isFling":Z
    .end local v14    # "isSignificantMove":Z
    .end local v21    # "pageWidth":I
    .end local v23    # "pointerIndex":I
    .end local v25    # "returnToOriginalPage":Z
    .end local v28    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v29    # "velocityX":I
    .end local v30    # "x":F
    :cond_4b4
    :goto_4b4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1608
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->resetTouchState()V

    goto/16 :goto_19

    .line 1524
    .restart local v5    # "activePointerId":I
    .restart local v7    # "deltaX":I
    .restart local v21    # "pageWidth":I
    .restart local v23    # "pointerIndex":I
    .restart local v28    # "velocityTracker":Landroid/view/VelocityTracker;
    .restart local v29    # "velocityX":I
    .restart local v30    # "x":F
    :cond_4c6
    const/4 v14, 0x0

    goto/16 :goto_425

    .line 1529
    .restart local v14    # "isSignificantMove":Z
    :cond_4c9
    const/4 v12, 0x0

    goto :goto_464

    .line 1547
    .restart local v12    # "isFling":Z
    .restart local v25    # "returnToOriginalPage":Z
    :cond_4cb
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    move/from16 v31, v0

    add-int/lit8 v9, v31, -0x1

    goto :goto_4ad

    .line 1549
    :cond_4d4
    if-eqz v14, :cond_4da

    if-gez v7, :cond_4da

    if-eqz v12, :cond_4de

    :cond_4da
    if-eqz v12, :cond_507

    if-gez v29, :cond_507

    :cond_4de
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    move/from16 v31, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v32

    add-int/lit8 v32, v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_507

    .line 1552
    if-eqz v25, :cond_4fe

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    .line 1553
    .restart local v9    # "finalPage":I
    :goto_4f6
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPageWithVelocity(II)V

    goto :goto_4b4

    .line 1552
    .end local v9    # "finalPage":I
    :cond_4fe
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    move/from16 v31, v0

    add-int/lit8 v9, v31, 0x1

    goto :goto_4f6

    .line 1555
    :cond_507
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToDestination()V

    goto :goto_4b4

    .line 1557
    .end local v5    # "activePointerId":I
    .end local v7    # "deltaX":I
    .end local v12    # "isFling":Z
    .end local v14    # "isSignificantMove":Z
    .end local v21    # "pageWidth":I
    .end local v23    # "pointerIndex":I
    .end local v25    # "returnToOriginalPage":Z
    .end local v28    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v29    # "velocityX":I
    .end local v30    # "x":F
    :cond_50b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_541

    .line 1561
    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, -0x1

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 1562
    .local v17, "nextPage":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    move/from16 v31, v0

    move/from16 v0, v17

    move/from16 v1, v31

    if-eq v0, v1, :cond_53c

    .line 1563
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(I)V

    goto/16 :goto_4b4

    .line 1565
    :cond_53c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToDestination()V

    goto/16 :goto_4b4

    .line 1567
    .end local v17    # "nextPage":I
    :cond_541
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    move/from16 v31, v0

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_57b

    .line 1571
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v31

    add-int/lit8 v31, v31, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x1

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 1572
    .restart local v17    # "nextPage":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    move/from16 v31, v0

    move/from16 v0, v17

    move/from16 v1, v31

    if-eq v0, v1, :cond_576

    .line 1573
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(I)V

    goto/16 :goto_4b4

    .line 1575
    :cond_576
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToDestination()V

    goto/16 :goto_4b4

    .line 1577
    .end local v17    # "nextPage":I
    :cond_57b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    move/from16 v31, v0

    const/16 v32, 0x4

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_602

    .line 1579
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    .line 1580
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionY:F

    .line 1584
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionY:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v24

    .line 1585
    .restart local v24    # "pt":[F
    const/16 v31, 0x0

    aget v31, v24, v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionX:F

    .line 1586
    const/16 v31, 0x1

    aget v31, v24, v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionY:F

    .line 1587
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 1588
    const/4 v11, 0x0

    .line 1591
    .local v11, "handledFling":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isFlingingToDelete()Landroid/graphics/PointF;

    move-result-object v10

    .line 1592
    .local v10, "flingToDeleteVector":Landroid/graphics/PointF;
    if-eqz v10, :cond_5d9

    .line 1593
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onFlingToDelete(Landroid/graphics/PointF;)V

    .line 1594
    const/4 v11, 0x1

    .line 1597
    :cond_5d9
    if-nez v11, :cond_4b4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionX:F

    move/from16 v31, v0

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionY:F

    move/from16 v32, v0

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isHoveringOverDeleteDropTarget(II)Z

    move-result v31

    if-eqz v31, :cond_4b4

    .line 1599
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onDropToDelete()V

    goto/16 :goto_4b4

    .line 1602
    .end local v10    # "flingToDeleteVector":Landroid/graphics/PointF;
    .end local v11    # "handledFling":Z
    .end local v24    # "pt":[F
    :cond_602
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onUnhandledTap(Landroid/view/MotionEvent;)V

    goto/16 :goto_4b4

    .line 1612
    :pswitch_607
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchState:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_618

    .line 1613
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToDestination()V

    .line 1615
    :cond_618
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->resetTouchState()V

    goto/16 :goto_19

    .line 1619
    :pswitch_61d
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_19

    .line 1338
    :pswitch_data_622
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_39d
        :pswitch_103
        :pswitch_607
        :pswitch_19
        :pswitch_19
        :pswitch_61d
    .end packed-switch
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1639
    return-void
.end method

.method protected overScroll(F)V
    .registers 2
    .param p1, "amount"    # F

    .prologue
    .line 1314
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->dampedOverScroll(F)V

    .line 1315
    return-void
.end method

.method protected pageBeginMoving()V
    .registers 2

    .prologue
    .line 492
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsPageMoving:Z

    if-nez v0, :cond_a

    .line 493
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsPageMoving:Z

    .line 494
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onPageBeginMoving()V

    .line 496
    :cond_a
    return-void
.end method

.method protected pageEndMoving()V
    .registers 2

    .prologue
    .line 499
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsPageMoving:Z

    if-eqz v0, :cond_a

    .line 500
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsPageMoving:Z

    .line 501
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onPageEndMoving()V

    .line 503
    :cond_a
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .registers 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 2613
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2630
    :goto_7
    return v0

    .line 2616
    :cond_8
    sparse-switch p1, :sswitch_data_28

    .line 2630
    :cond_b
    const/4 v0, 0x0

    goto :goto_7

    .line 2618
    :sswitch_d
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_b

    .line 2619
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->scrollRight()V

    goto :goto_7

    .line 2624
    :sswitch_1d
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_b

    .line 2625
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->scrollLeft()V

    goto :goto_7

    .line 2616
    nop

    :sswitch_data_28
    .sparse-switch
        0x1000 -> :sswitch_d
        0x2000 -> :sswitch_1d
    .end sparse-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 1705
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1706
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->indexToPage(I)I

    move-result v0

    .line 1707
    .local v0, "page":I
    if-ltz v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_1c

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 1708
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(I)V

    .line 1710
    :cond_1c
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 945
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->indexToPage(I)I

    move-result v0

    .line 946
    .local v0, "page":I
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    if-ne v0, v1, :cond_14

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_19

    .line 947
    :cond_14
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(I)V

    .line 948
    const/4 v1, 0x1

    .line 950
    :goto_18
    return v1

    :cond_19
    const/4 v1, 0x0

    goto :goto_18
.end method

.method protected screenScrolled(I)V
    .registers 2
    .param p1, "screenCenter"    # I

    .prologue
    .line 763
    return-void
.end method

.method public scrollBy(II)V
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 533
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mUnboundedScrollX:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->scrollTo(II)V

    .line 534
    return-void
.end method

.method public scrollLeft()V
    .registers 2

    .prologue
    .line 1891
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1892
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    if-lez v0, :cond_13

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(I)V

    .line 1896
    :cond_13
    :goto_13
    return-void

    .line 1894
    :cond_14
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    if-lez v0, :cond_13

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(I)V

    goto :goto_13
.end method

.method public scrollRight()V
    .registers 3

    .prologue
    .line 1899
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1900
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_19

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(I)V

    .line 1904
    :cond_19
    :goto_19
    return-void

    .line 1902
    :cond_1a
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_19

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(I)V

    goto :goto_19
.end method

.method public scrollTo(II)V
    .registers 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 538
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mUnboundedScrollX:I

    .line 540
    if-gez p1, :cond_39

    .line 541
    invoke-super {p0, v3, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 542
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mAllowOverScroll:Z

    if-eqz v1, :cond_11

    .line 543
    int-to-float v1, p1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->overScroll(F)V

    .line 555
    :cond_11
    :goto_11
    int-to-float v1, p1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTouchX:F

    .line 556
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    long-to-float v1, v1

    const v2, 0x4e6e6b28

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mSmoothingTime:F

    .line 559
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isReordering(Z)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 560
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionX:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionY:F

    invoke-virtual {p0, p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->mapPointFromParentToView(Landroid/view/View;FF)[F

    move-result-object v0

    .line 561
    .local v0, "p":[F
    aget v1, v0, v3

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    .line 562
    aget v1, v0, v4

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionY:F

    .line 563
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 565
    .end local v0    # "p":[F
    :cond_38
    return-void

    .line 545
    :cond_39
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMaxScrollX:I

    if-le p1, v1, :cond_4f

    .line 546
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMaxScrollX:I

    invoke-super {p0, v1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 547
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mAllowOverScroll:Z

    if-eqz v1, :cond_11

    .line 548
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMaxScrollX:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->overScroll(F)V

    goto :goto_11

    .line 551
    :cond_4f
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mOverScrollX:I

    .line 552
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_11
.end method

.method public setCurrentPage(I)V
    .registers 4
    .param p1, "currentPage"    # I

    .prologue
    .line 457
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->notifyPageSwitching(I)V

    .line 458
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_10

    .line 459
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 463
    :cond_10
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_17

    .line 473
    :goto_16
    return-void

    .line 467
    :cond_17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mForceScreenScrolled:Z

    .line 468
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    .line 469
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->updateCurrentPageScroll()V

    .line 470
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->updateScrollingIndicator()V

    .line 471
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->notifyPageSwitched()V

    .line 472
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->invalidate()V

    goto :goto_16
.end method

.method protected setDataIsReady()V
    .registers 2

    .prologue
    .line 407
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mIsDataReady:Z

    .line 408
    return-void
.end method

.method setDeleteDropTarget(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;

    .line 327
    return-void
.end method

.method public setMinScale(F)V
    .registers 2
    .param p1, "f"    # F

    .prologue
    .line 359
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinScale:F

    .line 360
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->requestLayout()V

    .line 361
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 5
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 524
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 525
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v0

    .line 526
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_13

    .line 527
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 526
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 529
    :cond_13
    return-void
.end method

.method public setOnlyAllowEdgeSwipes(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 476
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mOnlyAllowEdgeSwipes:Z

    .line 477
    return-void
.end method

.method protected setPageHoveringOverDeleteDropTarget(IZ)V
    .registers 3
    .param p1, "viewIndex"    # I
    .param p2, "isHovering"    # Z

    .prologue
    .line 2547
    return-void
.end method

.method public setPageSpacing(I)V
    .registers 2
    .param p1, "pageSpacing"    # I

    .prologue
    .line 720
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSpacing:I

    .line 721
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->invalidateCachedOffsets()V

    .line 722
    return-void
.end method

.method public setPageSwitchListener(Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;)V
    .registers 5
    .param p1, "pageSwitchListener"    # Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSwitchListener:Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;

    .line 397
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSwitchListener:Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;

    if-eqz v0, :cond_13

    .line 398
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSwitchListener:Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;->onPageSwitched(Landroid/view/View;I)V

    .line 400
    :cond_13
    return-void
.end method

.method public setScaleX(F)V
    .registers 6
    .param p1, "scaleX"    # F

    .prologue
    const/4 v3, 0x1

    .line 365
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 366
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isReordering(Z)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 367
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionX:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mParentDownMotionY:F

    invoke-virtual {p0, p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->mapPointFromParentToView(Landroid/view/View;FF)[F

    move-result-object v0

    .line 368
    .local v0, "p":[F
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    .line 369
    aget v1, v0, v3

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionY:F

    .line 370
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2a

    .line 371
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPagingTouchSlop:I

    int-to-float v1, v1

    div-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPagingTouchSlopScale:I

    .line 373
    :cond_2a
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 375
    .end local v0    # "p":[F
    :cond_2d
    return-void
.end method

.method protected shouldDrawChild(Landroid/view/View;)Z
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 892
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected shouldSetTopAlignedPivotForWidget(I)Z
    .registers 3
    .param p1, "childIndex"    # I

    .prologue
    .line 601
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTopAlignPageWhenShrinkingForBouncer:Z

    return v0
.end method

.method protected showScrollingIndicator(Z)V
    .registers 7
    .param p1, "immediately"    # Z

    .prologue
    const/high16 v4, 0x3f800000

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1972
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mShouldShowScrollIndicator:Z

    .line 1973
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mShouldShowScrollIndicatorImmediately:Z

    .line 1974
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v0

    if-gt v0, v2, :cond_f

    .line 1992
    :cond_e
    :goto_e
    return-void

    .line 1975
    :cond_f
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1977
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mShouldShowScrollIndicator:Z

    .line 1978
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollingIndicator()Landroid/view/View;

    .line 1979
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 1981
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->updateScrollingIndicatorPosition()V

    .line 1982
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1983
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->cancelScrollingIndicatorAnimations()V

    .line 1984
    if-eqz p1, :cond_31

    .line 1985
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_e

    .line 1987
    :cond_31
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    const-string v1, "alpha"

    new-array v2, v2, [F

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 1988
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1989
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_e
.end method

.method protected snapToDestination()V
    .registers 3

    .prologue
    .line 1766
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    const/16 v1, 0x2ee

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(II)V

    .line 1767
    return-void
.end method

.method protected snapToPage(I)V
    .registers 3
    .param p1, "whichPage"    # I

    .prologue
    .line 1835
    const/16 v0, 0x2ee

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(II)V

    .line 1836
    return-void
.end method

.method protected snapToPage(II)V
    .registers 4
    .param p1, "whichPage"    # I
    .param p2, "duration"    # I

    .prologue
    .line 1842
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(IIZ)V

    .line 1843
    return-void
.end method

.method protected snapToPage(III)V
    .registers 5
    .param p1, "whichPage"    # I
    .param p2, "delta"    # I
    .param p3, "duration"    # I

    .prologue
    .line 1857
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(IIIZ)V

    .line 1858
    return-void
.end method

.method protected snapToPage(IIIZ)V
    .registers 12
    .param p1, "whichPage"    # I
    .param p2, "delta"    # I
    .param p3, "duration"    # I
    .param p4, "immediate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1860
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mNextPage:I

    .line 1861
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->notifyPageSwitching(I)V

    .line 1862
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getFocusedChild()Landroid/view/View;

    move-result-object v6

    .line 1863
    .local v6, "focusedChild":Landroid/view/View;
    if-eqz v6, :cond_1b

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    if-eq p1, v0, :cond_1b

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v6, v0, :cond_1b

    .line 1865
    invoke-virtual {v6}, Landroid/view/View;->clearFocus()V

    .line 1868
    :cond_1b
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->pageBeginMoving()V

    .line 1869
    invoke-virtual {p0, p3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->awakenScrollBars(I)Z

    .line 1870
    if-eqz p4, :cond_4a

    .line 1871
    const/4 p3, 0x0

    .line 1876
    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1877
    :cond_31
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mUnboundedScrollX:I

    move v3, p2

    move v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1879
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->notifyPageSwitched()V

    .line 1882
    if-eqz p4, :cond_43

    .line 1883
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->computeScroll()V

    .line 1886
    :cond_43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mForceScreenScrolled:Z

    .line 1887
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->invalidate()V

    .line 1888
    return-void

    .line 1872
    :cond_4a
    if-nez p3, :cond_24

    .line 1873
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p3

    goto :goto_24
.end method

.method protected snapToPage(IIZ)V
    .registers 9
    .param p1, "whichPage"    # I
    .param p2, "duration"    # I
    .param p3, "immediate"    # Z

    .prologue
    .line 1845
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1850
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildOffset(I)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v4

    sub-int v1, v3, v4

    .line 1851
    .local v1, "newX":I
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mUnboundedScrollX:I

    .line 1852
    .local v2, "sX":I
    sub-int v0, v1, v2

    .line 1853
    .local v0, "delta":I
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(IIIZ)V

    .line 1854
    return-void
.end method

.method protected snapToPageImmediately(I)V
    .registers 4
    .param p1, "whichPage"    # I

    .prologue
    .line 1838
    const/16 v0, 0x2ee

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(IIZ)V

    .line 1839
    return-void
.end method

.method protected snapToPageWithVelocity(II)V
    .registers 12
    .param p1, "whichPage"    # I
    .param p2, "velocity"    # I

    .prologue
    const/high16 v8, 0x3f800000

    .line 1798
    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1799
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportWidth()I

    move-result v6

    div-int/lit8 v4, v6, 0x2

    .line 1804
    .local v4, "halfScreenSize":I
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildOffset(I)I

    move-result v6

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v7

    sub-int v5, v6, v7

    .line 1805
    .local v5, "newX":I
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mUnboundedScrollX:I

    sub-int v0, v5, v6

    .line 1806
    .local v0, "delta":I
    const/4 v3, 0x0

    .line 1808
    .local v3, "duration":I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinFlingVelocity:I

    if-ge v6, v7, :cond_34

    .line 1811
    const/16 v6, 0x2ee

    invoke-virtual {p0, p1, v6}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(II)V

    .line 1832
    :goto_33
    return-void

    .line 1819
    :cond_34
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    mul-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1820
    .local v2, "distanceRatio":F
    int-to-float v6, v4

    int-to-float v7, v4

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->distanceInfluenceForSnapDuration(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float v1, v6, v7

    .line 1823
    .local v1, "distance":F
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 1824
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinSnapVelocity:I

    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1829
    const/high16 v6, 0x447a0000

    int-to-float v7, p2

    div-float v7, v1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v3, v6, 0x4

    .line 1831
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(III)V

    goto :goto_33
.end method

.method public startReordering()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2212
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    .line 2213
    .local v0, "dragViewIndex":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aput v2, v3, v2

    .line 2214
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aput v4, v3, v1

    .line 2215
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->boundByReorderablePages(Z[I)V

    .line 2216
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mReorderingStarted:Z

    .line 2219
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v3, v3, v2

    if-gt v3, v0, :cond_37

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v3, v3, v1

    if-gt v0, v3, :cond_37

    .line 2221
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->zoomOut()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 2223
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    .line 2225
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onStartReordering()V

    .line 2229
    :cond_36
    :goto_36
    return v1

    :cond_37
    move v1, v2

    goto :goto_36
.end method

.method protected updateCurrentPageScroll()V
    .registers 6

    .prologue
    .line 445
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildOffset(I)I

    move-result v1

    .line 446
    .local v1, "offset":I
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    .line 447
    .local v2, "relOffset":I
    sub-int v0, v1, v2

    .line 448
    .local v0, "newX":I
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->scrollTo(II)V

    .line 449
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v0}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 450
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 451
    return-void
.end method

.method updateDragViewTranslationDuringDrag()V
    .registers 5

    .prologue
    .line 347
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    if-nez v2, :cond_5

    .line 356
    :goto_4
    return-void

    .line 350
    :cond_5
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionX:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownMotionX:F

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownScrollX:F

    sub-float v0, v2, v3

    .line 351
    .local v0, "x":F
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mLastMotionY:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownMotionY:F

    sub-float v1, v2, v3

    .line 352
    .local v1, "y":F
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 353
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_4
.end method

.method protected zoomIn(Ljava/lang/Runnable;)Z
    .registers 9
    .param p1, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/high16 v6, 0x3f800000

    .line 2279
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2280
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2282
    :cond_15
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScaleX()F

    move-result v2

    cmpg-float v2, v2, v6

    if-ltz v2, :cond_25

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScaleY()F

    move-result v2

    cmpg-float v2, v2, v6

    if-gez v2, :cond_65

    .line 2283
    :cond_25
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    .line 2284
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_ZOOM_IN_OUT_DURATION:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2285
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const-string v4, "scaleX"

    new-array v5, v1, [F

    aput v6, v5, v0

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "scaleY"

    new-array v5, v1, [F

    aput v6, v5, v0

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2288
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/PagedView$8;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView$8;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2315
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    move v0, v1

    .line 2322
    :cond_64
    :goto_64
    return v0

    .line 2318
    :cond_65
    if-eqz p1, :cond_64

    .line 2319
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_64
.end method

.method protected zoomOut()Z
    .registers 8

    .prologue
    const/high16 v3, 0x3f800000

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2100
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2101
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2104
    :cond_15
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScaleX()F

    move-result v2

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_68

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getScaleY()F

    move-result v2

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_68

    .line 2105
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    .line 2106
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_ZOOM_IN_OUT_DURATION:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2107
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const-string v4, "scaleX"

    new-array v5, v0, [F

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinScale:F

    aput v6, v5, v1

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "scaleY"

    new-array v5, v0, [F

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMinScale:F

    aput v6, v5, v1

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2110
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/PagedView$5;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/PagedView$5;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2127
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 2130
    :goto_67
    return v0

    :cond_68
    move v0, v1

    goto :goto_67
.end method
