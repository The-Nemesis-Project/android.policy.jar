.class Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$3;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .registers 2

    .prologue
    .line 1552
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 1555
    const-string v2, "android.bluetooth.device.action.OUT_OF_RANGE_ALERT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 1556
    const-string v2, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v2

    if-eqz v2, :cond_4c

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->connectedBTforSmartLock:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1700(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 1558
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setSwipeSmartLock(Z)V

    .line 1559
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v2, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 1575
    :cond_4c
    :goto_4c
    return-void

    .line 1561
    :cond_4d
    const-string v2, "android.bluetooth.device.action.ACTION_IN_RANGE_ALERT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_99

    .line 1562
    const-string v2, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v2

    if-eqz v2, :cond_4c

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->connectedBTforSmartLock:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1700(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 1564
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setSwipeSmartLock(Z)V

    .line 1565
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v2, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_4c

    .line 1567
    :cond_99
    const-string v2, "android.bluetooth.device.action.RSSI"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 1568
    const-string v2, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", connectedBTforSmartLock = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->connectedBTforSmartLock:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1700(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->connectedBTforSmartLock:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1700(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 1570
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1571
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1572
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_4c
.end method
