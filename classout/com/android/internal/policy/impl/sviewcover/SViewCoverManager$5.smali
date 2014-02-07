.class Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$5;
.super Ljava/lang/Object;
.source "SViewCoverManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 272
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$5;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 276
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$5;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIWindowManager:Landroid/view/IWindowManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$1500(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Landroid/view/IWindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$5;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCover:Landroid/view/View;
    invoke-static {v2}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$1400(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    new-instance v3, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$5$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$5$1;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$5;)V

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->waitForWindowDrawn(Landroid/os/IBinder;Landroid/os/IRemoteCallback;)Z
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_19

    .line 288
    :goto_18
    return-void

    .line 285
    :catch_19
    move-exception v0

    .line 286
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_18
.end method
