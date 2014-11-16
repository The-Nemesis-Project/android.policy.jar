.class Lcom/android/internal/policy/impl/PhoneWindowManager$18;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;->finishPostLayoutPolicyLw()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 2

    .prologue
    .line 6651
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$18;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 6655
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$18;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 6656
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_13

    .line 6657
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$18;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsRecentMultiWindowUI:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$700(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 6658
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    .line 6665
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_13
    :goto_13
    return-void

    .line 6661
    :catch_14
    move-exception v0

    .line 6663
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$18;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_13
.end method
