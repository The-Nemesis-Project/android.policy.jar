.class public Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;
.super Landroid/widget/LinearLayout;
.source "KeyguardCarrierLockView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;


# static fields
.field static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "KeyguardCarrierLockView"

.field private static final TIMEOUT:I = 0x1


# instance fields
.field private final CARRIER_LOCK_DISABLED:Ljava/lang/String;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallButton:Landroid/view/View;

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private final mContext:Landroid/content/Context;

.field private mEcaView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPM:Landroid/os/PowerManager;

.field private mPhoneNumber:Ljava/lang/String;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakelockSequence:I

.field mtelephony:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    const-string v1, "0000"

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mPhoneNumber:Ljava/lang/String;

    .line 85
    const-string v1, "com.sec.android.CarrierLock.DISABLED"

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->CARRIER_LOCK_DISABLED:Ljava/lang/String;

    .line 89
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 100
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 237
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mHandler:Landroid/os/Handler;

    .line 119
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mContext:Landroid/content/Context;

    .line 120
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mPM:Landroid/os/PowerManager;

    .line 121
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mPM:Landroid/os/PowerManager;

    const v2, 0x1000001a

    const-string v3, "keyguard"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 123
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 125
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 126
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.CarrierLock.DISABLED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 128
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mtelephony:Landroid/telephony/TelephonyManager;

    .line 129
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mtelephony:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mCallButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->handleTimeout(I)V

    return-void
.end method

.method private handleTimeout(I)V
    .registers 4
    .param p1, "seq"    # I

    .prologue
    .line 249
    monitor-enter p0

    .line 250
    :try_start_1
    const-string v0, "KeyguardCarrierLockView"

    const-string v1, "handleTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mWakelockSequence:I

    if-ne p1, v0, :cond_11

    .line 252
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 254
    :cond_11
    monitor-exit p0

    .line 255
    return-void

    .line 254
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method


# virtual methods
.method public getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public hideBouncer(I)V
    .registers 5
    .param p1, "duration"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 223
    return-void
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    .prologue
    .line 201
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 202
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mtelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_16

    .line 203
    const-string v0, "KeyguardCarrierLockView"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mtelephony:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 206
    :cond_16
    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    .line 148
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 150
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    .line 151
    const v1, 0x1020359

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mEcaView:Landroid/view/View;

    .line 152
    const v1, 0x1020357

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 153
    .local v0, "bouncerFrameView":Landroid/view/View;
    if-eqz v0, :cond_22

    .line 154
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 156
    :cond_22
    const v1, 0x1020358

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mCallButton:Landroid/view/View;

    .line 157
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mtelephony:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mCallButton:Landroid/view/View;

    if-eqz v1, :cond_45

    .line 158
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mtelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v1

    if-nez v1, :cond_46

    .line 159
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mCallButton:Landroid/view/View;

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    :cond_45
    :goto_45
    return-void

    .line 169
    :cond_46
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mCallButton:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_45
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 197
    :cond_11
    return-void
.end method

.method public onResume(I)V
    .registers 2
    .param p1, "reason"    # I

    .prologue
    .line 190
    return-void
.end method

.method public pokeWakelock(I)V
    .registers 7
    .param p1, "holdMs"    # I

    .prologue
    .line 227
    monitor-enter p0

    .line 228
    :try_start_1
    const-string v1, "KeyguardCarrierLockView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pokeWakelock("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 230
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 231
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mWakelockSequence:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mWakelockSequence:I

    .line 232
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mWakelockSequence:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 233
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 234
    monitor-exit p0

    .line 235
    return-void

    .line 234
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_42
    move-exception v1

    monitor-exit p0
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public reset()V
    .registers 1

    .prologue
    .line 176
    return-void
.end method

.method public resetState()V
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 142
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 144
    :cond_11
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 134
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 2
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 138
    return-void
.end method

.method public showBouncer(I)V
    .registers 5
    .param p1, "duration"    # I

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardCarrierLockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 217
    return-void
.end method

.method public showUsabilityHint()V
    .registers 1

    .prologue
    .line 180
    return-void
.end method
