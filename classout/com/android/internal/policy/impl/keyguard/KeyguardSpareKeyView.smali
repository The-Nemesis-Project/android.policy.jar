.class public Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;
.super Landroid/widget/LinearLayout;
.source "KeyguardSpareKeyView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;


# static fields
.field private static final AWAKE_POKE_MILLIS:I = 0x7530

.field private static final DEBUG:Ljava/lang/Boolean;

.field private static final LOCK_PATTERN_CLASS:Ljava/lang/String; = "com.android.settings.ChooseLockGeneric"

.field private static final LOCK_PATTERN_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final TAG:Ljava/lang/String; = "KeyguardBackupPIN"


# instance fields
.field imm:Landroid/view/inputmethod/InputMethodManager;

.field private mBackupPin:Landroid/widget/EditText;

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mCheckingDialog:Landroid/app/ProgressDialog;

.field private mContext:Landroid/content/Context;

.field public mEnableFallback:Z

.field private mIsSignatureBackup:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOk:Landroid/widget/Button;

.field private mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

.field private mSignatureBackupPinGuide:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 76
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->DEBUG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mContext:Landroid/content/Context;

    .line 99
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 101
    return-void
.end method

.method private CheckSecondlock()V
    .registers 6

    .prologue
    .line 234
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v3, 0x7530

    invoke-interface {v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 235
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mBackupPin:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "backupPin":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->checkSignatureLockUsed()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 239
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->checkSignatureBackupPin(Ljava/lang/String;)Z

    move-result v0

    .line 243
    .local v0, "IsSecondLock":Z
    :goto_1d
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->onCheckSecondLockResult(Z)V

    .line 244
    return-void

    .line 241
    .end local v0    # "IsSecondLock":Z
    :cond_21
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->checkBackupPin(Ljava/lang/String;)Z

    move-result v0

    .restart local v0    # "IsSecondLock":Z
    goto :goto_1d
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mIsSignatureBackup:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mBackupPin:Landroid/widget/EditText;

    return-object v0
.end method

.method private checkSignatureLockUsed()Z
    .registers 4

    .prologue
    .line 311
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    .line 312
    .local v0, "securityModel":Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Signature:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v1, v2, :cond_1d

    invoke-static {}, Lcom/samsung/android/secretmode/SecretModeManager;->isSecretMode()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v2, :cond_1f

    :cond_1d
    const/4 v1, 0x1

    :goto_1e
    return v1

    :cond_1f
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method private onCheckSecondLockResult(Z)V
    .registers 9
    .param p1, "success"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 247
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_22

    const-string v2, "KeyguardBackupPIN"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_22
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    .line 249
    .local v1, "securityModel":Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;
    if-eqz p1, :cond_8e

    .line 250
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v2

    if-nez v2, :cond_7f

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v2

    if-nez v2, :cond_7f

    invoke-static {}, Lcom/samsung/android/secretmode/SecretModeManager;->isSecretMode()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v2, v3, :cond_7f

    .line 254
    :cond_49
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 255
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 256
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    .line 260
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 261
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.ChooseLockGeneric"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 263
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 264
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->reportSuccessfulUnlockAttempt()V

    .line 266
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_7f
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 269
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v2, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 275
    :goto_8d
    return-void

    .line 271
    :cond_8e
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v3, 0x10408eb

    invoke-interface {v2, v3, v6}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 272
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mBackupPin:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8d
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 179
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 182
    return-void
.end method

.method public cleanUp()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 219
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mCheckingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_a

    .line 220
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mCheckingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 222
    :cond_a
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 223
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 224
    return-void
.end method

.method public getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public hideBouncer(I)V
    .registers 2
    .param p1, "duration"    # I

    .prologue
    .line 297
    return-void
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 228
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mOk:Landroid/widget/Button;

    if-ne p1, v0, :cond_e

    .line 229
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->CheckSecondlock()V

    .line 231
    :cond_e
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 301
    if-eqz p2, :cond_8

    const/4 v0, 0x6

    if-eq p2, v0, :cond_8

    const/4 v0, 0x5

    if-ne p2, v0, :cond_d

    .line 303
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->CheckSecondlock()V

    .line 304
    const/4 v0, 0x1

    .line 307
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method protected onFinishInflate()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 105
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 107
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->checkSignatureLockUsed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mIsSignatureBackup:Z

    .line 109
    const v0, 0x1020355

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mBackupPin:Landroid/widget/EditText;

    .line 110
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mBackupPin:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 111
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mBackupPin:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 112
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mIsSignatureBackup:Z

    if-eqz v0, :cond_55

    .line 113
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mBackupPin:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 114
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mBackupPin:Landroid/widget/EditText;

    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 115
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mBackupPin:Landroid/widget/EditText;

    const/high16 v1, 0x41c00000

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 116
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mBackupPin:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 117
    const v0, 0x1020354

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mSignatureBackupPinGuide:Landroid/widget/TextView;

    .line 118
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mSignatureBackupPinGuide:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 119
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mSignatureBackupPinGuide:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    :cond_55
    const v0, 0x1020350

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mOk:Landroid/widget/Button;

    .line 123
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mOk:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mOk:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 125
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    .line 127
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mBackupPin:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 128
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mBackupPin:Landroid/widget/EditText;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 131
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mBackupPin:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 134
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mBackupPin:Landroid/widget/EditText;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mBackupPin:Landroid/widget/EditText;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->reset()V

    .line 163
    return-void
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 280
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mBackupPin:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume(I)V
    .registers 2
    .param p1, "reason"    # I

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->reset()V

    .line 285
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_b

    .line 186
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v1, 0x7530

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 188
    :cond_b
    return-void
.end method

.method public reset()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 202
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 204
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mBackupPin:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mBackupPin:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 206
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mBackupPin:Landroid/widget/EditText;

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 212
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v0

    .line 213
    .local v0, "permLocked":Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    if-eqz v0, :cond_36

    const v2, 0x10408fd

    :goto_2f
    if-eqz v0, :cond_32

    const/4 v1, 0x1

    :cond_32
    invoke-interface {v3, v2, v1}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 215
    return-void

    .line 213
    :cond_36
    const v2, 0x10408fe

    goto :goto_2f
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 167
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 2
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSpareKeyView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 171
    return-void
.end method

.method public showBouncer(I)V
    .registers 2
    .param p1, "duration"    # I

    .prologue
    .line 293
    return-void
.end method

.method public showUsabilityHint()V
    .registers 1

    .prologue
    .line 289
    return-void
.end method
