.class public Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;
.super Landroid/widget/LinearLayout;
.source "KeyguardFaceVoiceUnlockView.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "FULKeyguardFaceUnlockView"


# instance fields
.field private final MSG_HIDE_VOICE_LAYOUT:I

.field private final MSG_SHOW_VOICE_LAYOUT:I

.field private final MSG_SHOW_VOICE_LAYOUT_ERROR_MSG:I

.field private final MSG_SHOW_VOICE_LAYOUT_RECOGNITION_MSG:I

.field private final MSG_SHOW_VOICE_LAYOUT_SUCCESS_MSG:I

.field private final MSG_VOICE_LAYOUT_VOLUME_UPDATE:I

.field private mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private mCancelButton:Landroid/widget/ImageButton;

.field private mEcaView:Landroid/view/View;

.field private mEmergencyButton:Landroid/widget/Button;

.field private mEmergencyCircleText:Landroid/widget/TextView;

.field private mEmergencyCircleView:Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;

.field private mErrorShowed:Z

.field private mFaceUnlockAreaView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mIsShowing:Z

.field private final mIsShowingLock:Ljava/lang/Object;

.field private mKeyguardSecurityCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mLastRotation:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMainView:Landroid/widget/RelativeLayout;

.field private mMsg:Landroid/widget/TextView;

.field private mMsg2:Landroid/widget/TextView;

.field private mResId:I

.field private mRootLayout:Landroid/widget/FrameLayout;

.field private final mRotationWatcher:Landroid/view/IRotationWatcher;

.field private mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

.field private mStatusImg:Landroid/widget/ImageView;

.field mUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field mVoiceUnlockViewCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;

.field private mVolumeImg:Landroid/widget/ImageView;

.field private mWatchingRotation:Z

.field private final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 114
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mIsShowing:Z

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mIsShowingLock:Ljava/lang/Object;

    .line 68
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mResId:I

    .line 70
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mErrorShowed:Z

    .line 73
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->MSG_SHOW_VOICE_LAYOUT:I

    .line 74
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->MSG_SHOW_VOICE_LAYOUT_RECOGNITION_MSG:I

    .line 75
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->MSG_SHOW_VOICE_LAYOUT_ERROR_MSG:I

    .line 76
    const/16 v0, 0xd

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->MSG_SHOW_VOICE_LAYOUT_SUCCESS_MSG:I

    .line 77
    const/16 v0, 0xe

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->MSG_HIDE_VOICE_LAYOUT:I

    .line 78
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->MSG_VOICE_LAYOUT_VOLUME_UPDATE:I

    .line 88
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mWindowManager:Landroid/view/IWindowManager;

    .line 91
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mRotationWatcher:Landroid/view/IRotationWatcher;

    .line 240
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mVoiceUnlockViewCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;

    .line 482
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$5;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 116
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mHandler:Landroid/os/Handler;

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    .prologue
    .line 48
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mLastRotation:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mLastRotation:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mRootLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyCircleText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mIsShowingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mIsShowing:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mIsShowing:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->maybeStartBiometricUnlock()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->displayPrepareMsg()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;J)V
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;
    .param p1, "x1"    # J

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->displayRecognitionMsg(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;J)V
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;
    .param p1, "x1"    # J

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->displayVerifyFailMsgDelayed(J)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->displayVerifyFailMsg()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->displayVerifySuccessMsg()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->hideVoiceLayout()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyCircleView:Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;

    return-object v0
.end method

.method private displayPrepareMsg()V
    .registers 3

    .prologue
    .line 163
    const-string v0, "FULKeyguardFaceUnlockView"

    const-string v1, "displayPrepareMsg()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->removeWakeupCmdDisplayMessages()V

    .line 166
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 167
    return-void
.end method

.method private displayRecognitionMsg(J)V
    .registers 5
    .param p1, "millis"    # J

    .prologue
    .line 171
    const-string v0, "FULKeyguardFaceUnlockView"

    const-string v1, "displayRecognitionMsg()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->removeWakeupCmdDisplayMessages()V

    .line 174
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 175
    return-void
.end method

.method private displayVerifyFailMsg()V
    .registers 5

    .prologue
    .line 189
    const-string v0, "FULKeyguardFaceUnlockView"

    const-string v1, "displayVerifyFailMsg()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->removeWakeupCmdDisplayMessages()V

    .line 193
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 194
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 195
    return-void
.end method

.method private displayVerifyFailMsgDelayed(J)V
    .registers 6
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 179
    const-string v0, "FULKeyguardFaceUnlockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayVerifyFailMsgDelayed("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->removeWakeupCmdDisplayMessages()V

    .line 183
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 185
    return-void
.end method

.method private displayVerifySuccessMsg()V
    .registers 3

    .prologue
    .line 199
    const-string v0, "FULKeyguardFaceUnlockView"

    const-string v1, "displayVerifySuccessMsg()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->removeWakeupCmdDisplayMessages()V

    .line 203
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 204
    return-void
.end method

.method private hideVoiceLayout()V
    .registers 3

    .prologue
    .line 208
    const-string v0, "FULKeyguardFaceUnlockView"

    const-string v1, "hideVoiceLayout()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->removeWakeupCmdDisplayMessages()V

    .line 212
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 213
    return-void
.end method

.method private initializeBiometricUnlockView()V
    .registers 4

    .prologue
    .line 419
    const-string v0, "FULKeyguardFaceUnlockView"

    const-string v1, "initializeBiometricUnlockView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const v0, 0x102036a

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mFaceUnlockAreaView:Landroid/view/View;

    .line 421
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mFaceUnlockAreaView:Landroid/view/View;

    if-eqz v0, :cond_35

    .line 422
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mVoiceUnlockViewCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    .line 424
    const v0, 0x102036c

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mCancelButton:Landroid/widget/ImageButton;

    .line 425
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mCancelButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    :goto_34
    return-void

    .line 432
    :cond_35
    const-string v0, "FULKeyguardFaceUnlockView"

    const-string v1, "Couldn\'t find biometric unlock view"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34
.end method

.method private maybeStartBiometricUnlock()V
    .registers 7

    .prologue
    .line 442
    const-string v4, "FULKeyguardFaceUnlockView"

    const-string v5, "maybeStartBiometricUnlock()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    if-eqz v4, :cond_36

    .line 444
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    .line 445
    .local v2, "monitor":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_37

    const/4 v0, 0x1

    .line 448
    .local v0, "backupIsTimedOut":Z
    :goto_19
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 452
    .local v3, "powerManager":Landroid/os/PowerManager;
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mIsShowingLock:Ljava/lang/Object;

    monitor-enter v5

    .line 453
    :try_start_26
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mIsShowing:Z

    .line 454
    .local v1, "isShowing":Z
    monitor-exit v5
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_39

    .line 459
    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_31

    if-nez v1, :cond_3c

    .line 460
    :cond_31
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;->stop()Z

    .line 480
    .end local v0    # "backupIsTimedOut":Z
    .end local v1    # "isShowing":Z
    .end local v2    # "monitor":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .end local v3    # "powerManager":Landroid/os/PowerManager;
    :cond_36
    :goto_36
    return-void

    .line 445
    .restart local v2    # "monitor":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    :cond_37
    const/4 v0, 0x0

    goto :goto_19

    .line 454
    .restart local v0    # "backupIsTimedOut":Z
    .restart local v3    # "powerManager":Landroid/os/PowerManager;
    :catchall_39
    move-exception v4

    :try_start_3a
    monitor-exit v5
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v4

    .line 471
    .restart local v1    # "isShowing":Z
    :cond_3c
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v4

    if-nez v4, :cond_56

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isAlternateUnlockEnabled()Z

    move-result v4

    if-eqz v4, :cond_56

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getMaxBiometricUnlockAttemptsReached()Z

    move-result v4

    if-nez v4, :cond_56

    if-nez v0, :cond_56

    .line 475
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;->start()Z

    goto :goto_36

    .line 477
    :cond_56
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;->stopAndShowBackup()V

    goto :goto_36
.end method

.method private removeWakeupCmdDisplayMessages()V
    .registers 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 155
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 156
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 157
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 158
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 159
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .registers 3

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mMainView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 653
    return-void
.end method

.method public getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .registers 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mKeyguardSecurityCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 123
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_36

    .line 146
    const-string v1, "FULKeyguardFaceUnlockView"

    const-string v2, "Unhandled message"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :goto_d
    return v0

    .line 125
    :pswitch_e
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mMainView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 126
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->setPrepareMsg()V

    .line 149
    :goto_16
    const/4 v0, 0x1

    goto :goto_d

    .line 130
    :pswitch_18
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mMainView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_16

    .line 133
    :pswitch_1f
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->setRecognitionMsg()V

    .line 134
    const-wide/16 v0, 0x1770

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->displayVerifyFailMsgDelayed(J)V

    goto :goto_16

    .line 137
    :pswitch_28
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->setErrorMsg()V

    goto :goto_16

    .line 140
    :pswitch_2c
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->setSuccessMsg()V

    goto :goto_16

    .line 143
    :pswitch_30
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->updateVolumeBg(I)V

    goto :goto_16

    .line 123
    :pswitch_data_36
    .packed-switch 0xa
        :pswitch_e
        :pswitch_1f
        :pswitch_28
        :pswitch_2c
        :pswitch_18
        :pswitch_30
    .end packed-switch
.end method

.method public hideBouncer(I)V
    .registers 5
    .param p1, "duration"    # I

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 559
    return-void
.end method

.method public isErrorShowed()Z
    .registers 2

    .prologue
    .line 648
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mErrorShowed:Z

    return v0
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 404
    const/4 v0, 0x0

    return v0
.end method

.method public onDetachedFromWindow()V
    .registers 4

    .prologue
    .line 348
    const-string v1, "FULKeyguardFaceUnlockView"

    const-string v2, "onDetachedFromWindow()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    if-eqz v1, :cond_17

    .line 350
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;->stop()Z

    .line 351
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->cleanUp()V

    .line 353
    :cond_17
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 354
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mWatchingRotation:Z

    if-eqz v1, :cond_30

    .line 356
    :try_start_26
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mRotationWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    .line 357
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mWatchingRotation:Z
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_30} :catch_31

    .line 362
    :cond_30
    :goto_30
    return-void

    .line 358
    :catch_31
    move-exception v0

    .line 359
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FULKeyguardFaceUnlockView"

    const-string v2, "Remote exception when removing rotation watcher"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30
.end method

.method protected onFinishInflate()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 285
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 287
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->initializeBiometricUnlockView()V

    .line 289
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    .line 290
    const v1, 0x1020359

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mEcaView:Landroid/view/View;

    .line 291
    const v1, 0x1020357

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 292
    .local v0, "bouncerFrameView":Landroid/view/View;
    if-eqz v0, :cond_26

    .line 293
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 296
    :cond_26
    const v1, 0x102036e

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mMainView:Landroid/widget/RelativeLayout;

    .line 297
    const v1, 0x102036f

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mMsg:Landroid/widget/TextView;

    .line 298
    const v1, 0x1020372

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mMsg2:Landroid/widget/TextView;

    .line 299
    const v1, 0x1020371

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mStatusImg:Landroid/widget/ImageView;

    .line 300
    const v1, 0x1020370

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mVolumeImg:Landroid/widget/ImageView;

    .line 303
    const v1, 0x10202a1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mRootLayout:Landroid/widget/FrameLayout;

    .line 304
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mRootLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_a4

    .line 305
    const v1, 0x10202a0

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyCircleText:Landroid/widget/TextView;

    .line 306
    const v1, 0x1020366

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyButton:Landroid/widget/Button;

    .line 307
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyCircleText:Landroid/widget/TextView;

    if-eqz v1, :cond_a4

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyButton:Landroid/widget/Button;

    if-eqz v1, :cond_a4

    .line 308
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyCircleView:Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;

    .line 309
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mRootLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyCircleView:Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;

    invoke-virtual {v1, v2, v3, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 310
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyCircleText:Landroid/widget/TextView;

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 318
    :cond_a4
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
    .line 414
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 415
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mFaceUnlockAreaView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;->initializeView(Landroid/view/View;)V

    .line 416
    return-void
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 366
    const-string v1, "FULKeyguardFaceUnlockView"

    const-string v2, "onPause()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    if-eqz v1, :cond_10

    .line 368
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;->stop()Z

    .line 370
    :cond_10
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 371
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mWatchingRotation:Z

    if-eqz v1, :cond_29

    .line 373
    :try_start_1f
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mRotationWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    .line 374
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mWatchingRotation:Z
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_29} :catch_2a

    .line 379
    :cond_29
    :goto_29
    return-void

    .line 375
    :catch_2a
    move-exception v0

    .line 376
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FULKeyguardFaceUnlockView"

    const-string v2, "Remote exception when removing rotation watcher"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.method public onResume(I)V
    .registers 5
    .param p1, "reason"    # I

    .prologue
    .line 383
    const-string v1, "FULKeyguardFaceUnlockView"

    const-string v2, "onResume()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mIsShowing:Z

    .line 385
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSwitchingUser()Z

    move-result v1

    if-nez v1, :cond_22

    .line 386
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->maybeStartBiometricUnlock()V

    .line 388
    :cond_22
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 392
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mWatchingRotation:Z

    if-nez v1, :cond_3e

    .line 394
    :try_start_31
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mRotationWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mLastRotation:I

    .line 395
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mWatchingRotation:Z
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3e} :catch_3f

    .line 400
    :cond_3e
    :goto_3e
    return-void

    .line 396
    :catch_3f
    move-exception v0

    .line 397
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FULKeyguardFaceUnlockView"

    const-string v2, "Remote exception when adding rotation watcher"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e
.end method

.method public reset()V
    .registers 4

    .prologue
    .line 335
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mRootLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_26

    .line 336
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyCircleText:Landroid/widget/TextView;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyButton:Landroid/widget/Button;

    if-eqz v1, :cond_26

    .line 337
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    .line 338
    .local v0, "phoneState":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_26

    .line 339
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyCircleText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 340
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mEmergencyButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 344
    .end local v0    # "phoneState":I
    :cond_26
    return-void
.end method

.method public setErrorMsg()V
    .registers 3

    .prologue
    .line 578
    const-string v0, "FULKeyguardFaceUnlockView"

    const-string v1, "setErrorMsg() mErrorShowed=true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mErrorShowed:Z

    .line 580
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mMsg2:Landroid/widget/TextView;

    const v1, 0x104087b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 581
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mMsg2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 582
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mStatusImg:Landroid/widget/ImageView;

    const v1, 0x10804f1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 584
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mKeyguardSecurityCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 324
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/FaceVoiceUnlock;->setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V

    .line 325
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 2
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 330
    return-void
.end method

.method public setPrepareMsg()V
    .registers 3

    .prologue
    .line 562
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mErrorShowed:Z

    .line 563
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mMsg:Landroid/widget/TextView;

    const v1, 0x104087a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 564
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mMsg:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 565
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mMsg2:Landroid/widget/TextView;

    const v1, 0x104087e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 566
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mMsg2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 567
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mStatusImg:Landroid/widget/ImageView;

    const v1, 0x10804ef

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 569
    return-void
.end method

.method public setRecognitionMsg()V
    .registers 3

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mMsg:Landroid/widget/TextView;

    const v1, 0x104087a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 573
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mMsg:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 574
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mStatusImg:Landroid/widget/ImageView;

    const v1, 0x10804ef

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 575
    return-void
.end method

.method public setSuccessMsg()V
    .registers 3

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mMsg2:Landroid/widget/TextView;

    const v1, 0x104087d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 588
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mMsg2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 589
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mStatusImg:Landroid/widget/ImageView;

    const v1, 0x10804f0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 590
    return-void
.end method

.method public showBouncer(I)V
    .registers 5
    .param p1, "duration"    # I

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 553
    return-void
.end method

.method public showUsabilityHint()V
    .registers 1

    .prologue
    .line 547
    return-void
.end method

.method public updateVolume(I)V
    .registers 6
    .param p1, "volume"    # I

    .prologue
    .line 217
    const-string v1, "FULKeyguardFaceUnlockView"

    const-string v2, "updateVolume()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 219
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 220
    return-void
.end method

.method public updateVolumeBg(I)V
    .registers 6
    .param p1, "rmsValue"    # I

    .prologue
    .line 593
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mResId:I

    if-eq v1, p1, :cond_34

    .line 594
    const-string v1, "FULKeyguardFaceUnlockView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateVolumeBg("

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

    .line 597
    const/4 v0, 0x0

    .line 598
    .local v0, "img":I
    const/16 v1, 0x1c

    if-ge p1, v1, :cond_35

    .line 599
    const v0, 0x10804f3

    .line 642
    :goto_2a
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mVolumeImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 643
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceVoiceUnlockView;->mVolumeImg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->postInvalidate()V

    .line 645
    .end local v0    # "img":I
    :cond_34
    return-void

    .line 600
    .restart local v0    # "img":I
    :cond_35
    const/16 v1, 0x1f

    if-ge p1, v1, :cond_3d

    .line 601
    const v0, 0x10804f4

    goto :goto_2a

    .line 602
    :cond_3d
    const/16 v1, 0x22

    if-ge p1, v1, :cond_45

    .line 603
    const v0, 0x10804ff

    goto :goto_2a

    .line 604
    :cond_45
    const/16 v1, 0x25

    if-ge p1, v1, :cond_4d

    .line 605
    const v0, 0x1080501

    goto :goto_2a

    .line 606
    :cond_4d
    const/16 v1, 0x28

    if-ge p1, v1, :cond_55

    .line 607
    const v0, 0x1080502

    goto :goto_2a

    .line 608
    :cond_55
    const/16 v1, 0x2b

    if-ge p1, v1, :cond_5d

    .line 609
    const v0, 0x1080503

    goto :goto_2a

    .line 610
    :cond_5d
    const/16 v1, 0x2e

    if-ge p1, v1, :cond_65

    .line 611
    const v0, 0x1080504

    goto :goto_2a

    .line 612
    :cond_65
    const/16 v1, 0x31

    if-ge p1, v1, :cond_6d

    .line 613
    const v0, 0x1080505

    goto :goto_2a

    .line 614
    :cond_6d
    const/16 v1, 0x34

    if-ge p1, v1, :cond_75

    .line 615
    const v0, 0x1080506

    goto :goto_2a

    .line 616
    :cond_75
    const/16 v1, 0x37

    if-ge p1, v1, :cond_7d

    .line 617
    const v0, 0x1080507

    goto :goto_2a

    .line 618
    :cond_7d
    const/16 v1, 0x3a

    if-ge p1, v1, :cond_85

    .line 619
    const v0, 0x10804f5

    goto :goto_2a

    .line 620
    :cond_85
    const/16 v1, 0x3d

    if-ge p1, v1, :cond_8d

    .line 621
    const v0, 0x10804f6

    goto :goto_2a

    .line 622
    :cond_8d
    const/16 v1, 0x40

    if-ge p1, v1, :cond_95

    .line 623
    const v0, 0x10804f7

    goto :goto_2a

    .line 624
    :cond_95
    const/16 v1, 0x43

    if-ge p1, v1, :cond_9d

    .line 625
    const v0, 0x10804f8

    goto :goto_2a

    .line 626
    :cond_9d
    const/16 v1, 0x46

    if-ge p1, v1, :cond_a5

    .line 627
    const v0, 0x10804f9

    goto :goto_2a

    .line 628
    :cond_a5
    const/16 v1, 0x49

    if-ge p1, v1, :cond_ae

    .line 629
    const v0, 0x10804fa

    goto/16 :goto_2a

    .line 630
    :cond_ae
    const/16 v1, 0x4c

    if-ge p1, v1, :cond_b7

    .line 631
    const v0, 0x10804fb

    goto/16 :goto_2a

    .line 632
    :cond_b7
    const/16 v1, 0x4f

    if-ge p1, v1, :cond_c0

    .line 633
    const v0, 0x10804fc

    goto/16 :goto_2a

    .line 634
    :cond_c0
    const/16 v1, 0x52

    if-ge p1, v1, :cond_c9

    .line 635
    const v0, 0x10804fd

    goto/16 :goto_2a

    .line 636
    :cond_c9
    const/16 v1, 0x55

    if-ge p1, v1, :cond_d2

    .line 637
    const v0, 0x10804fe

    goto/16 :goto_2a

    .line 639
    :cond_d2
    const v0, 0x1080500

    goto/16 :goto_2a
.end method
