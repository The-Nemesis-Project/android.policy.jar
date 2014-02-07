.class Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$8;
.super Ljava/lang/Object;
.source "SViewCoverManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->handleHide()V
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
    .line 876
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$8;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 879
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$8;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mPMS:Landroid/os/PowerManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$000(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 880
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$8;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCoverOpenWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$1300(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 881
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$8;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCoverOpenWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$1300(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 883
    :cond_22
    return-void
.end method
