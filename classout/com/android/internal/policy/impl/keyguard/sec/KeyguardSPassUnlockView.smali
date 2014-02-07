.class public Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;
.super Landroid/widget/LinearLayout;
.source "KeyguardSPassUnlockView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "KeyguardSPassUnlockView"


# instance fields
.field private mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private mCancelButton:Landroid/widget/Button;

.field private mEcaView:Landroid/view/View;

.field private mEmergencyButton:Landroid/widget/Button;

.field private mEmergencyCircleText:Landroid/widget/TextView;

.field private mEmergencyCircleView:Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;

.field private mIsShowing:Z

.field private final mIsShowingLock:Ljava/lang/Object;

.field private mKeyguardSecurityCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mRootLayout:Landroid/widget/FrameLayout;

.field private mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

.field private mStatusTextView:Landroid/widget/TextView;

.field private mUnlockImg:Landroid/widget/ImageView;

.field mUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mIsShowing:Z

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mIsShowingLock:Ljava/lang/Object;

    .line 230
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyCircleView:Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mRootLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyCircleText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mIsShowingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mIsShowing:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mIsShowing:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->maybeStartBiometricUnlock()V

    return-void
.end method

.method private maybeStartBiometricUnlock()V
    .registers 6

    .prologue
    .line 201
    const-string v3, "KeyguardSPassUnlockView"

    const-string v4, "maybeStartBiometricUnlock()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    if-eqz v3, :cond_2e

    .line 203
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    .line 204
    .local v1, "monitor":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 208
    .local v2, "powerManager":Landroid/os/PowerManager;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mIsShowingLock:Ljava/lang/Object;

    monitor-enter v4

    .line 209
    :try_start_1e
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mIsShowing:Z

    .line 210
    .local v0, "isShowing":Z
    monitor-exit v4
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_2f

    .line 215
    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_29

    if-nez v0, :cond_32

    .line 216
    :cond_29
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;->stop()Z

    .line 228
    .end local v0    # "isShowing":Z
    .end local v1    # "monitor":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .end local v2    # "powerManager":Landroid/os/PowerManager;
    :cond_2e
    :goto_2e
    return-void

    .line 210
    .restart local v1    # "monitor":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .restart local v2    # "powerManager":Landroid/os/PowerManager;
    :catchall_2f
    move-exception v3

    :try_start_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v3

    .line 222
    .restart local v0    # "isShowing":Z
    :cond_32
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v3

    if-nez v3, :cond_3e

    .line 223
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;->start()Z

    goto :goto_2e

    .line 225
    :cond_3e
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;->stopAndShowBackup()V

    goto :goto_2e
.end method


# virtual methods
.method public cleanUp()V
    .registers 4

    .prologue
    .line 166
    const-string v0, "KeyguardSPassUnlockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanup() called on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void
.end method

.method public getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSecurityCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public hideBouncer(I)V
    .registers 5
    .param p1, "duration"    # I

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 287
    return-void
.end method

.method public initializeSPassUnlockView()V
    .registers 4

    .prologue
    .line 177
    const-string v0, "KeyguardSPassUnlockView"

    const-string v1, "initializeSPassUnlockView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    .line 181
    const v0, 0x10203d0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mCancelButton:Landroid/widget/Button;

    .line 182
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    const v0, 0x10203cf

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mStatusTextView:Landroid/widget/TextView;

    .line 190
    const v0, 0x10203d1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mUnlockImg:Landroid/widget/ImageView;

    .line 192
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mStatusTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mUnlockImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->initializeViews(Landroid/view/View;Landroid/view/View;)V

    .line 193
    return-void
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 291
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 136
    const-string v0, "KeyguardSPassUnlockView"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    if-eqz v0, :cond_10

    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;->cleanUp()V

    .line 140
    :cond_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 141
    return-void
.end method

.method protected onFinishInflate()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 74
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 75
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v1, :cond_83

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    :goto_f
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 78
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->initializeSPassUnlockView()V

    .line 80
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    .line 81
    const v1, 0x1020359

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mEcaView:Landroid/view/View;

    .line 82
    const v1, 0x1020357

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, "bouncerFrameView":Landroid/view/View;
    if-eqz v0, :cond_33

    .line 84
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 88
    :cond_33
    const v1, 0x10202a1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mRootLayout:Landroid/widget/FrameLayout;

    .line 89
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mRootLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_82

    .line 90
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v1

    if-eqz v1, :cond_86

    .line 91
    const v1, 0x10202a0

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyCircleText:Landroid/widget/TextView;

    .line 92
    const v1, 0x1020366

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyButton:Landroid/widget/Button;

    .line 93
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyCircleText:Landroid/widget/TextView;

    if-eqz v1, :cond_82

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyButton:Landroid/widget/Button;

    if-eqz v1, :cond_82

    .line 94
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyCircleView:Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;

    .line 95
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mRootLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyCircleView:Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;

    invoke-virtual {v1, v2, v3, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 96
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyCircleText:Landroid/widget/TextView;

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 107
    :cond_82
    :goto_82
    return-void

    .line 75
    .end local v0    # "bouncerFrameView":Landroid/view/View;
    :cond_83
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    goto :goto_f

    .line 104
    .restart local v0    # "bouncerFrameView":Landroid/view/View;
    :cond_86
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mRootLayout:Landroid/widget/FrameLayout;

    goto :goto_82
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 145
    const-string v0, "KeyguardSPassUnlockView"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    if-eqz v0, :cond_10

    .line 147
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;->stop()Z

    .line 149
    :cond_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 150
    return-void
.end method

.method public onResume(I)V
    .registers 4
    .param p1, "reason"    # I

    .prologue
    .line 154
    const-string v0, "KeyguardSPassUnlockView"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mIsShowing:Z

    .line 156
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->maybeStartBiometricUnlock()V

    .line 157
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 158
    return-void
.end method

.method public reset()V
    .registers 4

    .prologue
    .line 123
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mRootLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_26

    .line 124
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyCircleText:Landroid/widget/TextView;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyButton:Landroid/widget/Button;

    if-eqz v1, :cond_26

    .line 125
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    .line 126
    .local v0, "phoneState":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_26

    .line 127
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyCircleText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 132
    .end local v0    # "phoneState":I
    :cond_26
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSecurityCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 112
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/SPassUnlock;->setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V

    .line 113
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 2
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 118
    return-void
.end method

.method public showBouncer(I)V
    .registers 5
    .param p1, "duration"    # I

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSPassUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 281
    return-void
.end method

.method public showUsabilityHint()V
    .registers 1

    .prologue
    .line 275
    return-void
.end method
