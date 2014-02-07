.class Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;
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
    .line 1578
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1581
    const-string v6, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_85

    .line 1582
    const-string v6, "seq"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1583
    .local v3, "sequence":I
    const-string v5, "KeyguardViewMediator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "received DELAYED_KEYGUARD_ACTION with seq = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mDelayedShowingSequence = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    monitor-enter v6

    .line 1586
    :try_start_40
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)I

    move-result v5

    if-ne v5, v3, :cond_68

    .line 1588
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v7, 0x1

    # setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z
    invoke-static {v5, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$902(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)Z

    .line 1590
    sget-boolean v5, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwipeLockShowingBeforeTimeout:Z

    if-eqz v5, :cond_79

    .line 1591
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwipeLockShowingBeforeTimeout:Z

    .line 1592
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v7, 0x0

    # setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z
    invoke-static {v5, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$902(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)Z

    .line 1593
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v5

    if-nez v5, :cond_6a

    .line 1594
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 1607
    :cond_68
    :goto_68
    monitor-exit v6

    .line 1698
    .end local v3    # "sequence":I
    :cond_69
    :goto_69
    return-void

    .line 1596
    .restart local v3    # "sequence":I
    :cond_6a
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 1597
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v7, 0x0

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v5, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_68

    .line 1607
    :catchall_76
    move-exception v5

    monitor-exit v6
    :try_end_78
    .catchall {:try_start_40 .. :try_end_78} :catchall_76

    throw v5

    .line 1600
    :cond_79
    :try_start_79
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isSupportSPC()Z

    move-result v5

    if-nez v5, :cond_68

    .line 1602
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    :try_end_84
    .catchall {:try_start_79 .. :try_end_84} :catchall_76

    goto :goto_68

    .line 1610
    .end local v3    # "sequence":I
    :cond_85
    const-string v6, "com.android.samsungtest.DISABLE_KEYGUARD_FACTORY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a6

    .line 1612
    const-string v5, "KeyguardViewMediator"

    const-string v6, "received DISABLE_KEYGUARD_FACTORY_ACTION!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isFactoryMode()Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1900(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 1614
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v5, v4, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    goto :goto_69

    .line 1618
    :cond_a6
    const-string v6, "secedm.src.android.app.enterprise.action.DO_KEYGUARD"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b8

    .line 1619
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    goto :goto_69

    .line 1620
    :cond_b8
    const-string v6, "android.app.action.DEVICE_POLICY_MANAGER_PASSWORD_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f1

    .line 1621
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_69

    .line 1622
    const-string v5, "KeyguardViewMediator"

    const-string v6, "dpc"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    .line 1625
    .local v2, "isSecure":Z
    if-nez v2, :cond_e5

    .line 1626
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v5, v4, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    goto :goto_69

    .line 1628
    :cond_e5
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v5, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 1629
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_69

    .line 1634
    .end local v2    # "isSecure":Z
    :cond_f1
    const-string v6, "com.android.internal.policy.impl.Keyguard.PCW_LOCKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11f

    .line 1635
    const-string v5, "KeyguardViewMediator"

    const-string v6, "FMM_LOCKED_ACTION intent is received."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v5

    if-nez v5, :cond_113

    .line 1637
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_69

    .line 1639
    :cond_113
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 1640
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v5, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_69

    .line 1642
    :cond_11f
    const-string v6, "com.android.internal.policy.impl.Keyguard.PCW_UNLOCKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_151

    .line 1643
    const-string v5, "KeyguardViewMediator"

    const-string v6, "received intent to unlock FMM unlockscreen!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    .line 1645
    .restart local v2    # "isSecure":Z
    if-nez v2, :cond_145

    .line 1646
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v5, v4, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    goto/16 :goto_69

    .line 1648
    :cond_145
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 1649
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v5, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_69

    .line 1651
    .end local v2    # "isSecure":Z
    :cond_151
    const-string v6, "com.android.internal.policy.impl.Keyguard.LANDSCAPE_WAKE_TIME_LIMIT_EXPIRED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_168

    .line 1652
    const-string v6, "KeyguardViewMediator"

    const-string v7, "landscape wakeup time limit expired"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    sput-boolean v5, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mIsInLandscapeWakeTimeLimit:Z

    goto/16 :goto_69

    .line 1654
    :cond_168
    const-string v6, "com.sec.android.FindingLostPhone.SUBSCRIBE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_196

    .line 1655
    const-string v5, "KeyguardViewMediator"

    const-string v6, "CARRIER_LOCKED_ACTION intent is received."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v5

    if-nez v5, :cond_18a

    .line 1657
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_69

    .line 1659
    :cond_18a
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 1660
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v5, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_69

    .line 1662
    :cond_196
    const-string v6, "com.sec.android.FindingLostPhone.CANCEL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c8

    .line 1663
    const-string v5, "KeyguardViewMediator"

    const-string v6, "received intent to unlock FLP!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    .line 1665
    .restart local v2    # "isSecure":Z
    if-nez v2, :cond_1bc

    .line 1666
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v5, v4, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    goto/16 :goto_69

    .line 1668
    :cond_1bc
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 1669
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v5, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_69

    .line 1671
    .end local v2    # "isSecure":Z
    :cond_1c8
    const-string v6, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_294

    .line 1672
    const-string v6, "KeyguardViewMediator"

    const-string v7, "ACTION_CONFIGURATION_CHANGED intent is received."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v0, v6, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1674
    .local v0, "hardKeyboardConfig":I
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isDualLCDFolderDevice(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_262

    .line 1675
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v6

    if-nez v6, :cond_26b

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isFolderOpened(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_26b

    .line 1676
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLastHardKeyboardConfig:I
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$2000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)I

    move-result v6

    if-eq v6, v0, :cond_262

    const/4 v6, 0x2

    if-ne v0, v6, :cond_262

    .line 1677
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "sub_lcd_auto_lock"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_269

    .line 1678
    .local v4, "subLCDAutoLock":Z
    :goto_222
    const-string v5, "service.camera.running"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1679
    .local v1, "isCameraRunning":Z
    const-string v5, "KeyguardViewMediator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "subLCDAutoLock :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isCameraRunning :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    if-eqz v4, :cond_262

    if-nez v1, :cond_262

    .line 1681
    const-string v5, "KeyguardViewMediator"

    const-string v6, "onReceive, Folder is closed, doKeyguardLocked"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 1692
    .end local v1    # "isCameraRunning":Z
    .end local v4    # "subLCDAutoLock":Z
    :cond_262
    :goto_262
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLastHardKeyboardConfig:I
    invoke-static {v5, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$2002(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;I)I

    goto/16 :goto_69

    :cond_269
    move v4, v5

    .line 1677
    goto :goto_222

    .line 1685
    :cond_26b
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v5

    if-nez v5, :cond_262

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isFolderOpened(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_262

    .line 1686
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLastHardKeyboardConfig:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$2000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)I

    move-result v5

    if-eq v5, v0, :cond_262

    .line 1687
    const-string v5, "KeyguardViewMediator"

    const-string v6, "onReceive, Folder is opened, keyguardDone"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v5, v4, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    goto :goto_262

    .line 1693
    .end local v0    # "hardKeyboardConfig":I
    :cond_294
    const-string v6, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_69

    .line 1694
    const-string v6, "KeyguardViewMediator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->setSwipeSmartLock(Z)V

    .line 1696
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->connectedBTforSmartLock:Z
    invoke-static {v6, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1702(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)Z

    goto/16 :goto_69
.end method
