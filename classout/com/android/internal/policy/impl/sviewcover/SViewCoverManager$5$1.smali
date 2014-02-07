.class Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$5$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "SViewCoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$5;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$5;)V
    .registers 2

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$5$1;->this$1:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$5;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "arg0"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$5$1;->this$1:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$5;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$5;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mPMS:Landroid/os/PowerManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$000(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 280
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$5$1;->this$1:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$5;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$5;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mPMS:Landroid/os/PowerManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$000(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 281
    const-string v0, "SViewCoverManager"

    const-string v1, "[userActivity] waitForWindowDrawn "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_25
    return-void
.end method
