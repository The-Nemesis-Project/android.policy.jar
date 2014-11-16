.class Lcom/android/internal/policy/impl/PhoneWindowManager$45;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;->updateMultiWindowTrayBar(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field final synthetic val$forceShow:Z

.field final synthetic val$showHelpPopup:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;ZZ)V
    .registers 4

    .prologue
    .line 9467
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$45;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$45;->val$forceShow:Z

    iput-boolean p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$45;->val$showHelpPopup:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 9469
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$45;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 9471
    :try_start_9
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$45;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3500(Lcom/android/internal/policy/impl/PhoneWindowManager;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 9472
    .local v1, "updateSettingsIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$45;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableMultiWindowUISetting:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$900(Lcom/android/internal/policy/impl/PhoneWindowManager;)I

    move-result v3

    if-nez v3, :cond_25

    .line 9473
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$45;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 9485
    .end local v1    # "updateSettingsIntent":Landroid/content/Intent;
    :cond_24
    :goto_24
    return-void

    .line 9475
    .restart local v1    # "updateSettingsIntent":Landroid/content/Intent;
    :cond_25
    const-string v3, "com.sec.android.multiwindow.ui.forceshow"

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$45;->val$forceShow:Z

    if-eqz v4, :cond_45

    :goto_2b
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9476
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$45;->val$showHelpPopup:Z

    if-eqz v2, :cond_38

    .line 9477
    const-string v2, "com.sec.android.multiwindow.ui.showhelpdialog"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9479
    :cond_38
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$45;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_3f} :catch_40

    goto :goto_24

    .line 9481
    .end local v1    # "updateSettingsIntent":Landroid/content/Intent;
    :catch_40
    move-exception v0

    .line 9482
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_24

    .line 9475
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "updateSettingsIntent":Landroid/content/Intent;
    :cond_45
    const/4 v2, 0x0

    goto :goto_2b
.end method
