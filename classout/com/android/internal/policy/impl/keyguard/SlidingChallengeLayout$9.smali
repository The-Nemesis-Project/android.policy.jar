.class Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SlidingChallengeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->fadeChallenge(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;Z)V
    .registers 3

    .prologue
    .line 1189
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$9;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$9;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$9;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$9;->val$show:Z

    # invokes: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->onFadeEnd(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$300(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;Z)V

    .line 1197
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$9;->this$0:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$9;->val$show:Z

    # invokes: Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->onFadeStart(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->access$200(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;Z)V

    .line 1193
    return-void
.end method