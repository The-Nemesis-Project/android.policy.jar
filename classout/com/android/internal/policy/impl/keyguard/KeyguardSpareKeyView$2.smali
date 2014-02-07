.class Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView$2;
.super Ljava/lang/Object;
.source "KeyguardSpareKeyView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->onFinishInflate()V
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
    .line 140
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 6
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 148
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 149
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 152
    :cond_13
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mIsSignatureBackup:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 153
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mBackupPin:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 154
    .local v0, "len":I
    const/16 v1, 0x8

    if-le v0, v1, :cond_3c

    .line 156
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mBackupPin:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 159
    .end local v0    # "len":I
    :cond_3c
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 145
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 142
    return-void
.end method
