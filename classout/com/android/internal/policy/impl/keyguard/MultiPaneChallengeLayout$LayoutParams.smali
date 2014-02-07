.class public Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "MultiPaneChallengeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final CHILD_TYPE_CHALLENGE:I = 0x2

.field public static final CHILD_TYPE_NAVIGATION:I = 0x8

.field public static final CHILD_TYPE_NONE:I = 0x0

.field public static final CHILD_TYPE_PAGE_DELETE_DROP_TARGET:I = 0x7

.field public static final CHILD_TYPE_SCRIM:I = 0x4

.field public static final CHILD_TYPE_USER_SWITCHER:I = 0x3

.field public static final CHILD_TYPE_WIDGET:I = 0x1


# instance fields
.field public centerWithinArea:F

.field public childType:I

.field public gravity:I

.field public maxHeight:I

.field public maxWidth:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x2

    .line 554
    invoke-direct {p0, v0, v0}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;-><init>(II)V

    .line 555
    return-void
.end method

.method public constructor <init>(II)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 613
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 536
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    .line 538
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    .line 548
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    .line 550
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    .line 551
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    .line 614
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;)V
    .registers 10
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "parent"    # Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/16 v3, 0x51

    const/4 v2, 0x0

    .line 558
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 536
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    .line 538
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    .line 548
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    .line 550
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    .line 551
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    .line 560
    sget-object v1, Lcom/android/internal/R$styleable;->MultiPaneChallengeLayout_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 563
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    .line 565
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    .line 567
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    .line 569
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    .line 571
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    .line 575
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    if-nez v1, :cond_47

    .line 576
    iget v1, p3, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mOrientation:I

    if-nez v1, :cond_5b

    .line 577
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    packed-switch v1, :pswitch_data_70

    .line 609
    :cond_47
    :goto_47
    :pswitch_47
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 610
    return-void

    .line 579
    :pswitch_4b
    const/16 v1, 0x13

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    goto :goto_47

    .line 582
    :pswitch_50
    const/16 v1, 0x15

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    goto :goto_47

    .line 585
    :pswitch_55
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    goto :goto_47

    .line 588
    :pswitch_58
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    goto :goto_47

    .line 592
    :cond_5b
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    packed-switch v1, :pswitch_data_84

    :pswitch_60
    goto :goto_47

    .line 594
    :pswitch_61
    const/16 v1, 0x31

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    goto :goto_47

    .line 597
    :pswitch_66
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    goto :goto_47

    .line 600
    :pswitch_69
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    goto :goto_47

    .line 603
    :pswitch_6c
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    goto :goto_47

    .line 577
    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_50
        :pswitch_55
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_58
    .end packed-switch

    .line 592
    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_61
        :pswitch_66
        :pswitch_69
        :pswitch_60
        :pswitch_60
        :pswitch_60
        :pswitch_60
        :pswitch_6c
    .end packed-switch
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 617
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 536
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    .line 538
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    .line 548
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    .line 550
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    .line 551
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    .line 618
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 5
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 621
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 536
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    .line 538
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    .line 548
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    .line 550
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    .line 551
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    .line 622
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;)V
    .registers 3
    .param p1, "source"    # Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;

    .prologue
    .line 625
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 627
    iget v0, p1, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    .line 628
    iget v0, p1, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    .line 629
    iget v0, p1, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    .line 630
    iget v0, p1, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    .line 631
    iget v0, p1, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    .line 632
    return-void
.end method
