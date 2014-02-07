.class public Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;
.super Landroid/widget/FrameLayout;
.source "KeyguardSignatureView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;,
        Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final DBG_TOUCH:Z

.field private static final MAX_SIGNATURE_ATTEMPTS:I = 0x5

.field private static final REGISTRED_SIGNATURE_NUM:I = 0x3

.field private static final TAG:Ljava/lang/String; = "KeyguardSignatureView"

.field private static mState:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;


# instance fields
.field private mBackupPIN:Landroid/widget/ImageButton;

.field private mBoundToSignService:Z

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mEcaView:Landroid/view/View;

.field private mEmergencyButton:Landroid/widget/Button;

.field private mEmergencyCircleText:Landroid/widget/TextView;

.field private mEmergencyCircleView:Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;

.field private mEngineStarted:Z

.field private mFailedAttempts:I

.field private mGuideText:Ljava/lang/String;

.field private mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mRootLayout:Landroid/widget/FrameLayout;

.field private mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mSignService:Lcom/android/internal/policy/ISignServiceInterface;

.field private final mSignServiceRunningLock:Ljava/lang/Object;

.field private mSignView:Lcom/android/internal/widget/SignView;

.field mUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mVerificationLevel:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 62
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_14

    move v0, v1

    :goto_9
    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->DBG:Z

    .line 63
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_16

    :goto_11
    sput-boolean v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->DBG_TOUCH:Z

    return-void

    :cond_14
    move v0, v2

    .line 62
    goto :goto_9

    :cond_16
    move v1, v2

    .line 63
    goto :goto_11
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mBoundToSignService:Z

    .line 86
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mEngineStarted:Z

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignServiceRunningLock:Ljava/lang/Object;

    .line 322
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 369
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$5;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 111
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mFailedAttempts:I

    .line 113
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 114
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mEmergencyCircleView:Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mEmergencyButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1100()Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mState:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;

    .prologue
    .line 60
    sput-object p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mState:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;

    return-object p0
.end method

.method static synthetic access$1200()Z
    .registers 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->DBG_TOUCH:Z

    return v0
.end method

.method static synthetic access$1300()Z
    .registers 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->DBG:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    .prologue
    .line 60
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mFailedAttempts:I

    return v0
.end method

.method static synthetic access$1408(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    .prologue
    .line 60
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mFailedAttempts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mFailedAttempts:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Landroid/content/ServiceConnection;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mBoundToSignService:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Landroid/widget/ImageButton;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mBackupPIN:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignServiceRunningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/ISignServiceInterface;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;Lcom/android/internal/policy/ISignServiceInterface;)Lcom/android/internal/policy/ISignServiceInterface;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;
    .param p1, "x1"    # Lcom/android/internal/policy/ISignServiceInterface;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/widget/SignView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mEngineStarted:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mEngineStarted:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mRootLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mEmergencyCircleText:Landroid/widget/TextView;

    return-object v0
.end method

.method private initSignView()V
    .registers 7

    .prologue
    const/4 v5, -0x1

    .line 166
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;->INIT:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;

    sput-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mState:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;

    .line 168
    new-instance v2, Lcom/android/internal/widget/BeautySignView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/BeautySignView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    .line 171
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    invoke-virtual {v2}, Lcom/android/internal/widget/SignView;->setVerifySign()V

    .line 173
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    invoke-virtual {v2}, Lcom/android/internal/widget/SignView;->loadVerificationSettings()V

    .line 176
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_signature_verification_level"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mVerificationLevel:I

    .line 179
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mVerificationLevel:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/SignView;->setVerificationLevel(I)V

    .line 182
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isVisibleSignatureEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/SignView;->setSignatureVisible(Z)V

    .line 184
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$1;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/SignView;->setOnSignatureListener(Lcom/android/internal/widget/SignView$OnSignatureListener;)V

    .line 187
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/SignView;->setFocusable(Z)V

    .line 189
    const v2, 0x10203c4

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 190
    .local v1, "signViewContainer":Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 192
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    return-void
.end method

.method private setAdditionalPinButton()V
    .registers 3

    .prologue
    .line 226
    const v0, 0x10203c3

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mBackupPIN:Landroid/widget/ImageButton;

    .line 227
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mBackupPIN:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mBackupPIN:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 236
    return-void
.end method


# virtual methods
.method public bindToSignatureLock()V
    .registers 5

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/internal/policy/ISignServiceInterface;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 320
    return-void
.end method

.method public getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public hideBouncer(I)V
    .registers 4
    .param p1, "duration"    # I

    .prologue
    const/4 v1, 0x0

    .line 313
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mEcaView:Landroid/view/View;

    invoke-static {v1, v0, v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 314
    return-void
.end method

.method public isSignatureRecognitionFailed()Z
    .registers 3

    .prologue
    .line 366
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;->FAIL:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mState:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$IdentifyState;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    .line 197
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->DBG:Z

    if-eqz v0, :cond_30

    .line 198
    const-string v0, "KeyguardSignatureView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyguardSignatureView onAttachedToWindow, mBoundToSignService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mBoundToSignService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mSignService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_30
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mBoundToSignService:Z

    if-nez v0, :cond_45

    .line 202
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->DBG:Z

    if-eqz v0, :cond_3f

    const-string v0, "KeyguardSignatureView"

    const-string v1, "Trying to connect to signature service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_3f
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->bindToSignatureLock()V

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mBoundToSignService:Z

    .line 207
    :cond_45
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 208
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    .prologue
    .line 212
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->DBG:Z

    if-eqz v0, :cond_30

    .line 213
    const-string v0, "KeyguardSignatureView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyguardSignatureView onDetachedFromWindow, mBoundToSignService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mBoundToSignService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mSignService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_30
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mBoundToSignService:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4a

    .line 217
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->DBG:Z

    if-eqz v0, :cond_40

    const-string v0, "KeyguardSignatureView"

    const-string v1, "Trying to disconnect to signature service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_40
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mBoundToSignService:Z

    .line 222
    :cond_4a
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 223
    return-void
.end method

.method protected onFinishInflate()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x1

    .line 120
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 122
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->initSignView()V

    .line 124
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    .line 125
    const v2, 0x1020359

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mEcaView:Landroid/view/View;

    .line 128
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "unlock_text"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_95

    move v0, v1

    .line 130
    .local v0, "helpTextEnabled":Z
    :goto_27
    if-eqz v0, :cond_97

    .line 131
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040863

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mGuideText:Ljava/lang/String;

    .line 136
    :goto_38
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mGuideText:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 138
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->setAdditionalPinButton()V

    .line 141
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->setFocusableInTouchMode(Z)V

    .line 144
    const v1, 0x10202a1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mRootLayout:Landroid/widget/FrameLayout;

    .line 145
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mRootLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_94

    .line 146
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 147
    const v1, 0x10202a0

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mEmergencyCircleText:Landroid/widget/TextView;

    .line 148
    const v1, 0x1020366

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mEmergencyButton:Landroid/widget/Button;

    .line 149
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mEmergencyCircleText:Landroid/widget/TextView;

    if-eqz v1, :cond_94

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mEmergencyButton:Landroid/widget/Button;

    if-eqz v1, :cond_94

    .line 150
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mEmergencyCircleView:Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;

    .line 151
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mRootLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mEmergencyCircleView:Lcom/android/internal/policy/impl/keyguard/sec/EmergencyCircleView;

    invoke-virtual {v1, v2, v4, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 152
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mEmergencyCircleText:Landroid/widget/TextView;

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 163
    :cond_94
    :goto_94
    return-void

    .line 128
    .end local v0    # "helpTextEnabled":Z
    :cond_95
    const/4 v0, 0x0

    goto :goto_27

    .line 133
    .restart local v0    # "helpTextEnabled":Z
    :cond_97
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mGuideText:Ljava/lang/String;

    goto :goto_38

    .line 160
    :cond_9c
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mRootLayout:Landroid/widget/FrameLayout;

    goto :goto_94
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 264
    const-string v0, "KeyguardSignatureView"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->clearFocus()V

    .line 268
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 269
    return-void
.end method

.method public onResume(I)V
    .registers 6
    .param p1, "reason"    # I

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->reset()V

    .line 275
    const-string v0, "KeyguardSignatureView"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mGuideText:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 281
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mBackupPIN:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 282
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mBackupPIN:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 288
    return-void
.end method

.method public reset()V
    .registers 4

    .prologue
    .line 251
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mRootLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_26

    .line 252
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mEmergencyCircleText:Landroid/widget/TextView;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mEmergencyButton:Landroid/widget/Button;

    if-eqz v1, :cond_26

    .line 253
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    .line 254
    .local v0, "phoneState":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_26

    .line 255
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mEmergencyCircleText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mEmergencyButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 260
    .end local v0    # "phoneState":I
    :cond_26
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 241
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 2
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 246
    return-void
.end method

.method public showBouncer(I)V
    .registers 4
    .param p1, "duration"    # I

    .prologue
    const/4 v1, 0x0

    .line 308
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->mEcaView:Landroid/view/View;

    invoke-static {v1, v0, v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 309
    return-void
.end method

.method public showUsabilityHint()V
    .registers 3

    .prologue
    .line 302
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardSignatureView;->DBG:Z

    if-eqz v0, :cond_b

    .line 303
    const-string v0, "KeyguardSignatureView"

    const-string v1, "Requested showUsabilityHint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_b
    return-void
.end method
