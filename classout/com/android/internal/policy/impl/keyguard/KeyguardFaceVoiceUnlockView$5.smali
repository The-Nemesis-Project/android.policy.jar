.class Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$5;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardFaceVoiceUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)V
    .registers 2

    .prologue
    .line 482
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardVisibilityChanged(Z)V
    .registers 7
    .param p1, "showing"    # Z

    .prologue
    .line 527
    const-string v2, "FULKeyguardFaceUnlockView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyguardVisibilityChanged("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const/4 v1, 0x0

    .line 529
    .local v1, "wasShowing":Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mIsShowingLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->access$1300(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 530
    :try_start_26
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mIsShowing:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)Z

    move-result v1

    .line 531
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    # setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mIsShowing:Z
    invoke-static {v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->access$1402(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;Z)Z

    .line 532
    monitor-exit v3
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_56

    .line 533
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 535
    .local v0, "powerManager":Landroid/os/PowerManager;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    move-result-object v2

    if-eqz v2, :cond_55

    .line 536
    if-nez p1, :cond_59

    if-eqz v1, :cond_59

    .line 537
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;->stop()Z

    .line 542
    :cond_55
    :goto_55
    return-void

    .line 532
    .end local v0    # "powerManager":Landroid/os/PowerManager;
    :catchall_56
    move-exception v2

    :try_start_57
    monitor-exit v3
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v2

    .line 538
    .restart local v0    # "powerManager":Landroid/os/PowerManager;
    :cond_59
    if-eqz p1, :cond_55

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_55

    if-nez v1, :cond_55

    .line 539
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->maybeStartBiometricUnlock()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)V

    goto :goto_55
.end method

.method public onPhoneStateChanged(I)V
    .registers 5
    .param p1, "phoneState"    # I

    .prologue
    .line 486
    const-string v0, "FULKeyguardFaceUnlockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPhoneStateChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const/4 v0, 0x1

    if-ne p1, v0, :cond_32

    .line 488
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 489
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;->stopAndShowBackup()V

    .line 494
    :cond_32
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mRootLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 495
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyCircleText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 496
    const/4 v0, 0x2

    if-ne p1, v0, :cond_58

    .line 497
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyCircleText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 505
    :cond_57
    :goto_57
    return-void

    .line 499
    :cond_58
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_57

    .line 500
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyCircleText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_57
.end method

.method public onUserSwitchComplete(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 519
    const-string v0, "FULKeyguardFaceUnlockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserSwitchComplete("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 521
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->maybeStartBiometricUnlock()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)V

    .line 523
    :cond_2b
    return-void
.end method

.method public onUserSwitching(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 509
    const-string v0, "FULKeyguardFaceUnlockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserSwitching("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 511
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;->stop()Z

    .line 515
    :cond_2f
    return-void
.end method
