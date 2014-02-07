.class Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;
.super Landroid/view/View;
.source "GuideRelayoutWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GuideView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$FadeoutRunnable;,
        Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$AutoDismissRunnable;
    }
.end annotation


# static fields
.field private static final DIR_BOTTOM:I = 0x2

.field private static final DIR_LEFT:I = 0x0

.field private static final DIR_MAX:I = 0x3

.field private static final DIR_RIGHT:I = 0x1

.field static final GESTURE_MAX:I = 0x7

.field static final GESTURE_MOVE:I = 0x1

.field static final GESTURE_NONE:I = 0x0

.field static final GESTURE_RESIZE_BOTTOM:I = 0x6

.field static final GESTURE_RESIZE_LEFT:I = 0x2

.field static final GESTURE_RESIZE_LEFTBOTTOM:I = 0x4

.field static final GESTURE_RESIZE_RIGHT:I = 0x3

.field static final GESTURE_RESIZE_RIGHTBOTTOM:I = 0x5


# instance fields
.field private final AUTO_CLOSE_MILLISEC:I

.field final FADEOUT_DELAY:I

.field final TAG:Ljava/lang/String;

.field private mAutoDismissHandler:Landroid/os/Handler;

.field private mAutoDismissRunnable:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$AutoDismissRunnable;

.field private mCurrentOrientation:I

.field private mCurrentSide:I

.field private mDeltaX:I

.field private mDeltaY:I

.field private mFadeoutAlpha:I

.field private mFadeoutHandler:Landroid/os/Handler;

.field private mFadeoutRunnable:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$FadeoutRunnable;

.field private mFlagAutoClose:Z

.field private mFlagDimming:Z

.field private mFlagDrawResizeDecor:Z

.field private mFlagDrawingRedBorder:Z

.field private mGestureMode:I

.field private mLeftArrowPtrBmp:Landroid/graphics/Bitmap;

.field private mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

.field private mPnt:Landroid/graphics/Paint;

.field private mPosX:I

.field private mPosY:I

.field private mResizeArrowRect:[Landroid/graphics/Rect;

.field private mResizePtrBmp:Landroid/graphics/Bitmap;

.field private mResizeSymbolRect:[Landroid/graphics/Rect;

.field private mRightArrowPtrBmp:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;Landroid/content/Context;Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)V
    .registers 11
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "owner"    # Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 389
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    .line 390
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 334
    const-string v1, "GuideView"

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->TAG:Ljava/lang/String;

    .line 346
    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    .line 347
    iput v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosX:I

    .line 348
    iput v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosY:I

    .line 350
    iput v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mDeltaX:I

    .line 351
    iput v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mDeltaY:I

    .line 353
    iput v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    .line 354
    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPnt:Landroid/graphics/Paint;

    .line 355
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->FADEOUT_DELAY:I

    .line 357
    iput v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mCurrentSide:I

    .line 361
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawingRedBorder:Z

    .line 369
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawResizeDecor:Z

    .line 370
    new-array v1, v6, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mResizeSymbolRect:[Landroid/graphics/Rect;

    .line 371
    new-array v1, v5, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mResizeArrowRect:[Landroid/graphics/Rect;

    .line 372
    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mResizePtrBmp:Landroid/graphics/Bitmap;

    .line 373
    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mLeftArrowPtrBmp:Landroid/graphics/Bitmap;

    .line 374
    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mRightArrowPtrBmp:Landroid/graphics/Bitmap;

    .line 377
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDimming:Z

    .line 378
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutAlpha:I

    .line 379
    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutHandler:Landroid/os/Handler;

    .line 380
    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutRunnable:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$FadeoutRunnable;

    .line 383
    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mAutoDismissHandler:Landroid/os/Handler;

    .line 384
    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mAutoDismissRunnable:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$AutoDismissRunnable;

    .line 385
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagAutoClose:Z

    .line 386
    const/16 v1, 0x5dc

    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->AUTO_CLOSE_MILLISEC:I

    .line 391
    iput-object p3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    .line 393
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPnt:Landroid/graphics/Paint;

    .line 394
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPnt:Landroid/graphics/Paint;

    if-eqz v1, :cond_6e

    .line 395
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPnt:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 396
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPnt:Landroid/graphics/Paint;

    const/high16 v2, 0x42340000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 397
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPnt:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 398
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPnt:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 402
    :cond_6e
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6f
    if-ge v0, v6, :cond_7d

    .line 403
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mResizeSymbolRect:[Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v0

    .line 402
    add-int/lit8 v0, v0, 0x1

    goto :goto_6f

    .line 405
    :cond_7d
    const/4 v0, 0x0

    :goto_7e
    if-ge v0, v5, :cond_8c

    .line 406
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mResizeArrowRect:[Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v0

    .line 405
    add-int/lit8 v0, v0, 0x1

    goto :goto_7e

    .line 408
    :cond_8c
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->updateResizeDecorRect()V

    .line 411
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mAutoDismissHandler:Landroid/os/Handler;

    .line 412
    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$AutoDismissRunnable;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$AutoDismissRunnable;-><init>(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mAutoDismissRunnable:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$AutoDismissRunnable;

    .line 415
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutHandler:Landroid/os/Handler;

    .line 417
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mCurrentOrientation:I

    .line 418
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    .prologue
    .line 333
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosX:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;
    .param p1, "x1"    # I

    .prologue
    .line 333
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosX:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    .prologue
    .line 333
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosY:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;
    .param p1, "x1"    # I

    .prologue
    .line 333
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosY:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;
    .param p1, "x1"    # I

    .prologue
    .line 333
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mDeltaX:I

    return p1
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagAutoClose:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    .prologue
    .line 333
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutAlpha:I

    return v0
.end method

.method static synthetic access$2602(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;
    .param p1, "x1"    # I

    .prologue
    .line 333
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutAlpha:I

    return p1
.end method

.method static synthetic access$2620(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;
    .param p1, "x1"    # I

    .prologue
    .line 333
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutAlpha:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutAlpha:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;)Landroid/graphics/Paint;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPnt:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;
    .param p1, "x1"    # I

    .prologue
    .line 333
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mDeltaY:I

    return p1
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;
    .param p1, "x1"    # I

    .prologue
    .line 333
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;II)I
    .registers 4
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 333
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->calculateGesture(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;
    .param p1, "x1"    # I

    .prologue
    .line 333
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mCurrentOrientation:I

    return p1
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;
    .param p1, "x1"    # I

    .prologue
    .line 333
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mCurrentSide:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;II)I
    .registers 4
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 333
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->calculateDockSide(II)I

    move-result v0

    return v0
.end method

.method private calculateDockSide(II)I
    .registers 16
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x2

    .line 889
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowMode()I

    move-result v11

    .line 890
    .local v11, "windowMode":I
    invoke-static {v11}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->zone(I)I

    move-result v5

    .line 891
    .local v5, "zone":I
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v1

    # setter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPreDockSide:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1802(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;I)I

    .line 892
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1102(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;I)I

    .line 894
    const/4 v9, 0x0

    .line 895
    .local v9, "secondCompareValue":I
    const/4 v10, 0x0

    .line 897
    .local v10, "secondMaxBoundary":I
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mCurrentOrientation:I

    if-ne v0, v2, :cond_db

    .line 898
    move v6, p1

    .line 899
    .local v6, "firstCompareValue":I
    move v9, p2

    .line 900
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1400(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/graphics/Point;

    move-result-object v0

    iget v7, v0, Landroid/graphics/Point;->x:I

    .line 901
    .local v7, "firstMaxBoundary":I
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1400(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/graphics/Point;

    move-result-object v0

    iget v10, v0, Landroid/graphics/Point;->y:I

    .line 910
    :goto_38
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMultiWindowState:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_ef

    .line 911
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mGuideDockingMargin:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$2000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v0

    if-lt p2, v0, :cond_7a

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1400(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mGuideDockingMargin:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$2000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mGuideDockingMarginFinger:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$2100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v1

    sub-int/2addr v0, v1

    if-gt p2, v0, :cond_7a

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mGuideDockingMargin:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$2000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v0

    if-lt p1, v0, :cond_7a

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1400(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mGuideDockingMargin:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$2000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_81

    .line 913
    :cond_7a
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    const/high16 v1, 0x1000000

    # setter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1102(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;I)I

    .line 934
    :cond_81
    :goto_81
    invoke-static {v11}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v8

    .line 935
    .local v8, "options":I
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mCurrentSide:I

    if-eqz v0, :cond_a5

    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mCurrentSide:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v1

    if-eq v0, v1, :cond_9b

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v0

    if-nez v0, :cond_a5

    :cond_9b
    and-int/lit8 v0, v8, 0xf

    if-eqz v0, :cond_a5

    .line 938
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    const/4 v1, -0x1

    # setter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1102(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;I)I

    .line 941
    :cond_a5
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mUseDocking:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1200(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Z

    move-result v0

    if-eqz v0, :cond_d4

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPreDockSide:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1800(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v1

    if-eq v0, v1, :cond_d4

    .line 942
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$2400(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/os/SystemVibrator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIvt:[B
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$2300(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$2400(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/os/SystemVibrator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    .line 945
    :cond_d4
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v0

    return v0

    .line 904
    .end local v6    # "firstCompareValue":I
    .end local v7    # "firstMaxBoundary":I
    .end local v8    # "options":I
    :cond_db
    move v6, p2

    .line 905
    .restart local v6    # "firstCompareValue":I
    move v9, p1

    .line 906
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1400(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/graphics/Point;

    move-result-object v0

    iget v7, v0, Landroid/graphics/Point;->y:I

    .line 907
    .restart local v7    # "firstMaxBoundary":I
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1400(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/graphics/Point;

    move-result-object v0

    iget v10, v0, Landroid/graphics/Point;->x:I

    goto/16 :goto_38

    .line 915
    :cond_ef
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMultiWindowState:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v0

    if-ne v0, v2, :cond_12f

    .line 916
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mGuideDockingMargin:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$2000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v0

    if-lt v6, v0, :cond_110

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mGuideDockingMargin:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$2000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v0

    sub-int v0, v7, v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mGuideDockingMarginFinger:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$2100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v1

    sub-int/2addr v0, v1

    if-le v6, v0, :cond_81

    .line 917
    :cond_110
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$2200(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/sec/multiwindow/impl/MultiWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMultiWindowState:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mGuideDockingMargin:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$2000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v4

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/sec/multiwindow/impl/MultiWindowManager;->findDockingWindowZone(IIIII)I

    move-result v0

    # setter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static {v12, v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1102(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;I)I

    goto/16 :goto_81

    .line 920
    :cond_12f
    if-nez v5, :cond_17b

    .line 921
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mGuideDockingMargin:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$2000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v0

    if-lt v6, v0, :cond_15c

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mGuideDockingMargin:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$2000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v0

    sub-int v0, v7, v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mGuideDockingMarginFinger:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$2100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v1

    sub-int/2addr v0, v1

    if-gt v6, v0, :cond_15c

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mGuideDockingMargin:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$2000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v0

    if-lt v9, v0, :cond_15c

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mGuideDockingMargin:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$2000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v0

    sub-int v0, v10, v0

    if-le v9, v0, :cond_81

    .line 923
    :cond_15c
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$2200(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/sec/multiwindow/impl/MultiWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMultiWindowState:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mGuideDockingMargin:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$2000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v4

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/sec/multiwindow/impl/MultiWindowManager;->findDockingWindowZone(IIIII)I

    move-result v0

    # setter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static {v12, v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1102(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;I)I

    goto/16 :goto_81

    .line 926
    :cond_17b
    iget-object v12, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$2200(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/sec/multiwindow/impl/MultiWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMultiWindowState:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mGuideDockingMargin:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$2000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v4

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/sec/multiwindow/impl/MultiWindowManager;->findDockingWindowZone(IIIII)I

    move-result v0

    # setter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static {v12, v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1102(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;I)I

    goto/16 :goto_81
.end method

.method private calculateGesture(II)I
    .registers 19
    .param p1, "posX"    # I
    .param p2, "posY"    # I

    .prologue
    .line 805
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x105010e

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 808
    .local v12, "titleBarHeight":I
    const/16 v10, 0x32

    .line 809
    .local v10, "th":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v13, v13, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 810
    .local v2, "bh":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v13, v13, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 811
    .local v4, "bw":I
    new-instance v11, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v15, v15, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    invoke-direct {v11, v13, v14, v15, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 812
    .local v11, "titleBar":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I
    invoke-static {v14}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1600(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I
    invoke-static {v15}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1600(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v15

    sub-int v15, v2, v15

    invoke-direct {v5, v13, v10, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 813
    .local v5, "leftResize":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I
    invoke-static {v13}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1600(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v13

    sub-int v13, v4, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I
    invoke-static {v14}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1600(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v14

    sub-int v14, v2, v14

    invoke-direct {v8, v13, v10, v4, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 814
    .local v8, "rightResize":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I
    invoke-static {v14}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1600(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v14

    mul-int/lit8 v14, v14, 0x2

    sub-int v14, v2, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I
    invoke-static {v15}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1600(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v15

    mul-int/lit8 v15, v15, 0x2

    invoke-direct {v6, v13, v14, v15, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 815
    .local v6, "leftbottomResize":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I
    invoke-static {v13}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1600(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v13

    mul-int/lit8 v13, v13, 0x2

    sub-int v13, v4, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I
    invoke-static {v14}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1600(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v14

    mul-int/lit8 v14, v14, 0x2

    sub-int v14, v2, v14

    invoke-direct {v9, v13, v14, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 816
    .local v9, "rightbottomResize":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I
    invoke-static {v13}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1600(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I
    invoke-static {v14}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1600(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v14

    sub-int v14, v2, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mPaddingWidth:I
    invoke-static {v15}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1600(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v15

    sub-int v15, v4, v15

    invoke-direct {v3, v13, v14, v15, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 818
    .local v3, "bottomResize":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v13}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    .line 819
    .local v7, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v13, v7, Landroid/view/WindowManager$LayoutParams;->hScale:F

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-nez v13, :cond_df

    iget v13, v7, Landroid/view/WindowManager$LayoutParams;->vScale:F

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_ff

    .line 820
    :cond_df
    move/from16 v0, p1

    int-to-float v14, v0

    iget v13, v7, Landroid/view/WindowManager$LayoutParams;->hScale:F

    const/4 v15, 0x0

    cmpl-float v13, v13, v15

    if-eqz v13, :cond_135

    iget v13, v7, Landroid/view/WindowManager$LayoutParams;->hScale:F

    :goto_eb
    mul-float/2addr v13, v14

    float-to-int v0, v13

    move/from16 p1, v0

    .line 821
    move/from16 v0, p2

    int-to-float v14, v0

    iget v13, v7, Landroid/view/WindowManager$LayoutParams;->vScale:F

    const/4 v15, 0x0

    cmpl-float v13, v13, v15

    if-eqz v13, :cond_138

    iget v13, v7, Landroid/view/WindowManager$LayoutParams;->vScale:F

    :goto_fb
    mul-float/2addr v13, v14

    float-to-int v0, v13

    move/from16 p2, v0

    .line 824
    :cond_ff
    const-string v13, "GuideView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "calculateGesture("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-boolean v13, v13, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsMinimized:Z

    if-eqz v13, :cond_13b

    .line 827
    const/4 v13, 0x1

    .line 852
    :goto_134
    return v13

    .line 820
    :cond_135
    const/high16 v13, 0x3f800000

    goto :goto_eb

    .line 821
    :cond_138
    const/high16 v13, 0x3f800000

    goto :goto_fb

    .line 830
    :cond_13b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-boolean v13, v13, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsFixedSize:Z

    if-eqz v13, :cond_145

    .line 831
    const/4 v13, 0x1

    goto :goto_134

    .line 834
    :cond_145
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-boolean v13, v13, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mUseCoutomView:Z

    if-eqz v13, :cond_14f

    .line 835
    const/4 v13, 0x1

    goto :goto_134

    .line 839
    :cond_14f
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-eqz v13, :cond_15b

    .line 840
    const/4 v13, 0x4

    goto :goto_134

    .line 841
    :cond_15b
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-eqz v13, :cond_167

    .line 842
    const/4 v13, 0x5

    goto :goto_134

    .line 843
    :cond_167
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-eqz v13, :cond_173

    .line 844
    const/4 v13, 0x1

    goto :goto_134

    .line 845
    :cond_173
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-eqz v13, :cond_17f

    .line 846
    const/4 v13, 0x2

    goto :goto_134

    .line 847
    :cond_17f
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-eqz v13, :cond_18b

    .line 848
    const/4 v13, 0x3

    goto :goto_134

    .line 849
    :cond_18b
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-eqz v13, :cond_197

    .line 850
    const/4 v13, 0x6

    goto :goto_134

    .line 852
    :cond_197
    const/4 v13, 0x0

    goto :goto_134
.end method

.method private doDocking(I)V
    .registers 5
    .param p1, "dockSide"    # I

    .prologue
    .line 949
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$2200(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/sec/multiwindow/impl/MultiWindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 950
    return-void
.end method

.method private drawResizeDecor(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "pnt"    # Landroid/graphics/Paint;

    .prologue
    .line 502
    return-void
.end method

.method private resizeGuideView(II)V
    .registers 12
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    .line 1027
    const-string v4, "GuideView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPinupResizePosition("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v1, v4, Landroid/graphics/Rect;->left:I

    .line 1030
    .local v1, "left":I
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v3, v4, Landroid/graphics/Rect;->top:I

    .line 1031
    .local v3, "top":I
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->right:I

    .line 1032
    .local v2, "right":I
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 1034
    .local v0, "bottom":I
    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_4f

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    if-eq v4, v7, :cond_4f

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    if-ne v4, v8, :cond_5d

    .line 1035
    :cond_4f
    add-int v4, v0, p2

    sub-int/2addr v4, v3

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;
    invoke-static {v5}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1400(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    if-gt v4, v5, :cond_98

    .line 1036
    add-int/2addr v0, p2

    .line 1043
    :cond_5d
    :goto_5d
    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_66

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    if-ne v4, v7, :cond_ae

    .line 1044
    :cond_66
    add-int v4, v1, p1

    sub-int v4, v2, v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;
    invoke-static {v5}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1400(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    if-gt v4, v5, :cond_a3

    .line 1045
    add-int/2addr v1, p1

    .line 1059
    :cond_75
    :goto_75
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 1061
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-boolean v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsFixedRatio:Z

    if-eqz v4, :cond_89

    .line 1062
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->adjustRatio(Landroid/graphics/Rect;)V

    .line 1065
    :cond_89
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->adjustSize(Landroid/graphics/Rect;)V

    .line 1067
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInnerView:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->invalidate()V

    .line 1068
    return-void

    .line 1039
    :cond_98
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1400(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    add-int v0, v3, v4

    goto :goto_5d

    .line 1048
    :cond_a3
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1400(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int v1, v2, v4

    goto :goto_75

    .line 1051
    :cond_ae
    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_b7

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    if-ne v4, v8, :cond_75

    .line 1052
    :cond_b7
    add-int v4, v2, p1

    sub-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;
    invoke-static {v5}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1400(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    if-gt v4, v5, :cond_c6

    .line 1053
    add-int/2addr v2, p1

    goto :goto_75

    .line 1056
    :cond_c6
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1400(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    add-int v2, v1, v4

    goto :goto_75
.end method

.method private updateResizeDecorRect()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 505
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    if-ltz v2, :cond_b

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    const/4 v3, 0x7

    if-lt v2, v3, :cond_c

    .line 545
    :cond_b
    :goto_b
    return-void

    .line 514
    :cond_c
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawResizeDecor:Z

    .line 517
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawingRedBorder:Z

    if-ne v2, v4, :cond_70

    .line 519
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mResizeSymbolRedBmp:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mResizePtrBmp:Landroid/graphics/Bitmap;

    .line 522
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mLeftArrowRedBmp:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mLeftArrowPtrBmp:Landroid/graphics/Bitmap;

    .line 523
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mRightArrowRedBmp:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mRightArrowPtrBmp:Landroid/graphics/Bitmap;

    .line 534
    :goto_24
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mLeftArrowPtrBmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_b

    .line 535
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mLeftArrowPtrBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 536
    .local v1, "w":I
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mLeftArrowPtrBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 539
    .local v0, "h":I
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mResizeArrowRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x5

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 540
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mResizeArrowRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x5

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 542
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mResizeArrowRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v4

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x5

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 543
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mResizeArrowRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v4

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x5

    iput v3, v2, Landroid/graphics/Rect;->top:I

    goto :goto_b

    .line 527
    .end local v0    # "h":I
    .end local v1    # "w":I
    :cond_70
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mResizeSymbolOrangeBmp:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mResizePtrBmp:Landroid/graphics/Bitmap;

    .line 530
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mLeftArrowOrangeBmp:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mLeftArrowPtrBmp:Landroid/graphics/Bitmap;

    .line 531
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mRightArrowOrangeBmp:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mRightArrowPtrBmp:Landroid/graphics/Bitmap;

    goto :goto_24
.end method


# virtual methods
.method public adjustRatio(Landroid/graphics/Rect;)V
    .registers 11
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 954
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 955
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 957
    .local v2, "height":I
    int-to-double v4, v3

    int-to-double v6, v2

    div-double v0, v4, v6

    .line 959
    .local v0, "curRatio":D
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-wide v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFixedRatio:D

    cmpl-double v4, v0, v4

    if-lez v4, :cond_4c

    .line 960
    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3a

    .line 961
    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-double v5, v2

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-wide v7, v7, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFixedRatio:D

    mul-double/2addr v5, v7

    double-to-int v5, v5

    sub-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->left:I

    .line 966
    :cond_25
    :goto_25
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 967
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mCurHeight:I

    mul-int/2addr v4, v3

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v5, v5, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mCurWidth:I

    div-int v2, v4, v5

    .line 968
    iget v4, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 976
    :cond_39
    :goto_39
    return-void

    .line 963
    :cond_3a
    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_25

    .line 964
    iget v4, p1, Landroid/graphics/Rect;->left:I

    int-to-double v5, v2

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-wide v7, v7, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFixedRatio:D

    mul-double/2addr v5, v7

    double-to-int v5, v5

    add-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->right:I

    goto :goto_25

    .line 970
    :cond_4c
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-wide v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFixedRatio:D

    cmpg-double v4, v0, v4

    if-gez v4, :cond_39

    .line 971
    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-double v5, v3

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-wide v7, v7, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFixedRatio:D

    div-double/2addr v5, v7

    double-to-int v5, v5

    add-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 972
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 973
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mCurWidth:I

    mul-int/2addr v4, v2

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v5, v5, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mCurHeight:I

    div-int v3, v4, v5

    .line 974
    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    iput v4, p1, Landroid/graphics/Rect;->right:I

    goto :goto_39
.end method

.method public adjustSize(Landroid/graphics/Rect;)V
    .registers 10
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 980
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 981
    .local v1, "width":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 983
    .local v0, "height":I
    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    packed-switch v4, :pswitch_data_b8

    .line 997
    :goto_11
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinWidth:I

    if-ge v1, v2, :cond_3f

    .line 998
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    if-eq v2, v6, :cond_20

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_90

    .line 999
    :cond_20
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinWidth:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 1005
    :cond_29
    :goto_29
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-boolean v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsFixedRatio:Z

    if-eqz v2, :cond_3f

    .line 1006
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinWidth:I

    int-to-double v2, v2

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-wide v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFixedRatio:D

    div-double/2addr v2, v4

    double-to-int v0, v2

    .line 1008
    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 1012
    :cond_3f
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinHeight:I

    if-ge v0, v2, :cond_68

    .line 1013
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinHeight:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 1015
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-boolean v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsFixedRatio:Z

    if-eqz v2, :cond_68

    .line 1016
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    if-ne v2, v6, :cond_a3

    .line 1017
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinHeight:I

    int-to-double v3, v3

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-wide v5, v5, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFixedRatio:D

    mul-double/2addr v3, v5

    double-to-int v3, v3

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 1024
    :cond_68
    :goto_68
    return-void

    .line 986
    :pswitch_69
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinWidth:I

    if-ge v1, v4, :cond_72

    :goto_6f
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawingRedBorder:Z

    goto :goto_11

    :cond_72
    move v2, v3

    goto :goto_6f

    .line 989
    :pswitch_74
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinHeight:I

    if-ge v0, v4, :cond_7d

    :goto_7a
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawingRedBorder:Z

    goto :goto_11

    :cond_7d
    move v2, v3

    goto :goto_7a

    .line 993
    :pswitch_7f
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinWidth:I

    if-ge v1, v4, :cond_8e

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinHeight:I

    if-ge v0, v4, :cond_8e

    :goto_8b
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawingRedBorder:Z

    goto :goto_11

    :cond_8e
    move v2, v3

    goto :goto_8b

    .line 1001
    :cond_90
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    if-eq v2, v7, :cond_99

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_29

    .line 1002
    :cond_99
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinWidth:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_29

    .line 1019
    :cond_a3
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    if-ne v2, v7, :cond_68

    .line 1020
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinHeight:I

    int-to-double v3, v3

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-wide v5, v5, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFixedRatio:D

    mul-double/2addr v3, v5

    double-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_68

    .line 983
    :pswitch_data_b8
    .packed-switch 0x2
        :pswitch_69
        :pswitch_69
        :pswitch_7f
        :pswitch_7f
        :pswitch_74
    .end packed-switch
.end method

.method public moveGuideView(II)V
    .registers 12
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 856
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowMode()I

    move-result v2

    .line 857
    .local v2, "windowMode":I
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawingRedBorder:Z

    .line 858
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosX:I

    add-int/2addr v3, v4

    add-int/2addr v3, p1

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosY:I

    add-int/2addr v4, v5

    add-int/2addr v4, p2

    invoke-direct {p0, v3, v4}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->calculateDockSide(II)I

    .line 860
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int v0, v3, p2

    .line 862
    .local v0, "freestyleMoveTop":I
    invoke-static {v2}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isMinimized(I)Z

    move-result v3

    if-nez v3, :cond_fd

    .line 863
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v3

    const/high16 v4, 0x1000000

    if-ne v3, v4, :cond_7d

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v3

    if-eq v3, v6, :cond_7d

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mUseDocking:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1200(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 864
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 865
    .local v1, "fullscreen":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 866
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mStatusBarHeight:I
    invoke-static {v6}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1300(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3, v7, v7, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 885
    .end local v1    # "fullscreen":Landroid/graphics/Point;
    :cond_75
    :goto_75
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInnerView:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->invalidate()V

    .line 886
    :cond_7c
    return-void

    .line 867
    :cond_7d
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v3

    if-eqz v3, :cond_b5

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v3

    if-eq v3, v6, :cond_b5

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mUseDocking:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1200(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 868
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->doDocking(I)V

    .line 869
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mStatusBarHeight:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1300(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v3

    if-eqz v3, :cond_75

    .line 870
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mStatusBarHeight:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1300(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v3, v7, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_75

    .line 873
    :cond_b5
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mStatusBarHeight:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1300(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v3

    if-nez v3, :cond_c4

    .line 874
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFreestyleStatusBarMargin_H:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1700(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v3

    sub-int/2addr v0, v3

    .line 876
    :cond_c4
    if-ltz v0, :cond_7c

    .line 878
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, p1

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v5, v5, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, p2

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v6, v6, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, p1

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v7, v7, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v7, v7, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, p2

    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v8, v8, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_75

    .line 881
    :cond_fd
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mFreestyleStatusBarMargin_H:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1700(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v3

    sub-int v3, v0, v3

    if-ltz v3, :cond_7c

    .line 883
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v3, v3, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, p1

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v5, v5, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, p2

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v6, v6, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, p1

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v7, v7, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v7, v7, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, p2

    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v8, v8, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_75
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1072
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1073
    const-string v0, "GuideView"

    const-string v1, "onConfigurationChanged()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->dismissGuideRelayoutWindow()V

    .line 1076
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 422
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 424
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mAutoDismissHandler:Landroid/os/Handler;

    if-eqz v0, :cond_11

    .line 425
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagAutoClose:Z

    .line 426
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mAutoDismissHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mAutoDismissRunnable:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$AutoDismissRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 428
    :cond_11
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_29

    .line 444
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2a

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2a

    .line 445
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mBmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v1, v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 465
    :cond_29
    :goto_29
    return-void

    .line 447
    :cond_2a
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMode:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_67

    .line 449
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawingRedBorder:Z

    if-nez v0, :cond_59

    .line 450
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mBackground:Landroid/graphics/NinePatch;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v1, v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPnt:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 457
    :goto_43
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawResizeDecor:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsMinimized:Z

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mIsFixedSize:Z

    if-nez v0, :cond_29

    .line 458
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPnt:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->drawResizeDecor(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_29

    .line 453
    :cond_59
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMinBackground:Landroid/graphics/NinePatch;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v1, v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPnt:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_43

    .line 462
    :cond_67
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mBackground:Landroid/graphics/NinePatch;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    iget-object v1, v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    goto :goto_29
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 31
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mOwner:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->getMode()I

    move-result v25

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_1c

    .line 550
    const-string v25, "GuideView"

    const-string v26, "onTouchEvent - the mode is not DIALOG_MODE_MOVE_N_RESIZE"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/16 v25, 0x0

    .line 789
    :goto_1b
    return v25

    .line 554
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v25

    move/from16 v0, v25

    float-to-int v10, v0

    .line 555
    .local v10, "newX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v25

    move/from16 v0, v25

    float-to-int v11, v0

    .line 558
    .local v11, "newY":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v25

    packed-switch v25, :pswitch_data_534

    .line 789
    :goto_31
    const/16 v25, 0x1

    goto :goto_1b

    .line 560
    :pswitch_34
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosX:I

    .line 561
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosY:I

    .line 563
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosX:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosY:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->calculateGesture(II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosX:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosY:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->calculateDockSide(II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mCurrentSide:I

    .line 566
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    move/from16 v25, v0

    if-nez v25, :cond_b8

    .line 567
    const-string v25, "GuideView"

    const-string v26, "onTouchEvent(ACTION_DOWN) - Invalid touch area. Close Dialog."

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->dismissGuideRelayoutWindow()V

    .line 569
    const/16 v25, 0x0

    goto/16 :goto_1b

    .line 571
    :cond_b8
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->updateResizeDecorRect()V

    .line 572
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->invalidate()V

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mAutoDismissHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    if-eqz v25, :cond_dd

    .line 576
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagAutoClose:Z

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mAutoDismissHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mAutoDismissRunnable:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$AutoDismissRunnable;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 580
    :cond_dd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    if-eqz v25, :cond_fc

    .line 581
    const/16 v25, 0xff

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutAlpha:I

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFadeoutRunnable:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView$FadeoutRunnable;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 585
    :cond_fc
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawingRedBorder:Z

    .line 586
    const/16 v25, 0x1

    goto/16 :goto_1b

    .line 589
    :pswitch_108
    const/high16 v5, 0x3f800000

    .line 590
    .local v5, "hScale":F
    const/high16 v21, 0x3f800000

    .line 591
    .local v21, "vScale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v25, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;
    invoke-static/range {v25 .. v25}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v25

    if-nez v25, :cond_133

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mActivity:Landroid/app/Activity;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/app/Activity;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v26

    # setter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;
    invoke-static/range {v25 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$902(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    .line 595
    :cond_133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v25, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;
    invoke-static/range {v25 .. v25}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->hScale:F

    move/from16 v25, v0

    const/16 v26, 0x0

    cmpl-float v25, v25, v26

    if-eqz v25, :cond_17d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v25, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;
    invoke-static/range {v25 .. v25}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->vScale:F

    move/from16 v25, v0

    const/16 v26, 0x0

    cmpl-float v25, v25, v26

    if-eqz v25, :cond_17d

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v25, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;
    invoke-static/range {v25 .. v25}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v25

    move-object/from16 v0, v25

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->hScale:F

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v25, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;
    invoke-static/range {v25 .. v25}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$900(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->vScale:F

    move/from16 v21, v0

    .line 600
    :cond_17d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosX:I

    move/from16 v25, v0

    sub-int v25, v10, v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, v5

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    div-int/lit8 v25, v25, 0x2

    mul-int/lit8 v19, v25, 0x2

    .line 601
    .local v19, "tx":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosY:I

    move/from16 v25, v0

    sub-int v25, v11, v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, v21

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    div-int/lit8 v25, v25, 0x2

    mul-int/lit8 v20, v25, 0x2

    .line 606
    .local v20, "ty":I
    if-nez v19, :cond_1bc

    if-nez v20, :cond_1bc

    .line 607
    const-string v25, "GuideView"

    const-string v26, "onTouchEvent::ACTION_MOVE [Filtered by offset[2]"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const/16 v25, 0x1

    goto/16 :goto_1b

    .line 611
    :cond_1bc
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    move/from16 v25, v0

    packed-switch v25, :pswitch_data_540

    .line 627
    :goto_1c5
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->updateResizeDecorRect()V

    .line 628
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->invalidate()V

    .line 629
    const/16 v25, 0x1

    goto/16 :goto_1b

    .line 614
    :pswitch_1cf
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawResizeDecor:Z

    .line 615
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->moveGuideView(II)V

    goto :goto_1c5

    .line 623
    :pswitch_1e1
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawResizeDecor:Z

    .line 624
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->resizeGuideView(II)V

    goto :goto_1c5

    .line 640
    .end local v5    # "hScale":F
    .end local v19    # "tx":I
    .end local v20    # "ty":I
    .end local v21    # "vScale":F
    :pswitch_1f3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosX:I

    move/from16 v25, v0

    sub-int v25, v10, v25

    div-int/lit8 v25, v25, 0x2

    mul-int/lit8 v19, v25, 0x2

    .line 641
    .restart local v19    # "tx":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mPosY:I

    move/from16 v25, v0

    sub-int v25, v11, v25

    div-int/lit8 v25, v25, 0x2

    mul-int/lit8 v20, v25, 0x2

    .line 643
    .restart local v20    # "ty":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v25, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static/range {v25 .. v25}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v25

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_234

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v25, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mUseDocking:Z
    invoke-static/range {v25 .. v25}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1200(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Z

    move-result v25

    if-eqz v25, :cond_234

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->dismissGuideRelayoutWindow()V

    goto/16 :goto_31

    .line 647
    :cond_234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v25, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mActivity:Landroid/app/Activity;
    invoke-static/range {v25 .. v25}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/app/Activity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getWindowMode()I

    move-result v23

    .line 648
    .local v23, "windowMode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v25, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mActivity:Landroid/app/Activity;
    invoke-static/range {v25 .. v25}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/app/Activity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getWindowInfo()Landroid/os/Bundle;

    move-result-object v22

    .line 650
    .local v22, "winInfo":Landroid/os/Bundle;
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 651
    .local v13, "rect":Landroid/graphics/Rect;
    invoke-static/range {v23 .. v23}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isCascadeWindow(I)Z

    move-result v25

    if-eqz v25, :cond_29a

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v28, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mStatusBarHeight:I
    invoke-static/range {v28 .. v28}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1300(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v28

    add-int v27, v27, v28

    invoke-virtual/range {v25 .. v27}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 654
    :cond_29a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mMaxSize:Landroid/graphics/Point;
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1400(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/graphics/Point;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    # invokes: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->reviseWindowPosition(Landroid/graphics/Rect;Landroid/graphics/Point;)V
    invoke-static {v0, v13, v1}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1500(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;Landroid/graphics/Rect;Landroid/graphics/Point;)V

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 659
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mGestureMode:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_50a

    .line 660
    const/4 v9, 0x0

    .line 661
    .local v9, "needsUpdateWindowInfo":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v25, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mUseDocking:Z
    invoke-static/range {v25 .. v25}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1200(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Z

    move-result v25

    if-eqz v25, :cond_347

    invoke-static/range {v23 .. v23}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isMinimized(I)Z

    move-result v25

    if-nez v25, :cond_347

    .line 662
    invoke-static/range {v23 .. v23}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isCascadeWindow(I)Z

    move-result v25

    if-eqz v25, :cond_3f4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v25, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static/range {v25 .. v25}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v25

    if-eqz v25, :cond_3f4

    .line 664
    const/4 v9, 0x1

    .line 665
    and-int/lit8 v23, v23, -0x10

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v25, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static/range {v25 .. v25}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v25

    const/high16 v26, 0x1000000

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_321

    .line 667
    const v25, -0x2000001

    and-int v23, v23, v25

    .line 668
    const/4 v9, 0x0

    .line 670
    :cond_321
    const v25, -0x800001

    and-int v23, v23, v25

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v25, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static/range {v25 .. v25}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v25

    or-int v23, v23, v25

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v25, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mActivity:Landroid/app/Activity;
    invoke-static/range {v25 .. v25}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/app/Activity;

    move-result-object v25

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v23

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->setWindowMode(IZ)V

    .line 746
    :cond_347
    :goto_347
    invoke-static/range {v23 .. v23}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isMinimized(I)Z

    move-result v25

    if-nez v25, :cond_353

    invoke-static/range {v23 .. v23}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isCascadeWindow(I)Z

    move-result v25

    if-eqz v25, :cond_354

    .line 747
    :cond_353
    const/4 v9, 0x1

    .line 750
    :cond_354
    if-eqz v9, :cond_390

    .line 751
    const-string v25, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    .line 752
    .local v7, "lastSize":Landroid/graphics/Rect;
    if-nez v7, :cond_370

    .line 753
    const-string v25, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    .end local v7    # "lastSize":Landroid/graphics/Rect;
    check-cast v7, Landroid/graphics/Rect;

    .line 757
    .restart local v7    # "lastSize":Landroid/graphics/Rect;
    :cond_370
    invoke-static/range {v23 .. v23}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isMinimized(I)Z

    move-result v25

    if-nez v25, :cond_4f0

    .line 758
    const-string v25, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 763
    :goto_37f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v25, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mActivity:Landroid/app/Activity;
    invoke-static/range {v25 .. v25}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/app/Activity;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setWindowInfo(Landroid/os/Bundle;)V

    .line 774
    .end local v7    # "lastSize":Landroid/graphics/Rect;
    .end local v9    # "needsUpdateWindowInfo":Z
    :cond_390
    :goto_390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInitRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 778
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->mFlagDrawResizeDecor:Z

    .line 779
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->updateResizeDecorRect()V

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mInnerView:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->invalidate()V

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->dismissGuideRelayoutWindow()V

    .line 784
    const/16 v25, 0x1

    goto/16 :goto_1b

    .line 674
    .restart local v9    # "needsUpdateWindowInfo":Z
    :cond_3f4
    const/4 v9, 0x0

    .line 677
    :try_start_3f5
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v25

    const/16 v26, 0x3e8

    const/16 v27, 0x3

    const/16 v28, 0x0

    invoke-interface/range {v25 .. v28}, Landroid/app/IActivityManager;->getTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;
    :try_end_405
    .catch Landroid/os/RemoteException; {:try_start_3f5 .. :try_end_405} :catch_491

    .line 692
    .local v16, "runningTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 693
    .local v14, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    and-int/lit8 v17, v23, 0xf

    .line 695
    .local v17, "sourceDockSide":I
    const/4 v8, 0x0

    .line 696
    .local v8, "mergedSplitZone":I
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_411
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_47c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 697
    .local v15, "rt":Landroid/app/ActivityManager$RunningTaskInfo;
    move-object/from16 v18, v15

    .line 698
    .local v18, "tempRT":Landroid/app/ActivityManager$RunningTaskInfo;
    iget v0, v15, Landroid/app/ActivityManager$RunningTaskInfo;->windowMode:I

    move/from16 v25, v0

    and-int/lit8 v24, v25, 0xf

    .line 699
    .local v24, "zone":I
    move/from16 v12, v17

    .line 700
    .local v12, "newZone":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v25, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static/range {v25 .. v25}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v25

    and-int v25, v25, v24

    if-eqz v25, :cond_4a2

    .line 701
    const/16 v25, 0x3

    move/from16 v0, v17

    move/from16 v1, v25

    if-eq v0, v1, :cond_445

    const/16 v25, 0xc

    move/from16 v0, v17

    move/from16 v1, v25

    if-ne v0, v1, :cond_448

    .line 703
    :cond_445
    packed-switch v24, :pswitch_data_550

    .line 718
    :cond_448
    :goto_448
    :pswitch_448
    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->windowMode:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, -0x10

    move/from16 v0, v25

    move-object/from16 v1, v18

    iput v0, v1, Landroid/app/ActivityManager$RunningTaskInfo;->windowMode:I

    .line 719
    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->windowMode:I

    move/from16 v25, v0

    or-int v25, v25, v12

    move/from16 v0, v25

    move-object/from16 v1, v18

    iput v0, v1, Landroid/app/ActivityManager$RunningTaskInfo;->windowMode:I

    .line 720
    and-int v25, v8, v12

    if-nez v25, :cond_411

    if-eqz v12, :cond_411

    .line 722
    or-int/2addr v8, v12

    .line 723
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    :cond_470
    :goto_470
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v25

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_411

    .line 735
    .end local v12    # "newZone":I
    .end local v15    # "rt":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v18    # "tempRT":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v24    # "zone":I
    :cond_47c
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v25

    if-lez v25, :cond_347

    .line 736
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    .line 738
    .local v3, "am":Landroid/app/IActivityManager;
    :try_start_486
    invoke-interface {v3, v14}, Landroid/app/IActivityManager;->updateTasksOrder(Ljava/util/List;)V
    :try_end_489
    .catch Ljava/lang/Exception; {:try_start_486 .. :try_end_489} :catch_48b

    goto/16 :goto_347

    .line 739
    :catch_48b
    move-exception v4

    .line 740
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_347

    .line 678
    .end local v3    # "am":Landroid/app/IActivityManager;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "mergedSplitZone":I
    .end local v14    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v16    # "runningTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v17    # "sourceDockSide":I
    :catch_491
    move-exception v4

    .line 679
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 680
    const/16 v25, 0x1

    goto/16 :goto_1b

    .line 705
    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v8    # "mergedSplitZone":I
    .restart local v12    # "newZone":I
    .restart local v14    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v15    # "rt":Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v16    # "runningTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v17    # "sourceDockSide":I
    .restart local v18    # "tempRT":Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v24    # "zone":I
    :pswitch_499
    const/4 v12, 0x4

    .line 706
    goto :goto_448

    .line 708
    :pswitch_49b
    const/16 v12, 0x8

    .line 709
    goto :goto_448

    .line 711
    :pswitch_49e
    const/4 v12, 0x1

    .line 712
    goto :goto_448

    .line 714
    :pswitch_4a0
    const/4 v12, 0x2

    goto :goto_448

    .line 724
    :cond_4a2
    and-int v25, v17, v24

    if-eqz v25, :cond_470

    .line 725
    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->windowMode:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, -0x10

    move/from16 v0, v25

    move-object/from16 v1, v18

    iput v0, v1, Landroid/app/ActivityManager$RunningTaskInfo;->windowMode:I

    .line 726
    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->windowMode:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v26

    or-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v18

    iput v0, v1, Landroid/app/ActivityManager$RunningTaskInfo;->windowMode:I

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v25, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static/range {v25 .. v25}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v25

    and-int v25, v25, v8

    if-nez v25, :cond_411

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v25, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mTargetDockSide:I
    invoke-static/range {v25 .. v25}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1100(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)I

    move-result v25

    or-int v8, v8, v25

    .line 730
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_470

    .line 760
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "mergedSplitZone":I
    .end local v12    # "newZone":I
    .end local v14    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v15    # "rt":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v16    # "runningTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v17    # "sourceDockSide":I
    .end local v18    # "tempRT":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v24    # "zone":I
    .restart local v7    # "lastSize":Landroid/graphics/Rect;
    :cond_4f0
    iget v0, v13, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 761
    const-string v25, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_37f

    .line 766
    .end local v7    # "lastSize":Landroid/graphics/Rect;
    .end local v9    # "needsUpdateWindowInfo":Z
    :cond_50a
    invoke-static/range {v23 .. v23}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v25

    const/high16 v26, 0x200000

    and-int v25, v25, v26

    if-eqz v25, :cond_518

    .line 767
    const/16 v25, 0x1

    goto/16 :goto_1b

    .line 769
    :cond_518
    const-string v25, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v25, v0

    # getter for: Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->mActivity:Landroid/app/Activity;
    invoke-static/range {v25 .. v25}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->access$1000(Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Landroid/app/Activity;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setWindowInfo(Landroid/os/Bundle;)V

    goto/16 :goto_390

    .line 558
    :pswitch_data_534
    .packed-switch 0x0
        :pswitch_34
        :pswitch_1f3
        :pswitch_108
        :pswitch_1f3
    .end packed-switch

    .line 611
    :pswitch_data_540
    .packed-switch 0x1
        :pswitch_1cf
        :pswitch_1e1
        :pswitch_1e1
        :pswitch_1e1
        :pswitch_1e1
        :pswitch_1e1
    .end packed-switch

    .line 703
    :pswitch_data_550
    .packed-switch 0x1
        :pswitch_499
        :pswitch_49b
        :pswitch_448
        :pswitch_49e
        :pswitch_448
        :pswitch_448
        :pswitch_448
        :pswitch_4a0
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .registers 5
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 432
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 434
    const-string v0, "GuideView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged( hasWindowFocus - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    if-nez p1, :cond_28

    .line 437
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow$GuideView;->this$0:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->dismissGuideRelayoutWindow()V

    .line 439
    :cond_28
    return-void
.end method
