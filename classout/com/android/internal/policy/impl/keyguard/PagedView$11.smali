.class Lcom/android/internal/policy/impl/keyguard/PagedView$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/PagedView;->onFlingToDelete(Landroid/graphics/PointF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

.field final synthetic val$onAnimationEndRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/PagedView;Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 2523
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$11;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$11;->val$onAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2525
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$11;->val$onAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2526
    return-void
.end method
