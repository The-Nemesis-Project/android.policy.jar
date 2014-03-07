.class Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$2;
.super Ljava/lang/Object;
.source "KeyguardAbsKeyInputView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V
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
    .line 182
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 10
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_f

    .line 191
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 193
    :cond_f
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->checkQuickUnlock()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->access$910(Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;)Z

    move-result v0

    if-eqz v0, :cond_df

    .line 194
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "entry":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_df

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->access$920(Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_df

    .line 196
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;)Landroid/app/enterprise/PasswordPolicy;

    move-result-object v1

    if-eqz v1, :cond_a9

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;)Landroid/app/enterprise/PasswordPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v2

    if-lez v2, :cond_a9

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->access$920(Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    .line 197
    .local v2, "mDPM":Landroid/app/admin/DevicePolicyManager;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->access$920(Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v3

    .line 198
    .local v3, "quality":I
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v5

    .line 199
    .local v5, "minLength":I
    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v7

    .line 200
    .local v7, "maxLength":I
    new-instance v6, Landroid/content/Intent;

    const-string v4, "android.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-direct {v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 201
    .local v6, "it":Landroid/content/Intent;
    const-string v4, "lockscreen.password_type"

    invoke-virtual {v6, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 202
    const-string v4, "lockscreen.password_min"

    invoke-virtual {v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 203
    const-string v4, "lockscreen.password_max"

    invoke-virtual {v6, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 204
    const-string v4, "lockscreen.password_old"

    invoke-virtual {v6, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const/4 v1, 0x0

    const-string v4, "confirm_credentials"

    invoke-virtual {v6, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 206
    const/high16 v4, 0x10000000

    invoke-virtual {v6, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 207
    const/high16 v4, 0x400000

    invoke-virtual {v6, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 208
    const/high16 v4, 0x800000

    invoke-virtual {v6, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 209
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 210
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    .end local v2    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .end local v3    # "quality":I
    .end local v5    # "minLength":I
    .end local v6    # "it":Landroid/content/Intent;
    .end local v7    # "maxLength":I
    :cond_a9
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mImmAbs:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 212
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->reportSuccessfulUnlockAttempt()V

    .line 213
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 214
    new-instance v4, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 215
    .local v4, "dem":Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v4, v0}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I

    .line 216
    .end local v4    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    :cond_df
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 187
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 184
    return-void
.end method
