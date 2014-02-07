.class public Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;
.super Landroid/widget/LinearLayout;
.source "KeyguardFaceUnlockView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FULKeyguardFaceUnlockView"


# instance fields
.field private mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private mCancelButton:Landroid/widget/ImageButton;

.field private mEcaView:Landroid/view/View;

.field private mEmergencyButton:Landroid/widget/Button;

.field private mEmergencyCircleText:Landroid/widget/TextView;

.field private mEmergencyCircleView:Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;

.field private mFaceUnlockAreaView:Landroid/view/View;

.field private mIsShowing:Z

.field private final mIsShowingLock:Ljava/lang/Object;

.field private mKeyguardSecurityCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mLastRotation:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mRootLayout:Landroid/widget/FrameLayout;

.field private final mRotationWatcher:Landroid/view/IRotationWatcher;

.field private mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

.field mUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mWatchingRotation:Z

.field private final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mIsShowing:Z

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mIsShowingLock:Ljava/lang/Object;

    .line 63
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mWindowManager:Landroid/view/IWindowManager;

    .line 66
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mRotationWatcher:Landroid/view/IRotationWatcher;

    .line 284
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;

    .prologue
    .line 45
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mLastRotation:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mLastRotation:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;)Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->maybeStartBiometricUnlock()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;)Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mEmergencyCircleView:Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mRootLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mEmergencyCircleText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mEmergencyButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mIsShowingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mIsShowing:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mIsShowing:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initializeBiometricUnlockView()V
    .registers 3

    .prologue
    .line 222
    const v0, 0x102036a

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mFaceUnlockAreaView:Landroid/view/View;

    .line 223
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mFaceUnlockAreaView:Landroid/view/View;

    if-eqz v0, :cond_2c

    .line 224
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    .line 226
    const v0, 0x102036c

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mCancelButton:Landroid/widget/ImageButton;

    .line 227
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mCancelButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    :goto_2b
    return-void

    .line 234
    :cond_2c
    const-string v0, "FULKeyguardFaceUnlockView"

    const-string v1, "Couldn\'t find biometric unlock view"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b
.end method

.method private maybeStartBiometricUnlock()V
    .registers 7

    .prologue
    .line 245
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    if-eqz v4, :cond_2f

    .line 246
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    .line 247
    .local v2, "monitor":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_30

    const/4 v0, 0x1

    .line 250
    .local v0, "backupIsTimedOut":Z
    :goto_12
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 254
    .local v3, "powerManager":Landroid/os/PowerManager;
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mIsShowingLock:Ljava/lang/Object;

    monitor-enter v5

    .line 255
    :try_start_1f
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mIsShowing:Z

    .line 256
    .local v1, "isShowing":Z
    monitor-exit v5
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_32

    .line 261
    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_2a

    if-nez v1, :cond_35

    .line 262
    :cond_2a
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;->stop()Z

    .line 282
    .end local v0    # "backupIsTimedOut":Z
    .end local v1    # "isShowing":Z
    .end local v2    # "monitor":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .end local v3    # "powerManager":Landroid/os/PowerManager;
    :cond_2f
    :goto_2f
    return-void

    .line 247
    .restart local v2    # "monitor":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    :cond_30
    const/4 v0, 0x0

    goto :goto_12

    .line 256
    .restart local v0    # "backupIsTimedOut":Z
    .restart local v3    # "powerManager":Landroid/os/PowerManager;
    :catchall_32
    move-exception v4

    :try_start_33
    monitor-exit v5
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v4

    .line 273
    .restart local v1    # "isShowing":Z
    :cond_35
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v4

    if-nez v4, :cond_4f

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isAlternateUnlockEnabled()Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getMaxBiometricUnlockAttemptsReached()Z

    move-result v4

    if-nez v4, :cond_4f

    if-nez v0, :cond_4f

    .line 277
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;->start()Z

    goto :goto_2f

    .line 279
    :cond_4f
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;->stopAndShowBackup()V

    goto :goto_2f
.end method


# virtual methods
.method public getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mKeyguardSecurityCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public hideBouncer(I)V
    .registers 5
    .param p1, "duration"    # I

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 361
    return-void
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public onDetachedFromWindow()V
    .registers 4

    .prologue
    .line 152
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    if-eqz v1, :cond_9

    .line 153
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;->stop()Z

    .line 155
    :cond_9
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 156
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mWatchingRotation:Z

    if-eqz v1, :cond_22

    .line 158
    :try_start_18
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mRotationWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    .line 159
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mWatchingRotation:Z
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_22} :catch_23

    .line 164
    :cond_22
    :goto_22
    return-void

    .line 160
    :catch_23
    move-exception v0

    .line 161
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FULKeyguardFaceUnlockView"

    const-string v2, "Remote exception when removing rotation watcher"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method protected onFinishInflate()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 94
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 96
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->initializeBiometricUnlockView()V

    .line 98
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    .line 99
    const v1, 0x1020359

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mEcaView:Landroid/view/View;

    .line 100
    const v1, 0x1020357

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 101
    .local v0, "bouncerFrameView":Landroid/view/View;
    if-eqz v0, :cond_26

    .line 102
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 106
    :cond_26
    const v1, 0x10202a1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mRootLayout:Landroid/widget/FrameLayout;

    .line 107
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mRootLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_6d

    .line 108
    const v1, 0x10202a0

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mEmergencyCircleText:Landroid/widget/TextView;

    .line 109
    const v1, 0x1020366

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mEmergencyButton:Landroid/widget/Button;

    .line 110
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mEmergencyCircleText:Landroid/widget/TextView;

    if-eqz v1, :cond_6d

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mEmergencyButton:Landroid/widget/Button;

    if-eqz v1, :cond_6d

    .line 111
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mEmergencyCircleView:Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;

    .line 112
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mRootLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mEmergencyCircleView:Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;

    invoke-virtual {v1, v2, v3, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 113
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mEmergencyCircleText:Landroid/widget/TextView;

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 121
    :cond_6d
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 216
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 217
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mFaceUnlockAreaView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;->initializeView(Landroid/view/View;)V

    .line 218
    return-void
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 169
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    if-eqz v1, :cond_9

    .line 170
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;->stop()Z

    .line 172
    :cond_9
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 173
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mWatchingRotation:Z

    if-eqz v1, :cond_22

    .line 175
    :try_start_18
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mRotationWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    .line 176
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mWatchingRotation:Z
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_22} :catch_23

    .line 181
    :cond_22
    :goto_22
    return-void

    .line 177
    :catch_23
    move-exception v0

    .line 178
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FULKeyguardFaceUnlockView"

    const-string v2, "Remote exception when removing rotation watcher"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method public onResume(I)V
    .registers 5
    .param p1, "reason"    # I

    .prologue
    .line 186
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mIsShowing:Z

    .line 187
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSwitchingUser()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 188
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->maybeStartBiometricUnlock()V

    .line 190
    :cond_1b
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 194
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mWatchingRotation:Z

    if-nez v1, :cond_37

    .line 196
    :try_start_2a
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mRotationWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mLastRotation:I

    .line 197
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mWatchingRotation:Z
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_37} :catch_38

    .line 202
    :cond_37
    :goto_37
    return-void

    .line 198
    :catch_38
    move-exception v0

    .line 199
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FULKeyguardFaceUnlockView"

    const-string v2, "Remote exception when adding rotation watcher"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37
.end method

.method public reset()V
    .registers 4

    .prologue
    .line 138
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mRootLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_26

    .line 139
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mEmergencyCircleText:Landroid/widget/TextView;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mEmergencyButton:Landroid/widget/Button;

    if-eqz v1, :cond_26

    .line 140
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    .line 141
    .local v0, "phoneState":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_26

    .line 142
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mEmergencyCircleText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mEmergencyButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 147
    .end local v0    # "phoneState":I
    :cond_26
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mKeyguardSecurityCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 127
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/FaceUnlock;->setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V

    .line 128
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 2
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 133
    return-void
.end method

.method public showBouncer(I)V
    .registers 5
    .param p1, "duration"    # I

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 355
    return-void
.end method

.method public showUsabilityHint()V
    .registers 1

    .prologue
    .line 349
    return-void
.end method
