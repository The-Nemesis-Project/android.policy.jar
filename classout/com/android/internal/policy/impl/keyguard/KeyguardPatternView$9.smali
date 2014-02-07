.class Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$9;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)V
    .registers 2

    .prologue
    .line 665
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneStateChanged(I)V
    .registers 4
    .param p1, "phoneState"    # I

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mRootLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$2700(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 670
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyCircleText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$2800(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$2900(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSpareKeyButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$3000(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 671
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2e

    .line 672
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyCircleText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$2800(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 681
    :cond_2d
    :goto_2d
    return-void

    .line 674
    :cond_2e
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$2900(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSpareKeyButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$3000(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2d

    .line 676
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEmergencyCircleText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$2800(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2d
.end method
