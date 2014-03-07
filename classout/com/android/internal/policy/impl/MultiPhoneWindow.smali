.class public Lcom/android/internal/policy/impl/MultiPhoneWindow;
.super Lcom/android/internal/policy/impl/PhoneWindow;
.source "MultiPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;,
        Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;,
        Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;,
        Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;,
        Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;,
        Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final FEATURE_GUIDE_MOVE_LAYOUT_ENABLED:Z = true

.field static final FEATURE_GUIDE_RESIZE_LAYOUT_ENABLED:Z = true

.field static final FLOATING_CYCLE_DEBUG:Z = false

.field static final FLOATING_SIZE_DEBUG:Z = false

.field static final SAFE_DEBUG:Z = true

.field private static final STATE_FLOATING:I = 0x2

.field private static final STATE_MINIMIZED_FLOATING:I = 0x4

.field private static final STATE_NORMAL:I = 0x1

.field private static final STATE_SCALED_FLOATING:I = 0x3

.field static final TAG:Ljava/lang/String; = "MultiPhoneWindow"

.field static final sMinimumStackBoundForLandscapeOrient:Landroid/graphics/Rect;

.field static final sMinimumStackBoundForPortraitOrient:Landroid/graphics/Rect;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContentLayoutGenerated:Z

.field private mContentRootContainer:Landroid/view/ViewGroup;

.field private mContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDecorBackground:Landroid/graphics/drawable/Drawable;

.field private mGuideView:Lcom/android/internal/policy/impl/GuideView;

.field private mInitialFlag:I

.field private mIsBorder:Z

.field private mIvt:[B

.field private mLastMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field private mLastStackBound:Landroid/graphics/Rect;

.field private mLineColor:I

.field private mLineColorUnFocused:I

.field private mMinimizedIcon:Landroid/graphics/drawable/Drawable;

.field private mMinimizedLabel:Ljava/lang/CharSequence;

.field private mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

.field private final mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field private mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

.field private mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mResizablePadding:Landroid/graphics/Rect;

.field private mStackBound:Landroid/graphics/Rect;

.field private mStatusBarHeight:I

.field private mTitleBarHeight:I

.field private mTmpBound:Landroid/graphics/Rect;

.field private mToken:Landroid/os/IBinder;

.field private mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

.field private mVibrator:Landroid/os/SystemVibrator;

.field private mVideoCapabilityReceiver:Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;

.field private mWindowIconic:Landroid/widget/ImageView;

.field private mWindowTitleBar:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 102
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->sMinimumStackBoundForPortraitOrient:Landroid/graphics/Rect;

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->sMinimumStackBoundForLandscapeOrient:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 152
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 98
    iput-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    .line 116
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    .line 118
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    .line 123
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    .line 126
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    .line 128
    iput-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    .line 140
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

    .line 142
    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_a0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIvt:[B

    .line 329
    new-instance v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVideoCapabilityReceiver:Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;

    .line 1214
    iput-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    .line 1215
    iput-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    .line 1227
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 1231
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    .line 153
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    .line 154
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_61

    .line 155
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    .line 156
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 158
    :cond_61
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    .line 159
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string v1, "multiwindow_facade"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 160
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVibrator:Landroid/os/SystemVibrator;

    .line 161
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPowerManager:Landroid/os/PowerManager;

    .line 163
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initResource()V

    .line 164
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    .line 165
    return-void

    .line 142
    :array_a0
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0xat
        0x0t
        0x14t
        0x0t
        0x0t
        0x0t
        0x20t
        0x1t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        0x42t
        0x0t
        0x0t
        0x4dt
        0x0t
        0x61t
        0x0t
        0x67t
        0x0t
        0x53t
        0x0t
        0x77t
        0x0t
        0x65t
        0x0t
        0x65t
        0x0t
        0x70t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/graphics/Rect;
    .param p2, "x2"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/graphics/Rect;
    .param p2, "x2"    # Z

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->dismissGuide()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 87
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLineColor:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 87
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLineColorUnFocused:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsBorder:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsBorder:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVideoCapabilityReceiver:Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/drawable/ColorDrawable;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/MultiPhoneWindow;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->requestState(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/MultiPhoneWindow;IIZ)V
    .registers 4
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->moveStackBound(IIZ)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/widget/ImageView;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setMinimizedDrawable(Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 87
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTitleBarHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initStackBound(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->forceHideInputMethod()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)[B
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIvt:[B

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/SystemVibrator;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVibrator:Landroid/os/SystemVibrator;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    return-object v0
.end method

.method private adjustMinimizedStackBoxBound(Landroid/graphics/Rect;)V
    .registers 10
    .param p1, "stackBound"    # Landroid/graphics/Rect;

    .prologue
    const/4 v7, 0x0

    .line 1068
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1069
    .local v2, "res":Landroid/content/res/Resources;
    const v5, 0x1050121

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1071
    .local v1, "originPixelSize":I
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 1072
    .local v4, "screenSize":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1075
    iget v5, p1, Landroid/graphics/Rect;->left:I

    add-int v3, v5, v1

    .line 1076
    .local v3, "right":I
    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int v0, v5, v1

    .line 1078
    .local v0, "bottom":I
    iget v5, p1, Landroid/graphics/Rect;->left:I

    if-gez v5, :cond_3b

    .line 1079
    iget v5, p1, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 1084
    :cond_30
    :goto_30
    iget v5, v4, Landroid/graphics/Point;->y:I

    if-le v0, v5, :cond_46

    .line 1085
    iget v5, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v0

    invoke-virtual {p1, v7, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 1090
    :cond_3a
    :goto_3a
    return-void

    .line 1080
    :cond_3b
    iget v5, v4, Landroid/graphics/Point;->x:I

    if-le v3, v5, :cond_30

    .line 1081
    iget v5, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v3

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_30

    .line 1086
    :cond_46
    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    if-ge v5, v6, :cond_3a

    .line 1087
    iget v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    invoke-virtual {p1, v7, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_3a
.end method

.method private adjustScaleFactor()V
    .registers 11

    .prologue
    .line 839
    const/high16 v3, 0x3f800000

    .line 840
    .local v3, "hScale":F
    const/high16 v6, 0x3f800000

    .line 841
    .local v6, "vScale":F
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_68

    .line 842
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 843
    .local v2, "display":Landroid/view/Display;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 844
    .local v4, "size":Landroid/graphics/Point;
    invoke-virtual {v2, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 845
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v7, :cond_4d

    .line 846
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v1

    .line 847
    .local v1, "di":Landroid/view/DisplayInfo;
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_37

    iget v7, v4, Landroid/graphics/Point;->x:I

    iget v8, v4, Landroid/graphics/Point;->y:I

    if-gt v7, v8, :cond_45

    :cond_37
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v7

    if-nez v7, :cond_4d

    iget v7, v4, Landroid/graphics/Point;->x:I

    iget v8, v4, Landroid/graphics/Point;->y:I

    if-ge v7, v8, :cond_4d

    .line 849
    :cond_45
    iget v5, v4, Landroid/graphics/Point;->x:I

    .line 850
    .local v5, "temp":I
    iget v7, v4, Landroid/graphics/Point;->y:I

    iput v7, v4, Landroid/graphics/Point;->x:I

    .line 851
    iput v5, v4, Landroid/graphics/Point;->y:I

    .line 855
    .end local v1    # "di":Landroid/view/DisplayInfo;
    .end local v5    # "temp":I
    :cond_4d
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    iget v8, v4, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    div-float v3, v7, v8

    .line 856
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    iget v8, v4, Landroid/graphics/Point;->y:I

    iget v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTitleBarHeight:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    div-float v6, v7, v8

    .line 867
    .end local v2    # "display":Landroid/view/Display;
    .end local v4    # "size":Landroid/graphics/Point;
    :cond_68
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 868
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_7b

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v7

    if-eqz v7, :cond_7b

    .line 869
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v7

    invoke-virtual {v7, v3, v6}, Landroid/view/ViewRootImpl;->setMultiWindowScale(FF)V

    .line 871
    :cond_7b
    return-void
.end method

.method private adjustStackBoxBound(Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "stackBound"    # Landroid/graphics/Rect;

    .prologue
    .line 1093
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v0, v3, 0x3

    .line 1094
    .local v0, "boundaryX":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v1, v3, 0x3

    .line 1095
    .local v1, "boundaryY":I
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 1096
    .local v2, "maxSize":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1098
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v0

    if-le v3, v4, :cond_3b

    .line 1099
    iget v3, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1105
    :cond_2b
    :goto_2b
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v1

    if-le v3, v4, :cond_4b

    .line 1106
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1111
    :cond_3a
    :goto_3a
    return-void

    .line 1101
    :cond_3b
    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-ge v3, v0, :cond_2b

    .line 1102
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int v3, v0, v3

    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_2b

    .line 1108
    :cond_4b
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    if-ge v3, v4, :cond_3a

    .line 1109
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_3a
.end method

.method private checkFunctionState()V
    .registers 11

    .prologue
    .line 285
    const/4 v5, 0x0

    .line 286
    .local v5, "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 287
    .local v7, "pm":Landroid/content/pm/PackageManager;
    if-eqz v7, :cond_99

    .line 288
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 289
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_55

    .line 290
    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_9a

    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 291
    .local v4, "applicationMetaData":Landroid/os/Bundle;
    :goto_1f
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 292
    .local v2, "activityMetaData":Landroid/os/Bundle;
    if-eqz v2, :cond_a3

    .line 293
    const-string v8, "com.samsung.android.sdk.multiwindow.disablefunction"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "activityFunction":Ljava/lang/String;
    if-eqz v0, :cond_a3

    .line 295
    new-instance v6, Ljava/util/ArrayList;

    const-string v8, "\\|"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3a} :catch_9c

    .line 299
    .end local v0    # "activityFunction":Ljava/lang/String;
    .end local v5    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v6, "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_3a
    if-nez v6, :cond_a1

    .line 300
    if-eqz v4, :cond_a1

    .line 301
    :try_start_3e
    const-string v8, "com.samsung.android.sdk.multiwindow.disablefunction"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 302
    .local v3, "applicationFunction":Ljava/lang/String;
    if-eqz v3, :cond_a1

    .line 303
    new-instance v5, Ljava/util/ArrayList;

    const-string v8, "\\|"

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_55} :catch_9e

    .line 308
    .end local v2    # "activityMetaData":Landroid/os/Bundle;
    .end local v3    # "applicationFunction":Ljava/lang/String;
    .end local v4    # "applicationMetaData":Landroid/os/Bundle;
    .end local v6    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_55
    :goto_55
    if-eqz v5, :cond_99

    .line 309
    :try_start_57
    const-string v8, "minimize"

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6d

    .line 310
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    const v9, 0x102035d

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 313
    :cond_6d
    const-string v8, "maximize"

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_83

    .line 314
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    const v9, 0x102035f

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 317
    :cond_83
    const-string v8, "exit"

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_99

    .line 318
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    const v9, 0x1020361

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_99} :catch_9c

    .line 325
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    :cond_99
    :goto_99
    return-void

    .line 290
    .restart local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    :cond_9a
    const/4 v4, 0x0

    goto :goto_1f

    .line 323
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    :catch_9c
    move-exception v8

    goto :goto_99

    .end local v5    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v2    # "activityMetaData":Landroid/os/Bundle;
    .restart local v4    # "applicationMetaData":Landroid/os/Bundle;
    .restart local v6    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    :catch_9e
    move-exception v8

    move-object v5, v6

    .end local v6    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_99

    .end local v5    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a1
    move-object v5, v6

    .end local v6    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_55

    :cond_a3
    move-object v6, v5

    .end local v5    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_3a
.end method

.method private dismissGuide()V
    .registers 2

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/android/internal/policy/impl/GuideView;

    if-eqz v0, :cond_9

    .line 1311
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/android/internal/policy/impl/GuideView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GuideView;->dismiss()V

    .line 1313
    :cond_9
    return-void
.end method

.method private forceHideInputMethod()Z
    .registers 3

    .prologue
    .line 1031
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1032
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_b

    .line 1033
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    move-result v1

    .line 1035
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .registers 3

    .prologue
    .line 168
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-nez v1, :cond_11

    .line 169
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 170
    .local v0, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    new-instance v1, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v1, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 172
    .end local v0    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_11
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    return-object v1
.end method

.method private getState()I
    .registers 5

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 185
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 187
    .local v0, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_22

    .line 199
    :goto_d
    :pswitch_d
    return v1

    .line 191
    :pswitch_e
    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_16

    move v1, v2

    .line 192
    goto :goto_d

    .line 193
    :cond_16
    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 194
    const/4 v1, 0x3

    goto :goto_d

    .line 196
    :cond_20
    const/4 v1, 0x2

    goto :goto_d

    .line 187
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_d
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private initResource()V
    .registers 4

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050111

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTitleBarHeight:I

    .line 205
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050122

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 207
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 208
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 209
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLineColor:I

    .line 210
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLineColorUnFocused:I

    .line 211
    return-void
.end method

.method private initStackBound(Z)V
    .registers 5
    .param p1, "force"    # Z

    .prologue
    .line 833
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    if-eqz p1, :cond_1b

    .line 834
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 836
    :cond_1b
    return-void
.end method

.method private moveStackBound(IIZ)V
    .registers 7
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "moving"    # Z

    .prologue
    .line 1054
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1055
    .local v0, "stackBound":Landroid/graphics/Rect;
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 1057
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1b

    .line 1058
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustMinimizedStackBoxBound(Landroid/graphics/Rect;)V

    .line 1063
    :cond_16
    :goto_16
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;Z)V

    .line 1064
    return-void

    .line 1059
    :cond_1b
    if-nez p3, :cond_16

    .line 1060
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustStackBoxBound(Landroid/graphics/Rect;)V

    goto :goto_16
.end method

.method private needTitleBar(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z
    .registers 6
    .param p1, "multiWindowStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x2

    .line 1409
    const/16 v2, 0x10

    invoke-virtual {p1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1419
    :cond_a
    :goto_a
    return v1

    .line 1413
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1414
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v3, :cond_17

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, v3, :cond_a

    .line 1419
    :cond_17
    const/4 v1, 0x1

    goto :goto_a
.end method

.method private refreshUI(Z)V
    .registers 16
    .param p1, "animation"    # Z

    .prologue
    const/4 v9, 0x1

    const/16 v13, 0x8

    const/4 v10, 0x0

    .line 920
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    .line 922
    .local v7, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v6

    .line 926
    .local v6, "state":I
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsBorder:Z

    .line 927
    packed-switch v6, :pswitch_data_18e

    .line 1018
    :cond_11
    :goto_11
    return-void

    .line 929
    :pswitch_12
    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    if-eqz v11, :cond_1b

    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 930
    :cond_1b
    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    if-eqz v11, :cond_24

    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v11, v13}, Landroid/view/View;->setVisibility(I)V

    .line 931
    :cond_24
    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2a
    :goto_2a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 932
    .local v1, "contents":Landroid/view/ViewGroup;
    if-eqz v1, :cond_2a

    .line 933
    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2a

    .line 935
    .end local v1    # "contents":Landroid/view/ViewGroup;
    :cond_3c
    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v11}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 936
    iget v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mInitialFlag:I

    and-int/lit16 v11, v11, 0x200

    if-eqz v11, :cond_4b

    :goto_47
    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->updateWindowInfo(Z)V

    goto :goto_11

    :cond_4b
    move v9, v10

    goto :goto_47

    .line 940
    .end local v4    # "i$":Ljava/util/Iterator;
    :pswitch_4d
    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    if-eqz v11, :cond_11

    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    const v12, 0x102035e

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-eq v11, v13, :cond_11

    .line 946
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v5

    .line 947
    .local v5, "stackBound":Landroid/graphics/Rect;
    iget v11, v5, Landroid/graphics/Rect;->left:I

    if-gez v11, :cond_71

    .line 948
    iget v11, v5, Landroid/graphics/Rect;->left:I

    neg-int v11, v11

    invoke-virtual {v5, v11, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 949
    invoke-direct {p0, v5, v10}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;Z)V

    .line 953
    :cond_71
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .line 954
    .local v2, "decorView":Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    if-eqz v2, :cond_aa

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getChildCount()I

    move-result v11

    if-le v11, v9, :cond_aa

    .line 955
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_80
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getChildCount()I

    move-result v9

    if-ge v3, v9, :cond_aa

    .line 956
    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 957
    .local v8, "view":Landroid/view/View;
    if-eqz v8, :cond_97

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_97

    .line 955
    .end local v8    # "view":Landroid/view/View;
    :cond_94
    :goto_94
    add-int/lit8 v3, v3, 0x1

    goto :goto_80

    .line 960
    .restart local v8    # "view":Landroid/view/View;
    :cond_97
    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    move-object v9, v8

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_94

    .line 961
    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    check-cast v8, Landroid/view/ViewGroup;

    .end local v8    # "view":Landroid/view/View;
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_94

    .line 965
    .end local v3    # "i":I
    :cond_aa
    if-eqz p1, :cond_d4

    .line 966
    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const v10, 0x10a0059

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v0

    .line 967
    .local v0, "animController":Landroid/view/animation/LayoutAnimationController;
    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    if-eqz v9, :cond_11

    .line 968
    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 969
    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    new-instance v10, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;

    invoke-direct {v10, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 970
    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->startLayoutAnimation()V

    .line 971
    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->invalidate()V

    goto/16 :goto_11

    .line 974
    .end local v0    # "animController":Landroid/view/animation/LayoutAnimationController;
    :cond_d4
    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setMinimizedDrawable(Landroid/widget/ImageView;)V

    .line 975
    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v9, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 976
    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v9, v13}, Landroid/view/View;->setVisibility(I)V

    .line 977
    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_ec
    :goto_ec
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_fe

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 978
    .restart local v1    # "contents":Landroid/view/ViewGroup;
    if-eqz v1, :cond_ec

    .line 979
    invoke-virtual {v1, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_ec

    .line 981
    .end local v1    # "contents":Landroid/view/ViewGroup;
    :cond_fe
    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    if-eqz v9, :cond_11

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_11

    .line 985
    .end local v2    # "decorView":Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "stackBound":Landroid/graphics/Rect;
    :pswitch_109
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsBorder:Z

    .line 986
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V

    .line 987
    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    if-eqz v11, :cond_117

    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 988
    :cond_117
    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->needTitleBar(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v11

    if-eqz v11, :cond_13f

    .line 989
    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    .line 993
    :goto_122
    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_128
    :goto_128
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_145

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 994
    .restart local v1    # "contents":Landroid/view/ViewGroup;
    if-eqz v1, :cond_128

    .line 995
    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 996
    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v11}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_128

    .line 991
    .end local v1    # "contents":Landroid/view/ViewGroup;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_13f
    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v11, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_122

    .line 999
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_145
    iget-object v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0, v10}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1000
    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->updateWindowInfo(Z)V

    goto/16 :goto_11

    .line 1003
    .end local v4    # "i$":Ljava/util/Iterator;
    :pswitch_14f
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V

    .line 1004
    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    if-eqz v11, :cond_15b

    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1005
    :cond_15b
    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->needTitleBar(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v11

    if-eqz v11, :cond_17e

    .line 1006
    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1010
    :goto_166
    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_16c
    :goto_16c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_184

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1011
    .restart local v1    # "contents":Landroid/view/ViewGroup;
    if-eqz v1, :cond_16c

    .line 1012
    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_16c

    .line 1008
    .end local v1    # "contents":Landroid/view/ViewGroup;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_17e
    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v11, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_166

    .line 1014
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_184
    iget-object v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v10}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1015
    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->updateWindowInfo(Z)V

    goto/16 :goto_11

    .line 927
    :pswitch_data_18e
    .packed-switch 0x1
        :pswitch_12
        :pswitch_14f
        :pswitch_109
        :pswitch_4d
    .end packed-switch
.end method

.method private requestState(I)V
    .registers 9
    .param p1, "state"    # I

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x2

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 875
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 876
    .local v0, "requestStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    .line 881
    packed-switch p1, :pswitch_data_6e

    .line 915
    :cond_19
    :goto_19
    return-void

    .line 883
    :pswitch_1a
    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 884
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_19

    .line 888
    :pswitch_25
    invoke-virtual {v0, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 889
    invoke-virtual {v0, v6, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 890
    const/16 v1, 0x800

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 891
    invoke-virtual {v0, v4, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 892
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_19

    .line 896
    :pswitch_3b
    invoke-virtual {v0, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 897
    invoke-virtual {v0, v6, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 898
    const/16 v1, 0x800

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 899
    invoke-virtual {v0, v4, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 900
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_19

    .line 904
    :pswitch_51
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    const v2, 0x102035e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_19

    .line 910
    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 911
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_19

    .line 881
    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_25
        :pswitch_3b
        :pswitch_51
    .end packed-switch
.end method

.method private setMinimizedDrawable(Landroid/widget/ImageView;)V
    .registers 4
    .param p1, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 1042
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedIcon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_16

    .line 1043
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->create(Landroid/app/Activity;)Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;

    move-result-object v0

    .line 1044
    .local v0, "thumbnail":Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->getCircleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedIcon:Landroid/graphics/drawable/Drawable;

    .line 1045
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedLabel:Ljava/lang/CharSequence;

    .line 1047
    .end local v0    # "thumbnail":Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;
    :cond_16
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1050
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1051
    return-void
.end method

.method private setStackBound(Landroid/graphics/Rect;Z)V
    .registers 5
    .param p1, "bound"    # Landroid/graphics/Rect;
    .param p2, "resize"    # Z

    .prologue
    const/4 v1, 0x4

    .line 1114
    if-eqz p1, :cond_17

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1137
    :cond_17
    :goto_17
    return-void

    .line 1117
    :cond_18
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v0

    if-eq v0, v1, :cond_21

    .line 1118
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustStackBoxBound(Landroid/graphics/Rect;)V

    .line 1121
    :cond_21
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 1124
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setStackBound(Landroid/os/IBinder;Landroid/graphics/Rect;)Landroid/graphics/RectF;

    .line 1130
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1131
    if-eqz p2, :cond_17

    .line 1132
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    if-eqz v0, :cond_17

    .line 1133
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onSizeChanged(Landroid/graphics/Rect;)V

    goto :goto_17
.end method

.method private showGuide(Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/android/internal/policy/impl/GuideView;

    if-nez v0, :cond_10

    .line 1322
    new-instance v0, Lcom/android/internal/policy/impl/GuideView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/GuideView;-><init>(Landroid/view/View;I)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/android/internal/policy/impl/GuideView;

    .line 1324
    :cond_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/android/internal/policy/impl/GuideView;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/GuideView;->show(IIII)V

    .line 1325
    return-void
.end method

.method private showGuide(Landroid/graphics/Rect;I)V
    .registers 4
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "type"    # I

    .prologue
    .line 1316
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;)V

    .line 1317
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/android/internal/policy/impl/GuideView;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/GuideView;->setType(I)V

    .line 1318
    return-void
.end method

.method private updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .registers 5
    .param p1, "newStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v2, 0x1

    .line 176
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 180
    .local v0, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v0, p1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    .line 181
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    .line 182
    return-void
.end method

.method private updateWindowInfo(Z)V
    .registers 4
    .param p1, "layoutNoLimit"    # Z

    .prologue
    .line 1021
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1022
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_10

    .line 1023
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1027
    :goto_c
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1028
    return-void

    .line 1025
    :cond_10
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x201

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_c
.end method


# virtual methods
.method public arrangeScaleStackBound()V
    .registers 12

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 1495
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v7

    if-ne v7, v10, :cond_18

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    const/16 v8, 0x800

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-nez v7, :cond_19

    .line 1543
    :cond_18
    :goto_18
    return-void

    .line 1500
    :cond_19
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->isResumed()Z

    move-result v7

    if-eqz v7, :cond_18

    .line 1504
    const/4 v0, 0x0

    .line 1505
    .local v0, "bChangedStackBox":Z
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v4

    .line 1506
    .local v4, "stackBound":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    .line 1507
    .local v3, "requestedOrientation":I
    packed-switch v3, :pswitch_data_be

    .line 1526
    :cond_33
    :goto_33
    if-eqz v0, :cond_18

    .line 1527
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 1528
    .local v6, "stackWidth":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 1530
    .local v5, "stackHeight":I
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 1531
    .local v2, "displaySize":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1532
    iget v7, v2, Landroid/graphics/Point;->x:I

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    sub-int/2addr v7, v8

    iput v7, v2, Landroid/graphics/Point;->x:I

    .line 1533
    iget v7, v2, Landroid/graphics/Point;->y:I

    if-le v6, v7, :cond_5a

    iget v6, v2, Landroid/graphics/Point;->y:I

    .line 1534
    :cond_5a
    iget v7, v2, Landroid/graphics/Point;->x:I

    if-le v5, v7, :cond_60

    iget v5, v2, Landroid/graphics/Point;->x:I

    .line 1536
    :cond_60
    iget v7, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v5

    iput v7, v4, Landroid/graphics/Rect;->right:I

    .line 1537
    iget v7, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v6

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    .line 1538
    const/4 v7, 0x0

    invoke-direct {p0, v4, v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;Z)V

    .line 1539
    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initStackBound(Z)V

    .line 1540
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V

    .line 1541
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    invoke-virtual {v7, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_18

    .line 1509
    .end local v2    # "displaySize":Landroid/graphics/Point;
    .end local v5    # "stackHeight":I
    .end local v6    # "stackWidth":I
    :pswitch_7a
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-le v7, v8, :cond_33

    const/4 v0, 0x1

    goto :goto_33

    .line 1513
    :pswitch_86
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-ge v7, v8, :cond_33

    const/4 v0, 0x1

    goto :goto_33

    .line 1517
    :pswitch_92
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1518
    .local v1, "conf":Landroid/content/res/Configuration;
    iget v7, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v10, :cond_ac

    .line 1519
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-ge v7, v8, :cond_33

    const/4 v0, 0x1

    goto :goto_33

    .line 1520
    :cond_ac
    iget v7, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v9, :cond_33

    .line 1521
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-ge v7, v8, :cond_33

    const/4 v0, 0x1

    goto/16 :goto_33

    .line 1507
    nop

    :pswitch_data_be
    .packed-switch -0x1
        :pswitch_92
        :pswitch_86
        :pswitch_7a
    .end packed-switch
.end method

.method public disableMultiWindow(Z)V
    .registers 5
    .param p1, "disable"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1485
    const/4 v0, 0x0

    .line 1486
    .local v0, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 1487
    if-eqz v0, :cond_18

    .line 1488
    const/16 v2, 0x4000

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1489
    const/4 v2, 0x2

    if-nez p1, :cond_19

    :goto_10
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1490
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1492
    :cond_18
    return-void

    .line 1489
    :cond_19
    const/4 v1, 0x0

    goto :goto_10
.end method

.method protected generateDecor()Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    .registers 4

    .prologue
    .line 220
    new-instance v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/content/Context;I)V

    return-object v0
.end method

.method protected generateLayout(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/view/ViewGroup;
    .registers 13
    .param p1, "decor"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 225
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->generateLayout(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/view/ViewGroup;

    move-result-object v4

    .line 227
    .local v4, "ret":Landroid/view/ViewGroup;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    .line 228
    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    invoke-virtual {p1, v9}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {p1, v5}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->removeView(Landroid/view/View;)V

    .line 231
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 232
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x1090080

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    .line 235
    const v5, 0x1090081

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    .line 236
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    const v6, 0x102035c

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    .line 237
    new-instance v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    .line 238
    .local v1, "listner":Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 239
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 240
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    const v6, 0x102035e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    const v6, 0x1020360

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    const v6, 0x1020362

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 251
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->checkFunctionState()V

    .line 253
    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 254
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    const v6, 0x102035b

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    .line 255
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 256
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 258
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    .line 260
    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initStackBound(Z)V

    .line 261
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    .line 262
    .local v3, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    sget-object v5, Lcom/android/internal/policy/impl/MultiPhoneWindow;->sMinimumStackBoundForPortraitOrient:Landroid/graphics/Rect;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getMinimumBoundForPortraitOrientation()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 263
    sget-object v5, Lcom/android/internal/policy/impl/MultiPhoneWindow;->sMinimumStackBoundForLandscapeOrient:Landroid/graphics/Rect;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getMinimumBoundForLandscapeOrientation()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 265
    const-string v5, "MultiPhoneWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateLayout : sMinimumStackBoundForPortraitOrient"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/policy/impl/MultiPhoneWindow;->sMinimumStackBoundForPortraitOrient:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", sMinimumStackBoundForLandscapeOrient="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/policy/impl/MultiPhoneWindow;->sMinimumStackBoundForLandscapeOrient:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 271
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mInitialFlag:I

    .line 273
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v5, :cond_118

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v5

    if-eq v5, v8, :cond_118

    .line 274
    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->refreshUI(Z)V

    .line 277
    :cond_118
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v5}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->addView(Landroid/view/View;)V

    .line 278
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    .line 280
    return-object v4
.end method

.method public getMultiPhoneWindowEvent()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 215
    return-object p0
.end method

.method public getStackBound()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    return-object v0
.end method

.method public minimizeWindow(IZ)V
    .registers 8
    .param p1, "windowMode"    # I
    .param p2, "hide"    # Z

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 1447
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v0

    .line 1448
    .local v0, "state":I
    if-ne v0, v4, :cond_9

    .line 1458
    :cond_8
    :goto_8
    return-void

    .line 1453
    :cond_9
    const/4 v2, 0x2

    if-eq v0, v2, :cond_f

    const/4 v2, 0x3

    if-ne v0, v2, :cond_8

    .line 1454
    :cond_f
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    .line 1455
    .local v1, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v1, v4, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1456
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->refreshUI(Z)V

    goto :goto_8
.end method

.method public moveWindow(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1428
    new-instance v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    .line 1429
    .local v0, "listener":Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1430
    return-void
.end method

.method public multiWindow(IZ)V
    .registers 4
    .param p1, "windowMode"    # I
    .param p2, "pinup"    # Z

    .prologue
    .line 1438
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->requestState(I)V

    .line 1439
    return-void
.end method

.method public normalWindow(I)V
    .registers 3
    .param p1, "windowMode"    # I

    .prologue
    .line 1465
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->requestState(I)V

    .line 1466
    return-void
.end method

.method public onMultiWindowConfigurationChanged(I)V
    .registers 19
    .param p1, "configDiff"    # I

    .prologue
    .line 1550
    const/4 v6, 0x0

    .line 1551
    .local v6, "oldRect":Landroid/graphics/Rect;
    const/4 v5, 0x0

    .line 1553
    .local v5, "newRect":Landroid/graphics/Rect;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v13

    packed-switch v13, :pswitch_data_112

    .line 1619
    :cond_9
    :goto_9
    :pswitch_9
    return-void

    .line 1558
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v6

    .line 1559
    const/4 v7, 0x0

    .line 1560
    .local v7, "relativeX":I
    const/4 v8, 0x0

    .line 1561
    .local v8, "relativeY":I
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 1562
    .local v4, "maxSize":Landroid/graphics/Point;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1563
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v9

    .line 1564
    .local v9, "requestOrientation":I
    if-eqz v9, :cond_2d

    const/4 v13, 0x1

    if-ne v9, v13, :cond_91

    .line 1566
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v12

    .line 1567
    .local v12, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v12, :cond_9

    invoke-virtual {v12}, Landroid/view/ViewRootImpl;->getStopped()Z

    move-result v13

    if-nez v13, :cond_9

    .line 1570
    iget v13, v6, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v13, v13, 0x64

    iget v14, v4, Landroid/graphics/Point;->y:I

    div-int v7, v13, v14

    .line 1571
    iget v13, v4, Landroid/graphics/Point;->x:I

    mul-int/lit8 v13, v13, 0x64

    iget v14, v4, Landroid/graphics/Point;->y:I

    div-int/2addr v13, v14

    mul-int/2addr v7, v13

    .line 1572
    iget v13, v6, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v13, v13, 0x64

    iget v14, v4, Landroid/graphics/Point;->x:I

    div-int v8, v13, v14

    .line 1573
    iget v13, v4, Landroid/graphics/Point;->y:I

    mul-int/lit8 v13, v13, 0x64

    iget v14, v4, Landroid/graphics/Point;->x:I

    div-int/2addr v13, v14

    mul-int/2addr v8, v13

    .line 1575
    new-instance v5, Landroid/graphics/Rect;

    .end local v5    # "newRect":Landroid/graphics/Rect;
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 1576
    .restart local v5    # "newRect":Landroid/graphics/Rect;
    iget v13, v4, Landroid/graphics/Point;->x:I

    add-int/lit8 v14, v7, 0x32

    mul-int/2addr v13, v14

    div-int/lit16 v13, v13, 0x2710

    iput v13, v5, Landroid/graphics/Rect;->left:I

    .line 1577
    iget v13, v4, Landroid/graphics/Point;->y:I

    add-int/lit8 v14, v8, 0x32

    mul-int/2addr v13, v14

    div-int/lit16 v13, v13, 0x2710

    iput v13, v5, Landroid/graphics/Rect;->top:I

    .line 1578
    iget v13, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v14

    add-int/2addr v13, v14

    iput v13, v5, Landroid/graphics/Rect;->right:I

    .line 1579
    iget v13, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v14

    add-int/2addr v13, v14

    iput v13, v5, Landroid/graphics/Rect;->bottom:I

    .line 1583
    .end local v12    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :goto_86
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v13}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;Z)V

    .line 1584
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V

    goto/16 :goto_9

    .line 1581
    :cond_91
    new-instance v5, Landroid/graphics/Rect;

    .end local v5    # "newRect":Landroid/graphics/Rect;
    iget v13, v6, Landroid/graphics/Rect;->top:I

    iget v14, v6, Landroid/graphics/Rect;->left:I

    iget v15, v6, Landroid/graphics/Rect;->bottom:I

    iget v0, v6, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v5, v13, v14, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v5    # "newRect":Landroid/graphics/Rect;
    goto :goto_86

    .line 1587
    .end local v4    # "maxSize":Landroid/graphics/Point;
    .end local v7    # "relativeX":I
    .end local v8    # "relativeY":I
    .end local v9    # "requestOrientation":I
    :pswitch_a3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v11

    .line 1588
    .local v11, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    if-eqz v13, :cond_f2

    .line 1589
    invoke-virtual {v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 1594
    :goto_b5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 1595
    .local v1, "display":Landroid/view/Display;
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    .line 1596
    .local v10, "size":Landroid/graphics/Point;
    invoke-virtual {v1, v10}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1597
    const/4 v2, 0x0

    .line 1598
    .local v2, "dx":I
    const/4 v3, 0x0

    .line 1599
    .local v3, "dy":I
    new-instance v5, Landroid/graphics/Rect;

    .end local v5    # "newRect":Landroid/graphics/Rect;
    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1601
    .restart local v5    # "newRect":Landroid/graphics/Rect;
    iget v13, v6, Landroid/graphics/Rect;->left:I

    if-gez v13, :cond_f7

    .line 1602
    iget v13, v6, Landroid/graphics/Rect;->left:I

    neg-int v2, v13

    .line 1606
    :cond_d3
    :goto_d3
    iget v13, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    if-ge v13, v14, :cond_104

    .line 1607
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    iget v14, v6, Landroid/graphics/Rect;->top:I

    sub-int v3, v13, v14

    .line 1611
    :cond_e3
    :goto_e3
    if-nez v2, :cond_e7

    if-eqz v3, :cond_ea

    .line 1612
    :cond_e7
    invoke-virtual {v6, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1614
    :cond_ea
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v13}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;Z)V

    goto/16 :goto_9

    .line 1591
    .end local v1    # "display":Landroid/view/Display;
    .end local v2    # "dx":I
    .end local v3    # "dy":I
    .end local v10    # "size":Landroid/graphics/Point;
    :cond_f2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v6

    goto :goto_b5

    .line 1603
    .restart local v1    # "display":Landroid/view/Display;
    .restart local v2    # "dx":I
    .restart local v3    # "dy":I
    .restart local v10    # "size":Landroid/graphics/Point;
    :cond_f7
    iget v13, v6, Landroid/graphics/Rect;->right:I

    iget v14, v10, Landroid/graphics/Point;->x:I

    if-le v13, v14, :cond_d3

    .line 1604
    iget v13, v10, Landroid/graphics/Point;->x:I

    iget v14, v6, Landroid/graphics/Rect;->right:I

    sub-int v2, v13, v14

    goto :goto_d3

    .line 1608
    :cond_104
    iget v13, v6, Landroid/graphics/Rect;->bottom:I

    iget v14, v10, Landroid/graphics/Point;->y:I

    if-le v13, v14, :cond_e3

    .line 1609
    iget v13, v10, Landroid/graphics/Point;->y:I

    iget v14, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v13, v14

    goto :goto_e3

    .line 1553
    nop

    :pswitch_data_112
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a3
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method public onMultiWindowStyleChanged(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    .registers 11
    .param p1, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p2, "notifyReason"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1239
    and-int/lit8 v4, p2, 0x4

    if-eqz v4, :cond_12

    .line 1240
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    if-ne v2, v3, :cond_11

    .line 1241
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->closeAllPanels()V

    .line 1307
    :cond_11
    :goto_11
    return-void

    .line 1247
    :cond_12
    and-int/lit8 v4, p2, 0x2

    if-eqz v4, :cond_38

    .line 1249
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-ne v3, v7, :cond_11

    .line 1250
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 1253
    .local v1, "viewRootImpl":Landroid/view/ViewRootImpl;
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_34

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getStopped()Z

    move-result v3

    if-nez v3, :cond_11

    .line 1254
    :cond_34
    invoke-virtual {p0, v2, v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->minimizeWindow(IZ)V

    goto :goto_11

    .line 1261
    .end local v1    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_38
    invoke-virtual {p1, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 1262
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v4

    if-eq v4, v6, :cond_4a

    .line 1263
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1264
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->refreshUI(Z)V

    .line 1266
    :cond_4a
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initStackBound(Z)V

    .line 1267
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V

    goto :goto_11

    .line 1272
    :cond_51
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1275
    .local v0, "currStackBound":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    if-eqz v4, :cond_75

    .line 1276
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    if-eq v4, v5, :cond_94

    .line 1277
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    if-eqz v5, :cond_72

    move v2, v3

    :cond_72
    invoke-interface {v4, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onModeChanged(Z)V

    .line 1291
    :cond_75
    :goto_75
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1294
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v2, :cond_7f

    .line 1295
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->refreshUI(Z)V

    .line 1298
    :cond_7f
    if-eqz v0, :cond_86

    .line 1299
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1303
    :cond_86
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    if-ne v2, v7, :cond_11

    .line 1304
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initStackBound(Z)V

    .line 1305
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V

    goto/16 :goto_11

    .line 1278
    :cond_94
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v4

    if-eq v2, v4, :cond_aa

    .line 1279
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onZoneChanged(I)V

    goto :goto_75

    .line 1280
    :cond_aa
    invoke-virtual {p1, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_75

    .line 1281
    if-eqz v0, :cond_75

    .line 1282
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ne v2, v4, :cond_ca

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-eq v2, v4, :cond_75

    .line 1284
    :cond_ca
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-interface {v2, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onSizeChanged(Landroid/graphics/Rect;)V

    goto :goto_75
.end method

.method public setExitListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;)Z
    .registers 3
    .param p1, "listener"    # Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    .prologue
    .line 1223
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    .line 1224
    const/4 v0, 0x1

    return v0
.end method

.method public setIsolatedCenterPoint(Landroid/graphics/Point;)V
    .registers 4
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 1473
    const/4 v0, 0x0

    .line 1474
    .local v0, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v1, :cond_16

    .line 1475
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 1476
    if-eqz v0, :cond_16

    .line 1477
    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setIsolatedCenterPoint(Landroid/graphics/Point;)V

    .line 1478
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1479
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v1, p1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->updateIsolatedCenterPoint(Landroid/graphics/Point;)V

    .line 1482
    :cond_16
    return-void
.end method

.method public setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;)Z
    .registers 3
    .param p1, "listener"    # Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    .prologue
    .line 1218
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    .line 1219
    const/4 v0, 0x1

    return v0
.end method
