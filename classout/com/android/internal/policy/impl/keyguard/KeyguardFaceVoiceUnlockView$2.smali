.class Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$2;
.super Ljava/lang/Object;
.source "KeyguardFaceVoiceUnlockView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;


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
    .line 240
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public displayPrepareMsg()V
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->displayPrepareMsg()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)V

    .line 245
    return-void
.end method

.method public displayRecognitionMsg(J)V
    .registers 4
    .param p1, "millis"    # J

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->displayRecognitionMsg(J)V
    invoke-static {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;J)V

    .line 250
    return-void
.end method

.method public displayVerifyFailMsg()V
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->displayVerifyFailMsg()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)V

    .line 260
    return-void
.end method

.method public displayVerifyFailMsgDelayed(J)V
    .registers 4
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->displayVerifyFailMsgDelayed(J)V
    invoke-static {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;J)V

    .line 255
    return-void
.end method

.method public displayVerifySuccessMsg()V
    .registers 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->displayVerifySuccessMsg()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)V

    .line 265
    return-void
.end method

.method public hideVoiceLayout()V
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->hideVoiceLayout()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)V

    .line 270
    return-void
.end method

.method public isErrorShowed()Z
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->isErrorShowed()Z

    move-result v0

    return v0
.end method

.method public updateVolume(I)V
    .registers 3
    .param p1, "volume"    # I

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->updateVolume(I)V

    .line 275
    return-void
.end method
