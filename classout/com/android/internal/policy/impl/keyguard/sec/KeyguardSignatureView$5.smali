.class Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$5;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardSignatureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)V
    .registers 2

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneStateChanged(I)V
    .registers 4
    .param p1, "phoneState"    # I

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mRootLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$800(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 373
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mEmergencyCircleText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$900(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mEmergencyButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$1000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 374
    const/4 v0, 0x2

    if-ne p1, v0, :cond_26

    .line 375
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mEmergencyCircleText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$900(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 383
    :cond_25
    :goto_25
    return-void

    .line 377
    :cond_26
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mEmergencyButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$1000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_25

    .line 378
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mEmergencyCircleText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->access$900(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_25
.end method
