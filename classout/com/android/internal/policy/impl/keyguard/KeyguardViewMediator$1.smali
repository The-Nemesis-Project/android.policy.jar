.class Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
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
    .line 424
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClockVisibilityChanged()V
    .registers 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 489
    return-void
.end method

.method public onDeviceProvisioned()V
    .registers 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 494
    return-void
.end method

.method onPhoneStateChanged(I)V
    .registers 5
    .param p1, "phoneState"    # I

    .prologue
    const/4 v2, 0x1

    .line 460
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mPhoneState:I
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$602(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;I)I

    .line 461
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    monitor-enter v1

    .line 462
    if-nez p1, :cond_3a

    .line 463
    :try_start_b
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mScreenOn:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 466
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v2, 0x1

    # setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$902(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)Z

    .line 472
    const-string v0, "KeyguardViewMediator"

    const-string v2, "screen is off and call ended, let\'s make sure the keyguard is showing"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 476
    :cond_2d
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mIsInCall:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1102(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)Z

    .line 477
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->launchClearCover()V

    .line 483
    :cond_38
    :goto_38
    monitor-exit v1

    .line 484
    return-void

    .line 478
    :cond_3a
    if-eq v2, p1, :cond_3f

    const/4 v0, 0x2

    if-ne v0, p1, :cond_38

    .line 481
    :cond_3f
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v2, 0x1

    # setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mIsInCall:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1102(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)Z

    goto :goto_38

    .line 483
    :catchall_46
    move-exception v0

    monitor-exit v1
    :try_end_48
    .catchall {:try_start_b .. :try_end_48} :catchall_46

    throw v0
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .registers 5
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 503
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$7;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_ea

    .line 570
    :goto_23
    return-void

    .line 510
    :pswitch_24
    monitor-enter p0

    .line 511
    :try_start_25
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_45

    .line 512
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 513
    const-string v0, "KeyguardViewMediator"

    const-string v1, "ICC_ABSENT isn\'t showing, we need to show the keyguard since the device isn\'t provisioned yet."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 521
    :cond_45
    :goto_45
    monitor-exit p0

    goto :goto_23

    :catchall_47
    move-exception v0

    monitor-exit p0
    :try_end_49
    .catchall {:try_start_25 .. :try_end_49} :catchall_47

    throw v0

    .line 518
    :cond_4a
    :try_start_4a
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    :try_end_50
    .catchall {:try_start_4a .. :try_end_50} :catchall_47

    goto :goto_45

    .line 526
    :pswitch_51
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isDualModeDevice()I

    move-result v0

    if-eqz v0, :cond_65

    .line 527
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getPINPUKRequest()Z

    move-result v0

    if-nez v0, :cond_65

    .line 528
    const-string v0, "KeyguardViewMediator"

    const-string v1, "onSimStateChanged getPINPUKRequest()==false: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 533
    :cond_65
    monitor-enter p0

    .line 534
    :try_start_66
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_7f

    .line 535
    const-string v0, "KeyguardViewMediator"

    const-string v1, "INTENT_VALUE_ICC_LOCKED and keygaurd isn\'t showing; need to show keyguard so user can enter sim pin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 547
    :goto_7a
    monitor-exit p0

    goto :goto_23

    :catchall_7c
    move-exception v0

    monitor-exit p0
    :try_end_7e
    .catchall {:try_start_66 .. :try_end_7e} :catchall_7c

    throw v0

    .line 539
    :cond_7f
    :try_start_7f
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 540
    const-string v0, "KeyguardViewMediator"

    const-string v1, "remove the handler KEYGUARD_DONE because it gets PIN_REQUIRED intent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 543
    :cond_9f
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 545
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    :try_end_aa
    .catchall {:try_start_7f .. :try_end_aa} :catchall_7c

    goto :goto_7a

    .line 550
    :pswitch_ab
    monitor-enter p0

    .line 551
    :try_start_ac
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_c6

    .line 552
    const-string v0, "KeyguardViewMediator"

    const-string v1, "PERM_DISABLED and keygaurd isn\'t showing."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 560
    :goto_c0
    monitor-exit p0

    goto/16 :goto_23

    :catchall_c3
    move-exception v0

    monitor-exit p0
    :try_end_c5
    .catchall {:try_start_ac .. :try_end_c5} :catchall_c3

    throw v0

    .line 556
    :cond_c6
    :try_start_c6
    const-string v0, "KeyguardViewMediator"

    const-string v1, "PERM_DISABLED, resetStateLocked toshow permanently disabled message in lockscreen."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    :try_end_d3
    .catchall {:try_start_c6 .. :try_end_d3} :catchall_c3

    goto :goto_c0

    .line 563
    :pswitch_d4
    monitor-enter p0

    .line 564
    :try_start_d5
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 565
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 567
    :cond_e3
    monitor-exit p0

    goto/16 :goto_23

    :catchall_e6
    move-exception v0

    monitor-exit p0
    :try_end_e8
    .catchall {:try_start_d5 .. :try_end_e8} :catchall_e6

    throw v0

    .line 505
    nop

    :pswitch_data_ea
    .packed-switch 0x1
        :pswitch_24
        :pswitch_24
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_ab
        :pswitch_d4
    .end packed-switch
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    .registers 3
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "simCardId"    # I

    .prologue
    .line 498
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 499
    return-void
.end method

.method public onUserInfoChanged(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 454
    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sMultiUserAvatarCache:Lcom/android/internal/policy/impl/keyguard/MultiUserAvatarCache;
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$500()Lcom/android/internal/policy/impl/keyguard/MultiUserAvatarCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/MultiUserAvatarCache;->clear(I)V

    .line 455
    return-void
.end method

.method public onUserRemoved(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->removeUser(I)V

    .line 449
    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sMultiUserAvatarCache:Lcom/android/internal/policy/impl/keyguard/MultiUserAvatarCache;
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$500()Lcom/android/internal/policy/impl/keyguard/MultiUserAvatarCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/MultiUserAvatarCache;->clear(I)V

    .line 450
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSwitchingUser:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$002(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)Z

    .line 444
    return-void
.end method

.method public onUserSwitching(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 431
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    monitor-enter v1

    .line 432
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v2, 0x1

    # setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSwitchingUser:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$002(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)Z

    .line 433
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v2, 0x0

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 434
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 437
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 438
    monitor-exit v1

    .line 439
    return-void

    .line 438
    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v0
.end method
