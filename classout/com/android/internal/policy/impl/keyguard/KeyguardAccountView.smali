.class public Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;
.super Landroid/widget/LinearLayout;
.source "KeyguardAccountView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;


# static fields
.field private static final AWAKE_POKE_MILLIS:I = 0x7530

.field private static final LOCK_PATTERN_CLASS:Ljava/lang/String; = "com.android.settings.ChooseLockGeneric"

.field private static final LOCK_PATTERN_PACKAGE:Ljava/lang/String; = "com.android.settings"


# instance fields
.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mCheckingDialog:Landroid/app/ProgressDialog;

.field public mEnableFallback:Z

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLogin:Landroid/widget/EditText;

.field private mOk:Landroid/widget/Button;

.field private mPassword:Landroid/widget/EditText;

.field private mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;)Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->postOnCheckPasswordResult(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;)Landroid/app/Dialog;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->getProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    return-object v0
.end method

.method private asyncCheckPassword()V
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 286
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v4, 0x7530

    invoke-interface {v0, v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 287
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 288
    .local v7, "login":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 289
    .local v8, "password":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->findIntendedAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    .line 290
    .local v1, "account":Landroid/accounts/Account;
    if-nez v1, :cond_27

    .line 291
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->postOnCheckPasswordResult(Z)V

    .line 320
    :goto_26
    return-void

    .line 294
    :cond_27
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->getProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 295
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 296
    .local v2, "options":Landroid/os/Bundle;
    const-string v0, "password"

    invoke-virtual {v2, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;)V

    new-instance v6, Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v5

    invoke-direct {v6, v5}, Landroid/os/UserHandle;-><init>(I)V

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->confirmCredentialsAsUser(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    goto :goto_26
.end method

.method private findIntendedAccount(Ljava/lang/String;)Landroid/accounts/Account;
    .registers 16
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 249
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v10

    const-string v11, "com.google"

    new-instance v12, Landroid/os/UserHandle;

    iget-object v13, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v13}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v13

    invoke-direct {v12, v13}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v10, v11, v12}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v2

    .line 256
    .local v2, "accounts":[Landroid/accounts/Account;
    const/4 v4, 0x0

    .line 257
    .local v4, "bestAccount":Landroid/accounts/Account;
    const/4 v5, 0x0

    .line 258
    .local v5, "bestScore":I
    move-object v3, v2

    .local v3, "arr$":[Landroid/accounts/Account;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1c
    if-ge v7, v8, :cond_68

    aget-object v0, v3, v7

    .line 259
    .local v0, "a":Landroid/accounts/Account;
    const/4 v9, 0x0

    .line 260
    .local v9, "score":I
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_31

    .line 261
    const/4 v9, 0x4

    .line 275
    :cond_2a
    :goto_2a
    if-le v9, v5, :cond_64

    .line 276
    move-object v4, v0

    .line 277
    move v5, v9

    .line 258
    :cond_2e
    :goto_2e
    add-int/lit8 v7, v7, 0x1

    goto :goto_1c

    .line 262
    :cond_31
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3b

    .line 263
    const/4 v9, 0x3

    goto :goto_2a

    .line 264
    :cond_3b
    const/16 v10, 0x40

    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-gez v10, :cond_2a

    .line 265
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/16 v11, 0x40

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 266
    .local v6, "i":I
    if-ltz v6, :cond_2a

    .line 267
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "aUsername":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5c

    .line 269
    const/4 v9, 0x2

    goto :goto_2a

    .line 270
    :cond_5c
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2a

    .line 271
    const/4 v9, 0x1

    goto :goto_2a

    .line 278
    .end local v1    # "aUsername":Ljava/lang/String;
    .end local v6    # "i":I
    :cond_64
    if-ne v9, v5, :cond_2e

    .line 279
    const/4 v4, 0x0

    goto :goto_2e

    .line 282
    .end local v0    # "a":Landroid/accounts/Account;
    .end local v9    # "score":I
    :cond_68
    return-object v4
.end method

.method private getProgressDialog()Landroid/app/Dialog;
    .registers 4

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_32

    .line 324
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    .line 325
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mContext:Landroid/content/Context;

    const v2, 0x1040905

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 328
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 329
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 332
    :cond_32
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private postOnCheckPasswordResult(Z)V
    .registers 4
    .param p1, "success"    # Z

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 216
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 126
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 129
    return-void
.end method

.method public cleanUp()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 163
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_a

    .line 164
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 166
    :cond_a
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 167
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 168
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 220
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1d

    .line 222
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 223
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 227
    :cond_1b
    const/4 v0, 0x1

    .line 229
    :goto_1c
    return v0

    :cond_1d
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1c
.end method

.method public getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public hideBouncer(I)V
    .registers 2
    .param p1, "duration"    # I

    .prologue
    .line 362
    return-void
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 145
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 172
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mOk:Landroid/widget/Button;

    if-ne p1, v0, :cond_e

    .line 173
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->asyncCheckPassword()V

    .line 175
    :cond_e
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_9

    .line 343
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 345
    :cond_9
    return-void
.end method

.method protected onFinishInflate()V
    .registers 5

    .prologue
    .line 93
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 95
    const v0, 0x102034e

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    .line 96
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/LoginFilter$UsernameFilterGeneric;

    invoke-direct {v3}, Landroid/text/LoginFilter$UsernameFilterGeneric;-><init>()V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 99
    const v0, 0x102034f

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mPassword:Landroid/widget/EditText;

    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 102
    const v0, 0x1020350

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mOk:Landroid/widget/Button;

    .line 103
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mOk:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 108
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    .line 109
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->reset()V

    .line 110
    return-void
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 338
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume(I)V
    .registers 2
    .param p1, "reason"    # I

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->reset()V

    .line 350
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_b

    .line 133
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v1, 0x7530

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 135
    :cond_b
    return-void
.end method

.method public reset()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 150
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mPassword:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 153
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v0

    .line 154
    .local v0, "permLocked":Z
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    if-eqz v0, :cond_30

    const v1, 0x10408fd

    move v3, v1

    :goto_22
    if-eqz v0, :cond_35

    move v1, v2

    :goto_25
    invoke-interface {v4, v3, v1}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 157
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 159
    return-void

    .line 154
    :cond_30
    const v1, 0x10408fe

    move v3, v1

    goto :goto_22

    :cond_35
    const/4 v1, 0x0

    goto :goto_25
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 114
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 2
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 118
    return-void
.end method

.method public showBouncer(I)V
    .registers 2
    .param p1, "duration"    # I

    .prologue
    .line 358
    return-void
.end method

.method public showUsabilityHint()V
    .registers 1

    .prologue
    .line 354
    return-void
.end method