.class Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView$3;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardSPassUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;)V
    .registers 2

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardVisibilityChanged(Z)V
    .registers 7
    .param p1, "showing"    # Z

    .prologue
    .line 255
    const-string v2, "KeyguardSPassUnlockView"

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

    .line 256
    const/4 v1, 0x0

    .line 257
    .local v1, "wasShowing":Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mIsShowingLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->access$500(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 258
    :try_start_26
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mIsShowing:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->access$600(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;)Z

    move-result v1

    .line 259
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;

    # setter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mIsShowing:Z
    invoke-static {v2, p1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->access$602(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;Z)Z

    .line 260
    monitor-exit v3
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_56

    .line 261
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->access$700(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 263
    .local v0, "powerManager":Landroid/os/PowerManager;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->access$100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    move-result-object v2

    if-eqz v2, :cond_55

    .line 264
    if-nez p1, :cond_59

    if-eqz v1, :cond_59

    .line 265
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->access$100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;->stop()Z

    .line 270
    :cond_55
    :goto_55
    return-void

    .line 260
    .end local v0    # "powerManager":Landroid/os/PowerManager;
    :catchall_56
    move-exception v2

    :try_start_57
    monitor-exit v3
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v2

    .line 266
    .restart local v0    # "powerManager":Landroid/os/PowerManager;
    :cond_59
    if-eqz p1, :cond_55

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_55

    if-nez v1, :cond_55

    .line 267
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;

    # invokes: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->maybeStartBiometricUnlock()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->access$800(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;)V

    goto :goto_55
.end method

.method public onPhoneStateChanged(I)V
    .registers 5
    .param p1, "phoneState"    # I

    .prologue
    .line 233
    const-string v0, "KeyguardSPassUnlockView"

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

    .line 234
    const/4 v0, 0x1

    if-ne p1, v0, :cond_32

    .line 235
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->access$100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 236
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->access$100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;->stopAndShowBackup()V

    .line 241
    :cond_32
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mRootLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 242
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyCircleText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->access$400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 243
    const/4 v0, 0x2

    if-ne p1, v0, :cond_58

    .line 244
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyCircleText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 252
    :cond_57
    :goto_57
    return-void

    .line 246
    :cond_58
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->access$400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_57

    .line 247
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyCircleText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_57
.end method
