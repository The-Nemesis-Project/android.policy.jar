.class Lcom/android/internal/policy/impl/PhoneWindowManager$24;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
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
    .line 6710
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$24;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 6712
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 6713
    .local v0, "action":Ljava/lang/String;
    const-string v2, "qualcomm.intent.action.WIFI_DISPLAY_VIDEO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 6714
    const-string v2, "state"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 6715
    .local v1, "state":I
    if-ne v1, v3, :cond_20

    .line 6716
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$24;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean v3, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWifiDisplayConnected:Z

    .line 6720
    :goto_1a
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$24;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 6722
    .end local v1    # "state":I
    :cond_1f
    return-void

    .line 6718
    .restart local v1    # "state":I
    :cond_20
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$24;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean v4, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWifiDisplayConnected:Z

    goto :goto_1a
.end method
