.class public Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;
.source "KeyguardFMMView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;


# static fields
.field static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "KeyguardFMMView"

.field private static final TIMEOUT:I = 0x1


# instance fields
.field private isWrongPIN:Z

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPM:Landroid/os/PowerManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakelockSequence:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->isWrongPIN:Z

    .line 253
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->mHandler:Landroid/os/Handler;

    .line 87
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->mContext:Landroid/content/Context;

    .line 88
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->mPM:Landroid/os/PowerManager;

    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->mPM:Landroid/os/PowerManager;

    const v1, 0x1000001a

    const-string v2, "keyguard"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 91
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->mPasswordEntry:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->mPasswordEntry:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->mPasswordEntry:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->mPasswordEntry:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->handleTimeout(I)V

    return-void
.end method

.method private disableDevicePermanently()V
    .registers 4

    .prologue
    .line 236
    const-string v0, "KeyguardFMMView"

    const-string v1, "disableDevicePermanently start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 238
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, 0x104026e

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 239
    return-void
.end method

.method private handleTimeout(I)V
    .registers 3
    .param p1, "seq"    # I

    .prologue
    .line 265
    monitor-enter p0

    .line 267
    :try_start_1
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->mWakelockSequence:I

    if-ne p1, v0, :cond_a

    .line 268
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 270
    :cond_a
    monitor-exit p0

    .line 271
    return-void

    .line 270
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method private isDeviceDisabledForMaxFailedAttempt()Z
    .registers 8

    .prologue
    .line 219
    const/4 v2, 0x0

    .line 220
    .local v2, "lDeviceDisableForMaxFailedAttempt":Z
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "enterprise_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 222
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/PasswordPolicy;->getMaximumFailedPasswordsForDeviceDisable()I

    move-result v3

    .line 223
    .local v3, "lMaxNumFailedAttemptForDisable":I
    const-string v4, "KeyguardFMMView"

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

    .line 225
    if-lez v3, :cond_4e

    .line 226
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getCurrentFailedPasswordAttempts()I

    move-result v1

    .line 227
    .local v1, "lCurNumFailedAttempts":I
    const-string v4, "KeyguardFMMView"

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

    .line 228
    if-lt v1, v3, :cond_67

    const/4 v2, 0x1

    .line 231
    .end local v1    # "lCurNumFailedAttempts":I
    :cond_4e
    :goto_4e
    const-string v4, "KeyguardFMMView"

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

    .line 232
    return v2

    .line 228
    .restart local v1    # "lCurNumFailedAttempts":I
    :cond_67
    const/4 v2, 0x0

    goto :goto_4e
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .registers 2

    .prologue
    .line 111
    const v0, 0x1020383

    return v0
.end method

.method protected onFinishInflate()V
    .registers 5

    .prologue
    .line 116
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    .line 118
    const v2, 0x102038f

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 119
    .local v0, "ok":Landroid/view/View;
    if-eqz v0, :cond_14

    .line 120
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    :cond_14
    const v2, 0x1020384

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 132
    .local v1, "pinDelete":Landroid/view/View;
    if-eqz v1, :cond_31

    .line 133
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 134
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 152
    :cond_31
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 153
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 156
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    .line 158
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 167
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 169
    :cond_11
    return-void
.end method

.method public pokeWakelock(I)V
    .registers 7
    .param p1, "holdMs"    # I

    .prologue
    .line 243
    monitor-enter p0

    .line 245
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 246
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 247
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->mWakelockSequence:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->mWakelockSequence:I

    .line 248
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->mWakelockSequence:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 249
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 250
    monitor-exit p0

    .line 251
    return-void

    .line 250
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_24
    move-exception v1

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public resetState()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 95
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->isWrongPIN:Z

    if-eqz v0, :cond_27

    .line 96
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, 0x10408f8

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->isWrongPIN:Z

    .line 102
    :goto_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 103
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 106
    :cond_21
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 107
    return-void

    .line 99
    :cond_27
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, 0x10408f2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_10
.end method

.method public showUsabilityHint()V
    .registers 1

    .prologue
    .line 162
    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    .line 174
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "entry":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v2}, Lcom/android/internal/widget/LockPatternUtils;->checkPcwPassword(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 176
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_pcw_enabled"

    const-string v8, "10"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 179
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_pcw_enabled"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 181
    .local v5, "state":Ljava/lang/String;
    const-string v6, "KeyguardFMMView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pcw state=: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.UNLOCK_FFM_ALERT"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v3, "intent":Landroid/content/Intent;
    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 185
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 186
    const-string v6, "KeyguardFMMView"

    const-string v7, "send Broadcast (android.intent.action.UNLOCK_FFM_ALERT)"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 189
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v6, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 214
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "state":Ljava/lang/String;
    :goto_66
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    return-void

    .line 190
    :cond_6e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-le v6, v7, :cond_af

    .line 193
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->reportFailedUnlockAttempt()V

    .line 195
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v4

    .line 196
    .local v4, "lDeviceDisableForMaxFailedAttempt":Z
    if-nez v4, :cond_ab

    .line 197
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->getFailedAttempts()I

    move-result v6

    rem-int/lit8 v6, v6, 0x5

    if-nez v6, :cond_a1

    .line 199
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    .line 200
    .local v0, "deadline":J
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->handleAttemptLockout(J)V

    .line 202
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.PATTERN_LOCK_FAIL"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 205
    .end local v0    # "deadline":J
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_a1
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->getWrongPasswordStringId()I

    move-result v7

    invoke-interface {v6, v7, v9}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_66

    .line 207
    :cond_ab
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->disableDevicePermanently()V

    goto :goto_66

    .line 212
    .end local v4    # "lDeviceDisableForMaxFailedAttempt":Z
    :cond_af
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardFMMView;->getWrongPasswordStringId()I

    move-result v7

    invoke-interface {v6, v7, v9}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_66
.end method
