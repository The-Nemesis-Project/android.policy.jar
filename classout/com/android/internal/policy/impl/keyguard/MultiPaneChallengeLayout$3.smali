.class Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MultiPaneChallengeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->hideBouncer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;)V
    .registers 2

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$3;->this$0:Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$3;->this$0:Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;

    # getter for: Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->access$000(Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$3;->this$0:Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;

    const/4 v1, 0x1

    # setter for: Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mFinishBouncing:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->access$102(Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;Z)Z

    .line 152
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$3;->this$0:Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mFinishBouncing:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->access$102(Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;Z)Z

    .line 147
    return-void
.end method
