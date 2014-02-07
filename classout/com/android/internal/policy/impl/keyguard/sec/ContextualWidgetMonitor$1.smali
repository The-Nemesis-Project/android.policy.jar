.class Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "ContextualWidgetMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)V
    .registers 2

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 140
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "action":Ljava/lang/String;
    const-string v10, "pkg"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 142
    .local v6, "pkg":Ljava/lang/String;
    const/4 v2, 0x0

    .line 143
    .local v2, "id":I
    const/4 v3, 0x0

    .line 145
    .local v3, "mCheckMissedEvent":Z
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 146
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_41

    .line 147
    const-string v10, "id"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 148
    const-string v10, "ContexualWidgetMonitor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string v10, "Notification"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/app/Notification;

    .line 150
    .local v5, "notification":Landroid/app/Notification;
    if-eqz v5, :cond_41

    iget v10, v5, Landroid/app/Notification;->missedCount:I

    if-lez v10, :cond_41

    .line 151
    const/4 v3, 0x1

    .line 155
    .end local v5    # "notification":Landroid/app/Notification;
    :cond_41
    const-string v10, "ContexualWidgetMonitor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "action ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string v10, "ContexualWidgetMonitor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "pkg ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v10, "ContexualWidgetMonitor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mCheckMissedEvent ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    if-eqz v6, :cond_d6

    const/4 v10, 0x5

    if-eq v2, v10, :cond_d6

    const-string v10, "com.android.phone"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9e

    const-string v10, "com.android.mms"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d6

    .line 160
    :cond_9e
    const-string v10, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11b

    if-eqz v3, :cond_11b

    .line 161
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12c0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_c1

    .line 162
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12c0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 163
    :cond_c1
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x12c0

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 170
    :cond_d6
    :goto_d6
    const-string v10, "com.sec.android.app.music.intent.action.SHOW_CONTEXTUAL_WIDGET"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_152

    .line 171
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12d4

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_f7

    .line 172
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12d4

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 173
    :cond_f7
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x12d4

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 180
    :cond_10c
    :goto_10c
    const-string v10, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c5

    .line 181
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 182
    .local v9, "uri":Landroid/net/Uri;
    if-nez v9, :cond_189

    .line 244
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_11a
    :goto_11a
    return-void

    .line 164
    :cond_11b
    const-string v10, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d6

    .line 165
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12ca

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_13c

    .line 166
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12ca

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 167
    :cond_13c
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x12ca

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_d6

    .line 174
    :cond_152
    const-string v10, "com.sec.android.app.music.intent.action.HIDE_CONTEXTUAL_WIDGET"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10c

    .line 175
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12de

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_173

    .line 176
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12de

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 177
    :cond_173
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x12de

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_10c

    .line 185
    .restart local v9    # "uri":Landroid/net/Uri;
    :cond_189
    invoke-virtual {v9}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v7

    .line 186
    .local v7, "pkgName":Ljava/lang/String;
    if-eqz v7, :cond_11a

    .line 189
    const-string v10, "com.sec.android.app.music"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2d3

    .line 190
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12de

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_1b0

    .line 191
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12de

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 192
    :cond_1b0
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x12de

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 200
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_1c5
    :goto_1c5
    const-string v10, "com.android.internal.policy.impl.keyguard.sec.REMOTE_ADDED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_30b

    .line 201
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12e8

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_1e6

    .line 202
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12e8

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 203
    :cond_1e6
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x12e8

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 210
    :cond_1fb
    :goto_1fb
    const-string v10, "com.samsung.music.intent.action.SHOW_CONTEXTUAL_WIDGET"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_343

    .line 211
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12fc

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_21c

    .line 212
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12fc

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 213
    :cond_21c
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x12fc

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 220
    :cond_231
    :goto_231
    const-string v10, "com.sec.android.app.fm.intent.action.SHOW_CONTEXTUAL_WIDGET"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_37b

    .line 221
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x1310

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_252

    .line 222
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x1310

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 223
    :cond_252
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x1310

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 230
    :cond_267
    :goto_267
    const-string v10, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11a

    const-string v10, "networkType"

    const/4 v11, -0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_11a

    .line 232
    const-string v10, "phone"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 233
    .local v8, "tm":Landroid/telephony/TelephonyManager;
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # invokes: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->isNationalRoamingPlay()Z
    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$100(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Z

    move-result v10

    if-eqz v10, :cond_3b3

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v10

    if-eqz v10, :cond_3b3

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3b3

    const/4 v4, 0x1

    .line 236
    .local v4, "new_show_missed":Z
    :goto_296
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mShowMissedWidgetBecauseOfRoaming:Z
    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$200(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Z

    move-result v10

    if-eq v4, v10, :cond_11a

    .line 237
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # setter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mShowMissedWidgetBecauseOfRoaming:Z
    invoke-static {v10, v4}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$202(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;Z)Z

    .line 238
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x1324

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_2bc

    .line 239
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x1324

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 240
    :cond_2bc
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x1324

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_11a

    .line 193
    .end local v4    # "new_show_missed":Z
    .end local v8    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v7    # "pkgName":Ljava/lang/String;
    .restart local v9    # "uri":Landroid/net/Uri;
    :cond_2d3
    const-string v10, "com.sec.android.app.fm"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c5

    .line 194
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x131a

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_2f4

    .line 195
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x131a

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 196
    :cond_2f4
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x131a

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1c5

    .line 204
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_30b
    const-string v10, "com.android.internal.policy.impl.keyguard.sec.REMOTE_REMOVED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1fb

    .line 205
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12f2

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_32c

    .line 206
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12f2

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 207
    :cond_32c
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x12f2

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1fb

    .line 214
    :cond_343
    const-string v10, "com.samsung.music.intent.action.HIDE_CONTEXTUAL_WIDGET"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_231

    .line 215
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x1306

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_364

    .line 216
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x1306

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 217
    :cond_364
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x1306

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_231

    .line 224
    :cond_37b
    const-string v10, "com.sec.android.app.fm.intent.action.HIDE_CONTEXTUAL_WIDGET"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_267

    .line 225
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x131a

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_39c

    .line 226
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x131a

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 227
    :cond_39c
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x131a

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_267

    .line 233
    .restart local v8    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3b3
    const/4 v4, 0x0

    goto/16 :goto_296
.end method
