.class Lcom/android/internal/policy/impl/spengesture/SPenGestureView$8;
.super Ljava/lang/Object;
.source "SPenGestureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V
    .registers 2

    .prologue
    .line 903
    iput-object p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$8;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 906
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$8;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$8;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePadBlockTaskList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$2400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Ljava/util/ArrayList;

    move-result-object v3

    # invokes: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->isTopActivity(Ljava/util/ArrayList;)Z
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$2500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 907
    const-string v2, "SPenGesture"

    const-string v3, "gesturepad is live!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    :goto_15
    return-void

    .line 911
    :cond_16
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$8;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    # invokes: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->isLockScreenShowing()Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$1200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 912
    const-string v2, "SPenGesture"

    const-string v3, "Now keyguard is on!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_15

    .line 927
    :catch_26
    move-exception v1

    .line 928
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_15

    .line 916
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2b
    :try_start_2b
    const-string v2, "SPenGesture"

    const-string v3, "Gesture Pad!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 919
    .local v0, "dvfsLockIntent":Landroid/content/Intent;
    const-string v2, "com.sec.android.intent.action.DVFS_BOOSTER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 920
    const-string v2, "PACKAGE"

    const-string v3, "com.sec.android.gesturepad"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 921
    const-string v2, "CPU"

    const-string v3, "MAX"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 922
    const-string v2, "CPU_CORE_NUM"

    const-string v3, "4"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 923
    const-string v2, "DURATION"

    const-string v3, "1500"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 924
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$8;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 926
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$8;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$8;->this$0:Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePadIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->access$2600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/content/Intent;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_72} :catch_26

    goto :goto_15
.end method