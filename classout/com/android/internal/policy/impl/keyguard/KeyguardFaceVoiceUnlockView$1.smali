.class Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$1;
.super Landroid/view/IRotationWatcher$Stub;
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
    .line 91
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotationChanged(I)V
    .registers 5
    .param p1, "rotation"    # I

    .prologue
    .line 93
    const-string v0, "FULKeyguardFaceUnlockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRotationChanged(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mLastRotation:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mLastRotation:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)I

    move-result v0

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4d

    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 101
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;->stop()Z

    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->maybeStartBiometricUnlock()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)V

    .line 105
    :cond_4d
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    # setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mLastRotation:I
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->access$002(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;I)I

    .line 106
    return-void
.end method
