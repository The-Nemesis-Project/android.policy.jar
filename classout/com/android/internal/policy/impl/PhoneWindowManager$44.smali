.class Lcom/android/internal/policy/impl/PhoneWindowManager$44;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;->closeMultiWindowTrayBar(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field final synthetic val$forceClose:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V
    .registers 3

    .prologue
    .line 9446
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$44;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$44;->val$forceClose:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 9449
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$44;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3500(Lcom/android/internal/policy/impl/PhoneWindowManager;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 9450
    .local v0, "closeIntent":Landroid/content/Intent;
    const-string v2, "com.sec.android.multiwindow.close.traybar"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 9451
    const-string v2, "com.sec.android.multiwindow.extra.forceclose"

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$44;->val$forceClose:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9452
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$44;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    .line 9456
    .end local v0    # "closeIntent":Landroid/content/Intent;
    :goto_1f
    return-void

    .line 9453
    :catch_20
    move-exception v1

    .line 9454
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1f
.end method
