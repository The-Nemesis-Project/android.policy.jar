.class public abstract Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;
.super Landroid/widget/LinearLayout;
.source "KeyguardAbsKeyInputView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;


# static fields
.field protected static final MINIMUM_PASSWORD_LENGTH_BEFORE_REPORT:I = 0x3


# instance fields
.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field protected mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mDialog:Landroid/app/AlertDialog;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field protected mEcaView:Landroid/view/View;

.field private mEmergencyButton:Landroid/widget/Button;

.field private mEmergencyCircleText:Landroid/widget/TextView;

.field private mEmergencyCircleView:Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;

.field protected mEnableHaptics:Z

.field mImmAbs:Landroid/view/inputmethod/InputMethodManager;

.field mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mPasswordEntry:Landroid/widget/TextView;

.field protected mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

.field private mRootLayout:Landroid/widget/FrameLayout;

.field protected mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 334
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$5;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 103
    const-string v0, "enterprise_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 105
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_20

    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    .line 108
    :cond_20
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;)Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mEmergencyCircleView:Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mRootLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mEmergencyCircleText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mEmergencyButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;)Landroid/app/enterprise/PasswordPolicy;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;)Landroid/view/inputmethod/InputMethodManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mImmAbs:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$910(Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->checkQuickUnlock()Z

    move-result v0

    return v0
.end method

.method static synthetic access$920(Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method private checkQuickUnlock()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 507
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quick_pinpass"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private disableDevicePermanently()V
    .registers 4

    .prologue
    .line 369
    const-string v0, "PasswordUnlockScreen"

    const-string v1, "disableDevicePermanently start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 371
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, 0x104026e

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 372
    return-void
.end method

.method private isDeviceDisabledForMaxFailedAttempt()Z
    .registers 8

    .prologue
    .line 352
    const/4 v2, 0x0

    .line 353
    .local v2, "lDeviceDisableForMaxFailedAttempt":Z
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "enterprise_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 355
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/PasswordPolicy;->getMaximumFailedPasswordsForDeviceDisable()I

    move-result v3

    .line 356
    .local v3, "lMaxNumFailedAttemptForDisable":I
    const-string v4, "PasswordUnlockScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "max failed attempt for device disable :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    if-lez v3, :cond_4e

    .line 359
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getCurrentFailedPasswordAttempts()I

    move-result v1

    .line 360
    .local v1, "lCurNumFailedAttempts":I
    const-string v4, "PasswordUnlockScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current failed attempt for device  :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    if-lt v1, v3, :cond_67

    const/4 v2, 0x1

    .line 364
    .end local v1    # "lCurNumFailedAttempts":I
    :cond_4e
    :goto_4e
    const-string v4, "PasswordUnlockScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDeviceDisabledForMaxFailedAttempt return :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    return v2

    .line 361
    .restart local v1    # "lCurNumFailedAttempts":I
    :cond_67
    const/4 v2, 0x0

    goto :goto_4e
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 429
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_b

    .line 419
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v1, 0x1388

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 421
    :cond_b
    return-void
.end method

.method public doHapticKeyClick()V
    .registers 3

    .prologue
    .line 433
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mEnableHaptics:Z

    if-eqz v0, :cond_9

    .line 434
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->performHapticFeedback(II)Z

    .line 438
    :cond_9
    return-void
.end method

.method public getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .registers 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method protected abstract getPasswordTextViewId()I
.end method

.method protected getWrongPasswordStringId()I
    .registers 2

    .prologue
    .line 246
    const v0, 0x10408ed

    return v0
.end method

.method protected handleAttemptLockout(J)V
    .registers 11
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 316
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 317
    .local v6, "elapsedRealtime":J
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$4;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;JJ)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$4;->start()Landroid/os/CountDownTimer;

    .line 332
    return-void
.end method

.method public hideBouncer(I)V
    .registers 5
    .param p1, "duration"    # I

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 450
    return-void
.end method

.method protected makeEmergencyCircleView()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 219
    const v0, 0x10202a1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mRootLayout:Landroid/widget/FrameLayout;

    .line 220
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mRootLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_32

    .line 221
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mEmergencyCircleText:Landroid/widget/TextView;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mEmergencyButton:Landroid/widget/Button;

    if-eqz v0, :cond_32

    .line 222
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mEmergencyCircleView:Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;

    .line 223
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mRootLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mEmergencyCircleView:Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 224
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mEmergencyCircleText:Landroid/widget/TextView;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 232
    :cond_32
    return-void
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 397
    const/4 v0, 0x0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 474
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 476
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isDualLCDFolderDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 478
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    :cond_12
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 384
    if-eqz p3, :cond_b

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_b

    .line 392
    :cond_a
    :goto_a
    return v0

    .line 387
    :cond_b
    if-eqz p2, :cond_13

    const/4 v2, 0x6

    if-eq p2, v2, :cond_13

    const/4 v2, 0x5

    if-ne p2, v2, :cond_a

    .line 389
    :cond_13
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->verifyPasswordAndUnlock()V

    move v0, v1

    .line 390
    goto :goto_a
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    .line 161
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 163
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mImmAbs:Landroid/view/inputmethod/InputMethodManager;

    .line 166
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->getPasswordTextViewId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    .line 167
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 168
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 171
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 173
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setWritingBuddyEnabled(Z)V

    .line 176
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 195
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    .line 196
    const v1, 0x1020359

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    .line 197
    const v1, 0x1020357

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 198
    .local v0, "bouncerFrameView":Landroid/view/View;
    if-eqz v0, :cond_6c

    .line 199
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 203
    :cond_6c
    const v1, 0x10202a0

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mEmergencyCircleText:Landroid/widget/TextView;

    .line 204
    const v1, 0x1020366

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mEmergencyButton:Landroid/widget/Button;

    .line 205
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->makeEmergencyCircleView()V

    .line 208
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isDirectCallToEcc()Z

    move-result v1

    if-eqz v1, :cond_9a

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mEmergencyButton:Landroid/widget/Button;

    instance-of v1, v1, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    if-eqz v1, :cond_9a

    .line 209
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mEmergencyButton:Landroid/widget/Button;

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->setPasswordEntryView(Landroid/widget/TextView;)V

    .line 212
    :cond_9a
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 213
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->disableDevicePermanently()V

    .line 215
    :cond_a3
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 378
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 403
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume(I)V
    .registers 4
    .param p1, "reason"    # I

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->reset()V

    .line 408
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 409
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 425
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 121
    if-eqz p1, :cond_5

    .line 122
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->reset()V

    .line 124
    :cond_5
    return-void
.end method

.method public reset()V
    .registers 7

    .prologue
    .line 128
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->requestFocus()Z

    .line 132
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    .line 133
    .local v2, "lDeviceDisableForMaxFailedAttempt":Z
    if-nez v2, :cond_4c

    .line 134
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 135
    .local v0, "deadline":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_48

    .line 136
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->handleAttemptLockout(J)V

    .line 145
    .end local v0    # "deadline":J
    :goto_21
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mRootLayout:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_47

    .line 146
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mEmergencyCircleText:Landroid/widget/TextView;

    if-eqz v4, :cond_47

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mEmergencyButton:Landroid/widget/Button;

    if-eqz v4, :cond_47

    .line 147
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v3

    .line 148
    .local v3, "phoneState":I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_47

    .line 149
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mEmergencyCircleText:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mEmergencyButton:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 154
    .end local v3    # "phoneState":I
    :cond_47
    return-void

    .line 138
    .restart local v0    # "deadline":J
    :cond_48
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->resetState()V

    goto :goto_21

    .line 141
    .end local v0    # "deadline":J
    :cond_4c
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->disableDevicePermanently()V

    goto :goto_21
.end method

.method protected abstract resetState()V
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 112
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 3
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 116
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mEnableHaptics:Z

    .line 117
    return-void
.end method

.method public showBouncer(I)V
    .registers 5
    .param p1, "duration"    # I

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 444
    return-void
.end method

.method protected showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_38

    .line 454
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mDialog:Landroid/app/AlertDialog;

    .line 466
    :goto_21
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_32

    .line 467
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 469
    :cond_32
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 470
    :cond_37
    return-void

    .line 459
    :cond_38
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_37

    .line 460
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 461
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_21
.end method

.method protected verifyPasswordAndUnlock()V
    .registers 16

    .prologue
    .line 250
    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 251
    .local v4, "entry":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v12, v4}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9c

    .line 253
    const/4 v3, 0x0

    .line 254
    .local v3, "enforcePwdChange":Z
    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    if-eqz v12, :cond_20

    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v12}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v12

    if-lez v12, :cond_20

    .line 256
    const/4 v3, 0x1

    .line 257
    :cond_20
    if-eqz v3, :cond_75

    .line 258
    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v8

    .line 259
    .local v8, "mDPM":Landroid/app/admin/DevicePolicyManager;
    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v11

    .line 260
    .local v11, "quality":I
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v10

    .line 261
    .local v10, "minLength":I
    invoke-virtual {v8, v11}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v9

    .line 262
    .local v9, "maxLength":I
    new-instance v6, Landroid/content/Intent;

    const-string v12, "android.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-direct {v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .local v6, "it":Landroid/content/Intent;
    const-string v12, "lockscreen.password_type"

    invoke-virtual {v6, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 264
    const-string v12, "lockscreen.password_min"

    invoke-virtual {v6, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 265
    const-string v12, "lockscreen.password_max"

    invoke-virtual {v6, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    const-string v12, "lockscreen.password_old"

    invoke-virtual {v6, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    const-string v12, "confirm_credentials"

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 268
    const/high16 v12, 0x10000000

    invoke-virtual {v6, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 269
    const/high16 v12, 0x400000

    invoke-virtual {v6, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 270
    const/high16 v12, 0x800000

    invoke-virtual {v6, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 271
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 272
    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v13, ""

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    .end local v6    # "it":Landroid/content/Intent;
    .end local v8    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .end local v9    # "maxLength":I
    .end local v10    # "minLength":I
    .end local v11    # "quality":I
    :cond_75
    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mImmAbs:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 278
    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v12}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->reportSuccessfulUnlockAttempt()V

    .line 279
    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 282
    new-instance v2, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v12}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 283
    .local v2, "dem":Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v2, v4}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I

    .line 310
    .end local v2    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    .end local v3    # "enforcePwdChange":Z
    :goto_94
    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v13, ""

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    return-void

    .line 286
    :cond_9c
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x3

    if-le v12, v13, :cond_de

    .line 289
    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v12}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->reportFailedUnlockAttempt()V

    .line 291
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v7

    .line 292
    .local v7, "lDeviceDisableForMaxFailedAttempt":Z
    if-nez v7, :cond_da

    .line 293
    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v12}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->getFailedAttempts()I

    move-result v12

    rem-int/lit8 v12, v12, 0x5

    if-nez v12, :cond_cf

    .line 295
    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    .line 296
    .local v0, "deadline":J
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->handleAttemptLockout(J)V

    .line 298
    new-instance v5, Landroid/content/Intent;

    const-string v12, "android.intent.action.PATTERN_LOCK_FAIL"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 299
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 301
    .end local v0    # "deadline":J
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_cf
    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->getWrongPasswordStringId()I

    move-result v13

    const/4 v14, 0x1

    invoke-interface {v12, v13, v14}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_94

    .line 303
    :cond_da
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->disableDevicePermanently()V

    goto :goto_94

    .line 308
    .end local v7    # "lDeviceDisableForMaxFailedAttempt":Z
    :cond_de
    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->getWrongPasswordStringId()I

    move-result v13

    const/4 v14, 0x1

    invoke-interface {v12, v13, v14}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_94
.end method
