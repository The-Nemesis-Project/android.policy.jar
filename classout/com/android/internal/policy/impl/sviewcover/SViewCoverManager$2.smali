.class Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$2;
.super Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;
.source "SViewCoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)V
    .registers 2

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$2;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$SViewCoverManagerCallback;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)V

    return-void
.end method


# virtual methods
.method onPagerTouchDowned()V
    .registers 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$2;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$200(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$2;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mGoToSleepRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$100(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 99
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$2;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$200(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$2;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mGoToSleepRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$100(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 100
    :cond_21
    return-void
.end method
