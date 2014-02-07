.class Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$4;
.super Landroid/content/BroadcastReceiver;
.source "SViewCoverManager.java"


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
    .line 180
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$4;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 182
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "action":Ljava/lang/String;
    const-string v9, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6e

    .line 185
    const-string v9, "suppressCoverUI"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 186
    .local v1, "isSupress":Z
    const-string v9, "sender"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 187
    .local v5, "sender":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$4;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # setter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSuppressCoverUI:Z
    invoke-static {v9, v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$502(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;Z)Z

    .line 188
    const-string v9, "SViewCoverManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onReceive() : ACTION_CLEAR_COVER_STATE_CHANGE = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$4;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSuppressCoverUI:Z
    invoke-static {v11}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$500(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", sender = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    if-eqz v5, :cond_62

    const-string v9, ""

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_62

    .line 191
    iget-object v9, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$4;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSuppressCoverUI:Z
    invoke-static {v9}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$500(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Z

    move-result v9

    if-eqz v9, :cond_63

    .line 193
    iget-object v9, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$4;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$200(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 256
    .end local v1    # "isSupress":Z
    .end local v5    # "sender":Ljava/lang/String;
    :cond_62
    :goto_62
    return-void

    .line 196
    .restart local v1    # "isSupress":Z
    .restart local v5    # "sender":Ljava/lang/String;
    :cond_63
    iget-object v9, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$4;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$200(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_62

    .line 199
    .end local v1    # "isSupress":Z
    .end local v5    # "sender":Ljava/lang/String;
    :cond_6e
    const-string v9, "android.intent.action.PHONE_STATE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c6

    .line 200
    const-string v9, "state"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 202
    .local v6, "state":Ljava/lang/String;
    const-string v9, "SViewCoverManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onReceive() : ACTION_PHONE_STATE_CHANGED = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    sget-object v9, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ad

    .line 204
    iget-object v9, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$4;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    const/4 v10, 0x0

    # setter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mPhoneState:I
    invoke-static {v9, v10}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$602(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;I)I

    .line 205
    iget-object v9, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$4;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$200(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_62

    .line 206
    :cond_ad
    sget-object v9, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_62

    .line 207
    iget-object v9, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$4;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    const/4 v10, 0x2

    # setter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mPhoneState:I
    invoke-static {v9, v10}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$602(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;I)I

    .line 208
    iget-object v9, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$4;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$200(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_62

    .line 210
    .end local v6    # "state":Ljava/lang/String;
    :cond_c6
    const-string v9, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_100

    .line 211
    const-string v9, "type"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 212
    .local v7, "type":Ljava/lang/String;
    const-string v9, "visibility"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 213
    .local v8, "visibility":Z
    const-string v9, "remote"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/widget/RemoteViews;

    .line 214
    .local v4, "remoteView":Landroid/widget/RemoteViews;
    iget-object v9, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$4;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$200(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x3

    new-instance v11, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$CoverRemoteViews;

    iget-object v12, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$4;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    invoke-direct {v11, v12, v7, v8, v4}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$CoverRemoteViews;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;Ljava/lang/String;ZLandroid/widget/RemoteViews;)V

    invoke-virtual {v9, v10, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 216
    .local v3, "remoteMsg":Landroid/os/Message;
    iget-object v9, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$4;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$200(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_62

    .line 217
    .end local v3    # "remoteMsg":Landroid/os/Message;
    .end local v4    # "remoteView":Landroid/widget/RemoteViews;
    .end local v7    # "type":Ljava/lang/String;
    .end local v8    # "visibility":Z
    :cond_100
    const-string v9, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_113

    .line 218
    sget-boolean v9, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIsSCover2:Z

    if-eqz v9, :cond_62

    .line 219
    iget-object v9, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$4;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # invokes: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->makeSViewMeasureSpec()V
    invoke-static {v9}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$700(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)V

    goto/16 :goto_62

    .line 221
    :cond_113
    const-string v9, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12f

    .line 222
    iget-object v9, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$4;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIsSViewCover:Z
    invoke-static {v9}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$800(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Z

    move-result v9

    if-eqz v9, :cond_62

    .line 223
    iget-object v9, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$4;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$200(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_62

    .line 225
    :cond_12f
    const-string v9, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13f

    const-string v9, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16e

    .line 226
    :cond_13f
    const-string v9, "pkg"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 227
    .local v2, "pkg":Ljava/lang/String;
    const-string v9, "com.android.phone"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_157

    const-string v9, "com.android.mms"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_62

    .line 228
    :cond_157
    iget-object v9, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$4;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # invokes: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->updateBatteryContainer()V
    invoke-static {v9}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$900(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)V

    .line 229
    const-string v9, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_167

    .line 230
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIsSmartAlertNeedToBeChecked:Z

    .line 232
    :cond_167
    iget-object v9, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$4;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # invokes: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->moveToHomePage()V
    invoke-static {v9}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$1000(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)V

    goto/16 :goto_62

    .line 234
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_16e
    const-string v9, "com.android.server.NotificationManagerService.PickupMotionArrived"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1ef

    .line 235
    const-string v9, "SViewCoverManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cover type ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$4;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCurrentCoverType:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$1100(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "mIsSmartAlertNeedToBeChecked ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIsSmartAlertNeedToBeChecked:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v9, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$4;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCurrentCoverType:I
    invoke-static {v9}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$1100(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_1b2

    iget-object v9, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$4;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCurrentCoverType:I
    invoke-static {v9}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$1100(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_62

    .line 238
    :cond_1b2
    sget-boolean v9, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIsSmartAlertNeedToBeChecked:Z

    if-eqz v9, :cond_62

    .line 239
    iget-object v9, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$4;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # invokes: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->moveToHomePage()V
    invoke-static {v9}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$1000(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)V

    .line 240
    iget-object v9, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$4;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    const/4 v10, 0x1

    # invokes: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->updateSViewCoverUnlockArea(Z)V
    invoke-static {v9, v10}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$1200(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;Z)V

    .line 241
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIsSmartAlertNeedToBeChecked:Z

    .line 242
    iget-object v9, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$4;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mPMS:Landroid/os/PowerManager;
    invoke-static {v9}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$000(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Landroid/os/PowerManager;

    move-result-object v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 243
    const-string v9, "SViewCoverManager"

    const-string v10, "wakeUp when Pick up tutorial"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v9, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$4;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCoverOpenWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v9}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$1300(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v9

    if-eqz v9, :cond_62

    .line 245
    iget-object v9, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$4;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCoverOpenWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v9}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$1300(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_62

    .line 249
    :cond_1ef
    const-string v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_62

    .line 251
    iget-object v9, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$4;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$200(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$4;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mGoToSleepRunnable:Ljava/lang/Runnable;
    invoke-static {v10}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$100(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Ljava/lang/Runnable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v9

    if-eqz v9, :cond_218

    .line 252
    iget-object v9, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$4;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$200(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$4;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mGoToSleepRunnable:Ljava/lang/Runnable;
    invoke-static {v10}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$100(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Ljava/lang/Runnable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 253
    :cond_218
    iget-object v9, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$4;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    # invokes: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->moveToHomePage()V
    invoke-static {v9}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$1000(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)V

    .line 254
    iget-object v9, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$4;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    const/4 v10, 0x1

    # invokes: Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->updateSViewCoverUnlockArea(Z)V
    invoke-static {v9, v10}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->access$1200(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;Z)V

    goto/16 :goto_62
.end method
