.class Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$5;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardAbsKeyInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;)V
    .registers 2

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneStateChanged(I)V
    .registers 4
    .param p1, "phoneState"    # I

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mRootLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 339
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mEmergencyCircleText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mEmergencyButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 340
    const/4 v0, 0x2

    if-ne p1, v0, :cond_26

    .line 341
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mEmergencyCircleText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 347
    :cond_25
    :goto_25
    return-void

    .line 343
    :cond_26
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mEmergencyCircleText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_25
.end method