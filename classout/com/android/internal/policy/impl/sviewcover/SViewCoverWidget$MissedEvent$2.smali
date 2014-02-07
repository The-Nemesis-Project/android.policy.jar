.class Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$2;
.super Landroid/content/BroadcastReceiver;
.source "SViewCoverWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;)V
    .registers 2

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$2;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 372
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "action":Ljava/lang/String;
    const-string v3, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string v3, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 374
    :cond_14
    const-string v3, "pkg"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 375
    .local v2, "pkg":Ljava/lang/String;
    const-string v3, "com.android.phone"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$2;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->MSG_PKG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->access$500(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 376
    :cond_30
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->DBG:Z
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$000()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 377
    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "received MISSED_EVENT intent !! "

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_3f
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$2;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->access$600(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x12c2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 379
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent$2;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;->access$600(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$MissedEvent;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 382
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_54
    return-void
.end method
