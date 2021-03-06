.class Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;
.super Ljava/lang/Object;
.source "SPenGestureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CroppingMatrix"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix$LandscapeMarkingPolicy;,
        Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix$PortraitMarkingPolicy;,
        Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix$MarkingPolicy;
    }
.end annotation


# instance fields
.field private mCurrentMarkingPolicy:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix$MarkingPolicy;

.field private final mLandscapePolicy:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix$MarkingPolicy;

.field private mMatrix:[I

.field private final mPortraitPolicy:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix$MarkingPolicy;


# direct methods
.method public constructor <init>(IIZ)V
    .registers 5
    .param p1, "height"    # I
    .param p2, "width"    # I
    .param p3, "portrait"    # Z

    .prologue
    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->mMatrix:[I

    .line 329
    mul-int v0, p1, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->mMatrix:[I

    .line 331
    new-instance v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix$PortraitMarkingPolicy;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix$PortraitMarkingPolicy;-><init>(II)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->mPortraitPolicy:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix$MarkingPolicy;

    .line 332
    new-instance v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix$LandscapeMarkingPolicy;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix$LandscapeMarkingPolicy;-><init>(II)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->mLandscapePolicy:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix$MarkingPolicy;

    .line 334
    invoke-virtual {p0, p3}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->setPortrait(Z)V

    .line 335
    return-void
.end method


# virtual methods
.method getMarked(II)I
    .registers 5
    .param p1, "y"    # I
    .param p2, "x"    # I

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->mMatrix:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->mCurrentMarkingPolicy:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix$MarkingPolicy;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix$MarkingPolicy;->calulate(II)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public mark(III)V
    .registers 6
    .param p1, "y"    # I
    .param p2, "x"    # I
    .param p3, "markNumber"    # I

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->mMatrix:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->mCurrentMarkingPolicy:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix$MarkingPolicy;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix$MarkingPolicy;->calulate(II)I

    move-result v1

    aput p3, v0, v1

    .line 345
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->mMatrix:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 353
    return-void
.end method

.method public setPortrait(Z)V
    .registers 3
    .param p1, "portrait"    # Z

    .prologue
    .line 338
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->mPortraitPolicy:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix$MarkingPolicy;

    :goto_4
    iput-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->mCurrentMarkingPolicy:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix$MarkingPolicy;

    .line 340
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->reset()V

    .line 341
    return-void

    .line 338
    :cond_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->mLandscapePolicy:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix$MarkingPolicy;

    goto :goto_4
.end method
