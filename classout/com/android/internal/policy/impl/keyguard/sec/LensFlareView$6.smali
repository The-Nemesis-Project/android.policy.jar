.class Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$6;
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
    .line 542
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;

    # invokes: Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->animatedHover()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->access$1000(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    .line 545
    return-void
.end method
