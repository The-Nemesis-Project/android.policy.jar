.class Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$4;
.super Ljava/lang/Object;
.source "KeyguardFaceVoiceUnlockView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->initializeBiometricUnlockView()V
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
    .line 425
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;->stopAndShowBackup()V

    .line 429
    return-void
.end method
