.class public Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;
.super Landroid/view/ViewGroup;
.source "MultiPaneChallengeLayout.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;
    }
.end annotation


# static fields
.field public static final ANIMATE_BOUNCE_DURATION:I = 0xfa

.field public static final HORIZONTAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MultiPaneChallengeLayout"

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mBouncerListener:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

.field private mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mFinishBouncing:Z

.field private mIsBouncing:Z

.field private mNavigationView:Landroid/view/View;

.field final mOrientation:I

.field private final mScrimClickListener:Landroid/view/View$OnClickListener;

.field private mScrimView:Landroid/view/View;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mUserSwitcherView:Landroid/view/View;

.field private final mZeroPadding:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mTempRect:Landroid/graphics/Rect;

    .line 52
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mZeroPadding:Landroid/graphics/Rect;

    .line 56
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mFinishBouncing:Z

    .line 58
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$1;-><init>(Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mScrimClickListener:Landroid/view/View$OnClickListener;

    .line 76
    sget-object v2, Lcom/android/internal/R$styleable;->MultiPaneChallengeLayout:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 78
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mOrientation:I

    .line 80
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 83
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 85
    const/16 v2, 0x100

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->setSystemUiVisibility(I)V

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mFinishBouncing:Z

    return p1
.end method

.method private getVirtualHeight(Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;II)I
    .registers 10
    .param p1, "lp"    # Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;
    .param p2, "height"    # I
    .param p3, "heightUsed"    # I

    .prologue
    const/4 v5, 0x1

    .line 193
    move v2, p2

    .line 194
    .local v2, "virtualHeight":I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 195
    .local v1, "root":Landroid/view/View;
    if-eqz v1, :cond_25

    .line 199
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int v2, v3, v4

    .line 202
    iget v3, p1, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    if-ne v3, v5, :cond_25

    .line 203
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 204
    .local v0, "flp":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    .line 207
    .end local v0    # "flp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_25
    iget v3, p1, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    if-eq v3, v5, :cond_34

    iget v3, p1, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_34

    iget v3, p1, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_37

    .line 213
    :cond_34
    sub-int p2, v2, p3

    .line 217
    .end local p2    # "height":I
    :cond_36
    :goto_36
    return p2

    .line 214
    .restart local p2    # "height":I
    :cond_37
    iget v3, p1, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_36

    .line 217
    sub-int v3, v2, p3

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_36
.end method

.method private layoutWithGravity(IILandroid/view/View;Landroid/graphics/Rect;Z)V
    .registers 31
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "child"    # Landroid/view/View;
    .param p4, "padding"    # Landroid/graphics/Rect;
    .param p5, "adjustPadding"    # Z

    .prologue
    .line 419
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;

    .line 421
    .local v16, "lp":Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;
    move/from16 v17, p2

    .line 422
    .local v17, "originalHeight":I
    move/from16 v18, p1

    .line 423
    .local v18, "originalWidth":I
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    add-int v23, v23, v24

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->getPaddingTop()I

    move-result v24

    sub-int v23, v23, v24

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->getPaddingBottom()I

    move-result v24

    sub-int v12, v23, v24

    .line 424
    .local v12, "heightUsed":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v12}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->getVirtualHeight(Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;II)I

    move-result p2

    .line 426
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->getLayoutDirection()I

    move-result v24

    invoke-static/range {v23 .. v24}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v11

    .line 428
    .local v11, "gravity":I
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    move/from16 v23, v0

    const/16 v24, 0x0

    cmpl-float v23, v23, v24

    if-lez v23, :cond_bf

    const/4 v9, 0x1

    .line 429
    .local v9, "fixedLayoutSize":Z
    :goto_49
    if-eqz v9, :cond_c1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mOrientation:I

    move/from16 v23, v0

    if-nez v23, :cond_c1

    const/4 v8, 0x1

    .line 430
    .local v8, "fixedLayoutHorizontal":Z
    :goto_54
    if-eqz v9, :cond_c3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mOrientation:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_c3

    const/4 v10, 0x1

    .line 434
    .local v10, "fixedLayoutVertical":Z
    :goto_65
    if-eqz v8, :cond_c5

    .line 435
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    sub-int v23, p1, v23

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    sub-int v20, v23, v24

    .line 436
    .local v20, "paddedWidth":I
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    const/high16 v24, 0x3f000000

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v4, v0

    .line 437
    .local v4, "adjustedWidth":I
    move/from16 v3, p2

    .line 447
    .end local v20    # "paddedWidth":I
    .local v3, "adjustedHeight":I
    :goto_8d
    invoke-static {v11}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v14

    .line 448
    .local v14, "isVertical":Z
    invoke-static {v11}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result v13

    .line 449
    .local v13, "isHorizontal":Z
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 450
    .local v7, "childWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 452
    .local v6, "childHeight":I
    move-object/from16 v0, p4

    iget v15, v0, Landroid/graphics/Rect;->left:I

    .line 453
    .local v15, "left":I
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    .line 454
    .local v22, "top":I
    add-int v21, v15, v7

    .line 455
    .local v21, "right":I
    add-int v5, v22, v6

    .line 456
    .local v5, "bottom":I
    and-int/lit8 v23, v11, 0x70

    sparse-switch v23, :sswitch_data_1fe

    .line 483
    :cond_b0
    :goto_b0
    and-int/lit8 v23, v11, 0x7

    packed-switch v23, :pswitch_data_20c

    .line 509
    :cond_b5
    :goto_b5
    :pswitch_b5
    move-object/from16 v0, p3

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-virtual {v0, v15, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 510
    return-void

    .line 428
    .end local v3    # "adjustedHeight":I
    .end local v4    # "adjustedWidth":I
    .end local v5    # "bottom":I
    .end local v6    # "childHeight":I
    .end local v7    # "childWidth":I
    .end local v8    # "fixedLayoutHorizontal":Z
    .end local v9    # "fixedLayoutSize":Z
    .end local v10    # "fixedLayoutVertical":Z
    .end local v13    # "isHorizontal":Z
    .end local v14    # "isVertical":Z
    .end local v15    # "left":I
    .end local v21    # "right":I
    .end local v22    # "top":I
    :cond_bf
    const/4 v9, 0x0

    goto :goto_49

    .line 429
    .restart local v9    # "fixedLayoutSize":Z
    :cond_c1
    const/4 v8, 0x0

    goto :goto_54

    .line 430
    .restart local v8    # "fixedLayoutHorizontal":Z
    :cond_c3
    const/4 v10, 0x0

    goto :goto_65

    .line 438
    .restart local v10    # "fixedLayoutVertical":Z
    :cond_c5
    if-eqz v10, :cond_ea

    .line 439
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->getPaddingTop()I

    move-result v23

    sub-int v23, p2, v23

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->getPaddingBottom()I

    move-result v24

    sub-int v19, v23, v24

    .line 440
    .local v19, "paddedHeight":I
    move/from16 v4, p1

    .line 441
    .restart local v4    # "adjustedWidth":I
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    const/high16 v24, 0x3f000000

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v3, v0

    .line 442
    .restart local v3    # "adjustedHeight":I
    goto :goto_8d

    .line 443
    .end local v3    # "adjustedHeight":I
    .end local v4    # "adjustedWidth":I
    .end local v19    # "paddedHeight":I
    :cond_ea
    move/from16 v4, p1

    .line 444
    .restart local v4    # "adjustedWidth":I
    move/from16 v3, p2

    .restart local v3    # "adjustedHeight":I
    goto :goto_8d

    .line 458
    .restart local v5    # "bottom":I
    .restart local v6    # "childHeight":I
    .restart local v7    # "childWidth":I
    .restart local v13    # "isHorizontal":Z
    .restart local v14    # "isVertical":Z
    .restart local v15    # "left":I
    .restart local v21    # "right":I
    .restart local v22    # "top":I
    :sswitch_ef
    if-eqz v10, :cond_122

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v24, v3, v6

    div-int/lit8 v24, v24, 0x2

    add-int v22, v23, v24

    .line 460
    :goto_fd
    add-int v5, v22, v6

    .line 461
    if-eqz p5, :cond_b0

    if-eqz v14, :cond_b0

    .line 463
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    add-int v23, v23, v6

    move/from16 v0, v23

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 464
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    div-int/lit8 v24, v6, 0x2

    add-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_b0

    .line 458
    :cond_122
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    goto :goto_fd

    .line 468
    :sswitch_129
    if-eqz v10, :cond_15f

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    add-int v23, v23, p2

    sub-int v24, v3, v6

    div-int/lit8 v24, v24, 0x2

    sub-int v5, v23, v24

    .line 471
    :goto_139
    sub-int v22, v5, v6

    .line 472
    if-eqz p5, :cond_b0

    if-eqz v14, :cond_b0

    .line 474
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    add-int v23, v23, v6

    move/from16 v0, v23

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 475
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    div-int/lit8 v24, v6, 0x2

    add-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/Rect;->top:I

    goto/16 :goto_b0

    .line 468
    :cond_15f
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    add-int v5, v23, p2

    goto :goto_139

    .line 479
    :sswitch_168
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v24, p2, v6

    div-int/lit8 v24, v24, 0x2

    add-int v22, v23, v24

    .line 480
    add-int v5, v22, v6

    goto/16 :goto_b0

    .line 485
    :pswitch_178
    if-eqz v8, :cond_1a6

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    sub-int v24, v4, v7

    div-int/lit8 v24, v24, 0x2

    add-int v15, v23, v24

    .line 487
    :goto_186
    add-int v21, v15, v7

    .line 488
    if-eqz p5, :cond_b5

    if-eqz v13, :cond_b5

    if-nez v14, :cond_b5

    .line 489
    move/from16 v0, v21

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 490
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    div-int/lit8 v24, v7, 0x2

    add-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_b5

    .line 485
    :cond_1a6
    move-object/from16 v0, p4

    iget v15, v0, Landroid/graphics/Rect;->left:I

    goto :goto_186

    .line 494
    :pswitch_1ab
    if-eqz v8, :cond_1dd

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    sub-int v23, p1, v23

    sub-int v24, v4, v7

    div-int/lit8 v24, v24, 0x2

    sub-int v21, v23, v24

    .line 497
    :goto_1bb
    sub-int v15, v21, v7

    .line 498
    if-eqz p5, :cond_b5

    if-eqz v13, :cond_b5

    if-nez v14, :cond_b5

    .line 499
    sub-int v23, p1, v15

    move/from16 v0, v23

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 500
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    div-int/lit8 v24, v7, 0x2

    add-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/Rect;->left:I

    goto/16 :goto_b5

    .line 494
    :cond_1dd
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    sub-int v21, p1, v23

    goto :goto_1bb

    .line 504
    :pswitch_1e6
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    sub-int v23, p1, v23

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    sub-int v20, v23, v24

    .line 505
    .restart local v20    # "paddedWidth":I
    sub-int v23, v20, v7

    div-int/lit8 v15, v23, 0x2

    .line 506
    add-int v21, v15, v7

    goto/16 :goto_b5

    .line 456
    :sswitch_data_1fe
    .sparse-switch
        0x10 -> :sswitch_168
        0x30 -> :sswitch_ef
        0x50 -> :sswitch_129
    .end sparse-switch

    .line 483
    :pswitch_data_20c
    .packed-switch 0x1
        :pswitch_1e6
        :pswitch_b5
        :pswitch_178
        :pswitch_b5
        :pswitch_1ab
    .end packed-switch
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 531
    instance-of v0, p1, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    .line 526
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 514
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 519
    instance-of v0, p1, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;

    if-eqz v0, :cond_c

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;

    check-cast p1, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;-><init>(Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;)V

    :goto_b
    return-object v0

    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_c
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_18

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_b

    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_18
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b
.end method

.method public getBouncerAnimationDuration()I
    .registers 2

    .prologue
    .line 104
    const/16 v0, 0xfa

    return v0
.end method

.method public hideBouncer()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 134
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mIsBouncing:Z

    if-nez v1, :cond_6

    .line 159
    :cond_5
    :goto_5
    return-void

    .line 135
    :cond_6
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mIsBouncing:Z

    .line 136
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    if-eqz v1, :cond_35

    .line 137
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-eqz v1, :cond_17

    .line 138
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    const/16 v2, 0xfa

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->hideBouncer(I)V

    .line 141
    :cond_17
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    const-string v2, "alpha"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 142
    .local v0, "anim":Landroid/animation/Animator;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 143
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$3;-><init>(Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 154
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 156
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_35
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mBouncerListener:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    if-eqz v1, :cond_5

    .line 157
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mBouncerListener:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    invoke-interface {v1, v5}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;->onBouncerStateChanged(Z)V

    goto :goto_5
.end method

.method public isBouncing()Z
    .registers 2

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mIsBouncing:Z

    return v0
.end method

.method public isChallengeOverlapping()Z
    .registers 2

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public isChallengeShowing()Z
    .registers 2

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 20
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 375
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mTempRect:Landroid/graphics/Rect;

    .line 376
    .local v4, "padding":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->getPaddingLeft()I

    move-result v0

    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 377
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->getPaddingTop()I

    move-result v0

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 378
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->getPaddingRight()I

    move-result v0

    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 379
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->getPaddingBottom()I

    move-result v0

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 380
    sub-int v1, p4, p2

    .line 381
    .local v1, "width":I
    sub-int v2, p5, p3

    .line 385
    .local v2, "height":I
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mUserSwitcherView:Landroid/view/View;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mUserSwitcherView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_33

    .line 386
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mUserSwitcherView:Landroid/view/View;

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->layoutWithGravity(IILandroid/view/View;Landroid/graphics/Rect;Z)V

    .line 391
    :cond_33
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mNavigationView:Landroid/view/View;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mNavigationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_48

    .line 392
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mNavigationView:Landroid/view/View;

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->layoutWithGravity(IILandroid/view/View;Landroid/graphics/Rect;Z)V

    .line 395
    :cond_48
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->getChildCount()I

    move-result v11

    .line 396
    .local v11, "count":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_4d
    if-ge v12, v11, :cond_8c

    .line 397
    invoke-virtual {p0, v12}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 398
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;

    .line 401
    .local v13, "lp":Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mUserSwitcherView:Landroid/view/View;

    if-eq v8, v0, :cond_65

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_68

    .line 396
    :cond_65
    :goto_65
    add-int/lit8 v12, v12, 0x1

    goto :goto_4d

    .line 403
    :cond_68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mNavigationView:Landroid/view/View;

    if-eq v8, v0, :cond_65

    .line 405
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    if-ne v8, v0, :cond_76

    .line 406
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {v8, v0, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_65

    .line 408
    :cond_76
    iget v0, v13, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    const/4 v3, 0x7

    if-ne v0, v3, :cond_85

    .line 409
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mZeroPadding:Landroid/graphics/Rect;

    const/4 v10, 0x0

    move-object v5, p0

    move v6, v1

    move v7, v2

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->layoutWithGravity(IILandroid/view/View;Landroid/graphics/Rect;Z)V

    goto :goto_65

    .line 413
    :cond_85
    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->layoutWithGravity(IILandroid/view/View;Landroid/graphics/Rect;Z)V

    goto :goto_65

    .line 415
    .end local v8    # "child":Landroid/view/View;
    .end local v13    # "lp":Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;
    :cond_8c
    return-void
.end method

.method protected onMeasure(II)V
    .registers 19
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 222
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v5, 0x40000000

    if-ne v2, v5, :cond_10

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v5, 0x40000000

    if-eq v2, v5, :cond_18

    .line 224
    :cond_10
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "MultiPaneChallengeLayout must be measured with an exact size"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 228
    :cond_18
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 229
    .local v14, "width":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 230
    .local v9, "height":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v9}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->setMeasuredDimension(II)V

    .line 232
    const/4 v15, 0x0

    .line 233
    .local v15, "widthUsed":I
    const/4 v10, 0x0

    .line 237
    .local v10, "heightUsed":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    .line 238
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mUserSwitcherView:Landroid/view/View;

    .line 239
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mNavigationView:Landroid/view/View;

    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->getChildCount()I

    move-result v8

    .line 241
    .local v8, "count":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3b
    if-ge v11, v8, :cond_15f

    .line 242
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 243
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;

    .line 245
    .local v12, "lp":Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;
    iget v2, v12, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_71

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-eqz v2, :cond_5c

    .line 247
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "There may only be one child of type challenge"

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 250
    :cond_5c
    instance-of v2, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-nez v2, :cond_68

    .line 251
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "Challenge must be a KeyguardSecurityContainer"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 254
    :cond_68
    check-cast v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    .end local v3    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    .line 241
    :cond_6e
    :goto_6e
    add-int/lit8 v11, v11, 0x1

    goto :goto_3b

    .line 255
    .restart local v3    # "child":Landroid/view/View;
    :cond_71
    iget v2, v12, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_e3

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mUserSwitcherView:Landroid/view/View;

    if-eqz v2, :cond_84

    .line 257
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "There may only be one child of type userSwitcher"

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 260
    :cond_84
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mUserSwitcherView:Landroid/view/View;

    .line 262
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v5, 0x8

    if-eq v2, v5, :cond_6e

    .line 264
    move/from16 v4, p1

    .line 265
    .local v4, "adjustedWidthSpec":I
    move/from16 v6, p2

    .line 266
    .local v6, "adjustedHeightSpec":I
    iget v2, v12, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    if-ltz v2, :cond_a4

    .line 267
    iget v2, v12, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    invoke-static {v2, v14}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v5, 0x40000000

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 270
    :cond_a4
    iget v2, v12, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    if-ltz v2, :cond_b4

    .line 271
    iget v2, v12, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v5, 0x40000000

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 275
    :cond_b4
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 279
    iget v2, v12, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    invoke-static {v2}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v2

    if-eqz v2, :cond_cf

    .line 280
    int-to-float v2, v10

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v7, 0x3fc00000

    mul-float/2addr v5, v7

    add-float/2addr v2, v5

    float-to-int v10, v2

    goto :goto_6e

    .line 281
    :cond_cf
    iget v2, v12, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    invoke-static {v2}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 282
    int-to-float v2, v15

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v7, 0x3fc00000

    mul-float/2addr v5, v7

    add-float/2addr v2, v5

    float-to-int v15, v2

    goto :goto_6e

    .line 284
    .end local v4    # "adjustedWidthSpec":I
    .end local v6    # "adjustedHeightSpec":I
    :cond_e3
    iget v2, v12, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    const/4 v5, 0x4

    if-ne v2, v5, :cond_f6

    .line 285
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->setScrimView(Landroid/view/View;)V

    .line 286
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Landroid/view/View;->measure(II)V

    goto/16 :goto_6e

    .line 287
    :cond_f6
    iget v2, v12, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    const/16 v5, 0x8

    if-ne v2, v5, :cond_6e

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mNavigationView:Landroid/view/View;

    if-eqz v2, :cond_10a

    .line 290
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "There may only be one child of type navigation"

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 293
    :cond_10a
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mNavigationView:Landroid/view/View;

    .line 295
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v5, 0x8

    if-eq v2, v5, :cond_6e

    .line 297
    move/from16 v4, p1

    .line 298
    .restart local v4    # "adjustedWidthSpec":I
    move/from16 v6, p2

    .line 299
    .restart local v6    # "adjustedHeightSpec":I
    iget v2, v12, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    if-ltz v2, :cond_12a

    .line 300
    iget v2, v12, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    invoke-static {v2, v14}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v5, 0x40000000

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 303
    :cond_12a
    iget v2, v12, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    if-ltz v2, :cond_13a

    .line 304
    iget v2, v12, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v5, 0x40000000

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 308
    :cond_13a
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 312
    iget v2, v12, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    invoke-static {v2}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v2

    if-eqz v2, :cond_150

    .line 313
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v10, v2

    goto/16 :goto_6e

    .line 314
    :cond_150
    iget v2, v12, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    invoke-static {v2}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 315
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v15, v2

    goto/16 :goto_6e

    .line 322
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "adjustedWidthSpec":I
    .end local v6    # "adjustedHeightSpec":I
    .end local v12    # "lp":Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;
    :cond_15f
    const/4 v11, 0x0

    :goto_160
    if-ge v11, v8, :cond_208

    .line 323
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 324
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;

    .line 326
    .restart local v12    # "lp":Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;
    iget v2, v12, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    const/4 v5, 0x3

    if-eq v2, v5, :cond_186

    iget v2, v12, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    const/4 v5, 0x4

    if-eq v2, v5, :cond_186

    iget v2, v12, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    const/16 v5, 0x8

    if-eq v2, v5, :cond_186

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v5, 0x8

    if-ne v2, v5, :cond_189

    .line 322
    :cond_186
    :goto_186
    add-int/lit8 v11, v11, 0x1

    goto :goto_160

    .line 334
    :cond_189
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v9, v10}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->getVirtualHeight(Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;II)I

    move-result v13

    .line 338
    .local v13, "virtualHeight":I
    iget v2, v12, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-lez v2, :cond_1f9

    .line 339
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mOrientation:I

    if-nez v2, :cond_1e2

    .line 340
    sub-int v2, v14, v15

    int-to-float v2, v2

    iget v5, v12, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    mul-float/2addr v2, v5

    const/high16 v5, 0x3f000000

    add-float/2addr v2, v5

    float-to-int v2, v2

    const/high16 v5, 0x40000000

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 343
    .restart local v4    # "adjustedWidthSpec":I
    const/high16 v2, 0x40000000

    invoke-static {v13, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 358
    .restart local v6    # "adjustedHeightSpec":I
    :goto_1b2
    iget v2, v12, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    if-ltz v2, :cond_1c6

    .line 359
    iget v2, v12, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v5, 0x40000000

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 363
    :cond_1c6
    iget v2, v12, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    if-ltz v2, :cond_1da

    .line 364
    iget v2, v12, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    invoke-static {v6}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v5, 0x40000000

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 369
    :cond_1da
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_186

    .line 346
    .end local v4    # "adjustedWidthSpec":I
    .end local v6    # "adjustedHeightSpec":I
    :cond_1e2
    sub-int v2, v14, v15

    const/high16 v5, 0x40000000

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 348
    .restart local v4    # "adjustedWidthSpec":I
    int-to-float v2, v13

    iget v5, v12, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    mul-float/2addr v2, v5

    const/high16 v5, 0x3f000000

    add-float/2addr v2, v5

    float-to-int v2, v2

    const/high16 v5, 0x40000000

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .restart local v6    # "adjustedHeightSpec":I
    goto :goto_1b2

    .line 353
    .end local v4    # "adjustedWidthSpec":I
    .end local v6    # "adjustedHeightSpec":I
    :cond_1f9
    sub-int v2, v14, v15

    const/high16 v5, 0x40000000

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 355
    .restart local v4    # "adjustedWidthSpec":I
    const/high16 v2, 0x40000000

    invoke-static {v13, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .restart local v6    # "adjustedHeightSpec":I
    goto :goto_1b2

    .line 371
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "adjustedWidthSpec":I
    .end local v6    # "adjustedHeightSpec":I
    .end local v12    # "lp":Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;
    .end local v13    # "virtualHeight":I
    :cond_208
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mIsBouncing:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-eq p1, v0, :cond_b

    .line 176
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->hideBouncer()V

    .line 178
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 179
    return-void
.end method

.method public setOnBouncerStateChangedListener(Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mBouncerListener:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    .line 169
    return-void
.end method

.method setScrimView(Landroid/view/View;)V
    .registers 4
    .param p1, "scrim"    # Landroid/view/View;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 183
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    :cond_a
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    .line 187
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mIsBouncing:Z

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    :goto_13
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 189
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mScrimClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    return-void

    .line 187
    :cond_24
    const/4 v0, 0x4

    goto :goto_13
.end method

.method public showBouncer()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 109
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mFinishBouncing:Z

    if-nez v1, :cond_6

    .line 130
    :cond_5
    :goto_5
    return-void

    .line 110
    :cond_6
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mIsBouncing:Z

    if-nez v1, :cond_5

    .line 111
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mIsBouncing:Z

    .line 112
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    if-eqz v1, :cond_3a

    .line 113
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    if-eqz v1, :cond_1b

    .line 114
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mChallengeView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;

    const/16 v2, 0xfa

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->showBouncer(I)V

    .line 117
    :cond_1b
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    const-string v2, "alpha"

    new-array v3, v6, [F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 118
    .local v0, "anim":Landroid/animation/Animator;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 119
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$2;-><init>(Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 125
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 127
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_3a
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mBouncerListener:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    if-eqz v1, :cond_5

    .line 128
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mBouncerListener:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    invoke-interface {v1, v6}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;->onBouncerStateChanged(Z)V

    goto :goto_5
.end method

.method public showChallenge(Z)V
    .registers 2
    .param p1, "b"    # Z

    .prologue
    .line 100
    return-void
.end method
