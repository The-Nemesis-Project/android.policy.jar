.class Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$5;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardMessageArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;)V
    .registers 2

    .prologue
    .line 425
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v4, 0x12c2

    .line 427
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string v2, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 430
    :cond_16
    const-string v2, "CMASMessage"

    const-string v3, "received MISSED_EVENT intent !! "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mCmasHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 432
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mCmasHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 433
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mCmasHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 435
    .end local v1    # "msg":Landroid/os/Message;
    :cond_39
    return-void
.end method