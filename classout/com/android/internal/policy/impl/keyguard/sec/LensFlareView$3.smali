.class Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$3;
.super Ljava/lang/Object;
.source "LensFlareView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V
    .registers 2

    .prologue
    .line 508
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 510
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    # setter for: Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->tapAnimationValue:F
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->access$402(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;F)F

    .line 511
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;

    # invokes: Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->animatedTap()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->access$500(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    .line 512
    return-void
.end method