.class public Lcom/android/internal/policy/impl/PhoneWindow;
.super Landroid/view/Window;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PhoneWindow$DialogMenuCallback;,
        Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;,
        Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;,
        Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;,
        Lcom/android/internal/policy/impl/PhoneWindow$DecorView;,
        Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;,
        Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;,
        Lcom/android/internal/policy/impl/PhoneWindow$WindowManagerHolder;
    }
.end annotation


# static fields
.field private static final ACTION_BAR_TAG:Ljava/lang/String; = "android:ActionBar"

.field private static final EXTRA_LAUNCHER_ACTION:Ljava/lang/String; = "sec.android.intent.extra.LAUNCHER_ACTION"

.field static final FLAG_RESOURCE_SET_ICON:I = 0x1

.field static final FLAG_RESOURCE_SET_ICON_FALLBACK:I = 0x4

.field static final FLAG_RESOURCE_SET_LOGO:I = 0x2

.field private static final FOCUSED_ID_TAG:Ljava/lang/String; = "android:focusedViewId"

.field private static final LAUNCHER_ACTION_ALL_APPS:Ljava/lang/String; = "com.android.launcher2.ALL_APPS"

.field private static final PANELS_TAG:Ljava/lang/String; = "android:Panels"

.field private static final SWEEP_OPEN_MENU:Z = false

.field private static final TAG:Ljava/lang/String; = "PhoneWindow"

.field private static final VIEWS_TAG:Ljava/lang/String; = "android:views"

.field private static mFindoEnabled:Z

.field private static mFindoFeatureChecked:Z

.field private static penState:Z

.field static final sRotationWatcher:Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;


# instance fields
.field private GLANCE_ENABLED:Z

.field private mActionBar:Lcom/android/internal/widget/ActionBarView;

.field private mActionMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;

.field private mAlwaysReadCloseOnTouchAttr:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundResource:I

.field private mCircularProgressBar:Landroid/widget/ProgressBar;

.field private mClosingActionMenu:Z

.field private mContentParent:Landroid/view/ViewGroup;

.field private mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

.field final mContextMenuCallback:Lcom/android/internal/policy/impl/PhoneWindow$DialogMenuCallback;

.field private mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

.field private mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

.field private mDrawables:[Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

.field mFixedHeightMajor:Landroid/util/TypedValue;

.field mFixedHeightMinor:Landroid/util/TypedValue;

.field mFixedWidthMajor:Landroid/util/TypedValue;

.field mFixedWidthMinor:Landroid/util/TypedValue;

.field private mFrameResource:I

.field private mHorizontalProgressBar:Landroid/widget/ProgressBar;

.field mIconRes:I

.field private mInvalidatePanelMenuFeatures:I

.field private mInvalidatePanelMenuPosted:Z

.field private final mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

.field private mIsFloating:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLeftIconView:Landroid/widget/ImageView;

.field mLogoRes:I

.field final mMinWidthMajor:Landroid/util/TypedValue;

.field final mMinWidthMinor:Landroid/util/TypedValue;

.field private mPanelChordingKey:I

.field private mPanelMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;

.field private mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

.field private mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

.field mResourcesSetFlags:I

.field private mRightIconView:Landroid/widget/ImageView;

.field mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

.field mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

.field private mTextColor:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleColor:I

.field private mTitleView:Landroid/widget/TextView;

.field private mUiOptions:I

.field private mVolumeControlStreamType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 255
    sput-boolean v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFindoFeatureChecked:Z

    .line 256
    sput-boolean v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFindoEnabled:Z

    .line 262
    sput-boolean v0, Lcom/android/internal/policy/impl/PhoneWindow;->penState:Z

    .line 284
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 287
    invoke-direct {p0, p1}, Landroid/view/Window;-><init>(Landroid/content/Context;)V

    .line 158
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindow$DialogMenuCallback;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/PhoneWindow$DialogMenuCallback;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;I)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/impl/PhoneWindow$DialogMenuCallback;

    .line 160
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    .line 161
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    .line 229
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundResource:I

    .line 233
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mFrameResource:I

    .line 235
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTextColor:I

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    .line 239
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleColor:I

    .line 241
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    .line 247
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mVolumeControlStreamType:I

    .line 252
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mUiOptions:I

    .line 253
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->GLANCE_ENABLED:Z

    .line 267
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindow$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindow$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    .line 288
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 289
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/PhoneWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 148
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/PhoneWindow;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;
    .param p1, "x1"    # I

    .prologue
    .line 148
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    return p1
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/widget/ActionBarView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/PhoneWindow;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    return p1
.end method

.method static synthetic access$1102(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 148
    sput-boolean p0, Lcom/android/internal/policy/impl/PhoneWindow;->penState:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/view/menu/ContextMenuBuilder;)Lcom/android/internal/view/menu/ContextMenuBuilder;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;
    .param p1, "x1"    # Lcom/android/internal/view/menu/ContextMenuBuilder;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/view/menu/MenuDialogHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/view/menu/MenuDialogHelper;)Lcom/android/internal/view/menu/MenuDialogHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;
    .param p1, "x1"    # Lcom/android/internal/view/menu/MenuDialogHelper;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/PhoneWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/view/ViewGroup;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/PhoneWindow;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;
    .param p1, "x1"    # I

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->setDefaultWindowFormat(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/PhoneWindow;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->openPanelsAfterRestore()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/PhoneWindow;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->dismissContextMenu()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/PhoneWindow;ILcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .param p3, "x3"    # Landroid/view/Menu;

    .prologue
    .line 148
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindow;->callOnPanelClosed(ILcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/PhoneWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 148
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .registers 6
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;
    .param p1, "x1"    # Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/view/KeyEvent;
    .param p4, "x4"    # I

    .prologue
    .line 148
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/PhoneWindow;IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .registers 4
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v0

    return-object v0
.end method

.method private callOnPanelClosed(ILcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "panel"    # Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3715
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 3716
    .local v0, "cb":Landroid/view/Window$Callback;
    if-nez v0, :cond_7

    .line 3741
    :cond_6
    :goto_6
    return-void

    .line 3720
    :cond_7
    if-nez p3, :cond_1a

    .line 3722
    if-nez p2, :cond_16

    .line 3723
    if-ltz p1, :cond_16

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    array-length v1, v1

    if-ge p1, v1, :cond_16

    .line 3724
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    aget-object p2, v1, p1

    .line 3728
    :cond_16
    if-eqz p2, :cond_1a

    .line 3730
    iget-object p3, p2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 3735
    :cond_1a
    if-eqz p2, :cond_20

    iget-boolean v1, p2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v1, :cond_6

    .line 3738
    :cond_20
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_6

    .line 3739
    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_6
.end method

.method private static clearMenuViews(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)V
    .registers 2
    .param p0, "st"    # Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .prologue
    .line 585
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    .line 588
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 590
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->clearMenuPresenters()V

    .line 591
    return-void
.end method

.method private declared-synchronized closeContextMenu()V
    .registers 2

    .prologue
    .line 994
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    if-eqz v0, :cond_d

    .line 995
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ContextMenuBuilder;->close()V

    .line 996
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->dismissContextMenu()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 998
    :cond_d
    monitor-exit p0

    return-void

    .line 994
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized dismissContextMenu()V
    .registers 2

    .prologue
    .line 1005
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    .line 1007
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    if-eqz v0, :cond_10

    .line 1008
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuDialogHelper;->dismiss()V

    .line 1009
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_12

    .line 1011
    :cond_10
    monitor-exit p0

    return-void

    .line 1005
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static ensureFindoFeatureChecked(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4223
    if-eqz p0, :cond_15

    sget-boolean v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFindoFeatureChecked:Z

    if-nez v0, :cond_15

    .line 4224
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.findo"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFindoEnabled:Z

    .line 4225
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFindoFeatureChecked:Z

    .line 4227
    :cond_15
    return-void
.end method

.method private getActivityCount(Landroid/content/Intent;)I
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1750
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1751
    .local v1, "manager":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1753
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    return v2
.end method

.method private getCircularProgressBar(Z)Landroid/widget/ProgressBar;
    .registers 4
    .param p1, "shouldInstallDecor"    # Z

    .prologue
    .line 3666
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_7

    .line 3667
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    .line 3676
    :goto_6
    return-object v0

    .line 3669
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_10

    if-eqz p1, :cond_10

    .line 3670
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    .line 3672
    :cond_10
    const v0, 0x10203b9

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    .line 3673
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_25

    .line 3674
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3676
    :cond_25
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    goto :goto_6
.end method

.method private getDrawableState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    .registers 9
    .param p1, "featureId"    # I
    .param p2, "required"    # Z

    .prologue
    const/4 v5, 0x0

    .line 3506
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getFeatures()I

    move-result v3

    const/4 v4, 0x1

    shl-int/2addr v4, p1

    and-int/2addr v3, v4

    if-nez v3, :cond_16

    .line 3507
    if-nez p2, :cond_e

    .line 3508
    const/4 v2, 0x0

    .line 3526
    :cond_d
    :goto_d
    return-object v2

    .line 3510
    :cond_e
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "The feature has not been requested"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3514
    :cond_16
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDrawables:[Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    .local v0, "ar":[Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    if-eqz v0, :cond_1d

    array-length v3, v0

    if-gt v3, p1, :cond_2a

    .line 3515
    :cond_1d
    add-int/lit8 v3, p1, 0x1

    new-array v1, v3, [Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    .line 3516
    .local v1, "nar":[Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    if-eqz v0, :cond_27

    .line 3517
    array-length v3, v0

    invoke-static {v0, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3519
    :cond_27
    move-object v0, v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDrawables:[Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    .line 3522
    .end local v1    # "nar":[Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    :cond_2a
    aget-object v2, v0, p1

    .line 3523
    .local v2, "st":Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    if-nez v2, :cond_d

    .line 3524
    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    .end local v2    # "st":Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    invoke-direct {v2, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;-><init>(I)V

    .restart local v2    # "st":Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    aput-object v2, v0, p1

    goto :goto_d
.end method

.method private getHorizontalProgressBar(Z)Landroid/widget/ProgressBar;
    .registers 4
    .param p1, "shouldInstallDecor"    # Z

    .prologue
    .line 3680
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_7

    .line 3681
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    .line 3690
    :goto_6
    return-object v0

    .line 3683
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_10

    if-eqz p1, :cond_10

    .line 3684
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    .line 3686
    :cond_10
    const v0, 0x10203ba

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    .line 3687
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_25

    .line 3688
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3690
    :cond_25
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    goto :goto_6
.end method

.method private getKeyguardManager()Landroid/app/KeyguardManager;
    .registers 3

    .prologue
    .line 1758
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_12

    .line 1759
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 1762
    :cond_12
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method private getLeftIconView()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 3656
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLeftIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 3657
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLeftIconView:Landroid/widget/ImageView;

    .line 3662
    :goto_6
    return-object v0

    .line 3659
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_e

    .line 3660
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    .line 3662
    :cond_e
    const v0, 0x10202a6

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLeftIconView:Landroid/widget/ImageView;

    goto :goto_6
.end method

.method private getOptionsPanelGravity()I
    .registers 4

    .prologue
    .line 1199
    :try_start_0
    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindow$WindowManagerHolder;->sWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->getPreferredOptionsPanelGravity()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1202
    :goto_6
    return v1

    .line 1200
    :catch_7
    move-exception v0

    .line 1201
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "PhoneWindow"

    const-string v2, "Couldn\'t getOptionsPanelGravity; using default"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1202
    const/16 v1, 0x51

    goto :goto_6
.end method

.method private getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "required"    # Z

    .prologue
    .line 3538
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZLcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v0

    return-object v0
.end method

.method private getPanelState(IZLcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .registers 10
    .param p1, "featureId"    # I
    .param p2, "required"    # Z
    .param p3, "convertPanelState"    # Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .prologue
    const/4 v5, 0x0

    .line 3553
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getFeatures()I

    move-result v3

    const/4 v4, 0x1

    shl-int/2addr v4, p1

    and-int/2addr v3, v4

    if-nez v3, :cond_16

    .line 3554
    if-nez p2, :cond_e

    .line 3555
    const/4 v2, 0x0

    .line 3575
    :cond_d
    :goto_d
    return-object v2

    .line 3557
    :cond_e
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "The feature has not been requested"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3561
    :cond_16
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .local v0, "ar":[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_1d

    array-length v3, v0

    if-gt v3, p1, :cond_2a

    .line 3562
    :cond_1d
    add-int/lit8 v3, p1, 0x1

    new-array v1, v3, [Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .line 3563
    .local v1, "nar":[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_27

    .line 3564
    array-length v3, v0

    invoke-static {v0, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3566
    :cond_27
    move-object v0, v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .line 3569
    .end local v1    # "nar":[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_2a
    aget-object v2, v0, p1

    .line 3570
    .local v2, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-nez v2, :cond_d

    .line 3571
    if-eqz p3, :cond_34

    move-object v2, p3

    :goto_31
    aput-object v2, v0, p1

    goto :goto_d

    :cond_34
    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .end local v2    # "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-direct {v2, p1}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;-><init>(I)V

    goto :goto_31
.end method

.method private getRightIconView()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 3694
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mRightIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 3695
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mRightIconView:Landroid/widget/ImageView;

    .line 3700
    :goto_6
    return-object v0

    .line 3697
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_e

    .line 3698
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    .line 3700
    :cond_e
    const v0, 0x10202a8

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mRightIconView:Landroid/widget/ImageView;

    goto :goto_6
.end method

.method private getViewRootImpl()Landroid/view/ViewRootImpl;
    .registers 4

    .prologue
    .line 1556
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v1, :cond_d

    .line 1557
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1558
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_d

    .line 1559
    return-object v0

    .line 1562
    .end local v0    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "view not added"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .registers 8
    .param p1, "horizontalProgressBar"    # Landroid/widget/ProgressBar;
    .param p2, "spinnyProgressBar"    # Landroid/widget/ProgressBar;

    .prologue
    const/4 v4, 0x4

    .line 1481
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v1

    .line 1482
    .local v1, "features":I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10a0001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1483
    .local v0, "anim":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1484
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_25

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_25

    .line 1486
    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1487
    invoke-virtual {p2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1489
    :cond_25
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_35

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_35

    .line 1491
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1492
    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1494
    :cond_35
    return-void
.end method

.method private installDecor()V
    .registers 28

    .prologue
    .line 3318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v24, v0

    if-nez v24, :cond_47

    .line 3319
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->generateDecor()Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .line 3320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v24, v0

    const/high16 v25, 0x40000

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setDescendantFocusability(I)V

    .line 3321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setIsRootNamespace(Z)V

    .line 3322
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    move/from16 v24, v0

    if-nez v24, :cond_47

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    move/from16 v24, v0

    if-eqz v24, :cond_47

    .line 3323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 3326
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    if-nez v24, :cond_157

    .line 3327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->generateLayout(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/view/ViewGroup;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    .line 3330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->makeOptionalFitsSystemWindows()V

    .line 3332
    const v24, 0x1020016

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    .line 3333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_176

    .line 3334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getLayoutDirection()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setLayoutDirection(I)V

    .line 3335
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v24

    and-int/lit8 v24, v24, 0x2

    if-eqz v24, :cond_165

    .line 3336
    const v24, 0x10202a9

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 3337
    .local v20, "titleContainer":Landroid/view/View;
    if-eqz v20, :cond_158

    .line 3338
    const/16 v24, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3342
    :goto_b8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    instance-of v0, v0, Landroid/widget/FrameLayout;

    move/from16 v24, v0

    if-eqz v24, :cond_d3

    .line 3343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    check-cast v24, Landroid/widget/FrameLayout;

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 3452
    .end local v20    # "titleContainer":Landroid/view/View;
    :cond_d3
    :goto_d3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 3453
    .local v10, "context":Landroid/content/Context;
    const/4 v11, 0x0

    .line 3455
    .local v11, "coverMode":I
    :try_start_d8
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x80

    invoke-virtual/range {v24 .. v26}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 3457
    .local v6, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v6, :cond_101

    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v24, v0

    if-eqz v24, :cond_101

    .line 3458
    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string v25, "com.sec.android.sdk.cover.MODE"

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_fd
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d8 .. :try_end_fd} :catch_3f3

    move-result v9

    .line 3460
    .local v9, "cm":I
    if-eqz v9, :cond_101

    .line 3461
    move v11, v9

    .line 3466
    .end local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "cm":I
    :cond_101
    :goto_101
    if-nez v11, :cond_14f

    .line 3467
    instance-of v0, v10, Landroid/app/Activity;

    move/from16 v24, v0

    if-nez v24, :cond_115

    instance-of v0, v10, Landroid/content/ContextWrapper;

    move/from16 v24, v0

    if-eqz v24, :cond_115

    .line 3468
    check-cast v10, Landroid/content/ContextWrapper;

    .end local v10    # "context":Landroid/content/Context;
    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    .line 3470
    .restart local v10    # "context":Landroid/content/Context;
    :cond_115
    if-eqz v10, :cond_14f

    instance-of v0, v10, Landroid/app/Activity;

    move/from16 v24, v0

    if-eqz v24, :cond_14f

    .line 3472
    :try_start_11d
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    new-instance v25, Landroid/content/ComponentName;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v0, v10, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v26, 0x80

    invoke-virtual/range {v24 .. v26}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 3475
    .local v5, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v5, :cond_14f

    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v24, v0

    if-eqz v24, :cond_14f

    .line 3476
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    .line 3477
    .local v13, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string v25, "com.sec.android.sdk.cover.MODE"

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_14b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11d .. :try_end_14b} :catch_3f0

    move-result v9

    .line 3479
    .restart local v9    # "cm":I
    if-eqz v9, :cond_14f

    .line 3480
    move v11, v9

    .line 3487
    .end local v5    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v9    # "cm":I
    .end local v13    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_14f
    :goto_14f
    if-eqz v11, :cond_157

    .line 3488
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    .line 3489
    .restart local v13    # "lp":Landroid/view/WindowManager$LayoutParams;
    iput v11, v13, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    .line 3493
    .end local v10    # "context":Landroid/content/Context;
    .end local v11    # "coverMode":I
    .end local v13    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_157
    return-void

    .line 3340
    .restart local v20    # "titleContainer":Landroid/view/View;
    :cond_158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_b8

    .line 3346
    .end local v20    # "titleContainer":Landroid/view/View;
    :cond_165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d3

    .line 3349
    :cond_176
    const v24, 0x10203bd

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/android/internal/widget/ActionBarView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    .line 3350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_d3

    .line 3351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/widget/ActionBarView;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 3352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/widget/ActionBarView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v24

    if-nez v24, :cond_1b9

    .line 3353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/widget/ActionBarView;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 3355
    :cond_1b9
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v12

    .line 3356
    .local v12, "localFeatures":I
    and-int/lit8 v24, v12, 0x4

    if-eqz v24, :cond_1ca

    .line 3357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/widget/ActionBarView;->initProgress()V

    .line 3359
    :cond_1ca
    and-int/lit8 v24, v12, 0x20

    if-eqz v24, :cond_1d7

    .line 3360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/widget/ActionBarView;->initIndeterminateProgress()V

    .line 3363
    :cond_1d7
    const v24, 0x10203bb

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/ActionBarOverlayLayout;

    .line 3365
    .local v4, "abol":Lcom/android/internal/widget/ActionBarOverlayLayout;
    if-eqz v4, :cond_1f3

    .line 3366
    and-int/lit16 v0, v12, 0x200

    move/from16 v24, v0

    if-eqz v24, :cond_38c

    const/16 v24, 0x1

    :goto_1ee
    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    .line 3371
    :cond_1f3
    new-instance v15, Landroid/util/TypedValue;

    invoke-direct {v15}, Landroid/util/TypedValue;-><init>()V

    .line 3372
    .local v15, "outValue":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v16

    .line 3373
    .local v16, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v24

    const v25, 0x1010466

    const/16 v26, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v15, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3375
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v3

    .line 3376
    .local v3, "a":Landroid/content/res/TypedArray;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x1110071

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    .line 3377
    .local v14, "mIsExtendActionBar":Z
    new-instance v23, Landroid/graphics/Rect;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Rect;-><init>()V

    .line 3378
    .local v23, "windowPadding":Landroid/graphics/Rect;
    const/16 v24, 0x5

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v22

    .line 3379
    .local v22, "windowIsTranslucent":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v24

    if-eqz v24, :cond_253

    .line 3380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3381
    :cond_253
    iget v0, v15, Landroid/util/TypedValue;->data:I

    move/from16 v24, v0

    if-eqz v24, :cond_2ad

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    if-nez v24, :cond_2ad

    if-eqz v14, :cond_2ad

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v24, v0

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x400

    move/from16 v24, v0

    if-nez v24, :cond_2ad

    .line 3384
    const/high16 v24, 0x4000000

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->addFlags(I)V

    .line 3385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/widget/ActionBarView;->getSystemUiVisibility()I

    move-result v21

    .line 3386
    .local v21, "viewSystemUiVisibility":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    move-object/from16 v24, v0

    const/high16 v25, 0x40000000

    or-int v25, v25, v21

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/widget/ActionBarView;->setSystemUiVisibility(I)V

    .line 3388
    const v24, 0x10203be

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/ActionBarContextView;

    .line 3390
    .local v7, "cab":Lcom/android/internal/widget/ActionBarContextView;
    if-eqz v7, :cond_2ad

    .line 3391
    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->getSystemUiVisibility()I

    move-result v8

    .line 3392
    .local v8, "cabViewSystemUiVisibility":I
    const/high16 v24, 0x40000000

    or-int v24, v24, v8

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Lcom/android/internal/widget/ActionBarContextView;->setSystemUiVisibility(I)V

    .line 3397
    .end local v7    # "cab":Lcom/android/internal/widget/ActionBarContextView;
    .end local v8    # "cabViewSystemUiVisibility":I
    .end local v21    # "viewSystemUiVisibility":I
    :cond_2ad
    const/16 v17, 0x0

    .line 3398
    .local v17, "splitActionBar":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mUiOptions:I

    move/from16 v24, v0

    and-int/lit8 v24, v24, 0x1

    if-eqz v24, :cond_390

    const/16 v19, 0x1

    .line 3400
    .local v19, "splitWhenNarrow":Z
    :goto_2bb
    if-eqz v19, :cond_394

    .line 3401
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x1110006

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    .line 3407
    :goto_2cc
    const v24, 0x10203bf

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/internal/widget/ActionBarContainer;

    .line 3409
    .local v18, "splitView":Lcom/android/internal/widget/ActionBarContainer;
    if-eqz v18, :cond_3a2

    .line 3410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->setSplitView(Lcom/android/internal/widget/ActionBarContainer;)V

    .line 3411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->setSplitActionBar(Z)V

    .line 3412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->setSplitWhenNarrow(Z)V

    .line 3414
    const v24, 0x10203be

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/ActionBarContextView;

    .line 3416
    .restart local v7    # "cab":Lcom/android/internal/widget/ActionBarContextView;
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/internal/widget/ActionBarContextView;->setSplitView(Lcom/android/internal/widget/ActionBarContainer;)V

    .line 3417
    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/internal/widget/ActionBarContextView;->setSplitActionBar(Z)V

    .line 3418
    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/android/internal/widget/ActionBarContextView;->setSplitWhenNarrow(Z)V

    .line 3424
    .end local v7    # "cab":Lcom/android/internal/widget/ActionBarContextView;
    :cond_31e
    :goto_31e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    move/from16 v24, v0

    and-int/lit8 v24, v24, 0x1

    if-nez v24, :cond_33c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mIconRes:I

    move/from16 v24, v0

    if-eqz v24, :cond_3ad

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/widget/ActionBarView;->hasIcon()Z

    move-result v24

    if-nez v24, :cond_3ad

    .line 3426
    :cond_33c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mIconRes:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/widget/ActionBarView;->setIcon(I)V

    .line 3433
    :cond_34b
    :goto_34b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    move/from16 v24, v0

    and-int/lit8 v24, v24, 0x2

    if-nez v24, :cond_369

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mLogoRes:I

    move/from16 v24, v0

    if-eqz v24, :cond_378

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/widget/ActionBarView;->hasLogo()Z

    move-result v24

    if-nez v24, :cond_378

    .line 3435
    :cond_369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mLogoRes:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/widget/ActionBarView;->setLogo(I)V

    .line 3440
    :cond_378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v24, v0

    new-instance v25, Lcom/android/internal/policy/impl/PhoneWindow$2;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow$2;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;)V

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_d3

    .line 3366
    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v14    # "mIsExtendActionBar":Z
    .end local v15    # "outValue":Landroid/util/TypedValue;
    .end local v16    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v17    # "splitActionBar":Z
    .end local v18    # "splitView":Lcom/android/internal/widget/ActionBarContainer;
    .end local v19    # "splitWhenNarrow":Z
    .end local v22    # "windowIsTranslucent":Z
    .end local v23    # "windowPadding":Landroid/graphics/Rect;
    :cond_38c
    const/16 v24, 0x0

    goto/16 :goto_1ee

    .line 3398
    .restart local v3    # "a":Landroid/content/res/TypedArray;
    .restart local v14    # "mIsExtendActionBar":Z
    .restart local v15    # "outValue":Landroid/util/TypedValue;
    .restart local v16    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v17    # "splitActionBar":Z
    .restart local v22    # "windowIsTranslucent":Z
    .restart local v23    # "windowPadding":Landroid/graphics/Rect;
    :cond_390
    const/16 v19, 0x0

    goto/16 :goto_2bb

    .line 3404
    .restart local v19    # "splitWhenNarrow":Z
    :cond_394
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v24

    const/16 v25, 0x19

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    goto/16 :goto_2cc

    .line 3419
    .restart local v18    # "splitView":Lcom/android/internal/widget/ActionBarContainer;
    :cond_3a2
    if-eqz v17, :cond_31e

    .line 3420
    const-string v24, "PhoneWindow"

    const-string v25, "Requested split action bar with incompatible window decor! Ignoring request."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31e

    .line 3427
    :cond_3ad
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    move/from16 v24, v0

    and-int/lit8 v24, v24, 0x1

    if-nez v24, :cond_34b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mIconRes:I

    move/from16 v24, v0

    if-nez v24, :cond_34b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/widget/ActionBarView;->hasIcon()Z

    move-result v24

    if-nez v24, :cond_34b

    .line 3429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 3431
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    move/from16 v24, v0

    or-int/lit8 v24, v24, 0x4

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    goto/16 :goto_34b

    .line 3483
    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v4    # "abol":Lcom/android/internal/widget/ActionBarOverlayLayout;
    .end local v12    # "localFeatures":I
    .end local v14    # "mIsExtendActionBar":Z
    .end local v15    # "outValue":Landroid/util/TypedValue;
    .end local v16    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v17    # "splitActionBar":Z
    .end local v18    # "splitView":Lcom/android/internal/widget/ActionBarContainer;
    .end local v19    # "splitWhenNarrow":Z
    .end local v22    # "windowIsTranslucent":Z
    .end local v23    # "windowPadding":Landroid/graphics/Rect;
    .restart local v10    # "context":Landroid/content/Context;
    .restart local v11    # "coverMode":I
    :catch_3f0
    move-exception v24

    goto/16 :goto_14f

    .line 3464
    :catch_3f3
    move-exception v24

    goto/16 :goto_101
.end method

.method private launchDefaultSearch()Z
    .registers 3

    .prologue
    .line 3750
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 3751
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 3752
    :cond_c
    const/4 v1, 0x0

    .line 3755
    :goto_d
    return v1

    .line 3754
    :cond_e
    const-string v1, "search"

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 3755
    invoke-interface {v0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v1

    goto :goto_d
.end method

.method private loadImageURI(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 3497
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_13

    move-result-object v1

    .line 3502
    :goto_12
    return-object v1

    .line 3499
    :catch_13
    move-exception v0

    .line 3500
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PhoneWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method private openPanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V
    .registers 21
    .param p1, "st"    # Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 610
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v4, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 730
    :cond_c
    :goto_c
    return-void

    .line 616
    :cond_d
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    if-nez v4, :cond_36

    .line 617
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 618
    .local v13, "context":Landroid/content/Context;
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    .line 619
    .local v12, "config":Landroid/content/res/Configuration;
    iget v4, v12, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x4

    if-ne v4, v5, :cond_53

    const/4 v15, 0x1

    .line 621
    .local v15, "isXLarge":Z
    :goto_27
    invoke-virtual {v13}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_55

    const/4 v14, 0x1

    .line 624
    .local v14, "isHoneycombApp":Z
    :goto_32
    if-eqz v15, :cond_36

    if-nez v14, :cond_c

    .line 629
    .end local v12    # "config":Landroid/content/res/Configuration;
    .end local v13    # "context":Landroid/content/Context;
    .end local v14    # "isHoneycombApp":Z
    .end local v15    # "isXLarge":Z
    :cond_36
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v11

    .line 630
    .local v11, "cb":Landroid/view/Window$Callback;
    if-eqz v11, :cond_57

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v11, v4, v5}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_57

    .line 632
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_c

    .line 619
    .end local v11    # "cb":Landroid/view/Window$Callback;
    .restart local v12    # "config":Landroid/content/res/Configuration;
    .restart local v13    # "context":Landroid/content/Context;
    :cond_53
    const/4 v15, 0x0

    goto :goto_27

    .line 621
    .restart local v15    # "isXLarge":Z
    :cond_55
    const/4 v14, 0x0

    goto :goto_32

    .line 636
    .end local v12    # "config":Landroid/content/res/Configuration;
    .end local v13    # "context":Landroid/content/Context;
    .end local v15    # "isXLarge":Z
    .restart local v11    # "cb":Landroid/view/Window$Callback;
    :cond_57
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v17

    .line 637
    .local v17, "wm":Landroid/view/WindowManager;
    if-eqz v17, :cond_c

    .line 642
    invoke-virtual/range {p0 .. p2}, Lcom/android/internal/policy/impl/PhoneWindow;->preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 646
    const/4 v3, -0x2

    .line 647
    .local v3, "width":I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v4, :cond_70

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    if-eqz v4, :cond_158

    .line 648
    :cond_70
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-nez v4, :cond_139

    .line 650
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/impl/PhoneWindow;->initializePanelDecor(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v4, :cond_c

    .line 658
    :cond_82
    :goto_82
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/impl/PhoneWindow;->initializePanelContent(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->hasPanelItems()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 662
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 663
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v2, :cond_9f

    .line 664
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 668
    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_9f
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_152

    .line 671
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->fullBackground:I

    .line 672
    .local v10, "backgroundResId":I
    const/4 v3, -0x1

    .line 677
    :goto_a9
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 680
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    .line 681
    .local v16, "shownPanelParent":Landroid/view/ViewParent;
    if-eqz v16, :cond_d7

    move-object/from16 v0, v16

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_d7

    .line 682
    check-cast v16, Landroid/view/ViewGroup;

    .end local v16    # "shownPanelParent":Landroid/view/ViewParent;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 684
    :cond_d7
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4, v5, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 690
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_f3

    .line 691
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 709
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v10    # "backgroundResId":I
    :cond_f3
    :goto_f3
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 711
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x2

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->x:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->y:I

    const/16 v7, 0x3eb

    const/high16 v8, 0x820000

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget v9, v9, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mDefaultOpacity:I

    invoke-direct/range {v2 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 718
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isCompact:Z

    if-eqz v4, :cond_18e

    .line 719
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getOptionsPanelGravity()I

    move-result v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 720
    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;->addWindow(Lcom/android/internal/policy/impl/PhoneWindow;)V

    .line 725
    :goto_123
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->windowAnimations:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 727
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v0, v17

    invoke-interface {v0, v4, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 728
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    goto/16 :goto_c

    .line 652
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_139
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    if-eqz v4, :cond_82

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_82

    .line 654
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->removeAllViews()V

    goto/16 :goto_82

    .line 675
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_152
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->background:I

    .restart local v10    # "backgroundResId":I
    goto/16 :goto_a9

    .line 694
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v10    # "backgroundResId":I
    :cond_158
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/impl/PhoneWindow;->initializePanelContent(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_164

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->hasPanelItems()Z

    move-result v4

    if-nez v4, :cond_16d

    .line 695
    :cond_164
    const-string v4, "PhoneWindow"

    const-string v5, "openPanel() : menu is empty"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 698
    :cond_16d
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInListMode()Z

    move-result v4

    if-nez v4, :cond_176

    .line 699
    const/4 v3, -0x1

    goto/16 :goto_f3

    .line 700
    :cond_176
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v4, :cond_f3

    .line 703
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 704
    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_f3

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_f3

    .line 705
    const/4 v3, -0x1

    goto/16 :goto_f3

    .line 722
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_18e
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->gravity:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_123
.end method

.method private openPanelsAfterRestore()V
    .registers 5

    .prologue
    .line 2003
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .line 2005
    .local v1, "panels":[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_5

    .line 2023
    :cond_4
    return-void

    .line 2010
    :cond_5
    array-length v3, v1

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_4

    .line 2011
    aget-object v2, v1, v0

    .line 2015
    .local v2, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_21

    .line 2016
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->applyFrozenState()V

    .line 2017
    iget-boolean v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v3, :cond_21

    iget-boolean v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->wasLastOpen:Z

    if-eqz v3, :cond_21

    .line 2018
    iget-boolean v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->wasLastExpanded:Z

    iput-boolean v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    .line 2019
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->openPanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 2010
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8
.end method

.method private performPanelShortcut(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .registers 8
    .param p1, "st"    # Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .param p4, "flags"    # I

    .prologue
    const/4 v2, 0x1

    .line 1020
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-nez v1, :cond_9

    if-nez p1, :cond_b

    .line 1021
    :cond_9
    const/4 v0, 0x0

    .line 1043
    :cond_a
    :goto_a
    return v0

    .line 1024
    :cond_b
    const/4 v0, 0x0

    .line 1028
    .local v0, "handled":Z
    iget-boolean v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    if-nez v1, :cond_16

    invoke-virtual {p0, p1, p3}, Lcom/android/internal/policy/impl/PhoneWindow;->preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_20

    :cond_16
    iget-object v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_20

    .line 1030
    iget-object v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/internal/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 1033
    :cond_20
    if-eqz v0, :cond_a

    .line 1035
    iput-boolean v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 1038
    and-int/lit8 v1, p4, 0x1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-nez v1, :cond_a

    .line 1039
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_a
.end method

.method private reopenMenu(Z)V
    .registers 10
    .param p1, "toggleMenuMode"    # Z

    .prologue
    const/16 v7, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1095
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v5, :cond_92

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarView;->isOverflowReserved()Z

    move-result v5

    if-eqz v5, :cond_92

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v5

    if-eqz v5, :cond_26

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarView;->isOverflowMenuShowPending()Z

    move-result v5

    if-eqz v5, :cond_92

    .line 1098
    :cond_26
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1099
    .local v0, "cb":Landroid/view/Window$Callback;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v5

    if-eqz v5, :cond_34

    if-nez p1, :cond_7b

    .line 1100
    :cond_34
    if-eqz v0, :cond_7a

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v5

    if-nez v5, :cond_7a

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_7a

    .line 1102
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    if-eqz v5, :cond_5a

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_5a

    .line 1104
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1105
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 1108
    :cond_5a
    invoke-direct {p0, v4, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 1112
    .local v2, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    iget-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v3, :cond_7a

    iget-boolean v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    if-nez v3, :cond_7a

    iget-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v5, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v4, v3, v5}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 1114
    iget-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v7, v3}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1115
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarView;->showOverflowMenu()Z

    .line 1140
    .end local v0    # "cb":Landroid/view/Window$Callback;
    .end local v2    # "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_7a
    :goto_7a
    return-void

    .line 1119
    .restart local v0    # "cb":Landroid/view/Window$Callback;
    :cond_7b
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarView;->hideOverflowMenu()Z

    .line 1120
    if-eqz v0, :cond_7a

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v5

    if-nez v5, :cond_7a

    .line 1121
    invoke-direct {p0, v4, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 1122
    .restart local v2    # "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    iget-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v7, v3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_7a

    .line 1128
    .end local v0    # "cb":Landroid/view/Window$Callback;
    .end local v2    # "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_92
    invoke-direct {p0, v4, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 1131
    .restart local v2    # "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz p1, :cond_ab

    iget-boolean v5, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-nez v5, :cond_a9

    move v1, v3

    .line 1133
    .local v1, "newExpandedMode":Z
    :goto_9d
    iput-boolean v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 1134
    invoke-virtual {p0, v2, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    .line 1137
    iput-boolean v1, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    .line 1139
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->openPanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_7a

    .end local v1    # "newExpandedMode":Z
    :cond_a9
    move v1, v4

    .line 1131
    goto :goto_9d

    :cond_ab
    iget-boolean v1, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    goto :goto_9d
.end method

.method private restorePanelState(Landroid/util/SparseArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1979
    .local p1, "icicles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_23

    .line 1980
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 1981
    .local v0, "curFeatureId":I
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 1982
    .local v2, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-nez v2, :cond_16

    .line 1979
    :goto_13
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 1987
    :cond_16
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1988
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->invalidatePanelMenu(I)V

    goto :goto_13

    .line 1995
    .end local v0    # "curFeatureId":I
    .end local v2    # "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_23
    return-void
.end method

.method private savePanelState(Landroid/util/SparseArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1959
    .local p1, "icicles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .line 1960
    .local v1, "panels":[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_5

    .line 1969
    :cond_4
    return-void

    .line 1964
    :cond_5
    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    .local v0, "curFeatureId":I
    :goto_8
    if-ltz v0, :cond_4

    .line 1965
    aget-object v2, v1, v0

    if-eqz v2, :cond_17

    .line 1966
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1964
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8
.end method

.method private showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .registers 7
    .param p1, "horizontalProgressBar"    # Landroid/widget/ProgressBar;
    .param p2, "spinnyProgressBar"    # Landroid/widget/ProgressBar;

    .prologue
    const/4 v3, 0x0

    .line 1468
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v0

    .line 1469
    .local v0, "features":I
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_13

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_13

    .line 1471
    invoke-virtual {p2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1474
    :cond_13
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_22

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_22

    .line 1476
    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1478
    :cond_22
    return-void
.end method

.method private updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V
    .registers 8
    .param p1, "featureId"    # I
    .param p2, "st"    # Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    .param p3, "fromResume"    # Z

    .prologue
    .line 3599
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v2, :cond_5

    .line 3630
    :cond_4
    :goto_4
    return-void

    .line 3603
    :cond_5
    const/4 v2, 0x1

    shl-int v1, v2, p1

    .line 3605
    .local v1, "featureMask":I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getFeatures()I

    move-result v2

    and-int/2addr v2, v1

    if-nez v2, :cond_11

    if-eqz p3, :cond_4

    .line 3609
    :cond_11
    const/4 v0, 0x0

    .line 3610
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_1e

    .line 3611
    iget-object v0, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->child:Landroid/graphics/drawable/Drawable;

    .line 3612
    if-nez v0, :cond_1a

    .line 3613
    iget-object v0, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 3614
    :cond_1a
    if-nez v0, :cond_1e

    .line 3615
    iget-object v0, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    .line 3617
    :cond_1e
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v2

    and-int/2addr v2, v1

    if-nez v2, :cond_3b

    .line 3618
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 3619
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isActive()Z

    move-result v2

    if-nez v2, :cond_33

    if-eqz p3, :cond_4

    .line 3620
    :cond_33
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/view/Window;->setChildDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 3623
    :cond_3b
    if-eqz p2, :cond_4

    iget-object v2, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->cur:Landroid/graphics/drawable/Drawable;

    if-ne v2, v0, :cond_47

    iget v2, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->curAlpha:I

    iget v3, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->alpha:I

    if-eq v2, v3, :cond_4

    .line 3626
    :cond_47
    iput-object v0, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->cur:Landroid/graphics/drawable/Drawable;

    .line 3627
    iget v2, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->alpha:I

    iput v2, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->curAlpha:I

    .line 3628
    iget v2, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->alpha:I

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->onDrawableChanged(ILandroid/graphics/drawable/Drawable;I)V

    goto :goto_4
.end method

.method private updateInt(IIZ)V
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "value"    # I
    .param p3, "fromResume"    # Z

    .prologue
    .line 3636
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_5

    .line 3653
    :cond_4
    :goto_4
    return-void

    .line 3640
    :cond_5
    const/4 v1, 0x1

    shl-int v0, v1, p1

    .line 3642
    .local v0, "featureMask":I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getFeatures()I

    move-result v1

    and-int/2addr v1, v0

    if-nez v1, :cond_11

    if-eqz p3, :cond_4

    .line 3646
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v1

    and-int/2addr v1, v0

    if-nez v1, :cond_26

    .line 3647
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 3648
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/Window;->setChildInt(II)V

    goto :goto_4

    .line 3651
    :cond_26
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->onIntChanged(II)V

    goto :goto_4
.end method

.method private updateProgressBars(I)V
    .registers 12
    .param p1, "value"    # I

    .prologue
    const/16 v9, 0x8

    const/16 v8, 0x2710

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 1423
    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindow;->getCircularProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v0

    .line 1424
    .local v0, "circularProgressBar":Landroid/widget/ProgressBar;
    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindow;->getHorizontalProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v2

    .line 1426
    .local v2, "horizontalProgressBar":Landroid/widget/ProgressBar;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v1

    .line 1427
    .local v1, "features":I
    const/4 v6, -0x1

    if-ne p1, v6, :cond_33

    .line 1428
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_29

    .line 1429
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    .line 1430
    .local v3, "level":I
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v6

    if-nez v6, :cond_25

    if-ge v3, v8, :cond_31

    :cond_25
    move v4, v5

    .line 1432
    .local v4, "visibility":I
    :goto_26
    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1434
    .end local v3    # "level":I
    .end local v4    # "visibility":I
    :cond_29
    and-int/lit8 v6, v1, 0x20

    if-eqz v6, :cond_30

    .line 1435
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1465
    :cond_30
    :goto_30
    return-void

    .line 1430
    .restart local v3    # "level":I
    :cond_31
    const/4 v4, 0x4

    goto :goto_26

    .line 1437
    .end local v3    # "level":I
    :cond_33
    const/4 v6, -0x2

    if-ne p1, v6, :cond_45

    .line 1438
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_3d

    .line 1439
    invoke-virtual {v2, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1441
    :cond_3d
    and-int/lit8 v5, v1, 0x20

    if-eqz v5, :cond_30

    .line 1442
    invoke-virtual {v0, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_30

    .line 1444
    :cond_45
    const/4 v6, -0x3

    if-ne p1, v6, :cond_4c

    .line 1445
    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_30

    .line 1446
    :cond_4c
    const/4 v6, -0x4

    if-ne p1, v6, :cond_53

    .line 1447
    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_30

    .line 1448
    :cond_53
    if-ltz p1, :cond_66

    if-gt p1, v8, :cond_66

    .line 1452
    add-int/lit8 v5, p1, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1454
    if-ge p1, v8, :cond_62

    .line 1455
    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_30

    .line 1457
    :cond_62
    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_30

    .line 1459
    :cond_66
    const/16 v5, 0x4e20

    if-gt v5, p1, :cond_30

    const/16 v5, 0x7530

    if-gt p1, v5, :cond_30

    .line 1460
    add-int/lit16 v5, p1, -0x4e20

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 1462
    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_30
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 368
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_7

    .line 369
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    .line 371
    :cond_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 373
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 374
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 376
    :cond_1b
    return-void
.end method

.method public alwaysReadCloseOnTouchAttr()V
    .registers 2

    .prologue
    .line 3314
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    .line 3315
    return-void
.end method

.method checkCloseActionMenu(Landroid/view/Menu;)V
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 800
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mClosingActionMenu:Z

    if-eqz v1, :cond_5

    .line 811
    :goto_4
    return-void

    .line 804
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mClosingActionMenu:Z

    .line 805
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarView;->dismissPopupMenus()V

    .line 806
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 807
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 808
    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 810
    :cond_1e
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mClosingActionMenu:Z

    goto :goto_4
.end method

.method public final closeAllPanels()V
    .registers 7

    .prologue
    .line 972
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    .line 973
    .local v4, "wm":Landroid/view/ViewManager;
    if-nez v4, :cond_7

    .line 987
    :goto_6
    return-void

    .line 977
    :cond_7
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .line 978
    .local v3, "panels":[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v3, :cond_1a

    array-length v0, v3

    .line 979
    .local v0, "N":I
    :goto_c
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_1c

    .line 980
    aget-object v2, v3, v1

    .line 981
    .local v2, "panel":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_17

    .line 982
    const/4 v5, 0x1

    invoke-virtual {p0, v2, v5}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    .line 979
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 978
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "panel":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_1a
    const/4 v0, 0x0

    goto :goto_c

    .line 986
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_1c
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->closeContextMenu()V

    goto :goto_6
.end method

.method public final closePanel(I)V
    .registers 4
    .param p1, "featureId"    # I

    .prologue
    const/4 v1, 0x1

    .line 734
    if-nez p1, :cond_23

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_23

    .line 737
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->hideOverflowMenu()Z

    .line 743
    :goto_22
    return-void

    .line 738
    :cond_23
    const/4 v0, 0x6

    if-ne p1, v0, :cond_2a

    .line 739
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->closeContextMenu()V

    goto :goto_22

    .line 741
    :cond_2a
    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_22
.end method

.method public final closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V
    .registers 7
    .param p1, "st"    # Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .param p2, "doCallback"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 758
    if-eqz p2, :cond_1a

    iget v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 760
    iget-object v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->checkCloseActionMenu(Landroid/view/Menu;)V

    .line 797
    :cond_19
    :goto_19
    return-void

    .line 764
    :cond_1a
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 765
    .local v0, "wm":Landroid/view/ViewManager;
    if-eqz v0, :cond_3d

    iget-boolean v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v1, :cond_3d

    .line 766
    iget-object v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v1, :cond_36

    .line 767
    iget-object v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 769
    iget-boolean v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isCompact:Z

    if-eqz v1, :cond_36

    .line 770
    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;

    invoke-virtual {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;->removeWindow(Lcom/android/internal/policy/impl/PhoneWindow;)V

    .line 774
    :cond_36
    if-eqz p2, :cond_3d

    .line 775
    iget v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->callOnPanelClosed(ILcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V

    .line 779
    :cond_3d
    iput-boolean v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 780
    iput-boolean v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 781
    iput-boolean v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    .line 784
    iput-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 786
    iget-boolean v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-eqz v1, :cond_4e

    .line 789
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 790
    iput-boolean v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    .line 793
    :cond_4e
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    if-ne v1, p1, :cond_19

    .line 794
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .line 795
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I

    goto :goto_19
.end method

.method doInvalidatePanelMenu(I)V
    .registers 7
    .param p1, "featureId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 834
    invoke-direct {p0, p1, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 835
    .local v1, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    const/4 v0, 0x0

    .line 836
    .local v0, "savedActionViewStates":Landroid/os/Bundle;
    iget-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_27

    .line 837
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "savedActionViewStates":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 838
    .restart local v0    # "savedActionViewStates":Landroid/os/Bundle;
    iget-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, v0}, Lcom/android/internal/view/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 839
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_1d

    .line 840
    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 843
    :cond_1d
    iget-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 844
    iget-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->clear()V

    .line 846
    :cond_27
    iput-boolean v4, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    .line 847
    iput-boolean v4, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 850
    const/16 v2, 0x8

    if-eq p1, v2, :cond_31

    if-nez p1, :cond_41

    :cond_31
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v2, :cond_41

    .line 852
    invoke-direct {p0, v3, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 853
    if-eqz v1, :cond_41

    .line 854
    iput-boolean v3, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 855
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 858
    :cond_41
    return-void
.end method

.method public findMenuPanel(Landroid/view/Menu;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .registers 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1068
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .line 1069
    .local v3, "panels":[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v3, :cond_11

    array-length v0, v3

    .line 1070
    .local v0, "N":I
    :goto_5
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-ge v1, v0, :cond_16

    .line 1071
    aget-object v2, v3, v1

    .line 1072
    .local v2, "panel":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_13

    iget-object v4, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne v4, p1, :cond_13

    .line 1076
    .end local v2    # "panel":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :goto_10
    return-object v2

    .line 1069
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_11
    const/4 v0, 0x0

    goto :goto_5

    .line 1070
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "panel":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1076
    .end local v2    # "panel":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_16
    const/4 v2, 0x0

    goto :goto_10
.end method

.method protected generateDecor()Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    .registers 4

    .prologue
    .line 3014
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/content/Context;I)V

    return-object v0
.end method

.method protected generateLayout(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/view/ViewGroup;
    .registers 27
    .param p1, "decor"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .prologue
    .line 3035
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v4

    .line 3047
    .local v4, "a":Landroid/content/res/TypedArray;
    const/16 v22, 0x4

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z

    .line 3048
    const v22, 0x10100

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getForcedWindowFlags()I

    move-result v23

    xor-int/lit8 v23, v23, -0x1

    and-int v9, v22, v23

    .line 3050
    .local v9, "flagsToUpdate":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z

    move/from16 v22, v0

    if-eqz v22, :cond_418

    .line 3051
    const/16 v22, -0x2

    const/16 v23, -0x2

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->setLayout(II)V

    .line 3052
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1, v9}, Lcom/android/internal/policy/impl/PhoneWindow;->setFlags(II)V

    .line 3057
    :goto_3f
    const/16 v22, 0x3

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v22

    if-eqz v22, :cond_424

    .line 3058
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->requestFeature(I)Z

    .line 3064
    :cond_56
    :goto_56
    const/16 v22, 0x11

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v22

    if-eqz v22, :cond_6d

    .line 3065
    const/16 v22, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->requestFeature(I)Z

    .line 3068
    :cond_6d
    const/16 v22, 0x10

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v22

    if-eqz v22, :cond_84

    .line 3069
    const/16 v22, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->requestFeature(I)Z

    .line 3072
    :cond_84
    const/16 v22, 0x9

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v22

    if-eqz v22, :cond_a9

    .line 3073
    const/16 v22, 0x400

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getForcedWindowFlags()I

    move-result v23

    xor-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0x400

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->setFlags(II)V

    .line 3076
    :cond_a9
    const/16 v22, 0x17

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v22

    if-eqz v22, :cond_cc

    .line 3078
    const/high16 v22, 0x4000000

    const/high16 v23, 0x4000000

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getForcedWindowFlags()I

    move-result v24

    xor-int/lit8 v24, v24, -0x1

    and-int v23, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->setFlags(II)V

    .line 3082
    :cond_cc
    const/16 v22, 0x18

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v22

    if-eqz v22, :cond_ef

    .line 3084
    const/high16 v22, 0x8000000

    const/high16 v23, 0x8000000

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getForcedWindowFlags()I

    move-result v24

    xor-int/lit8 v24, v24, -0x1

    and-int v23, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->setFlags(II)V

    .line 3088
    :cond_ef
    const/16 v22, 0x16

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v22

    if-eqz v22, :cond_112

    .line 3089
    const/high16 v22, 0x2000000

    const/high16 v23, 0x2000000

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getForcedWindowFlags()I

    move-result v24

    xor-int/lit8 v24, v24, -0x1

    and-int v23, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->setFlags(II)V

    .line 3092
    :cond_112
    const/16 v22, 0xe

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v22

    if-eqz v22, :cond_135

    .line 3093
    const/high16 v22, 0x100000

    const/high16 v23, 0x100000

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getForcedWindowFlags()I

    move-result v24

    xor-int/lit8 v24, v24, -0x1

    and-int v23, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->setFlags(II)V

    .line 3096
    :cond_135
    const/16 v23, 0x12

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v22, v0

    const/16 v24, 0xb

    move/from16 v0, v22

    move/from16 v1, v24

    if-lt v0, v1, :cond_43d

    const/16 v22, 0x1

    :goto_14f
    move/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v22

    if-eqz v22, :cond_16e

    .line 3099
    const/high16 v22, 0x800000

    const/high16 v23, 0x800000

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getForcedWindowFlags()I

    move-result v24

    xor-int/lit8 v24, v24, -0x1

    and-int v23, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->setFlags(II)V

    .line 3102
    :cond_16e
    const/16 v22, 0x13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    move-object/from16 v23, v0

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 3103
    const/16 v22, 0x14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    move-object/from16 v23, v0

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 3104
    const/16 v22, 0x1a

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v22

    if-eqz v22, :cond_1b8

    .line 3105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    move-object/from16 v22, v0

    if-nez v22, :cond_1a9

    new-instance v22, Landroid/util/TypedValue;

    invoke-direct/range {v22 .. v22}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 3106
    :cond_1a9
    const/16 v22, 0x1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    move-object/from16 v23, v0

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 3109
    :cond_1b8
    const/16 v22, 0x1c

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v22

    if-eqz v22, :cond_1e4

    .line 3110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    move-object/from16 v22, v0

    if-nez v22, :cond_1d5

    new-instance v22, Landroid/util/TypedValue;

    invoke-direct/range {v22 .. v22}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 3111
    :cond_1d5
    const/16 v22, 0x1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    move-object/from16 v23, v0

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 3114
    :cond_1e4
    const/16 v22, 0x1d

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v22

    if-eqz v22, :cond_210

    .line 3115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    move-object/from16 v22, v0

    if-nez v22, :cond_201

    new-instance v22, Landroid/util/TypedValue;

    invoke-direct/range {v22 .. v22}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 3116
    :cond_201
    const/16 v22, 0x1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    move-object/from16 v23, v0

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 3119
    :cond_210
    const/16 v22, 0x1b

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v22

    if-eqz v22, :cond_23c

    .line 3120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    move-object/from16 v22, v0

    if-nez v22, :cond_22d

    new-instance v22, Landroid/util/TypedValue;

    invoke-direct/range {v22 .. v22}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 3121
    :cond_22d
    const/16 v22, 0x1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    move-object/from16 v23, v0

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 3125
    :cond_23c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 3126
    .local v6, "context":Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v21, v0

    .line 3127
    .local v21, "targetSdk":I
    const/16 v22, 0xb

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_441

    const/16 v19, 0x1

    .line 3128
    .local v19, "targetPreHoneycomb":Z
    :goto_254
    const/16 v22, 0xe

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_445

    const/16 v20, 0x1

    .line 3129
    .local v20, "targetPreIcs":Z
    :goto_25e
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x111000a

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    .line 3131
    .local v18, "targetHcNeedsOptions":Z
    const/16 v22, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->hasFeature(I)Z

    move-result v22

    if-eqz v22, :cond_281

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->hasFeature(I)Z

    move-result v22

    if-eqz v22, :cond_449

    :cond_281
    const/4 v13, 0x1

    .line 3133
    .local v13, "noActionBar":Z
    :goto_282
    if-nez v19, :cond_28a

    if-eqz v20, :cond_44c

    if-eqz v18, :cond_44c

    if-eqz v13, :cond_44c

    .line 3134
    :cond_28a
    const/high16 v22, 0x40000000

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->addFlags(I)V

    .line 3139
    :goto_293
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    move/from16 v22, v0

    if-nez v22, :cond_2b1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v22, v0

    const/16 v23, 0xb

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_2c8

    .line 3141
    :cond_2b1
    const/16 v22, 0x15

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v22

    if-eqz v22, :cond_2c8

    .line 3144
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->setCloseOnTouchOutsideIfNotSet(Z)V

    .line 3148
    :cond_2c8
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    .line 3150
    .local v15, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->hasSoftInputMode()Z

    move-result v22

    if-nez v22, :cond_2e4

    .line 3151
    const/16 v22, 0xd

    iget v0, v15, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v22

    move/from16 v0, v22

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 3156
    :cond_2e4
    const/16 v22, 0xb

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v22

    if-eqz v22, :cond_31e

    .line 3159
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getForcedWindowFlags()I

    move-result v22

    and-int/lit8 v22, v22, 0x2

    if-nez v22, :cond_308

    .line 3160
    iget v0, v15, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v22, v0

    or-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3162
    :cond_308
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->haveDimAmount()Z

    move-result v22

    if-nez v22, :cond_31e

    .line 3163
    const/16 v22, 0x0

    const/high16 v23, 0x3f000000

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v22

    move/from16 v0, v22

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 3168
    :cond_31e
    iget v0, v15, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    move/from16 v22, v0

    if-nez v22, :cond_334

    .line 3169
    const/16 v22, 0x8

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v22

    move/from16 v0, v22

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 3175
    :cond_334
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v22

    if-nez v22, :cond_388

    .line 3176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-nez v22, :cond_376

    .line 3177
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundResource:I

    move/from16 v22, v0

    if-nez v22, :cond_35c

    .line 3178
    const/16 v22, 0x1

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundResource:I

    .line 3181
    :cond_35c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFrameResource:I

    move/from16 v22, v0

    if-nez v22, :cond_376

    .line 3182
    const/16 v22, 0x2

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mFrameResource:I

    .line 3190
    :cond_376
    const/16 v22, 0x7

    const/high16 v23, -0x1000000

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mTextColor:I

    .line 3196
    :cond_388
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v8

    .line 3198
    .local v8, "features":I
    and-int/lit8 v22, v8, 0x18

    if-eqz v22, :cond_45c

    .line 3199
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z

    move/from16 v22, v0

    if-eqz v22, :cond_457

    .line 3200
    new-instance v17, Landroid/util/TypedValue;

    invoke-direct/range {v17 .. v17}, Landroid/util/TypedValue;-><init>()V

    .line 3201
    .local v17, "res":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v22

    const v23, 0x1010443

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v17

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3203
    move-object/from16 v0, v17

    iget v11, v0, Landroid/util/TypedValue;->resourceId:I

    .line 3208
    .end local v17    # "res":Landroid/util/TypedValue;
    .local v11, "layoutResource":I
    :goto_3b9
    const/16 v22, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->removeFeature(I)V

    .line 3251
    :goto_3c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->startChanging()V

    .line 3253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v11, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 3254
    .local v10, "in":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isNoWindowDecor()Z

    move-result v14

    .line 3255
    .local v14, "nowindowDecor":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z

    move/from16 v22, v0

    if-nez v22, :cond_3f1

    if-nez v14, :cond_3f1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->GLANCE_ENABLED:Z

    move/from16 v22, v0

    if-nez v22, :cond_4f8

    .line 3256
    :cond_3f1
    new-instance v22, Landroid/view/ViewGroup$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x1

    invoke-direct/range {v22 .. v24}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3267
    :goto_401
    const v22, 0x1020002

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 3268
    .local v5, "contentParent":Landroid/view/ViewGroup;
    if-nez v5, :cond_54b

    .line 3269
    new-instance v22, Ljava/lang/RuntimeException;

    const-string v23, "Window couldn\'t find content container view"

    invoke-direct/range {v22 .. v23}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 3054
    .end local v5    # "contentParent":Landroid/view/ViewGroup;
    .end local v6    # "context":Landroid/content/Context;
    .end local v8    # "features":I
    .end local v10    # "in":Landroid/view/View;
    .end local v11    # "layoutResource":I
    .end local v13    # "noActionBar":Z
    .end local v14    # "nowindowDecor":Z
    .end local v15    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v18    # "targetHcNeedsOptions":Z
    .end local v19    # "targetPreHoneycomb":Z
    .end local v20    # "targetPreIcs":Z
    .end local v21    # "targetSdk":I
    :cond_418
    const v22, 0x10100

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1, v9}, Lcom/android/internal/policy/impl/PhoneWindow;->setFlags(II)V

    goto/16 :goto_3f

    .line 3059
    :cond_424
    const/16 v22, 0xf

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v22

    if-eqz v22, :cond_56

    .line 3061
    const/16 v22, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->requestFeature(I)Z

    goto/16 :goto_56

    .line 3096
    :cond_43d
    const/16 v22, 0x0

    goto/16 :goto_14f

    .line 3127
    .restart local v6    # "context":Landroid/content/Context;
    .restart local v21    # "targetSdk":I
    :cond_441
    const/16 v19, 0x0

    goto/16 :goto_254

    .line 3128
    .restart local v19    # "targetPreHoneycomb":Z
    :cond_445
    const/16 v20, 0x0

    goto/16 :goto_25e

    .line 3131
    .restart local v18    # "targetHcNeedsOptions":Z
    .restart local v20    # "targetPreIcs":Z
    :cond_449
    const/4 v13, 0x0

    goto/16 :goto_282

    .line 3136
    .restart local v13    # "noActionBar":Z
    :cond_44c
    const/high16 v22, 0x40000000

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->clearFlags(I)V

    goto/16 :goto_293

    .line 3205
    .restart local v8    # "features":I
    .restart local v15    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_457
    const v11, 0x10900bb

    .restart local v11    # "layoutResource":I
    goto/16 :goto_3b9

    .line 3210
    .end local v11    # "layoutResource":I
    :cond_45c
    and-int/lit8 v22, v8, 0x24

    if-eqz v22, :cond_46b

    and-int/lit16 v0, v8, 0x100

    move/from16 v22, v0

    if-nez v22, :cond_46b

    .line 3214
    const v11, 0x10900b7

    .restart local v11    # "layoutResource":I
    goto/16 :goto_3c2

    .line 3216
    .end local v11    # "layoutResource":I
    :cond_46b
    and-int/lit16 v0, v8, 0x80

    move/from16 v22, v0

    if-eqz v22, :cond_4a9

    .line 3219
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z

    move/from16 v22, v0

    if-eqz v22, :cond_4a5

    .line 3220
    new-instance v17, Landroid/util/TypedValue;

    invoke-direct/range {v17 .. v17}, Landroid/util/TypedValue;-><init>()V

    .line 3221
    .restart local v17    # "res":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v22

    const v23, 0x1010444

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v17

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3223
    move-object/from16 v0, v17

    iget v11, v0, Landroid/util/TypedValue;->resourceId:I

    .line 3228
    .end local v17    # "res":Landroid/util/TypedValue;
    .restart local v11    # "layoutResource":I
    :goto_49a
    const/16 v22, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->removeFeature(I)V

    goto/16 :goto_3c2

    .line 3225
    .end local v11    # "layoutResource":I
    :cond_4a5
    const v11, 0x10900b6

    .restart local v11    # "layoutResource":I
    goto :goto_49a

    .line 3229
    .end local v11    # "layoutResource":I
    :cond_4a9
    and-int/lit8 v22, v8, 0x2

    if-nez v22, :cond_4e8

    .line 3232
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z

    move/from16 v22, v0

    if-eqz v22, :cond_4d8

    .line 3233
    new-instance v17, Landroid/util/TypedValue;

    invoke-direct/range {v17 .. v17}, Landroid/util/TypedValue;-><init>()V

    .line 3234
    .restart local v17    # "res":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v22

    const v23, 0x1010445

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v17

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3236
    move-object/from16 v0, v17

    iget v11, v0, Landroid/util/TypedValue;->resourceId:I

    .line 3237
    .restart local v11    # "layoutResource":I
    goto/16 :goto_3c2

    .end local v11    # "layoutResource":I
    .end local v17    # "res":Landroid/util/TypedValue;
    :cond_4d8
    and-int/lit16 v0, v8, 0x100

    move/from16 v22, v0

    if-eqz v22, :cond_4e3

    .line 3238
    const v11, 0x10900b5

    .restart local v11    # "layoutResource":I
    goto/16 :goto_3c2

    .line 3240
    .end local v11    # "layoutResource":I
    :cond_4e3
    const v11, 0x10900ba

    .restart local v11    # "layoutResource":I
    goto/16 :goto_3c2

    .line 3243
    .end local v11    # "layoutResource":I
    :cond_4e8
    and-int/lit16 v0, v8, 0x400

    move/from16 v22, v0

    if-eqz v22, :cond_4f3

    .line 3244
    const v11, 0x10900b9

    .restart local v11    # "layoutResource":I
    goto/16 :goto_3c2

    .line 3247
    .end local v11    # "layoutResource":I
    :cond_4f3
    const v11, 0x10900b8

    .restart local v11    # "layoutResource":I
    goto/16 :goto_3c2

    .line 3258
    .restart local v10    # "in":Landroid/view/View;
    .restart local v14    # "nowindowDecor":Z
    :cond_4f8
    invoke-static {}, Lcom/samsung/android/glanceview/GlanceView;->isGlanceViewEnabled()Z

    move-result v22

    if-eqz v22, :cond_539

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/glanceview/GlanceView;->checkGlanceSetContext(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_539

    .line 3259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v22, v0

    const v23, 0x109005b

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/glanceview/GlanceLinearLayout;

    .line 3260
    .local v12, "mLayout":Lcom/samsung/android/glanceview/GlanceLinearLayout;
    new-instance v22, Landroid/view/ViewGroup$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x1

    invoke-direct/range {v22 .. v24}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v22

    invoke-virtual {v12, v10, v0}, Lcom/samsung/android/glanceview/GlanceLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3261
    new-instance v22, Landroid/view/ViewGroup$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x1

    invoke-direct/range {v22 .. v24}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_401

    .line 3263
    .end local v12    # "mLayout":Lcom/samsung/android/glanceview/GlanceLinearLayout;
    :cond_539
    new-instance v22, Landroid/view/ViewGroup$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x1

    invoke-direct/range {v22 .. v24}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_401

    .line 3272
    .restart local v5    # "contentParent":Landroid/view/ViewGroup;
    :cond_54b
    and-int/lit8 v22, v8, 0x20

    if-eqz v22, :cond_564

    .line 3273
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getCircularProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v16

    .line 3274
    .local v16, "progress":Landroid/widget/ProgressBar;
    if-eqz v16, :cond_564

    .line 3275
    const/16 v22, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 3281
    .end local v16    # "progress":Landroid/widget/ProgressBar;
    :cond_564
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v22

    if-nez v22, :cond_5ef

    .line 3282
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 3283
    .local v7, "drawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundResource:I

    move/from16 v22, v0

    if-eqz v22, :cond_588

    .line 3284
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundResource:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 3286
    :cond_588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3287
    const/4 v7, 0x0

    .line 3288
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFrameResource:I

    move/from16 v22, v0

    if-eqz v22, :cond_5ae

    .line 3289
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFrameResource:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 3291
    :cond_5ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setWindowFrame(Landroid/graphics/drawable/Drawable;)V

    .line 3297
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleColor:I

    move/from16 v22, v0

    if-nez v22, :cond_5cd

    .line 3298
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTextColor:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleColor:I

    .line 3301
    :cond_5cd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5e2

    .line 3302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->setTitle(Ljava/lang/CharSequence;)V

    .line 3304
    :cond_5e2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleColor:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->setTitleColor(I)V

    .line 3307
    .end local v7    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_5ef
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->finishChanging()V

    .line 3309
    return-object v5
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .registers 3

    .prologue
    .line 1766
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_12

    .line 1767
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    .line 1769
    :cond_12
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method public getCurrentFocus()Landroid/view/View;
    .registers 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->findFocus()Landroid/view/View;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final getDecorView()Landroid/view/View;
    .registers 2

    .prologue
    .line 1850
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-nez v0, :cond_7

    .line 1851
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    .line 1853
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getVolumeControlStream()I
    .registers 2

    .prologue
    .line 3766
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mVolumeControlStreamType:I

    return v0
.end method

.method protected initializePanelContent(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Z
    .registers 8
    .param p1, "st"    # Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1230
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v2, :cond_c

    .line 1231
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iput-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    move v2, v3

    .line 1257
    :goto_b
    return v2

    .line 1235
    :cond_c
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v2, :cond_12

    move v2, v4

    .line 1236
    goto :goto_b

    .line 1239
    :cond_12
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;

    if-nez v2, :cond_1e

    .line 1240
    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/policy/impl/PhoneWindow$1;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;

    .line 1243
    :cond_1e
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInListMode()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;

    invoke-virtual {p1, v2, v5}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->getListMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v1

    .local v1, "menuView":Lcom/android/internal/view/menu/MenuView;
    :goto_2e
    move-object v2, v1

    .line 1247
    check-cast v2, Landroid/view/View;

    iput-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1249
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    if-eqz v2, :cond_4c

    .line 1251
    invoke-interface {v1}, Lcom/android/internal/view/menu/MenuView;->getWindowAnimations()I

    move-result v0

    .line 1252
    .local v0, "defaultAnimations":I
    if-eqz v0, :cond_3f

    .line 1253
    iput v0, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->windowAnimations:I

    :cond_3f
    move v2, v3

    .line 1255
    goto :goto_b

    .line 1243
    .end local v0    # "defaultAnimations":I
    .end local v1    # "menuView":Lcom/android/internal/view/menu/MenuView;
    :cond_41
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;

    invoke-virtual {p1, v2, v5}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->getIconMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v1

    goto :goto_2e

    .restart local v1    # "menuView":Lcom/android/internal/view/menu/MenuView;
    :cond_4c
    move v2, v4

    .line 1257
    goto :goto_b
.end method

.method protected initializePanelDecor(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Z
    .registers 5
    .param p1, "st"    # Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .prologue
    .line 1184
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/content/Context;I)V

    iput-object v0, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .line 1185
    const/16 v0, 0x51

    iput v0, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->gravity:I

    .line 1186
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->setStyle(Landroid/content/Context;)V

    .line 1188
    const/4 v0, 0x1

    return v0
.end method

.method protected initializePanelMenu(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Z
    .registers 11
    .param p1, "st"    # Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .prologue
    const/4 v8, 0x1

    .line 1152
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1155
    .local v0, "context":Landroid/content/Context;
    iget v6, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    if-eqz v6, :cond_f

    iget v6, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_32

    :cond_f
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v6, :cond_32

    .line 1157
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 1158
    .local v4, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 1159
    .local v2, "currentTheme":Landroid/content/res/Resources$Theme;
    const v6, 0x1010397

    invoke-virtual {v2, v6, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1161
    iget v5, v4, Landroid/util/TypedValue;->resourceId:I

    .line 1163
    .local v5, "targetThemeRes":I
    if-eqz v5, :cond_32

    invoke-virtual {v0}, Landroid/content/Context;->getThemeResId()I

    move-result v6

    if-eq v6, v5, :cond_32

    .line 1164
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, v0, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .end local v0    # "context":Landroid/content/Context;
    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 1168
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "currentTheme":Landroid/content/res/Resources$Theme;
    .end local v4    # "outValue":Landroid/util/TypedValue;
    .end local v5    # "targetThemeRes":I
    .restart local v0    # "context":Landroid/content/Context;
    :cond_32
    new-instance v3, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v3, v0}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 1170
    .local v3, "menu":Lcom/android/internal/view/menu/MenuBuilder;
    invoke-virtual {v3, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 1171
    invoke-virtual {p1, v3}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->setMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 1173
    return v8
.end method

.method public injectInputEvent(Landroid/view/InputEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 1552
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;)V

    .line 1553
    return-void
.end method

.method public invalidatePanelMenu(I)V
    .registers 5
    .param p1, "featureId"    # I

    .prologue
    const/4 v2, 0x1

    .line 825
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    .line 827
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v0, :cond_19

    .line 828
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 829
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    .line 831
    :cond_19
    return-void
.end method

.method public isFloating()Z
    .registers 2

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3592
    invoke-direct {p0, v2, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .line 3593
    .local v0, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v3, :cond_13

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->isShortcutKey(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_13

    :goto_12
    return v1

    :cond_13
    move v1, v2

    goto :goto_12
.end method

.method protected onActive()V
    .registers 1

    .prologue
    .line 1846
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x0

    .line 543
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-nez v2, :cond_42

    .line 544
    invoke-direct {p0, v3, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .line 545
    .local v0, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_42

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_42

    .line 546
    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v2, :cond_43

    .line 548
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 549
    .local v1, "state":Landroid/os/Bundle;
    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-eqz v2, :cond_21

    .line 550
    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/IconMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 552
    :cond_21
    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    if-eqz v2, :cond_2a

    .line 553
    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/ListMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 558
    :cond_2a
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->clearMenuViews(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)V

    .line 561
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->reopenMenu(Z)V

    .line 564
    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-eqz v2, :cond_39

    .line 565
    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/IconMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 567
    :cond_39
    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    if-eqz v2, :cond_42

    .line 568
    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/ListMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 578
    .end local v0    # "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .end local v1    # "state":Landroid/os/Bundle;
    :cond_42
    :goto_42
    return-void

    .line 574
    .restart local v0    # "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_43
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->clearMenuViews(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)V

    goto :goto_42
.end method

.method protected onDrawableChanged(ILandroid/graphics/drawable/Drawable;I)V
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "alpha"    # I

    .prologue
    .line 1368
    const/4 v1, 0x3

    if-ne p1, v1, :cond_14

    .line 1369
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLeftIconView()Landroid/widget/ImageView;

    move-result-object v0

    .line 1376
    .local v0, "view":Landroid/widget/ImageView;
    :goto_7
    if-eqz p2, :cond_1c

    .line 1377
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1378
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1379
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1383
    .end local v0    # "view":Landroid/widget/ImageView;
    :cond_13
    :goto_13
    return-void

    .line 1370
    :cond_14
    const/4 v1, 0x4

    if-ne p1, v1, :cond_13

    .line 1371
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getRightIconView()Landroid/widget/ImageView;

    move-result-object v0

    .restart local v0    # "view":Landroid/widget/ImageView;
    goto :goto_7

    .line 1381
    :cond_1c
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_13
.end method

.method protected onIntChanged(II)V
    .registers 5
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    .prologue
    .line 1393
    const/4 v1, 0x2

    if-eq p1, v1, :cond_6

    const/4 v1, 0x5

    if-ne p1, v1, :cond_a

    .line 1394
    :cond_6
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->updateProgressBars(I)V

    .line 1401
    :cond_9
    :goto_9
    return-void

    .line 1395
    :cond_a
    const/4 v1, 0x7

    if-ne p1, v1, :cond_9

    .line 1396
    const v1, 0x10202a9

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1397
    .local v0, "titleContainer":Landroid/widget/FrameLayout;
    if-eqz v0, :cond_9

    .line 1398
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_9
.end method

.method protected onKeyDown(IILandroid/view/KeyEvent;)Z
    .registers 12
    .param p1, "featureId"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/high16 v7, 0x800000

    const/high16 v6, 0x10000000

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1622
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 1627
    .local v0, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    :goto_10
    sparse-switch p2, :sswitch_data_132

    .line 1745
    .end local p1    # "featureId":I
    :cond_13
    :goto_13
    return v3

    .line 1622
    .end local v0    # "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    .restart local p1    # "featureId":I
    :cond_14
    const/4 v0, 0x0

    goto :goto_10

    .line 1638
    .restart local v0    # "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    :sswitch_16
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v3

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mVolumeControlStreamType:I

    invoke-virtual {v3, p3, v5}, Landroid/media/AudioManager;->handleKeyDown(Landroid/view/KeyEvent;I)V

    move v3, v4

    .line 1639
    goto :goto_13

    .line 1643
    :sswitch_21
    if-gez p1, :cond_24

    move p1, v3

    .end local p1    # "featureId":I
    :cond_24
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/policy/impl/PhoneWindow;->onKeyDownPanel(ILandroid/view/KeyEvent;)Z

    move v3, v4

    .line 1644
    goto :goto_13

    .line 1648
    .restart local p1    # "featureId":I
    :sswitch_29
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-gtz v5, :cond_13

    .line 1649
    if-ltz p1, :cond_13

    .line 1651
    if-eqz v0, :cond_36

    .line 1652
    invoke-virtual {v0, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_36
    move v3, v4

    .line 1654
    goto :goto_13

    :sswitch_38
    move v3, v4

    .line 1659
    goto :goto_13

    .line 1663
    :sswitch_3a
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v5

    if-nez v5, :cond_13

    if-eqz v0, :cond_13

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-gtz v5, :cond_13

    .line 1667
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1668
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.android.email"

    const-string v5, "com.android.email.activity.Welcome"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1669
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1670
    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1671
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->getActivityCount(Landroid/content/Intent;)I

    move-result v3

    if-lez v3, :cond_6b

    .line 1672
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_6b
    move v3, v4

    .line 1674
    goto :goto_13

    .line 1678
    .end local v2    # "intent":Landroid/content/Intent;
    :sswitch_6d
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v5

    if-nez v5, :cond_13

    if-eqz v0, :cond_13

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-gtz v5, :cond_13

    .line 1682
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1683
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v3, "com.android.mms"

    const-string v5, "com.android.mms.ui.ConversationComposer"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1684
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1685
    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1686
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->getActivityCount(Landroid/content/Intent;)I

    move-result v3

    if-lez v3, :cond_9e

    .line 1687
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_9e
    move v3, v4

    .line 1689
    goto/16 :goto_13

    .line 1693
    .end local v2    # "intent":Landroid/content/Intent;
    :sswitch_a1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v5

    if-nez v5, :cond_13

    if-eqz v0, :cond_13

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-gtz v5, :cond_13

    .line 1697
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1698
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1699
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1700
    const-string v3, "sec.android.intent.extra.LAUNCHER_ACTION"

    const-string v5, "com.android.launcher2.ALL_APPS"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1702
    :try_start_c9
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_d0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_c9 .. :try_end_d0} :catch_130

    :goto_d0
    move v3, v4

    .line 1706
    goto/16 :goto_13

    .line 1710
    .end local v2    # "intent":Landroid/content/Intent;
    :sswitch_d3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v5

    if-nez v5, :cond_13

    if-eqz v0, :cond_13

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-gtz v5, :cond_13

    .line 1714
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1716
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_f6

    .line 1717
    invoke-virtual {v1, v3, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    :cond_f6
    move v3, v4

    .line 1719
    goto/16 :goto_13

    .line 1723
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :sswitch_f9
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v5

    if-nez v5, :cond_13

    if-eqz v0, :cond_13

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-gtz v5, :cond_13

    .line 1727
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1728
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v3, "com.google.android.googlequicksearchbox"

    const-string v5, "com.google.android.googlequicksearchbox.VoiceSearchActivity"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1730
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1731
    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1732
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->getActivityCount(Landroid/content/Intent;)I

    move-result v3

    if-lez v3, :cond_12a

    .line 1733
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_12a
    move v3, v4

    .line 1735
    goto/16 :goto_13

    .end local v2    # "intent":Landroid/content/Intent;
    :sswitch_12d
    move v3, v4

    .line 1739
    goto/16 :goto_13

    .line 1703
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_130
    move-exception v3

    goto :goto_d0

    .line 1627
    :sswitch_data_132
    .sparse-switch
        0x4 -> :sswitch_29
        0x18 -> :sswitch_16
        0x19 -> :sswitch_16
        0x52 -> :sswitch_21
        0xa4 -> :sswitch_16
        0xe1 -> :sswitch_a1
        0xe5 -> :sswitch_d3
        0xe6 -> :sswitch_f9
        0xe7 -> :sswitch_3a
        0xe8 -> :sswitch_12d
        0xe9 -> :sswitch_38
        0xec -> :sswitch_6d
        0xf2 -> :sswitch_16
        0xf3 -> :sswitch_16
        0xf4 -> :sswitch_16
    .end sparse-switch
.end method

.method public final onKeyDownPanel(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 867
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 869
    .local v0, "keyCode":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_1b

    .line 871
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I

    .line 873
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 874
    .local v1, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    iget-boolean v3, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v3, :cond_1a

    .line 875
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v2

    .line 889
    .end local v1    # "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_1a
    :goto_1a
    return v2

    .line 880
    :cond_1b
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I

    if-ne v3, v0, :cond_1a

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1a

    .line 881
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindow;->ensureFindoFeatureChecked(Landroid/content/Context;)V

    .line 882
    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindow;->mFindoEnabled:Z

    if-nez v3, :cond_1a

    .line 883
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I

    .line 884
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->launchDefaultSearch()Z

    goto :goto_1a
.end method

.method protected onKeyUp(IILandroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "featureId"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1779
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 1781
    .local v0, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    :goto_c
    if-eqz v0, :cond_11

    .line 1782
    invoke-virtual {v0, p3}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 1787
    :cond_11
    sparse-switch p2, :sswitch_data_6a

    .line 1841
    .end local p1    # "featureId":I
    :cond_14
    :goto_14
    return v2

    .line 1779
    .end local v0    # "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    .restart local p1    # "featureId":I
    :cond_15
    const/4 v0, 0x0

    goto :goto_c

    .line 1798
    .restart local v0    # "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    :sswitch_17
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v2

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mVolumeControlStreamType:I

    invoke-virtual {v2, p3, v4}, Landroid/media/AudioManager;->handleKeyUp(Landroid/view/KeyEvent;I)V

    move v2, v3

    .line 1799
    goto :goto_14

    .line 1803
    :sswitch_22
    if-gez p1, :cond_25

    move p1, v2

    .end local p1    # "featureId":I
    :cond_25
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/policy/impl/PhoneWindow;->onKeyUpPanel(ILandroid/view/KeyEvent;)V

    move v2, v3

    .line 1805
    goto :goto_14

    .line 1809
    .restart local p1    # "featureId":I
    :sswitch_2a
    if-ltz p1, :cond_14

    .line 1810
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_14

    .line 1811
    if-nez p1, :cond_49

    .line 1812
    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1813
    .local v1, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_49

    iget-boolean v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-eqz v2, :cond_49

    .line 1816
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->reopenMenu(Z)V

    move v2, v3

    .line 1817
    goto :goto_14

    .line 1820
    .end local v1    # "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_49
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(I)V

    move v2, v3

    .line 1821
    goto :goto_14

    .line 1831
    :sswitch_4e
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v4

    if-nez v4, :cond_14

    .line 1834
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_67

    .line 1835
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->launchDefaultSearch()Z

    :cond_67
    move v2, v3

    .line 1837
    goto :goto_14

    .line 1787
    nop

    :sswitch_data_6a
    .sparse-switch
        0x4 -> :sswitch_2a
        0x18 -> :sswitch_17
        0x19 -> :sswitch_17
        0x52 -> :sswitch_22
        0x54 -> :sswitch_4e
        0xa4 -> :sswitch_17
        0xf2 -> :sswitch_17
        0xf3 -> :sswitch_17
        0xf4 -> :sswitch_17
    .end sparse-switch
.end method

.method public final onKeyUpPanel(ILandroid/view/KeyEvent;)V
    .registers 11
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 899
    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I

    if-eqz v6, :cond_1a

    .line 900
    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I

    .line 902
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_1a

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v6, :cond_1b

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v6}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$300(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/view/ActionMode;

    move-result-object v6

    if-eqz v6, :cond_1b

    .line 968
    :cond_1a
    :goto_1a
    return-void

    .line 906
    :cond_1b
    const/4 v2, 0x0

    .line 907
    .local v2, "playSoundEffect":Z
    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v4

    .line 908
    .local v4, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-nez p1, :cond_7a

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v6, :cond_7a

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v6}, Lcom/android/internal/widget/ActionBarView;->isOverflowReserved()Z

    move-result v6

    if-eqz v6, :cond_7a

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v6

    if-nez v6, :cond_7a

    .line 911
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v6}, Lcom/android/internal/widget/ActionBarView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_5e

    .line 912
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v6}, Lcom/android/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v6

    if-nez v6, :cond_73

    .line 913
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v6

    if-nez v6, :cond_5e

    invoke-virtual {p0, v4, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 914
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v6}, Lcom/android/internal/widget/ActionBarView;->showOverflowMenu()Z

    move-result v2

    .line 956
    :cond_5e
    :goto_5e
    const/4 v2, 0x0

    .line 958
    if-eqz v2, :cond_1a

    .line 959
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 961
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_b8

    .line 962
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_1a

    .line 917
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_73
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v6}, Lcom/android/internal/widget/ActionBarView;->hideOverflowMenu()Z

    move-result v2

    goto :goto_5e

    .line 921
    :cond_7a
    iget-boolean v6, v4, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v6, :cond_82

    iget-boolean v6, v4, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isHandled:Z

    if-eqz v6, :cond_88

    .line 925
    :cond_82
    iget-boolean v2, v4, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    .line 928
    invoke-virtual {p0, v4, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_5e

    .line 930
    :cond_88
    iget-boolean v6, v4, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    if-eqz v6, :cond_5e

    .line 931
    const/4 v3, 0x1

    .line 932
    .local v3, "show":Z
    iget-boolean v6, v4, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v6, :cond_97

    .line 935
    iput-boolean v5, v4, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 936
    invoke-virtual {p0, v4, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v3

    .line 940
    :cond_97
    iget-object v6, v4, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    if-nez v6, :cond_aa

    .line 944
    .local v1, "notEmptyPanel":Z
    :cond_9b
    :goto_9b
    if-eqz v3, :cond_5e

    if-eqz v1, :cond_5e

    .line 946
    const v6, 0xc351

    invoke-static {v6, v5}, Landroid/util/EventLog;->writeEvent(II)I

    .line 949
    invoke-direct {p0, v4, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->openPanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 951
    const/4 v2, 0x1

    goto :goto_5e

    .line 940
    .end local v1    # "notEmptyPanel":Z
    :cond_aa
    iget-object v6, v4, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v6}, Lcom/android/internal/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-gtz v6, :cond_9b

    move v1, v5

    goto :goto_9b

    .line 964
    .end local v3    # "show":Z
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_b8
    const-string v5, "PhoneWindow"

    const-string v6, "Couldn\'t get audio manager"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a
.end method

.method public onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 6
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1080
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1081
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 1082
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->findMenuPanel(Landroid/view/Menu;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1083
    .local v1, "panel":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_1d

    .line 1084
    iget v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-interface {v0, v2, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v2

    .line 1087
    .end local v1    # "panel":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :goto_1c
    return v2

    :cond_1d
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 3
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 1091
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->reopenMenu(Z)V

    .line 1092
    return-void
.end method

.method onOptionsPanelRotationChanged()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1207
    invoke-direct {p0, v3, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1208
    .local v1, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_8

    .line 1219
    :cond_7
    :goto_7
    return-void

    .line 1210
    :cond_8
    iget-object v3, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v3, :cond_29

    iget-object v3, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    move-object v0, v3

    .line 1212
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    :goto_15
    if-eqz v0, :cond_7

    .line 1213
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getOptionsPanelGravity()I

    move-result v3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1214
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 1215
    .local v2, "wm":Landroid/view/ViewManager;
    if-eqz v2, :cond_7

    .line 1216
    iget-object v3, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-interface {v2, v3, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    .line 1210
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "wm":Landroid/view/ViewManager;
    :cond_29
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public final openPanel(ILandroid/view/KeyEvent;)V
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 595
    if-nez p1, :cond_2a

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 598
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_29

    .line 599
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->showOverflowMenu()Z

    .line 604
    :cond_29
    :goto_29
    return-void

    .line 602
    :cond_2a
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->openPanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_29
.end method

.method public final peekDecorView()Landroid/view/View;
    .registers 2

    .prologue
    .line 1858
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    return-object v0
.end method

.method public performContextMenuIdentifierAction(II)Z
    .registers 4
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/view/menu/ContextMenuBuilder;->performIdentifierAction(II)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public performPanelIdentifierAction(III)Z
    .registers 9
    .param p1, "featureId"    # I
    .param p2, "id"    # I
    .param p3, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 1049
    invoke-direct {p0, p1, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1050
    .local v1, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    new-instance v2, Landroid/view/KeyEvent;

    const/16 v3, 0x52

    invoke-direct {v2, v0, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 1064
    :cond_13
    :goto_13
    return v0

    .line 1053
    :cond_14
    iget-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_13

    .line 1057
    iget-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, p2, p3}, Lcom/android/internal/view/menu/MenuBuilder;->performIdentifierAction(II)Z

    move-result v0

    .line 1060
    .local v0, "res":Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-nez v2, :cond_13

    .line 1061
    invoke-virtual {p0, v1, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_13
.end method

.method public performPanelShortcut(IILandroid/view/KeyEvent;I)Z
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .param p4, "flags"    # I

    .prologue
    .line 1015
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/internal/policy/impl/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method public final preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .registers 12
    .param p1, "st"    # Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 436
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 537
    :cond_9
    :goto_9
    return v5

    .line 441
    :cond_a
    iget-boolean v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    if-eqz v3, :cond_10

    move v5, v4

    .line 442
    goto :goto_9

    .line 445
    :cond_10
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    if-eq v3, p1, :cond_1d

    .line 447
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    .line 450
    :cond_1d
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 452
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_2b

    .line 453
    iget v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    .line 456
    :cond_2b
    iget v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    if-eqz v3, :cond_35

    iget v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    const/16 v6, 0x8

    if-ne v3, v6, :cond_98

    :cond_35
    move v1, v4

    .line 459
    .local v1, "isActionBarMenu":Z
    :goto_36
    if-eqz v1, :cond_41

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v3, :cond_41

    .line 462
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarView;->setMenuPrepared()V

    .line 465
    :cond_41
    iget-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-nez v3, :cond_ed

    .line 467
    iget-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v3, :cond_4d

    iget-boolean v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v3, :cond_9c

    .line 468
    :cond_4d
    iget-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v3, :cond_5b

    .line 469
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->initializePanelMenu(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v3, :cond_9

    .line 474
    :cond_5b
    if-eqz v1, :cond_75

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v3, :cond_75

    .line 475
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;

    if-nez v3, :cond_6c

    .line 476
    new-instance v3, Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;

    invoke-direct {v3, p0, v8}, Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/policy/impl/PhoneWindow$1;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;

    .line 478
    :cond_6c
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    iget-object v6, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;

    invoke-virtual {v3, v6, v7}, Lcom/android/internal/widget/ActionBarView;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 485
    :cond_75
    iget-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 486
    if-eqz v0, :cond_86

    iget v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    iget-object v6, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v3, v6}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_9a

    .line 488
    :cond_86
    invoke-virtual {p1, v8}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->setMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 490
    if-eqz v1, :cond_9

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v3, :cond_9

    .line 492
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;

    invoke-virtual {v3, v8, v4}, Lcom/android/internal/widget/ActionBarView;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    goto/16 :goto_9

    .end local v1    # "isActionBarMenu":Z
    :cond_98
    move v1, v5

    .line 456
    goto :goto_36

    .line 498
    .restart local v1    # "isActionBarMenu":Z
    :cond_9a
    iput-boolean v5, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    .line 505
    :cond_9c
    iget-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 509
    iget-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    if-eqz v3, :cond_ae

    .line 510
    iget-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v6, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    invoke-virtual {v3, v6}, Lcom/android/internal/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 511
    iput-object v8, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 514
    :cond_ae
    iget v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    iget-object v6, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v7, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v3, v6, v7}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_ce

    .line 515
    if-eqz v1, :cond_c7

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v3, :cond_c7

    .line 518
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;

    invoke-virtual {v3, v8, v4}, Lcom/android/internal/widget/ActionBarView;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 520
    :cond_c7
    iget-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto/16 :goto_9

    .line 525
    :cond_ce
    if-eqz p2, :cond_f6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v3

    :goto_d4
    invoke-static {v3}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 527
    .local v2, "kmap":Landroid/view/KeyCharacterMap;
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v3

    if-eq v3, v4, :cond_f8

    move v3, v4

    :goto_df
    iput-boolean v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->qwertyMode:Z

    .line 528
    iget-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-boolean v6, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->qwertyMode:Z

    invoke-virtual {v3, v6}, Lcom/android/internal/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 529
    iget-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 533
    .end local v2    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_ed
    iput-boolean v4, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 534
    iput-boolean v5, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 535
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move v5, v4

    .line 537
    goto/16 :goto_9

    .line 525
    :cond_f6
    const/4 v3, -0x1

    goto :goto_d4

    .restart local v2    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_f8
    move v3, v5

    .line 527
    goto :goto_df
.end method

.method public requestFeature(I)Z
    .registers 6
    .param p1, "featureId"    # I

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x7

    .line 298
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-eqz v1, :cond_f

    .line 299
    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string v2, "requestFeature() must be called before adding content"

    invoke-direct {v1, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 301
    :cond_f
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getFeatures()I

    move-result v0

    .line 302
    .local v0, "features":I
    const/16 v1, 0x41

    if-eq v0, v1, :cond_21

    if-ne p1, v2, :cond_21

    .line 305
    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string v2, "You cannot combine custom titles with other title features"

    invoke-direct {v1, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 307
    :cond_21
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_33

    if-eq p1, v2, :cond_33

    const/16 v1, 0xa

    if-eq p1, v1, :cond_33

    .line 311
    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string v2, "You cannot combine custom titles with other title features"

    invoke-direct {v1, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 313
    :cond_33
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_3b

    if-ne p1, v3, :cond_3b

    .line 314
    const/4 v1, 0x0

    .line 320
    :goto_3a
    return v1

    .line 316
    :cond_3b
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_45

    const/4 v1, 0x1

    if-ne p1, v1, :cond_45

    .line 318
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->removeFeature(I)V

    .line 320
    :cond_45
    invoke-super {p0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v1

    goto :goto_3a
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, -0x1

    .line 1910
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v5, :cond_6

    .line 1949
    :cond_5
    :goto_5
    return-void

    .line 1914
    :cond_6
    const-string v5, "android:views"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v4

    .line 1916
    .local v4, "savedStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v4, :cond_13

    .line 1917
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 1921
    :cond_13
    const-string v5, "android:focusedViewId"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1922
    .local v1, "focusedViewId":I
    if-eq v1, v6, :cond_26

    .line 1923
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1924
    .local v2, "needsFocus":Landroid/view/View;
    if-eqz v2, :cond_43

    .line 1925
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 1934
    .end local v2    # "needsFocus":Landroid/view/View;
    :cond_26
    :goto_26
    const-string v5, "android:Panels"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v3

    .line 1935
    .local v3, "panelStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v3, :cond_31

    .line 1936
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->restorePanelState(Landroid/util/SparseArray;)V

    .line 1939
    :cond_31
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v5, :cond_5

    .line 1940
    const-string v5, "android:ActionBar"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 1942
    .local v0, "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v0, :cond_62

    .line 1943
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v5, v0}, Lcom/android/internal/widget/ActionBarView;->restoreHierarchyState(Landroid/util/SparseArray;)V

    goto :goto_5

    .line 1927
    .end local v0    # "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    .end local v3    # "panelStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    .restart local v2    # "needsFocus":Landroid/view/View;
    :cond_43
    const-string v5, "PhoneWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Previously focused view reported id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " during save, but can\'t be found during restore."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 1945
    .end local v2    # "needsFocus":Landroid/view/View;
    .restart local v0    # "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    .restart local v3    # "panelStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_62
    const-string v5, "PhoneWindow"

    const-string v6, "Missing saved instance states for action bar views! State will not be restored."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public saveHierarchyState()Landroid/os/Bundle;
    .registers 8

    .prologue
    .line 1869
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1870
    .local v2, "outState":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v5, :cond_a

    .line 1904
    :cond_9
    :goto_9
    return-object v2

    .line 1874
    :cond_a
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 1875
    .local v4, "states":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 1876
    const-string v5, "android:views"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1879
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 1880
    .local v1, "focusedView":Landroid/view/View;
    if-eqz v1, :cond_31

    .line 1881
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_31

    .line 1882
    const-string v5, "android:focusedViewId"

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1892
    :cond_31
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 1893
    .local v3, "panelStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->savePanelState(Landroid/util/SparseArray;)V

    .line 1894
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-lez v5, :cond_44

    .line 1895
    const-string v5, "android:Panels"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1898
    :cond_44
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v5, :cond_9

    .line 1899
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 1900
    .local v0, "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v5, v0}, Lcom/android/internal/widget/ActionBarView;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 1901
    const-string v5, "android:ActionBar"

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    goto :goto_9
.end method

.method sendCloseSystemWindows()V
    .registers 3

    .prologue
    .line 4215
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 4216
    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 4219
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 4220
    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_8

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundResource:I

    if-eqz v0, :cond_16

    .line 1269
    :cond_8
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundResource:I

    .line 1270
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1271
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v0, :cond_16

    .line 1272
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1275
    :cond_16
    return-void
.end method

.method public final setChildDrawable(ILandroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3580
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 3581
    .local v0, "st":Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    iput-object p2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->child:Landroid/graphics/drawable/Drawable;

    .line 3582
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V

    .line 3583
    return-void
.end method

.method public final setChildInt(II)V
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    .prologue
    .line 3587
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->updateInt(IIZ)V

    .line 3588
    return-void
.end method

.method public final setContainer(Landroid/view/Window;)V
    .registers 2
    .param p1, "container"    # Landroid/view/Window;

    .prologue
    .line 293
    invoke-super {p0, p1}, Landroid/view/Window;->setContainer(Landroid/view/Window;)V

    .line 294
    return-void
.end method

.method public setContentView(I)V
    .registers 5
    .param p1, "layoutResID"    # I

    .prologue
    .line 335
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_1e

    .line 336
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    .line 340
    :goto_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 341
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 342
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 343
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 345
    :cond_1d
    return-void

    .line 338
    .end local v0    # "cb":Landroid/view/Window$Callback;
    :cond_1e
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_7
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 349
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 354
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_1c

    .line 355
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    .line 359
    :goto_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 361
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 362
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 364
    :cond_1b
    return-void

    .line 357
    .end local v0    # "cb":Landroid/view/Window$Callback;
    :cond_1c
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_7
.end method

.method public setDefaultIcon(I)V
    .registers 4
    .param p1, "resId"    # I

    .prologue
    .line 1508
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    .line 1522
    :cond_6
    :goto_6
    return-void

    .line 1511
    :cond_7
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mIconRes:I

    .line 1512
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->hasIcon()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_6

    .line 1514
    :cond_1b
    if-eqz p1, :cond_29

    .line 1515
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setIcon(I)V

    .line 1516
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    goto :goto_6

    .line 1518
    :cond_29
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1519
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    goto :goto_6
.end method

.method public setDefaultLogo(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 1535
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    .line 1542
    :cond_6
    :goto_6
    return-void

    .line 1538
    :cond_7
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLogoRes:I

    .line 1539
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->hasLogo()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1540
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setLogo(I)V

    goto :goto_6
.end method

.method protected final setFeatureDefaultDrawable(ILandroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1328
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1329
    .local v0, "st":Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    iget-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    if-eq v1, p2, :cond_f

    .line 1330
    iput-object p2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    .line 1331
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V

    .line 1333
    :cond_f
    return-void
.end method

.method public final setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    .line 1309
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1310
    .local v0, "st":Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->resid:I

    .line 1311
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    .line 1312
    iget-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    if-eq v1, p2, :cond_14

    .line 1313
    iput-object p2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 1314
    invoke-direct {p0, p1, v0, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V

    .line 1316
    :cond_14
    return-void
.end method

.method public setFeatureDrawableAlpha(II)V
    .registers 5
    .param p1, "featureId"    # I
    .param p2, "alpha"    # I

    .prologue
    .line 1320
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1321
    .local v0, "st":Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    iget v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->alpha:I

    if-eq v1, p2, :cond_f

    .line 1322
    iput p2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->alpha:I

    .line 1323
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V

    .line 1325
    :cond_f
    return-void
.end method

.method public final setFeatureDrawableResource(II)V
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "resId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1279
    if-eqz p2, :cond_23

    .line 1280
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1281
    .local v0, "st":Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    iget v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->resid:I

    if-eq v1, p2, :cond_22

    .line 1282
    iput p2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->resid:I

    .line 1283
    iput-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    .line 1284
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 1285
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V

    .line 1290
    .end local v0    # "st":Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    :cond_22
    :goto_22
    return-void

    .line 1288
    :cond_23
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_22
.end method

.method public final setFeatureDrawableUri(ILandroid/net/Uri;)V
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 1294
    if-eqz p2, :cond_22

    .line 1295
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1296
    .local v0, "st":Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    iget-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    if-eqz v1, :cond_14

    iget-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 1297
    :cond_14
    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->resid:I

    .line 1298
    iput-object p2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    .line 1299
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->loadImageURI(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 1300
    invoke-direct {p0, p1, v0, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V

    .line 1305
    .end local v0    # "st":Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    :cond_21
    :goto_21
    return-void

    .line 1303
    :cond_22
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_21
.end method

.method protected setFeatureFromAttrs(ILandroid/content/res/TypedArray;II)V
    .registers 9
    .param p1, "featureId"    # I
    .param p2, "attrs"    # Landroid/content/res/TypedArray;
    .param p3, "drawableAttr"    # I
    .param p4, "alphaAttr"    # I

    .prologue
    .line 3019
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3020
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_c

    .line 3021
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->requestFeature(I)Z

    .line 3022
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->setFeatureDefaultDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 3024
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getFeatures()I

    move-result v2

    const/4 v3, 0x1

    shl-int/2addr v3, p1

    and-int/2addr v2, v3

    if-eqz v2, :cond_1f

    .line 3025
    const/4 v2, -0x1

    invoke-virtual {p2, p4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 3026
    .local v0, "alpha":I
    if-ltz v0, :cond_1f

    .line 3027
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->setFeatureDrawableAlpha(II)V

    .line 3030
    .end local v0    # "alpha":I
    :cond_1f
    return-void
.end method

.method public final setFeatureInt(II)V
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    .prologue
    .line 1339
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->updateInt(IIZ)V

    .line 1340
    return-void
.end method

.method public setGlanceViewEnable(Z)V
    .registers 3
    .param p1, "value"    # Z

    .prologue
    .line 3771
    invoke-static {p1}, Lcom/samsung/android/glanceview/GlanceView;->setEnable(Z)V

    .line 3772
    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/glanceview/GlanceView;->setGlanceContext(Landroid/content/Context;)V

    .line 3774
    :goto_d
    return-void

    .line 3773
    :cond_e
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/glanceview/GlanceView;->setGlanceContext(Landroid/content/Context;)V

    goto :goto_d
.end method

.method public setIcon(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 1498
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mIconRes:I

    .line 1499
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    .line 1500
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    .line 1501
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v0, :cond_17

    .line 1502
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setIcon(I)V

    .line 1504
    :cond_17
    return-void
.end method

.method public setLocalFocus(ZZ)V
    .registers 4
    .param p1, "hasFocus"    # Z
    .param p2, "inTouchMode"    # Z

    .prologue
    .line 1546
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl;->windowFocusChanged(ZZ)V

    .line 1548
    return-void
.end method

.method public setLogo(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 1526
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLogoRes:I

    .line 1527
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mResourcesSetFlags:I

    .line 1528
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v0, :cond_11

    .line 1529
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setLogo(I)V

    .line 1531
    :cond_11
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 411
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    :cond_9
    :goto_9
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    .line 416
    return-void

    .line 412
    :cond_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v0, :cond_9

    .line 413
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_9
.end method

.method public setTitleColor(I)V
    .registers 3
    .param p1, "textColor"    # I

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 421
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 423
    :cond_9
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleColor:I

    .line 424
    return-void
.end method

.method public setUiOptions(I)V
    .registers 2
    .param p1, "uiOptions"    # I

    .prologue
    .line 325
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mUiOptions:I

    .line 326
    return-void
.end method

.method public setUiOptions(II)V
    .registers 5
    .param p1, "uiOptions"    # I
    .param p2, "mask"    # I

    .prologue
    .line 330
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mUiOptions:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mUiOptions:I

    .line 331
    return-void
.end method

.method public setVolumeControlStream(I)V
    .registers 2
    .param p1, "streamType"    # I

    .prologue
    .line 3761
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mVolumeControlStreamType:I

    .line 3762
    return-void
.end method

.method public superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1597
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1577
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1582
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1592
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public takeInputQueue(Landroid/view/InputQueue$Callback;)V
    .registers 2
    .param p1, "callback"    # Landroid/view/InputQueue$Callback;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 390
    return-void
.end method

.method public takeKeyEvents(Z)V
    .registers 3
    .param p1, "get"    # Z

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setFocusable(Z)V

    .line 1573
    return-void
.end method

.method public takeSurface(Landroid/view/SurfaceHolder$Callback2;)V
    .registers 2
    .param p1, "callback"    # Landroid/view/SurfaceHolder$Callback2;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    .line 386
    return-void
.end method

.method public final togglePanel(ILandroid/view/KeyEvent;)V
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 815
    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .line 816
    .local v0, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    iget-boolean v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v1, :cond_d

    .line 817
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    .line 821
    :goto_c
    return-void

    .line 819
    :cond_d
    invoke-direct {p0, v0, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->openPanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_c
.end method

.method protected final updateDrawable(IZ)V
    .registers 5
    .param p1, "featureId"    # I
    .param p2, "fromActive"    # Z

    .prologue
    .line 1352
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1353
    .local v0, "st":Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    if-eqz v0, :cond_a

    .line 1354
    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V

    .line 1356
    :cond_a
    return-void
.end method
