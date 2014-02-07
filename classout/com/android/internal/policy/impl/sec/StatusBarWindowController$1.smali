.class Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarWindowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/StatusBarWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;)V
    .registers 2

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 102
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "action":Ljava/lang/String;
    const-string v5, "com.android.systemui.statusbar.COLLAPSED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 105
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v4, v4, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->SAFE_DEBUG:Z

    if-eqz v4, :cond_1b

    const-string v4, "StatusBarWindowController"

    const-string v5, "Receive COLLAPSED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_1b
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-object v4, v4, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-object v5, v5, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultHideOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 107
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    invoke-virtual {v4, v3}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->performShowStatusBarOnFullScreen(Z)V

    .line 108
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iput-boolean v3, v4, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarExpanded:Z

    .line 136
    :cond_2f
    :goto_2f
    return-void

    .line 109
    :cond_30
    const-string v5, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 111
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v3, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->SAFE_DEBUG:Z

    if-eqz v3, :cond_45

    const-string v3, "StatusBarWindowController"

    const-string v5, "Receive EXPANDED"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_45
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iput-boolean v4, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarExpanded:Z

    .line 113
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-object v4, v4, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultHideOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_2f

    .line 114
    :cond_55
    const-string v5, "com.android.systemui.statusbar.TOGGLED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a2

    .line 116
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v5, v5, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->SAFE_DEBUG:Z

    if-eqz v5, :cond_6a

    const-string v5, "StatusBarWindowController"

    const-string v6, "Receive TOGGLED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_6a
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v5, v5, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mTopIsFullScreen:Z

    if-eqz v5, :cond_2f

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v5, v5, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarExpanded:Z

    if-nez v5, :cond_2f

    .line 118
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-object v5, v5, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-object v6, v6, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultHideOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 119
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v6, v6, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarShownOnFullScreen:Z

    if-eqz v6, :cond_a0

    :goto_89
    invoke-virtual {v5, v3}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->performShowStatusBarOnFullScreen(Z)V

    .line 120
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v3, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarShownOnFullScreen:Z

    if-eqz v3, :cond_2f

    .line 121
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-object v4, v4, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultHideOnFullScreen:Ljava/lang/Runnable;

    const-wide/16 v5, 0xbb8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2f

    :cond_a0
    move v3, v4

    .line 119
    goto :goto_89

    .line 124
    :cond_a2
    const-string v5, "com.system.action.NOTIFICATION"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 125
    const-string v5, "com.system.notification.DashNotificationManagerService.Type"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 126
    .local v2, "type":I
    const-string v5, "com.system.notification.DashNotificationManagerService.Disable"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 127
    .local v1, "disabled":Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v3, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->SAFE_DEBUG:Z

    if-eqz v3, :cond_ec

    .line 128
    const-string v3, "StatusBarWindowController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Receive ACTION_NOTIFICATION_ARRIVED : mTopIsFullScreen = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v6, v6, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mTopIsFullScreen:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , disabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_ec
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v3, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mTopIsFullScreen:Z

    if-eqz v3, :cond_2f

    if-ne v2, v4, :cond_2f

    if-nez v1, :cond_2f

    .line 132
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-object v4, v4, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultShowOnFullScreenByNotification:Ljava/lang/Runnable;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2f
.end method
