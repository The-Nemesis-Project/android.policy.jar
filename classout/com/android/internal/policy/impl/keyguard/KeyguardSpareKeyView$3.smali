.class Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView$3;
.super Ljava/lang/Object;
.source "KeyguardSpareKeyView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;)V
    .registers 2

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mBackupPin:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 210
    return-void
.end method
