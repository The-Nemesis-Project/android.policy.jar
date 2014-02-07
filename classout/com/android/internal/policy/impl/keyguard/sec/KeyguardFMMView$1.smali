.class Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView$1;
.super Ljava/lang/Object;
.source "KeyguardFMMView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;)V
    .registers 2

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->doHapticKeyClick()V

    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->mPasswordEntry:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 125
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->verifyPasswordAndUnlock()V

    .line 127
    :cond_16
    return-void
.end method
