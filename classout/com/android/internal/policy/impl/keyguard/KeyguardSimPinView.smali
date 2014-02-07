.class public Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;
.source "KeyguardSimPinView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$CheckSimPin;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "KeyguardSimPinView"

.field private static final TIMEOUT:I = 0x1


# instance fields
.field private isWrongPIN:Z

.field private mHandler:Landroid/os/Handler;

.field private mMultisimIcon:Landroid/widget/ImageView;

.field private mPM:Landroid/os/PowerManager;

.field private mRemainingCount:I

.field private mRemainingCountTextView:Landroid/widget/TextView;

.field private volatile mSimCheckInProgress:Z

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakelockSequence:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 74
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->isWrongPIN:Z

    .line 75
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mRemainingCount:I

    .line 326
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mHandler:Landroid/os/Handler;

    .line 92
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mPM:Landroid/os/PowerManager;

    .line 93
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mPM:Landroid/os/PowerManager;

    const v1, 0x1000001a

    const-string v2, "keyguard"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 95
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 96
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mRemainingCount:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->getSimPinRetry()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;)Landroid/app/ProgressDialog;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->isWrongPIN:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimCheckInProgress:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->handleTimeout(I)V

    return-void
.end method

.method private getSimPinRetry()I
    .registers 5

    .prologue
    .line 347
    const/4 v0, 0x0

    .line 349
    .local v0, "result":I
    :try_start_1
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 350
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getSimPinRetry()I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_33

    move-result v0

    .line 357
    :goto_b
    const-string v1, "KeyguardSimPinView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimPinRetry(): # of remaining count is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return v0

    .line 352
    :cond_24
    :try_start_24
    const-string v1, "phoneext"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephonyExt;->getSimPinRetry()I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_31} :catch_33

    move-result v0

    goto :goto_b

    .line 355
    :catch_33
    move-exception v1

    goto :goto_b
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .registers 4

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_38

    .line 244
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 245
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    const v2, 0x10408f7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 248
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 249
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_38

    .line 250
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 254
    :cond_38
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private handleTimeout(I)V
    .registers 3
    .param p1, "seq"    # I

    .prologue
    .line 338
    monitor-enter p0

    .line 340
    :try_start_1
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mWakelockSequence:I

    if-ne p1, v0, :cond_a

    .line 341
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 343
    :cond_a
    monitor-exit p0

    .line 344
    return-void

    .line 343
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .registers 2

    .prologue
    .line 113
    const v0, 0x1020383

    return v0
.end method

.method protected onFinishInflate()V
    .registers 8

    .prologue
    const v6, 0x10803ec

    const/4 v5, 0x1

    .line 118
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    .line 120
    const v3, 0x10203c8

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mRemainingCountTextView:Landroid/widget/TextView;

    .line 122
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 123
    const v3, 0x10203c7

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mMultisimIcon:Landroid/widget/ImageView;

    .line 124
    const-string v3, "ril.MSIMM"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "mSimMode":Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8b

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getSIMCount()I

    move-result v3

    if-ne v3, v5, :cond_8b

    .line 126
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mMultisimIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    .end local v0    # "mSimMode":Ljava/lang/String;
    :cond_3e
    :goto_3e
    const v3, 0x102038f

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 135
    .local v1, "ok":Landroid/view/View;
    if-eqz v1, :cond_4f

    .line 136
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    :cond_4f
    const v3, 0x1020384

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 149
    .local v2, "pinDelete":Landroid/view/View;
    if-eqz v2, :cond_6c

    .line 150
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 151
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 169
    :cond_6c
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->getSimPinRetry()I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mRemainingCount:I

    .line 171
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 172
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setInputType(I)V

    .line 175
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->requestFocus()Z

    .line 177
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->updateRetryCount()V

    .line 178
    return-void

    .line 127
    .end local v1    # "ok":Landroid/view/View;
    .end local v2    # "pinDelete":Landroid/view/View;
    .restart local v0    # "mSimMode":Ljava/lang/String;
    :cond_8b
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getCurrentPinLockSlot()I

    move-result v3

    if-nez v3, :cond_9a

    .line 128
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mMultisimIcon:Landroid/widget/ImageView;

    const v4, 0x10803eb

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3e

    .line 129
    :cond_9a
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getCurrentPinLockSlot()I

    move-result v3

    if-ne v3, v5, :cond_3e

    .line 130
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mMultisimIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3e
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_c

    .line 188
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 191
    :cond_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 192
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 194
    :cond_1d
    return-void
.end method

.method public pokeWakelock(I)V
    .registers 7
    .param p1, "holdMs"    # I

    .prologue
    .line 316
    monitor-enter p0

    .line 318
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 319
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 320
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mWakelockSequence:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mWakelockSequence:I

    .line 321
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mWakelockSequence:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 322
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 323
    monitor-exit p0

    .line 324
    return-void

    .line 323
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

    .line 99
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->isWrongPIN:Z

    if-eqz v0, :cond_27

    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, 0x10408f8

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->isWrongPIN:Z

    .line 105
    :goto_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 107
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 109
    :cond_26
    return-void

    .line 103
    :cond_27
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, 0x10408f1

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_10
.end method

.method public showUsabilityHint()V
    .registers 1

    .prologue
    .line 182
    return-void
.end method

.method public updateRetryCount()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 362
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mRemainingCount:I

    if-ne v0, v3, :cond_21

    .line 363
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mRemainingCountTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040818

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mRemainingCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    :goto_20
    return-void

    .line 366
    :cond_21
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mRemainingCountTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040819

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mRemainingCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_20
.end method

.method protected verifyPasswordAndUnlock()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 259
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "entry":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_29

    .line 263
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v2, 0x10408f9

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 264
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 312
    :cond_28
    :goto_28
    return-void

    .line 269
    :cond_29
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 270
    const v1, 0xea60

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->pokeWakelock(I)V

    .line 272
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimCheckInProgress:Z

    if-nez v1, :cond_28

    .line 273
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimCheckInProgress:Z

    .line 274
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4;->start()V

    goto :goto_28
.end method
