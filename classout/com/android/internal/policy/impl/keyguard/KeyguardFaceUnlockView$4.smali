.class Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView$4;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardFaceUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;)V
    .registers 2

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardVisibilityChanged(Z)V
    .registers 6
    .param p1, "showing"    # Z

    .prologue
    .line 330
    const/4 v1, 0x0

    .line 331
    .local v1, "wasShowing":Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mIsShowingLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 332
    :try_start_8
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mIsShowing:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;)Z

    move-result v1

    .line 333
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;

    # setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mIsShowing:Z
    invoke-static {v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->access$802(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;Z)Z

    .line 334
    monitor-exit v3
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_38

    .line 335
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 337
    .local v0, "powerManager":Landroid/os/PowerManager;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;)Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 338
    if-nez p1, :cond_3b

    if-eqz v1, :cond_3b

    .line 339
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;)Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;->stop()Z

    .line 344
    :cond_37
    :goto_37
    return-void

    .line 334
    .end local v0    # "powerManager":Landroid/os/PowerManager;
    :catchall_38
    move-exception v2

    :try_start_39
    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v2

    .line 340
    .restart local v0    # "powerManager":Landroid/os/PowerManager;
    :cond_3b
    if-eqz p1, :cond_37

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_37

    if-nez v1, :cond_37

    .line 341
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->maybeStartBiometricUnlock()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;)V

    goto :goto_37
.end method

.method public onPhoneStateChanged(I)V
    .registers 4
    .param p1, "phoneState"    # I

    .prologue
    .line 289
    const/4 v0, 0x1

    if-ne p1, v0, :cond_14

    .line 290
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;)Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 291
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;)Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;->stopAndShowBackup()V

    .line 296
    :cond_14
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mRootLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 297
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mEmergencyCircleText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mEmergencyButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 298
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3a

    .line 299
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mEmergencyCircleText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
    :cond_39
    :goto_39
    return-void

    .line 301
    :cond_3a
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mEmergencyButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_39

    .line 302
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mEmergencyCircleText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_39
.end method

.method public onUserSwitchComplete(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;)Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 323
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->maybeStartBiometricUnlock()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;)V

    .line 325
    :cond_d
    return-void
.end method

.method public onUserSwitching(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;)Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 313
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;)Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;->stop()Z

    .line 317
    :cond_11
    return-void
.end method
