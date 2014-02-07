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

.field private static final FOCUSED_ID_TAG:Ljava/lang/String; = "android:focusedViewId"

.field private static final LAUNCHER_ACTION_ALL_APPS:Ljava/lang/String; = "com.android.launcher2.ALL_APPS"

.field private static final PANELS_TAG:Ljava/lang/String; = "android:Panels"

.field private static final SWEEP_OPEN_MENU:Z = false

.field private static final TAG:Ljava/lang/String; = "PhoneWindow"

.field private static final VIEWS_TAG:Ljava/lang/String; = "android:views"

.field private static mFindoEnabled:Z

.field private static mFindoFeatureChecked:Z

.field private static mSwitchToPreviousSizeButton:Landroid/widget/PopupWindow;

.field private static mXPosOfSwitchToPreviousSizeButton:I

.field private static mYPosOfSwitchToPreviousSizeButton:I

.field private static penState:Z

.field private static sInstallDecorMethod:Ljava/lang/reflect/Method;

.field private static sMultiPhoneWindowEventClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sOnAttachedFromWindow:Ljava/lang/reflect/Method;

.field private static sOnConfigurationChangedMethod:Ljava/lang/reflect/Method;

.field private static sOnDetachedFromWindow:Ljava/lang/reflect/Method;

.field private static sOnWindowAttributesChangedMethod:Ljava/lang/reflect/Method;

.field private static sOnWindowInfoChangedMethod:Ljava/lang/reflect/Method;

.field private static sOnWindowStatusChangedMethod:Ljava/lang/reflect/Method;

.field static final sRotationWatcher:Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;


# instance fields
.field private USE_SET_INTEGRATOR_HAPTIC:Z

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

.field private mInvalidatePanelMenuFeatures:I

.field private mInvalidatePanelMenuPosted:Z

.field private final mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

.field private mIsFloating:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLeftIconView:Landroid/widget/ImageView;

.field final mMinWidthMajor:Landroid/util/TypedValue;

.field final mMinWidthMinor:Landroid/util/TypedValue;

.field private mMultiPhoneWindowEvent:Ljava/lang/Object;

.field private mPanelChordingKey:I

.field private mPanelMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;

.field private mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

.field private mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

.field private mRightIconView:Landroid/widget/ImageView;

.field private mSamsungZoomKeyController:Lcom/android/internal/policy/impl/sec/SamsungZoomKeyController;

.field mSmartScrollVisQ:Lcom/android/internal/widget/SmartScrollVisQ;

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
    .registers 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 257
    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->sMultiPhoneWindowEventClass:Ljava/lang/Class;

    .line 258
    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->sInstallDecorMethod:Ljava/lang/reflect/Method;

    .line 259
    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->sOnConfigurationChangedMethod:Ljava/lang/reflect/Method;

    .line 260
    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->sOnWindowStatusChangedMethod:Ljava/lang/reflect/Method;

    .line 261
    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->sOnWindowAttributesChangedMethod:Ljava/lang/reflect/Method;

    .line 262
    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->sOnWindowInfoChangedMethod:Ljava/lang/reflect/Method;

    .line 263
    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->sOnDetachedFromWindow:Ljava/lang/reflect/Method;

    .line 264
    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->sOnAttachedFromWindow:Ljava/lang/reflect/Method;

    .line 265
    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->mSwitchToPreviousSizeButton:Landroid/widget/PopupWindow;

    .line 266
    sput v2, Lcom/android/internal/policy/impl/PhoneWindow;->mXPosOfSwitchToPreviousSizeButton:I

    .line 267
    sput v2, Lcom/android/internal/policy/impl/PhoneWindow;->mYPosOfSwitchToPreviousSizeButton:I

    .line 280
    sput-boolean v1, Lcom/android/internal/policy/impl/PhoneWindow;->penState:Z

    .line 283
    sput-boolean v1, Lcom/android/internal/policy/impl/PhoneWindow;->mFindoFeatureChecked:Z

    .line 284
    sput-boolean v1, Lcom/android/internal/policy/impl/PhoneWindow;->mFindoEnabled:Z

    .line 305
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 308
    invoke-direct {p0, p1}, Landroid/view/Window;-><init>(Landroid/content/Context;)V

    .line 166
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 173
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindow$DialogMenuCallback;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/PhoneWindow$DialogMenuCallback;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;I)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/impl/PhoneWindow$DialogMenuCallback;

    .line 175
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    .line 176
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    .line 228
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundResource:I

    .line 232
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mFrameResource:I

    .line 234
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTextColor:I

    .line 236
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    .line 238
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleColor:I

    .line 240
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    .line 246
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mVolumeControlStreamType:I

    .line 256
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mMultiPhoneWindowEvent:Ljava/lang/Object;

    .line 271
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSmartScrollVisQ:Lcom/android/internal/widget/SmartScrollVisQ;

    .line 274
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mUiOptions:I

    .line 288
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindow$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindow$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    .line 309
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 310
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/PhoneWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 160
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/PhoneWindow;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;
    .param p1, "x1"    # I

    .prologue
    .line 160
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    return p1
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/PhoneWindow;IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .registers 4
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 160
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/PhoneWindow;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/widget/ActionBarView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    return-object v0
.end method

.method static synthetic access$1202(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 160
    sput-boolean p0, Lcom/android/internal/policy/impl/PhoneWindow;->penState:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/view/menu/ContextMenuBuilder;)Lcom/android/internal/view/menu/ContextMenuBuilder;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;
    .param p1, "x1"    # Lcom/android/internal/view/menu/ContextMenuBuilder;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/view/menu/MenuDialogHelper;)Lcom/android/internal/view/menu/MenuDialogHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;
    .param p1, "x1"    # Lcom/android/internal/view/menu/MenuDialogHelper;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/PhoneWindow;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;
    .param p1, "x1"    # I

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->setDefaultWindowFormat(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/PhoneWindow;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->openPanelsAfterRestore()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/PhoneWindow;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mMultiPhoneWindowEvent:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2100()Ljava/lang/reflect/Method;
    .registers 1

    .prologue
    .line 160
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->sOnAttachedFromWindow:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/PhoneWindow;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->checkSwitchToPreviousSizeButton()V

    return-void
.end method

.method static synthetic access$2300()Ljava/lang/reflect/Method;
    .registers 1

    .prologue
    .line 160
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->sOnDetachedFromWindow:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    return-object v0
.end method

.method static synthetic access$2500()Landroid/widget/PopupWindow;
    .registers 1

    .prologue
    .line 160
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->mSwitchToPreviousSizeButton:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$2502(Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .registers 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 160
    sput-object p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSwitchToPreviousSizeButton:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$2600()Ljava/lang/Class;
    .registers 1

    .prologue
    .line 160
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->sMultiPhoneWindowEventClass:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$3300()I
    .registers 1

    .prologue
    .line 160
    sget v0, Lcom/android/internal/policy/impl/PhoneWindow;->mXPosOfSwitchToPreviousSizeButton:I

    return v0
.end method

.method static synthetic access$3302(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 160
    sput p0, Lcom/android/internal/policy/impl/PhoneWindow;->mXPosOfSwitchToPreviousSizeButton:I

    return p0
.end method

.method static synthetic access$3500()I
    .registers 1

    .prologue
    .line 160
    sget v0, Lcom/android/internal/policy/impl/PhoneWindow;->mYPosOfSwitchToPreviousSizeButton:I

    return v0
.end method

.method static synthetic access$3502(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 160
    sput p0, Lcom/android/internal/policy/impl/PhoneWindow;->mYPosOfSwitchToPreviousSizeButton:I

    return p0
.end method

.method static synthetic access$4500(Lcom/android/internal/policy/impl/PhoneWindow;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->dismissContextMenu()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/PhoneWindow;ILcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .param p3, "x3"    # Landroid/view/Menu;

    .prologue
    .line 160
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindow;->callOnPanelClosed(ILcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/PhoneWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 160
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .registers 6
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow;
    .param p1, "x1"    # Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/view/KeyEvent;
    .param p4, "x4"    # I

    .prologue
    .line 160
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method private callOnPanelClosed(ILcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "panel"    # Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 4011
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 4012
    .local v0, "cb":Landroid/view/Window$Callback;
    if-nez v0, :cond_7

    .line 4037
    :cond_6
    :goto_6
    return-void

    .line 4016
    :cond_7
    if-nez p3, :cond_1a

    .line 4018
    if-nez p2, :cond_16

    .line 4019
    if-ltz p1, :cond_16

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    array-length v1, v1

    if-ge p1, v1, :cond_16

    .line 4020
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    aget-object p2, v1, p1

    .line 4024
    :cond_16
    if-eqz p2, :cond_1a

    .line 4026
    iget-object p3, p2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 4031
    :cond_1a
    if-eqz p2, :cond_20

    iget-boolean v1, p2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v1, :cond_6

    .line 4034
    :cond_20
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_6

    .line 4035
    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_6
.end method

.method private checkSwitchToPreviousSizeButton()V
    .registers 5

    .prologue
    .line 4571
    const/4 v0, 0x0

    .line 4572
    .local v0, "keyguardSecured":Z
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v1

    .line 4575
    .local v1, "mKeyguard":Landroid/app/KeyguardManager;
    if-eqz v1, :cond_14

    :try_start_7
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_10} :catch_23

    move-result v2

    if-eqz v2, :cond_14

    .line 4576
    const/4 v0, 0x1

    .line 4581
    :cond_14
    :goto_14
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v2, :cond_20

    .line 4582
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-nez v0, :cond_21

    const/4 v2, 0x1

    :goto_1d
    invoke-virtual {v3, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->refreshSwitchToPreviousSizeButton(Z)V

    .line 4584
    :cond_20
    return-void

    .line 4582
    :cond_21
    const/4 v2, 0x0

    goto :goto_1d

    .line 4578
    :catch_23
    move-exception v2

    goto :goto_14
.end method

.method private static clearMenuViews(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)V
    .registers 2
    .param p0, "st"    # Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .prologue
    .line 626
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    .line 629
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 631
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->clearMenuPresenters()V

    .line 632
    return-void
.end method

.method private declared-synchronized closeContextMenu()V
    .registers 2

    .prologue
    .line 1081
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    if-eqz v0, :cond_d

    .line 1082
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ContextMenuBuilder;->close()V

    .line 1083
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->dismissContextMenu()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 1085
    :cond_d
    monitor-exit p0

    return-void

    .line 1081
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized dismissContextMenu()V
    .registers 2

    .prologue
    .line 1092
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    .line 1094
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    if-eqz v0, :cond_10

    .line 1095
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuDialogHelper;->dismiss()V

    .line 1096
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_12

    .line 1098
    :cond_10
    monitor-exit p0

    return-void

    .line 1092
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static ensureFindoFeatureChecked(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4605
    if-eqz p0, :cond_15

    sget-boolean v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFindoFeatureChecked:Z

    if-nez v0, :cond_15

    .line 4606
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.findo"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFindoEnabled:Z

    .line 4607
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFindoFeatureChecked:Z

    .line 4609
    :cond_15
    return-void
.end method

.method private getActivityCount(Landroid/content/Intent;)I
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1803
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1804
    .local v1, "manager":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1806
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    return v2
.end method

.method private getCircularProgressBar(Z)Landroid/widget/ProgressBar;
    .registers 4
    .param p1, "shouldInstallDecor"    # Z

    .prologue
    .line 3962
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_7

    .line 3963
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    .line 3972
    :goto_6
    return-object v0

    .line 3965
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_10

    if-eqz p1, :cond_10

    .line 3966
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    .line 3968
    :cond_10
    const v0, 0x1020459

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    .line 3969
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_25

    .line 3970
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3972
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

    .line 3802
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getFeatures()I

    move-result v3

    const/4 v4, 0x1

    shl-int/2addr v4, p1

    and-int/2addr v3, v4

    if-nez v3, :cond_16

    .line 3803
    if-nez p2, :cond_e

    .line 3804
    const/4 v2, 0x0

    .line 3822
    :cond_d
    :goto_d
    return-object v2

    .line 3806
    :cond_e
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "The feature has not been requested"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3810
    :cond_16
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDrawables:[Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    .local v0, "ar":[Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    if-eqz v0, :cond_1d

    array-length v3, v0

    if-gt v3, p1, :cond_2a

    .line 3811
    :cond_1d
    add-int/lit8 v3, p1, 0x1

    new-array v1, v3, [Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    .line 3812
    .local v1, "nar":[Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    if-eqz v0, :cond_27

    .line 3813
    array-length v3, v0

    invoke-static {v0, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3815
    :cond_27
    move-object v0, v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDrawables:[Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    .line 3818
    .end local v1    # "nar":[Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    :cond_2a
    aget-object v2, v0, p1

    .line 3819
    .local v2, "st":Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    if-nez v2, :cond_d

    .line 3820
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
    .line 3976
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_7

    .line 3977
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    .line 3986
    :goto_6
    return-object v0

    .line 3979
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_10

    if-eqz p1, :cond_10

    .line 3980
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    .line 3982
    :cond_10
    const v0, 0x102045a

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    .line 3983
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_25

    .line 3984
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3986
    :cond_25
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    goto :goto_6
.end method

.method private getKeyguardManager()Landroid/app/KeyguardManager;
    .registers 3

    .prologue
    .line 1811
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_12

    .line 1812
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 1815
    :cond_12
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method private getLeftIconView()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 3952
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLeftIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 3953
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLeftIconView:Landroid/widget/ImageView;

    .line 3958
    :goto_6
    return-object v0

    .line 3955
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_e

    .line 3956
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    .line 3958
    :cond_e
    const v0, 0x1020289

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLeftIconView:Landroid/widget/ImageView;

    goto :goto_6
.end method

.method private getOptionsPanelGravity()I
    .registers 7

    .prologue
    .line 1284
    :try_start_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 1285
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x101043b

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1286
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v2, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1288
    .local v2, "smallestScreenWidthDp":I
    iget v3, v1, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_31

    const/16 v3, 0x258

    if-lt v2, v3, :cond_31

    .line 1289
    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindow$WindowManagerHolder;->sWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v3}, Landroid/view/IWindowManager;->getPreferredOptionsPanelGravityTablet()I

    move-result v3

    .line 1296
    .end local v1    # "outValue":Landroid/util/TypedValue;
    .end local v2    # "smallestScreenWidthDp":I
    :goto_30
    return v3

    .line 1292
    .restart local v1    # "outValue":Landroid/util/TypedValue;
    .restart local v2    # "smallestScreenWidthDp":I
    :cond_31
    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindow$WindowManagerHolder;->sWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v3}, Landroid/view/IWindowManager;->getPreferredOptionsPanelGravity()I
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_36} :catch_38

    move-result v3

    goto :goto_30

    .line 1294
    .end local v1    # "outValue":Landroid/util/TypedValue;
    .end local v2    # "smallestScreenWidthDp":I
    :catch_38
    move-exception v0

    .line 1295
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "PhoneWindow"

    const-string v4, "Couldn\'t getOptionsPanelGravity; using default"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1296
    const/16 v3, 0x51

    goto :goto_30
.end method

.method private getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "required"    # Z

    .prologue
    .line 3834
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

    .line 3849
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getFeatures()I

    move-result v3

    const/4 v4, 0x1

    shl-int/2addr v4, p1

    and-int/2addr v3, v4

    if-nez v3, :cond_16

    .line 3850
    if-nez p2, :cond_e

    .line 3851
    const/4 v2, 0x0

    .line 3871
    :cond_d
    :goto_d
    return-object v2

    .line 3853
    :cond_e
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "The feature has not been requested"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3857
    :cond_16
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .local v0, "ar":[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_1d

    array-length v3, v0

    if-gt v3, p1, :cond_2a

    .line 3858
    :cond_1d
    add-int/lit8 v3, p1, 0x1

    new-array v1, v3, [Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .line 3859
    .local v1, "nar":[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_27

    .line 3860
    array-length v3, v0

    invoke-static {v0, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3862
    :cond_27
    move-object v0, v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .line 3865
    .end local v1    # "nar":[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_2a
    aget-object v2, v0, p1

    .line 3866
    .local v2, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-nez v2, :cond_d

    .line 3867
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
    .line 3990
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mRightIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 3991
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mRightIconView:Landroid/widget/ImageView;

    .line 3996
    :goto_6
    return-object v0

    .line 3993
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_e

    .line 3994
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    .line 3996
    :cond_e
    const v0, 0x102028b

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mRightIconView:Landroid/widget/ImageView;

    goto :goto_6
.end method

.method private hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .registers 8
    .param p1, "horizontalProgressBar"    # Landroid/widget/ProgressBar;
    .param p2, "spinnyProgressBar"    # Landroid/widget/ProgressBar;

    .prologue
    const/4 v4, 0x4

    .line 1575
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v1

    .line 1576
    .local v1, "features":I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10a0001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1577
    .local v0, "anim":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1578
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_25

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_25

    .line 1580
    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1581
    invoke-virtual {p2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1583
    :cond_25
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_35

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_35

    .line 1585
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1586
    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1588
    :cond_35
    return-void
.end method

.method private installDecor()V
    .registers 25

    .prologue
    .line 3602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v20, v0

    if-nez v20, :cond_47

    .line 3603
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->generateDecor()Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .line 3604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v20, v0

    const/high16 v21, 0x40000

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setDescendantFocusability(I)V

    .line 3605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setIsRootNamespace(Z)V

    .line 3606
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    move/from16 v20, v0

    if-nez v20, :cond_47

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    move/from16 v20, v0

    if-eqz v20, :cond_47

    .line 3607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 3610
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    if-nez v20, :cond_23a

    .line 3611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->generateLayout(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/view/ViewGroup;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    .line 3614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->makeOptionalFitsSystemWindows()V

    .line 3616
    const v20, 0x1020016

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    .line 3617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_259

    .line 3618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getLayoutDirection()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setLayoutDirection(I)V

    .line 3619
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v20

    and-int/lit8 v20, v20, 0x2

    if-eqz v20, :cond_248

    .line 3620
    const v20, 0x102028c

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 3621
    .local v18, "titleContainer":Landroid/view/View;
    if-eqz v18, :cond_23b

    .line 3622
    const/16 v20, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3626
    :goto_b8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/widget/FrameLayout;

    move/from16 v20, v0

    if-eqz v20, :cond_d3

    .line 3627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    check-cast v20, Landroid/widget/FrameLayout;

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 3704
    .end local v18    # "titleContainer":Landroid/view/View;
    :cond_d3
    :goto_d3
    sget-object v20, Lcom/android/internal/policy/impl/PhoneWindow;->sMultiPhoneWindowEventClass:Ljava/lang/Class;

    if-nez v20, :cond_18f

    .line 3706
    :try_start_d7
    const-string v20, "com.android.internal.policy.impl.multiwindow.MultiPhoneWindowEvent"

    invoke-static/range {v20 .. v20}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 3707
    .local v5, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v20, "installDecor"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-class v23, Landroid/view/Window;

    aput-object v23, v21, v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v20

    sput-object v20, Lcom/android/internal/policy/impl/PhoneWindow;->sInstallDecorMethod:Ljava/lang/reflect/Method;

    .line 3708
    const-string v20, "onConfigurationChanged"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-class v23, Landroid/content/res/Configuration;

    aput-object v23, v21, v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v20

    sput-object v20, Lcom/android/internal/policy/impl/PhoneWindow;->sOnConfigurationChangedMethod:Ljava/lang/reflect/Method;

    .line 3709
    const-string v20, "onWindowStatusChanged"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    sget-object v23, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v23, v21, v22

    const/16 v22, 0x1

    sget-object v23, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v23, v21, v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v20

    sput-object v20, Lcom/android/internal/policy/impl/PhoneWindow;->sOnWindowStatusChangedMethod:Ljava/lang/reflect/Method;

    .line 3710
    const-string v20, "onWindowAttributesChanged"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    sget-object v23, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v23, v21, v22

    const/16 v22, 0x1

    sget-object v23, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v23, v21, v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v20

    sput-object v20, Lcom/android/internal/policy/impl/PhoneWindow;->sOnWindowAttributesChangedMethod:Ljava/lang/reflect/Method;

    .line 3711
    const-string v20, "onWindowInfoChanged"

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v20

    sput-object v20, Lcom/android/internal/policy/impl/PhoneWindow;->sOnWindowInfoChangedMethod:Ljava/lang/reflect/Method;

    .line 3712
    const-string v20, "onDetachedFromWindow"

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v20

    sput-object v20, Lcom/android/internal/policy/impl/PhoneWindow;->sOnDetachedFromWindow:Ljava/lang/reflect/Method;

    .line 3713
    const-string v20, "onAttachedFromWindow"

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v20

    sput-object v20, Lcom/android/internal/policy/impl/PhoneWindow;->sOnAttachedFromWindow:Ljava/lang/reflect/Method;

    .line 3714
    sput-object v5, Lcom/android/internal/policy/impl/PhoneWindow;->sMultiPhoneWindowEventClass:Ljava/lang/Class;
    :try_end_18f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d7 .. :try_end_18f} :catch_3e3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d7 .. :try_end_18f} :catch_3e0

    .line 3723
    .end local v5    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_18f
    :goto_18f
    :try_start_18f
    sget-object v20, Lcom/android/internal/policy/impl/PhoneWindow;->sMultiPhoneWindowEventClass:Ljava/lang/Class;

    if-eqz v20, :cond_1d6

    .line 3724
    sget-object v20, Lcom/android/internal/policy/impl/PhoneWindow;->sInstallDecorMethod:Ljava/lang/reflect/Method;

    const/16 v21, 0x0

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object p0, v22, v23

    invoke-virtual/range {v20 .. v22}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mMultiPhoneWindowEvent:Ljava/lang/Object;

    .line 3726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    move-object/from16 v20, v0

    if-nez v20, :cond_1d6

    .line 3727
    const/4 v9, 0x0

    .line 3728
    .local v9, "isSupportedMultiWindow":Z
    const/4 v10, 0x0

    .line 3729
    .local v10, "isWindowNoController":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v20, v0

    # invokes: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getWindowMode()I
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$300(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v19

    .line 3731
    .local v19, "windowMode":I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->option(I)I

    move-result v20

    sget v21, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_OPTION_COMMON_RESIZE:I

    and-int v20, v20, v21

    if-eqz v20, :cond_1cc

    .line 3733
    const/4 v9, 0x1

    .line 3736
    :cond_1cc
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->option(I)I

    move-result v20

    sget v21, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_OPTION_COMMON_NO_TITLE_BAR:I
    :try_end_1d2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18f .. :try_end_1d2} :catch_39d
    .catch Ljava/lang/IllegalAccessException; {:try_start_18f .. :try_end_1d2} :catch_3a3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_18f .. :try_end_1d2} :catch_3a9

    and-int v20, v20, v21

    if-eqz v20, :cond_1d6

    .line 3763
    .end local v9    # "isSupportedMultiWindow":Z
    .end local v10    # "isWindowNoController":Z
    .end local v19    # "windowMode":I
    :cond_1d6
    :goto_1d6
    :try_start_1d6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x80

    invoke-virtual/range {v20 .. v22}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 3766
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_23a

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v20, v0

    if-eqz v20, :cond_23a

    .line 3767
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v20, v0

    sget-object v21, Landroid/content/pm/ActivityInfo;->FORCED_LOCAL_ORIENTATION:Ljava/lang/String;

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 3771
    .local v8, "forcedLocalOrientation":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    .line 3772
    .local v12, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v6

    .line 3775
    .local v6, "displayInfo":Landroid/view/DisplayInfo;
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v8, v0, :cond_3af

    .line 3776
    iget v0, v6, Landroid/view/DisplayInfo;->logicalWidth:I

    move/from16 v20, v0

    iget v0, v6, Landroid/view/DisplayInfo;->logicalHeight:I

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v20

    move/from16 v0, v20

    iput v0, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3777
    iget v0, v6, Landroid/view/DisplayInfo;->logicalWidth:I

    move/from16 v20, v0

    iget v0, v6, Landroid/view/DisplayInfo;->logicalHeight:I

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v20

    move/from16 v0, v20

    iput v0, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3778
    const/16 v20, 0x33

    move/from16 v0, v20

    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->gravity:I
    :try_end_23a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1d6 .. :try_end_23a} :catch_3dd

    .line 3789
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v8    # "forcedLocalOrientation":I
    .end local v12    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_23a
    :goto_23a
    return-void

    .line 3624
    .restart local v18    # "titleContainer":Landroid/view/View;
    :cond_23b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_b8

    .line 3630
    .end local v18    # "titleContainer":Landroid/view/View;
    :cond_248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d3

    .line 3633
    :cond_259
    const v20, 0x102045e

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/android/internal/widget/ActionBarView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    .line 3634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_d3

    .line 3635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/widget/ActionBarView;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 3636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/ActionBarView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v20

    if-nez v20, :cond_29c

    .line 3637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/widget/ActionBarView;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 3639
    :cond_29c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v11

    .line 3640
    .local v11, "localFeatures":I
    and-int/lit8 v20, v11, 0x4

    if-eqz v20, :cond_2ad

    .line 3641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/ActionBarView;->initProgress()V

    .line 3643
    :cond_2ad
    and-int/lit8 v20, v11, 0x20

    if-eqz v20, :cond_2ba

    .line 3644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/ActionBarView;->initIndeterminateProgress()V

    .line 3647
    :cond_2ba
    const/4 v15, 0x0

    .line 3648
    .local v15, "splitActionBar":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mUiOptions:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_371

    const/16 v17, 0x1

    .line 3650
    .local v17, "splitWhenNarrow":Z
    :goto_2c7
    if-eqz v17, :cond_385

    .line 3652
    new-instance v13, Landroid/util/TypedValue;

    invoke-direct {v13}, Landroid/util/TypedValue;-><init>()V

    .line 3653
    .local v13, "outValue":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v20

    const v21, 0x101043b

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v13, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3655
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v20

    move-object/from16 v0, v20

    iget v14, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 3657
    .local v14, "smallestScreenWidthDp":I
    iget v0, v13, Landroid/util/TypedValue;->data:I

    move/from16 v20, v0

    if-eqz v20, :cond_375

    const/16 v20, 0x258

    move/from16 v0, v20

    if-ge v14, v0, :cond_375

    .line 3659
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1110075

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    .line 3671
    .end local v13    # "outValue":Landroid/util/TypedValue;
    .end local v14    # "smallestScreenWidthDp":I
    :goto_30f
    const v20, 0x1020460

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/android/internal/widget/ActionBarContainer;

    .line 3673
    .local v16, "splitView":Lcom/android/internal/widget/ActionBarContainer;
    if-eqz v16, :cond_393

    .line 3674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->setSplitView(Lcom/android/internal/widget/ActionBarContainer;)V

    .line 3675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/android/internal/widget/ActionBarView;->setSplitActionBar(Z)V

    .line 3676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->setSplitWhenNarrow(Z)V

    .line 3678
    const v20, 0x102045f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/ActionBarContextView;

    .line 3680
    .local v4, "cab":Lcom/android/internal/widget/ActionBarContextView;
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/ActionBarContextView;->setSplitView(Lcom/android/internal/widget/ActionBarContainer;)V

    .line 3681
    invoke-virtual {v4, v15}, Lcom/android/internal/widget/ActionBarContextView;->setSplitActionBar(Z)V

    .line 3682
    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/ActionBarContextView;->setSplitWhenNarrow(Z)V

    .line 3690
    .end local v4    # "cab":Lcom/android/internal/widget/ActionBarContextView;
    :cond_35d
    :goto_35d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/internal/policy/impl/PhoneWindow$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow$2;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;)V

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_d3

    .line 3648
    .end local v16    # "splitView":Lcom/android/internal/widget/ActionBarContainer;
    .end local v17    # "splitWhenNarrow":Z
    :cond_371
    const/16 v17, 0x0

    goto/16 :goto_2c7

    .line 3663
    .restart local v13    # "outValue":Landroid/util/TypedValue;
    .restart local v14    # "smallestScreenWidthDp":I
    .restart local v17    # "splitWhenNarrow":Z
    :cond_375
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1110006

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    goto :goto_30f

    .line 3668
    .end local v13    # "outValue":Landroid/util/TypedValue;
    .end local v14    # "smallestScreenWidthDp":I
    :cond_385
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v20

    const/16 v21, 0x17

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    goto/16 :goto_30f

    .line 3683
    .restart local v16    # "splitView":Lcom/android/internal/widget/ActionBarContainer;
    :cond_393
    if-eqz v15, :cond_35d

    .line 3684
    const-string v20, "PhoneWindow"

    const-string v21, "Requested split action bar with incompatible window decor! Ignoring request."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35d

    .line 3752
    .end local v11    # "localFeatures":I
    .end local v15    # "splitActionBar":Z
    .end local v16    # "splitView":Lcom/android/internal/widget/ActionBarContainer;
    .end local v17    # "splitWhenNarrow":Z
    :catch_39d
    move-exception v7

    .line 3753
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_1d6

    .line 3754
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3a3
    move-exception v7

    .line 3755
    .local v7, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v7}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_1d6

    .line 3756
    .end local v7    # "e":Ljava/lang/IllegalAccessException;
    :catch_3a9
    move-exception v7

    .line 3757
    .local v7, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v7}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_1d6

    .line 3779
    .end local v7    # "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v6    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v8    # "forcedLocalOrientation":I
    .restart local v12    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_3af
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v8, v0, :cond_23a

    .line 3780
    :try_start_3b5
    iget v0, v6, Landroid/view/DisplayInfo;->logicalWidth:I

    move/from16 v20, v0

    iget v0, v6, Landroid/view/DisplayInfo;->logicalHeight:I

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v20

    move/from16 v0, v20

    iput v0, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3781
    iget v0, v6, Landroid/view/DisplayInfo;->logicalWidth:I

    move/from16 v20, v0

    iget v0, v6, Landroid/view/DisplayInfo;->logicalHeight:I

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v20

    move/from16 v0, v20

    iput v0, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3782
    const/16 v20, 0x33

    move/from16 v0, v20

    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->gravity:I
    :try_end_3db
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3b5 .. :try_end_3db} :catch_3dd

    goto/16 :goto_23a

    .line 3785
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v8    # "forcedLocalOrientation":I
    .end local v12    # "lp":Landroid/view/WindowManager$LayoutParams;
    :catch_3dd
    move-exception v20

    goto/16 :goto_23a

    .line 3717
    :catch_3e0
    move-exception v20

    goto/16 :goto_18f

    .line 3715
    :catch_3e3
    move-exception v20

    goto/16 :goto_18f
.end method

.method private launchDefaultSearch()Z
    .registers 3

    .prologue
    .line 4046
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 4047
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 4048
    :cond_c
    const/4 v1, 0x0

    .line 4051
    :goto_d
    return v1

    .line 4050
    :cond_e
    const-string v1, "search"

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 4051
    invoke-interface {v0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v1

    goto :goto_d
.end method

.method private loadImageURI(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 3793
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

    .line 3798
    :goto_12
    return-object v1

    .line 3795
    :catch_13
    move-exception v0

    .line 3796
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
    .registers 23
    .param p1, "st"    # Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 650
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v4, :cond_1f

    .line 651
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getWindowMode()I
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$300(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v18

    .line 652
    .local v18, "windowMode":I
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->option(I)I

    move-result v4

    sget v5, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_OPTION_COMMON_MINIMIZED:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_1f

    .line 654
    const-string v4, "PhoneWindow"

    const-string v5, "When the minimized mode is on, the panel is not opened."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    .end local v18    # "windowMode":I
    :cond_1e
    :goto_1e
    return-void

    .line 661
    :cond_1f
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v4, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_1e

    .line 667
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    if-nez v4, :cond_5f

    .line 668
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 669
    .local v13, "context":Landroid/content/Context;
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    .line 670
    .local v12, "config":Landroid/content/res/Configuration;
    iget v4, v12, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x4

    if-ne v4, v5, :cond_7c

    const/16 v16, 0x1

    .line 672
    .local v16, "isXLarge":Z
    :goto_46
    invoke-virtual {v13}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_7f

    const/4 v15, 0x1

    .line 676
    .local v15, "isHoneycombApp":Z
    :goto_51
    invoke-static {v13}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v14

    .line 678
    .local v14, "hasPermanentMenuKey":Z
    if-eqz v16, :cond_5f

    if-eqz v15, :cond_5f

    if-eqz v14, :cond_1e

    .line 683
    .end local v12    # "config":Landroid/content/res/Configuration;
    .end local v13    # "context":Landroid/content/Context;
    .end local v14    # "hasPermanentMenuKey":Z
    .end local v15    # "isHoneycombApp":Z
    .end local v16    # "isXLarge":Z
    :cond_5f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v11

    .line 684
    .local v11, "cb":Landroid/view/Window$Callback;
    if-eqz v11, :cond_81

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v11, v4, v5}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_81

    .line 686
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_1e

    .line 670
    .end local v11    # "cb":Landroid/view/Window$Callback;
    .restart local v12    # "config":Landroid/content/res/Configuration;
    .restart local v13    # "context":Landroid/content/Context;
    :cond_7c
    const/16 v16, 0x0

    goto :goto_46

    .line 672
    .restart local v16    # "isXLarge":Z
    :cond_7f
    const/4 v15, 0x0

    goto :goto_51

    .line 690
    .end local v12    # "config":Landroid/content/res/Configuration;
    .end local v13    # "context":Landroid/content/Context;
    .end local v16    # "isXLarge":Z
    .restart local v11    # "cb":Landroid/view/Window$Callback;
    :cond_81
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v19

    .line 691
    .local v19, "wm":Landroid/view/WindowManager;
    if-eqz v19, :cond_1e

    .line 696
    invoke-virtual/range {p0 .. p2}, Lcom/android/internal/policy/impl/PhoneWindow;->preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 700
    const/4 v3, -0x2

    .line 701
    .local v3, "width":I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v4, :cond_9a

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    if-eqz v4, :cond_198

    .line 702
    :cond_9a
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-nez v4, :cond_179

    .line 704
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/impl/PhoneWindow;->initializePanelDecor(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_1e

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v4, :cond_1e

    .line 712
    :cond_ac
    :goto_ac
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/impl/PhoneWindow;->initializePanelContent(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->hasPanelItems()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 716
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 717
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v2, :cond_c9

    .line 718
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 722
    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_c9
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_192

    .line 725
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->fullBackground:I

    .line 726
    .local v10, "backgroundResId":I
    const/4 v3, -0x1

    .line 731
    :goto_d3
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 734
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    .line 735
    .local v17, "shownPanelParent":Landroid/view/ViewParent;
    if-eqz v17, :cond_101

    move-object/from16 v0, v17

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_101

    .line 736
    check-cast v17, Landroid/view/ViewGroup;

    .end local v17    # "shownPanelParent":Landroid/view/ViewParent;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 738
    :cond_101
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4, v5, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 744
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_11d

    .line 745
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 763
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v10    # "backgroundResId":I
    :cond_11d
    :goto_11d
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    .line 764
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 766
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

    .line 773
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isCompact:Z

    if-eqz v4, :cond_1ce

    .line 774
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getOptionsPanelGravity()I

    move-result v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 775
    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;->addWindow(Lcom/android/internal/policy/impl/PhoneWindow;)V

    .line 780
    :goto_152
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->windowAnimations:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 782
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v0, v19

    invoke-interface {v0, v4, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 785
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindow;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v4, :cond_1e

    .line 786
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-eqz v4, :cond_1e

    .line 787
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    const/16 v5, 0x6450

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->performHapticFeedback(II)Z

    goto/16 :goto_1e

    .line 706
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_179
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    if-eqz v4, :cond_ac

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_ac

    .line 708
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->removeAllViews()V

    goto/16 :goto_ac

    .line 729
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_192
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->background:I

    .restart local v10    # "backgroundResId":I
    goto/16 :goto_d3

    .line 748
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v10    # "backgroundResId":I
    :cond_198
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/impl/PhoneWindow;->initializePanelContent(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_1a4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->hasPanelItems()Z

    move-result v4

    if-nez v4, :cond_1ad

    .line 749
    :cond_1a4
    const-string v4, "PhoneWindow"

    const-string v5, "openPanel() : menu is empty"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    .line 752
    :cond_1ad
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInListMode()Z

    move-result v4

    if-nez v4, :cond_1b6

    .line 753
    const/4 v3, -0x1

    goto/16 :goto_11d

    .line 754
    :cond_1b6
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v4, :cond_11d

    .line 757
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 758
    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_11d

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_11d

    .line 759
    const/4 v3, -0x1

    goto/16 :goto_11d

    .line 777
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1ce
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->gravity:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_152
.end method

.method private openPanelsAfterRestore()V
    .registers 5

    .prologue
    .line 2058
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .line 2060
    .local v1, "panels":[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_5

    .line 2078
    :cond_4
    return-void

    .line 2065
    :cond_5
    array-length v3, v1

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_4

    .line 2066
    aget-object v2, v1, v0

    .line 2070
    .local v2, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_21

    .line 2071
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->applyFrozenState()V

    .line 2072
    iget-boolean v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v3, :cond_21

    iget-boolean v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->wasLastOpen:Z

    if-eqz v3, :cond_21

    .line 2073
    iget-boolean v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->wasLastExpanded:Z

    iput-boolean v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    .line 2074
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->openPanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 2065
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

    .line 1107
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-nez v1, :cond_9

    if-nez p1, :cond_b

    .line 1108
    :cond_9
    const/4 v0, 0x0

    .line 1130
    :cond_a
    :goto_a
    return v0

    .line 1111
    :cond_b
    const/4 v0, 0x0

    .line 1115
    .local v0, "handled":Z
    iget-boolean v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    if-nez v1, :cond_16

    invoke-virtual {p0, p1, p3}, Lcom/android/internal/policy/impl/PhoneWindow;->preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_20

    :cond_16
    iget-object v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_20

    .line 1117
    iget-object v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/internal/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 1120
    :cond_20
    if-eqz v0, :cond_a

    .line 1122
    iput-boolean v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 1125
    and-int/lit8 v1, p4, 0x1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-nez v1, :cond_a

    .line 1126
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

    .line 1182
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v5, :cond_7c

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarView;->isOverflowReserved()Z

    move-result v5

    if-eqz v5, :cond_7c

    .line 1183
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1184
    .local v0, "cb":Landroid/view/Window$Callback;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v5

    if-eqz v5, :cond_1e

    if-nez p1, :cond_65

    .line 1185
    :cond_1e
    if-eqz v0, :cond_64

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v5

    if-nez v5, :cond_64

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_64

    .line 1187
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    if-eqz v5, :cond_44

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_44

    .line 1189
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1190
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 1193
    :cond_44
    invoke-direct {p0, v4, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 1197
    .local v2, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    iget-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v3, :cond_64

    iget-boolean v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    if-nez v3, :cond_64

    iget-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v5, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v4, v3, v5}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 1199
    iget-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v7, v3}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1200
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarView;->showOverflowMenu()Z

    .line 1225
    .end local v0    # "cb":Landroid/view/Window$Callback;
    .end local v2    # "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_64
    :goto_64
    return-void

    .line 1204
    .restart local v0    # "cb":Landroid/view/Window$Callback;
    :cond_65
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarView;->hideOverflowMenu()Z

    .line 1205
    if-eqz v0, :cond_64

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v5

    if-nez v5, :cond_64

    .line 1206
    invoke-direct {p0, v4, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 1207
    .restart local v2    # "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    iget-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v7, v3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_64

    .line 1213
    .end local v0    # "cb":Landroid/view/Window$Callback;
    .end local v2    # "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_7c
    invoke-direct {p0, v4, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 1216
    .restart local v2    # "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz p1, :cond_95

    iget-boolean v5, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-nez v5, :cond_93

    move v1, v3

    .line 1218
    .local v1, "newExpandedMode":Z
    :goto_87
    iput-boolean v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 1219
    invoke-virtual {p0, v2, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    .line 1222
    iput-boolean v1, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    .line 1224
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->openPanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_64

    .end local v1    # "newExpandedMode":Z
    :cond_93
    move v1, v4

    .line 1216
    goto :goto_87

    :cond_95
    iget-boolean v1, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    goto :goto_87
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
    .line 2034
    .local p1, "icicles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_23

    .line 2035
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 2036
    .local v0, "curFeatureId":I
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 2037
    .local v2, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-nez v2, :cond_16

    .line 2034
    :goto_13
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 2042
    :cond_16
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2043
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->invalidatePanelMenu(I)V

    goto :goto_13

    .line 2050
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
    .line 2014
    .local p1, "icicles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .line 2015
    .local v1, "panels":[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_5

    .line 2024
    :cond_4
    return-void

    .line 2019
    :cond_5
    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    .local v0, "curFeatureId":I
    :goto_8
    if-ltz v0, :cond_4

    .line 2020
    aget-object v2, v1, v0

    if-eqz v2, :cond_17

    .line 2021
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2019
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

    .line 1562
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v0

    .line 1563
    .local v0, "features":I
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_13

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_13

    .line 1565
    invoke-virtual {p2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1568
    :cond_13
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_22

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_22

    .line 1570
    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1572
    :cond_22
    return-void
.end method

.method private updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V
    .registers 8
    .param p1, "featureId"    # I
    .param p2, "st"    # Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    .param p3, "fromResume"    # Z

    .prologue
    .line 3895
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v2, :cond_5

    .line 3926
    :cond_4
    :goto_4
    return-void

    .line 3899
    :cond_5
    const/4 v2, 0x1

    shl-int v1, v2, p1

    .line 3901
    .local v1, "featureMask":I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getFeatures()I

    move-result v2

    and-int/2addr v2, v1

    if-nez v2, :cond_11

    if-eqz p3, :cond_4

    .line 3905
    :cond_11
    const/4 v0, 0x0

    .line 3906
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_1e

    .line 3907
    iget-object v0, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->child:Landroid/graphics/drawable/Drawable;

    .line 3908
    if-nez v0, :cond_1a

    .line 3909
    iget-object v0, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 3910
    :cond_1a
    if-nez v0, :cond_1e

    .line 3911
    iget-object v0, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    .line 3913
    :cond_1e
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v2

    and-int/2addr v2, v1

    if-nez v2, :cond_3b

    .line 3914
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 3915
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isActive()Z

    move-result v2

    if-nez v2, :cond_33

    if-eqz p3, :cond_4

    .line 3916
    :cond_33
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/view/Window;->setChildDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 3919
    :cond_3b
    if-eqz p2, :cond_4

    iget-object v2, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->cur:Landroid/graphics/drawable/Drawable;

    if-ne v2, v0, :cond_47

    iget v2, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->curAlpha:I

    iget v3, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->alpha:I

    if-eq v2, v3, :cond_4

    .line 3922
    :cond_47
    iput-object v0, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->cur:Landroid/graphics/drawable/Drawable;

    .line 3923
    iget v2, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->alpha:I

    iput v2, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->curAlpha:I

    .line 3924
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
    .line 3932
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_5

    .line 3949
    :cond_4
    :goto_4
    return-void

    .line 3936
    :cond_5
    const/4 v1, 0x1

    shl-int v0, v1, p1

    .line 3938
    .local v0, "featureMask":I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getFeatures()I

    move-result v1

    and-int/2addr v1, v0

    if-nez v1, :cond_11

    if-eqz p3, :cond_4

    .line 3942
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v1

    and-int/2addr v1, v0

    if-nez v1, :cond_26

    .line 3943
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 3944
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/Window;->setChildInt(II)V

    goto :goto_4

    .line 3947
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

    .line 1517
    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindow;->getCircularProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v0

    .line 1518
    .local v0, "circularProgressBar":Landroid/widget/ProgressBar;
    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindow;->getHorizontalProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v2

    .line 1520
    .local v2, "horizontalProgressBar":Landroid/widget/ProgressBar;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v1

    .line 1521
    .local v1, "features":I
    const/4 v6, -0x1

    if-ne p1, v6, :cond_33

    .line 1522
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_29

    .line 1523
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    .line 1524
    .local v3, "level":I
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v6

    if-nez v6, :cond_25

    if-ge v3, v8, :cond_31

    :cond_25
    move v4, v5

    .line 1526
    .local v4, "visibility":I
    :goto_26
    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1528
    .end local v3    # "level":I
    .end local v4    # "visibility":I
    :cond_29
    and-int/lit8 v6, v1, 0x20

    if-eqz v6, :cond_30

    .line 1529
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1559
    :cond_30
    :goto_30
    return-void

    .line 1524
    .restart local v3    # "level":I
    :cond_31
    const/4 v4, 0x4

    goto :goto_26

    .line 1531
    .end local v3    # "level":I
    :cond_33
    const/4 v6, -0x2

    if-ne p1, v6, :cond_45

    .line 1532
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_3d

    .line 1533
    invoke-virtual {v2, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1535
    :cond_3d
    and-int/lit8 v5, v1, 0x20

    if-eqz v5, :cond_30

    .line 1536
    invoke-virtual {v0, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_30

    .line 1538
    :cond_45
    const/4 v6, -0x3

    if-ne p1, v6, :cond_4c

    .line 1539
    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_30

    .line 1540
    :cond_4c
    const/4 v6, -0x4

    if-ne p1, v6, :cond_53

    .line 1541
    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_30

    .line 1542
    :cond_53
    if-ltz p1, :cond_66

    if-gt p1, v8, :cond_66

    .line 1546
    add-int/lit8 v5, p1, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1548
    if-ge p1, v8, :cond_62

    .line 1549
    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_30

    .line 1551
    :cond_62
    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_30

    .line 1553
    :cond_66
    const/16 v5, 0x4e20

    if-gt v5, p1, :cond_30

    const/16 v5, 0x7530

    if-gt p1, v5, :cond_30

    .line 1554
    add-int/lit16 v5, p1, -0x4e20

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 1556
    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_30
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 389
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_7

    .line 390
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    .line 392
    :cond_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 393
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 394
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 395
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 397
    :cond_1b
    return-void
.end method

.method public alwaysReadCloseOnTouchAttr()V
    .registers 2

    .prologue
    .line 3598
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    .line 3599
    return-void
.end method

.method checkCloseActionMenu(Landroid/view/Menu;)V
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 879
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mClosingActionMenu:Z

    if-eqz v1, :cond_5

    .line 890
    :goto_4
    return-void

    .line 883
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mClosingActionMenu:Z

    .line 884
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarView;->dismissPopupMenus()V

    .line 885
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 886
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 887
    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 889
    :cond_1e
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mClosingActionMenu:Z

    goto :goto_4
.end method

.method public final closeAllPanels()V
    .registers 7

    .prologue
    .line 1059
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    .line 1060
    .local v4, "wm":Landroid/view/ViewManager;
    if-nez v4, :cond_7

    .line 1074
    :goto_6
    return-void

    .line 1064
    :cond_7
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .line 1065
    .local v3, "panels":[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v3, :cond_1a

    array-length v0, v3

    .line 1066
    .local v0, "N":I
    :goto_c
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_1c

    .line 1067
    aget-object v2, v3, v1

    .line 1068
    .local v2, "panel":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_17

    .line 1069
    const/4 v5, 0x1

    invoke-virtual {p0, v2, v5}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    .line 1066
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1065
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "panel":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_1a
    const/4 v0, 0x0

    goto :goto_c

    .line 1073
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

    .line 799
    if-nez p1, :cond_15

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 801
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->hideOverflowMenu()Z

    .line 807
    :goto_14
    return-void

    .line 802
    :cond_15
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1c

    .line 803
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->closeContextMenu()V

    goto :goto_14

    .line 805
    :cond_1c
    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_14
.end method

.method public final closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V
    .registers 10
    .param p1, "st"    # Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .param p2, "doCallback"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 822
    if-eqz p2, :cond_1b

    iget v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    if-nez v2, :cond_1b

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 824
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->checkCloseActionMenu(Landroid/view/Menu;)V

    .line 876
    :cond_1a
    :goto_1a
    return-void

    .line 828
    :cond_1b
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 829
    .local v1, "wm":Landroid/view/ViewManager;
    if-eqz v1, :cond_59

    iget-boolean v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v2, :cond_59

    .line 830
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v2, :cond_52

    .line 833
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v2, :cond_38

    .line 834
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-eqz v2, :cond_38

    .line 835
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    const/16 v3, 0x6455

    invoke-virtual {v2, v3, v6}, Landroid/view/ViewGroup;->performHapticFeedback(II)Z

    .line 841
    :cond_38
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-nez v2, :cond_40

    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    if-eqz v2, :cond_72

    .line 842
    :cond_40
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 843
    .local v0, "iwm":Landroid/view/WindowManager;
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 848
    .end local v0    # "iwm":Landroid/view/WindowManager;
    :goto_49
    iget-boolean v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isCompact:Z

    if-eqz v2, :cond_52

    .line 849
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;

    invoke-virtual {v2, p0}, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;->removeWindow(Lcom/android/internal/policy/impl/PhoneWindow;)V

    .line 853
    :cond_52
    if-eqz p2, :cond_59

    .line 854
    iget v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-direct {p0, v2, p1, v5}, Lcom/android/internal/policy/impl/PhoneWindow;->callOnPanelClosed(ILcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V

    .line 858
    :cond_59
    iput-boolean v4, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 859
    iput-boolean v4, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 860
    iput-boolean v4, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    .line 863
    iput-object v5, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 865
    iget-boolean v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-eqz v2, :cond_69

    .line 868
    iput-boolean v6, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 869
    iput-boolean v4, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    .line 872
    :cond_69
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    if-ne v2, p1, :cond_1a

    .line 873
    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .line 874
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I

    goto :goto_1a

    .line 845
    :cond_72
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-interface {v1, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    goto :goto_49
.end method

.method doInvalidatePanelMenu(I)V
    .registers 8
    .param p1, "featureId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 913
    invoke-direct {p0, p1, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 914
    .local v2, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    const/4 v1, 0x0

    .line 915
    .local v1, "savedActionViewStates":Landroid/os/Bundle;
    iget-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v3, :cond_27

    .line 916
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "savedActionViewStates":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 917
    .restart local v1    # "savedActionViewStates":Landroid/os/Bundle;
    iget-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3, v1}, Lcom/android/internal/view/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 918
    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v3

    if-lez v3, :cond_1d

    .line 919
    iput-object v1, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 922
    :cond_1d
    iget-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 923
    iget-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->clear()V

    .line 925
    :cond_27
    iput-boolean v4, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    .line 926
    iput-boolean v4, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 929
    const/16 v3, 0x8

    if-eq p1, v3, :cond_31

    if-nez p1, :cond_59

    :cond_31
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v3, :cond_59

    .line 931
    invoke-direct {p0, v5, v5}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 932
    if-eqz v2, :cond_59

    .line 933
    iput-boolean v5, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 934
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 936
    iget-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    if-eqz v3, :cond_54

    .line 937
    iget-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 938
    .local v0, "listCnt":I
    if-nez v0, :cond_54

    invoke-virtual {p0, v2, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    .line 943
    .end local v0    # "listCnt":I
    :cond_54
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarView;->restoreExpandedActionView()V

    .line 947
    :cond_59
    return-void
.end method

.method public findMenuPanel(Landroid/view/Menu;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .registers 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1155
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .line 1156
    .local v3, "panels":[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v3, :cond_11

    array-length v0, v3

    .line 1157
    .local v0, "N":I
    :goto_5
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-ge v1, v0, :cond_16

    .line 1158
    aget-object v2, v3, v1

    .line 1159
    .local v2, "panel":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_13

    iget-object v4, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne v4, p1, :cond_13

    .line 1163
    .end local v2    # "panel":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :goto_10
    return-object v2

    .line 1156
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_11
    const/4 v0, 0x0

    goto :goto_5

    .line 1157
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "panel":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1163
    .end local v2    # "panel":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_16
    const/4 v2, 0x0

    goto :goto_10
.end method

.method protected generateDecor()Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    .registers 4

    .prologue
    .line 3321
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/content/Context;I)V

    return-object v0
.end method

.method protected generateLayout(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/view/ViewGroup;
    .registers 24
    .param p1, "decor"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .prologue
    .line 3342
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v3

    .line 3354
    .local v3, "a":Landroid/content/res/TypedArray;
    const/16 v19, 0x4

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z

    .line 3355
    const v19, 0x10100

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getForcedWindowFlags()I

    move-result v20

    xor-int/lit8 v20, v20, -0x1

    and-int v8, v19, v20

    .line 3357
    .local v8, "flagsToUpdate":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3b8

    .line 3358
    const/16 v19, -0x2

    const/16 v20, -0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->setLayout(II)V

    .line 3359
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Lcom/android/internal/policy/impl/PhoneWindow;->setFlags(II)V

    .line 3364
    :goto_3f
    const/16 v19, 0x3

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v19

    if-eqz v19, :cond_3c4

    .line 3365
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->requestFeature(I)Z

    .line 3371
    :cond_56
    :goto_56
    const/16 v19, 0x11

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v19

    if-eqz v19, :cond_6d

    .line 3372
    const/16 v19, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->requestFeature(I)Z

    .line 3375
    :cond_6d
    const/16 v19, 0x10

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v19

    if-eqz v19, :cond_84

    .line 3376
    const/16 v19, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->requestFeature(I)Z

    .line 3379
    :cond_84
    const/16 v19, 0x9

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v19

    if-eqz v19, :cond_a9

    .line 3380
    const/16 v19, 0x400

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getForcedWindowFlags()I

    move-result v20

    xor-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x400

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->setFlags(II)V

    .line 3383
    :cond_a9
    const/16 v19, 0x16

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v19

    if-eqz v19, :cond_cc

    .line 3384
    const/high16 v19, 0x2000000

    const/high16 v20, 0x2000000

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getForcedWindowFlags()I

    move-result v21

    xor-int/lit8 v21, v21, -0x1

    and-int v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->setFlags(II)V

    .line 3387
    :cond_cc
    const/16 v19, 0xe

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v19

    if-eqz v19, :cond_ef

    .line 3388
    const/high16 v19, 0x100000

    const/high16 v20, 0x100000

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getForcedWindowFlags()I

    move-result v21

    xor-int/lit8 v21, v21, -0x1

    and-int v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->setFlags(II)V

    .line 3391
    :cond_ef
    const/16 v20, 0x12

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v19, v0

    const/16 v21, 0xb

    move/from16 v0, v19

    move/from16 v1, v21

    if-lt v0, v1, :cond_3dd

    const/16 v19, 0x1

    :goto_109
    move/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v19

    if-eqz v19, :cond_128

    .line 3394
    const/high16 v19, 0x800000

    const/high16 v20, 0x800000

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getForcedWindowFlags()I

    move-result v21

    xor-int/lit8 v21, v21, -0x1

    and-int v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->setFlags(II)V

    .line 3397
    :cond_128
    const/16 v19, 0x13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    move-object/from16 v20, v0

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 3398
    const/16 v19, 0x14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    move-object/from16 v20, v0

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 3399
    const/16 v19, 0x18

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v19

    if-eqz v19, :cond_172

    .line 3400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    move-object/from16 v19, v0

    if-nez v19, :cond_163

    new-instance v19, Landroid/util/TypedValue;

    invoke-direct/range {v19 .. v19}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 3401
    :cond_163
    const/16 v19, 0x18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    move-object/from16 v20, v0

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 3404
    :cond_172
    const/16 v19, 0x1a

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v19

    if-eqz v19, :cond_19e

    .line 3405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    move-object/from16 v19, v0

    if-nez v19, :cond_18f

    new-instance v19, Landroid/util/TypedValue;

    invoke-direct/range {v19 .. v19}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 3406
    :cond_18f
    const/16 v19, 0x1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    move-object/from16 v20, v0

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 3409
    :cond_19e
    const/16 v19, 0x1b

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v19

    if-eqz v19, :cond_1ca

    .line 3410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    move-object/from16 v19, v0

    if-nez v19, :cond_1bb

    new-instance v19, Landroid/util/TypedValue;

    invoke-direct/range {v19 .. v19}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 3411
    :cond_1bb
    const/16 v19, 0x1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    move-object/from16 v20, v0

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 3414
    :cond_1ca
    const/16 v19, 0x19

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v19

    if-eqz v19, :cond_1f6

    .line 3415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    move-object/from16 v19, v0

    if-nez v19, :cond_1e7

    new-instance v19, Landroid/util/TypedValue;

    invoke-direct/range {v19 .. v19}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 3416
    :cond_1e7
    const/16 v19, 0x19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    move-object/from16 v20, v0

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 3420
    :cond_1f6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 3421
    .local v5, "context":Landroid/content/Context;
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v18, v0

    .line 3422
    .local v18, "targetSdk":I
    const/16 v19, 0xb

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_3e1

    const/16 v16, 0x1

    .line 3423
    .local v16, "targetPreHoneycomb":Z
    :goto_20e
    const/16 v19, 0xe

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_3e5

    const/16 v17, 0x1

    .line 3424
    .local v17, "targetPreIcs":Z
    :goto_218
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x111000a

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    .line 3426
    .local v15, "targetHcNeedsOptions":Z
    const/16 v19, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->hasFeature(I)Z

    move-result v19

    if-eqz v19, :cond_23b

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->hasFeature(I)Z

    move-result v19

    if-eqz v19, :cond_3e9

    :cond_23b
    const/4 v11, 0x1

    .line 3428
    .local v11, "noActionBar":Z
    :goto_23c
    if-nez v16, :cond_244

    if-eqz v17, :cond_3ec

    if-eqz v15, :cond_3ec

    if-eqz v11, :cond_3ec

    .line 3429
    :cond_244
    const/high16 v19, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->addFlags(I)V

    .line 3434
    :goto_24d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    move/from16 v19, v0

    if-nez v19, :cond_26b

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v19, v0

    const/16 v20, 0xb

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_282

    .line 3436
    :cond_26b
    const/16 v19, 0x15

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v19

    if-eqz v19, :cond_282

    .line 3439
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->setCloseOnTouchOutsideIfNotSet(Z)V

    .line 3443
    :cond_282
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    .line 3445
    .local v12, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->hasSoftInputMode()Z

    move-result v19

    if-nez v19, :cond_29e

    .line 3446
    const/16 v19, 0xd

    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v19

    move/from16 v0, v19

    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 3451
    :cond_29e
    const/16 v19, 0xb

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v19

    if-eqz v19, :cond_2d8

    .line 3454
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getForcedWindowFlags()I

    move-result v19

    and-int/lit8 v19, v19, 0x2

    if-nez v19, :cond_2c2

    .line 3455
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3457
    :cond_2c2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->haveDimAmount()Z

    move-result v19

    if-nez v19, :cond_2d8

    .line 3458
    const/16 v19, 0x0

    const/high16 v20, 0x3f000000

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v19

    move/from16 v0, v19

    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 3463
    :cond_2d8
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    move/from16 v19, v0

    if-nez v19, :cond_2ee

    .line 3464
    const/16 v19, 0x8

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v19

    move/from16 v0, v19

    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 3470
    :cond_2ee
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v19

    if-nez v19, :cond_342

    .line 3471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    if-nez v19, :cond_330

    .line 3472
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundResource:I

    move/from16 v19, v0

    if-nez v19, :cond_316

    .line 3473
    const/16 v19, 0x1

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundResource:I

    .line 3476
    :cond_316
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFrameResource:I

    move/from16 v19, v0

    if-nez v19, :cond_330

    .line 3477
    const/16 v19, 0x2

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mFrameResource:I

    .line 3485
    :cond_330
    const/16 v19, 0x7

    const/high16 v20, -0x1000000

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mTextColor:I

    .line 3491
    :cond_342
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v7

    .line 3493
    .local v7, "features":I
    and-int/lit8 v19, v7, 0x18

    if-eqz v19, :cond_3fc

    .line 3494
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3f7

    .line 3495
    new-instance v14, Landroid/util/TypedValue;

    invoke-direct {v14}, Landroid/util/TypedValue;-><init>()V

    .line 3496
    .local v14, "res":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v19

    const v20, 0x1010426

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v14, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3498
    iget v10, v14, Landroid/util/TypedValue;->resourceId:I

    .line 3503
    .end local v14    # "res":Landroid/util/TypedValue;
    .local v10, "layoutResource":I
    :goto_36f
    const/16 v19, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->removeFeature(I)V

    .line 3546
    :goto_378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->startChanging()V

    .line 3548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v10, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 3549
    .local v9, "in":Landroid/view/View;
    new-instance v19, Landroid/view/ViewGroup$LayoutParams;

    const/16 v20, -0x1

    const/16 v21, -0x1

    invoke-direct/range {v19 .. v21}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3551
    const v19, 0x1020002

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 3552
    .local v4, "contentParent":Landroid/view/ViewGroup;
    if-nez v4, :cond_490

    .line 3553
    new-instance v19, Ljava/lang/RuntimeException;

    const-string v20, "Window couldn\'t find content container view"

    invoke-direct/range {v19 .. v20}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 3361
    .end local v4    # "contentParent":Landroid/view/ViewGroup;
    .end local v5    # "context":Landroid/content/Context;
    .end local v7    # "features":I
    .end local v9    # "in":Landroid/view/View;
    .end local v10    # "layoutResource":I
    .end local v11    # "noActionBar":Z
    .end local v12    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v15    # "targetHcNeedsOptions":Z
    .end local v16    # "targetPreHoneycomb":Z
    .end local v17    # "targetPreIcs":Z
    .end local v18    # "targetSdk":I
    :cond_3b8
    const v19, 0x10100

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Lcom/android/internal/policy/impl/PhoneWindow;->setFlags(II)V

    goto/16 :goto_3f

    .line 3366
    :cond_3c4
    const/16 v19, 0xf

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v19

    if-eqz v19, :cond_56

    .line 3368
    const/16 v19, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->requestFeature(I)Z

    goto/16 :goto_56

    .line 3391
    :cond_3dd
    const/16 v19, 0x0

    goto/16 :goto_109

    .line 3422
    .restart local v5    # "context":Landroid/content/Context;
    .restart local v18    # "targetSdk":I
    :cond_3e1
    const/16 v16, 0x0

    goto/16 :goto_20e

    .line 3423
    .restart local v16    # "targetPreHoneycomb":Z
    :cond_3e5
    const/16 v17, 0x0

    goto/16 :goto_218

    .line 3426
    .restart local v15    # "targetHcNeedsOptions":Z
    .restart local v17    # "targetPreIcs":Z
    :cond_3e9
    const/4 v11, 0x0

    goto/16 :goto_23c

    .line 3431
    .restart local v11    # "noActionBar":Z
    :cond_3ec
    const/high16 v19, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->clearFlags(I)V

    goto/16 :goto_24d

    .line 3500
    .restart local v7    # "features":I
    .restart local v12    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_3f7
    const v10, 0x10900ea

    .restart local v10    # "layoutResource":I
    goto/16 :goto_36f

    .line 3505
    .end local v10    # "layoutResource":I
    :cond_3fc
    and-int/lit8 v19, v7, 0x24

    if-eqz v19, :cond_40b

    and-int/lit16 v0, v7, 0x100

    move/from16 v19, v0

    if-nez v19, :cond_40b

    .line 3509
    const v10, 0x10900e6

    .restart local v10    # "layoutResource":I
    goto/16 :goto_378

    .line 3511
    .end local v10    # "layoutResource":I
    :cond_40b
    and-int/lit16 v0, v7, 0x80

    move/from16 v19, v0

    if-eqz v19, :cond_445

    .line 3514
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z

    move/from16 v19, v0

    if-eqz v19, :cond_441

    .line 3515
    new-instance v14, Landroid/util/TypedValue;

    invoke-direct {v14}, Landroid/util/TypedValue;-><init>()V

    .line 3516
    .restart local v14    # "res":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v19

    const v20, 0x1010427

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v14, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3518
    iget v10, v14, Landroid/util/TypedValue;->resourceId:I

    .line 3523
    .end local v14    # "res":Landroid/util/TypedValue;
    .restart local v10    # "layoutResource":I
    :goto_436
    const/16 v19, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->removeFeature(I)V

    goto/16 :goto_378

    .line 3520
    .end local v10    # "layoutResource":I
    :cond_441
    const v10, 0x10900e5

    .restart local v10    # "layoutResource":I
    goto :goto_436

    .line 3524
    .end local v10    # "layoutResource":I
    :cond_445
    and-int/lit8 v19, v7, 0x2

    if-nez v19, :cond_480

    .line 3527
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z

    move/from16 v19, v0

    if-eqz v19, :cond_470

    .line 3528
    new-instance v14, Landroid/util/TypedValue;

    invoke-direct {v14}, Landroid/util/TypedValue;-><init>()V

    .line 3529
    .restart local v14    # "res":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v19

    const v20, 0x1010428

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v14, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3531
    iget v10, v14, Landroid/util/TypedValue;->resourceId:I

    .line 3532
    .restart local v10    # "layoutResource":I
    goto/16 :goto_378

    .end local v10    # "layoutResource":I
    .end local v14    # "res":Landroid/util/TypedValue;
    :cond_470
    and-int/lit16 v0, v7, 0x100

    move/from16 v19, v0

    if-eqz v19, :cond_47b

    .line 3533
    const v10, 0x10900e4

    .restart local v10    # "layoutResource":I
    goto/16 :goto_378

    .line 3535
    .end local v10    # "layoutResource":I
    :cond_47b
    const v10, 0x10900e9

    .restart local v10    # "layoutResource":I
    goto/16 :goto_378

    .line 3538
    .end local v10    # "layoutResource":I
    :cond_480
    and-int/lit16 v0, v7, 0x400

    move/from16 v19, v0

    if-eqz v19, :cond_48b

    .line 3539
    const v10, 0x10900e8

    .restart local v10    # "layoutResource":I
    goto/16 :goto_378

    .line 3542
    .end local v10    # "layoutResource":I
    :cond_48b
    const v10, 0x10900e7

    .restart local v10    # "layoutResource":I
    goto/16 :goto_378

    .line 3556
    .restart local v4    # "contentParent":Landroid/view/ViewGroup;
    .restart local v9    # "in":Landroid/view/View;
    :cond_490
    and-int/lit8 v19, v7, 0x20

    if-eqz v19, :cond_4a7

    .line 3557
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getCircularProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v13

    .line 3558
    .local v13, "progress":Landroid/widget/ProgressBar;
    if-eqz v13, :cond_4a7

    .line 3559
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 3565
    .end local v13    # "progress":Landroid/widget/ProgressBar;
    :cond_4a7
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v19

    if-nez v19, :cond_532

    .line 3566
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 3567
    .local v6, "drawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundResource:I

    move/from16 v19, v0

    if-eqz v19, :cond_4cb

    .line 3568
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundResource:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 3570
    :cond_4cb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3571
    const/4 v6, 0x0

    .line 3572
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFrameResource:I

    move/from16 v19, v0

    if-eqz v19, :cond_4f1

    .line 3573
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFrameResource:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 3575
    :cond_4f1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setWindowFrame(Landroid/graphics/drawable/Drawable;)V

    .line 3581
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleColor:I

    move/from16 v19, v0

    if-nez v19, :cond_510

    .line 3582
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTextColor:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleColor:I

    .line 3585
    :cond_510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    if-eqz v19, :cond_525

    .line 3586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->setTitle(Ljava/lang/CharSequence;)V

    .line 3588
    :cond_525
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleColor:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->setTitleColor(I)V

    .line 3591
    .end local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->finishChanging()V

    .line 3593
    return-object v4
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .registers 3

    .prologue
    .line 1819
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_12

    .line 1820
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    .line 1822
    :cond_12
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method public getCurrentFocus()Landroid/view/View;
    .registers 2

    .prologue
    .line 401
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
    .line 1905
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-nez v0, :cond_7

    .line 1906
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    .line 1908
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getMultiPhoneWindowEvent()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 4567
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mMultiPhoneWindowEvent:Ljava/lang/Object;

    return-object v0
.end method

.method getSamsungZoomKeyController()Lcom/android/internal/policy/impl/sec/SamsungZoomKeyController;
    .registers 3

    .prologue
    .line 4513
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSamsungZoomKeyController:Lcom/android/internal/policy/impl/sec/SamsungZoomKeyController;

    if-nez v0, :cond_f

    .line 4514
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungZoomKeyController;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/SamsungZoomKeyController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSamsungZoomKeyController:Lcom/android/internal/policy/impl/sec/SamsungZoomKeyController;

    .line 4516
    :cond_f
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mSamsungZoomKeyController:Lcom/android/internal/policy/impl/sec/SamsungZoomKeyController;

    return-object v0
.end method

.method public getVolumeControlStream()I
    .registers 2

    .prologue
    .line 4062
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mVolumeControlStreamType:I

    return v0
.end method

.method protected initializePanelContent(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Z
    .registers 8
    .param p1, "st"    # Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1324
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v2, :cond_c

    .line 1325
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iput-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    move v2, v3

    .line 1351
    :goto_b
    return v2

    .line 1329
    :cond_c
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v2, :cond_12

    move v2, v4

    .line 1330
    goto :goto_b

    .line 1333
    :cond_12
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;

    if-nez v2, :cond_1e

    .line 1334
    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/policy/impl/PhoneWindow$1;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;

    .line 1337
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

    .line 1341
    check-cast v2, Landroid/view/View;

    iput-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1343
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    if-eqz v2, :cond_4c

    .line 1345
    invoke-interface {v1}, Lcom/android/internal/view/menu/MenuView;->getWindowAnimations()I

    move-result v0

    .line 1346
    .local v0, "defaultAnimations":I
    if-eqz v0, :cond_3f

    .line 1347
    iput v0, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->windowAnimations:I

    :cond_3f
    move v2, v3

    .line 1349
    goto :goto_b

    .line 1337
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

    .line 1351
    goto :goto_b
.end method

.method protected initializePanelDecor(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Z
    .registers 5
    .param p1, "st"    # Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .prologue
    .line 1269
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/content/Context;I)V

    iput-object v0, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .line 1270
    const/16 v0, 0x51

    iput v0, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->gravity:I

    .line 1271
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->setStyle(Landroid/content/Context;)V

    .line 1273
    const/4 v0, 0x1

    return v0
.end method

.method protected initializePanelMenu(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Z
    .registers 11
    .param p1, "st"    # Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .prologue
    const/4 v8, 0x1

    .line 1237
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1240
    .local v0, "context":Landroid/content/Context;
    iget v6, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    if-eqz v6, :cond_f

    iget v6, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_32

    :cond_f
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v6, :cond_32

    .line 1242
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 1243
    .local v4, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 1244
    .local v2, "currentTheme":Landroid/content/res/Resources$Theme;
    const v6, 0x1010397

    invoke-virtual {v2, v6, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1246
    iget v5, v4, Landroid/util/TypedValue;->resourceId:I

    .line 1248
    .local v5, "targetThemeRes":I
    if-eqz v5, :cond_32

    invoke-virtual {v0}, Landroid/content/Context;->getThemeResId()I

    move-result v6

    if-eq v6, v5, :cond_32

    .line 1249
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, v0, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .end local v0    # "context":Landroid/content/Context;
    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 1253
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "currentTheme":Landroid/content/res/Resources$Theme;
    .end local v4    # "outValue":Landroid/util/TypedValue;
    .end local v5    # "targetThemeRes":I
    .restart local v0    # "context":Landroid/content/Context;
    :cond_32
    new-instance v3, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v3, v0}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 1255
    .local v3, "menu":Lcom/android/internal/view/menu/MenuBuilder;
    invoke-virtual {v3, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 1256
    invoke-virtual {p1, v3}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->setMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 1258
    return v8
.end method

.method public invalidatePanelMenu(I)V
    .registers 5
    .param p1, "featureId"    # I

    .prologue
    const/4 v2, 0x1

    .line 904
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    .line 906
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v0, :cond_19

    .line 907
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 908
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    .line 910
    :cond_19
    return-void
.end method

.method public isFloating()Z
    .registers 2

    .prologue
    .line 415
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

    .line 3888
    invoke-direct {p0, v2, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .line 3889
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
    .line 1901
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 12
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 565
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mMultiPhoneWindowEvent:Ljava/lang/Object;

    if-eqz v6, :cond_16

    .line 568
    :try_start_6
    sget-object v6, Lcom/android/internal/policy/impl/PhoneWindow;->sOnConfigurationChangedMethod:Ljava/lang/reflect/Method;

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mMultiPhoneWindowEvent:Ljava/lang/Object;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->checkSwitchToPreviousSizeButton()V
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_16} :catch_71
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_16} :catch_76
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_16} :catch_7b

    .line 579
    :cond_16
    :goto_16
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 580
    .local v2, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x101043b

    invoke-virtual {v6, v7, v2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 581
    iget v6, v2, Landroid/util/TypedValue;->data:I

    if-eqz v6, :cond_80

    .line 584
    .local v1, "isDeviceDefault":Z
    :goto_2d
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-nez v6, :cond_70

    if-nez v1, :cond_70

    .line 585
    invoke-direct {p0, v5, v5}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v3

    .line 586
    .local v3, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v3, :cond_70

    iget-object v6, v3, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v6, :cond_70

    .line 587
    iget-boolean v6, v3, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v6, :cond_82

    .line 589
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 590
    .local v4, "state":Landroid/os/Bundle;
    iget-object v6, v3, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-eqz v6, :cond_4f

    .line 591
    iget-object v6, v3, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v6, v4}, Lcom/android/internal/view/menu/IconMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 593
    :cond_4f
    iget-object v6, v3, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    if-eqz v6, :cond_58

    .line 594
    iget-object v6, v3, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v6, v4}, Lcom/android/internal/view/menu/ListMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 599
    :cond_58
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindow;->clearMenuViews(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)V

    .line 602
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/PhoneWindow;->reopenMenu(Z)V

    .line 605
    iget-object v5, v3, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-eqz v5, :cond_67

    .line 606
    iget-object v5, v3, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v5, v4}, Lcom/android/internal/view/menu/IconMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 608
    :cond_67
    iget-object v5, v3, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    if-eqz v5, :cond_70

    .line 609
    iget-object v5, v3, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v5, v4}, Lcom/android/internal/view/menu/ListMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 619
    .end local v3    # "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .end local v4    # "state":Landroid/os/Bundle;
    :cond_70
    :goto_70
    return-void

    .line 570
    .end local v1    # "isDeviceDefault":Z
    .end local v2    # "outValue":Landroid/util/TypedValue;
    :catch_71
    move-exception v0

    .line 571
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_16

    .line 572
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_76
    move-exception v0

    .line 573
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_16

    .line 574
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_7b
    move-exception v0

    .line 575
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_16

    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v2    # "outValue":Landroid/util/TypedValue;
    :cond_80
    move v1, v5

    .line 581
    goto :goto_2d

    .line 615
    .restart local v1    # "isDeviceDefault":Z
    .restart local v3    # "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_82
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindow;->clearMenuViews(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)V

    goto :goto_70
.end method

.method protected onDrawableChanged(ILandroid/graphics/drawable/Drawable;I)V
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "alpha"    # I

    .prologue
    .line 1462
    const/4 v1, 0x3

    if-ne p1, v1, :cond_14

    .line 1463
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLeftIconView()Landroid/widget/ImageView;

    move-result-object v0

    .line 1470
    .local v0, "view":Landroid/widget/ImageView;
    :goto_7
    if-eqz p2, :cond_1c

    .line 1471
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1472
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1473
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1477
    .end local v0    # "view":Landroid/widget/ImageView;
    :cond_13
    :goto_13
    return-void

    .line 1464
    :cond_14
    const/4 v1, 0x4

    if-ne p1, v1, :cond_13

    .line 1465
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getRightIconView()Landroid/widget/ImageView;

    move-result-object v0

    .restart local v0    # "view":Landroid/widget/ImageView;
    goto :goto_7

    .line 1475
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
    .line 1487
    const/4 v1, 0x2

    if-eq p1, v1, :cond_6

    const/4 v1, 0x5

    if-ne p1, v1, :cond_a

    .line 1488
    :cond_6
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->updateProgressBars(I)V

    .line 1495
    :cond_9
    :goto_9
    return-void

    .line 1489
    :cond_a
    const/4 v1, 0x7

    if-ne p1, v1, :cond_9

    .line 1490
    const v1, 0x102028c

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1491
    .local v0, "titleContainer":Landroid/widget/FrameLayout;
    if-eqz v0, :cond_9

    .line 1492
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_9
.end method

.method protected onKeyDown(IILandroid/view/KeyEvent;)Z
    .registers 13
    .param p1, "featureId"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1647
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v7, :cond_13

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 1652
    .local v1, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    :goto_a
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v5

    .line 1654
    .local v5, "scanCode":I
    sparse-switch p2, :sswitch_data_198

    .line 1798
    :cond_11
    const/4 v7, 0x0

    .end local p1    # "featureId":I
    :goto_12
    return v7

    .line 1647
    .end local v1    # "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    .end local v5    # "scanCode":I
    .restart local p1    # "featureId":I
    :cond_13
    const/4 v1, 0x0

    goto :goto_a

    .line 1665
    .restart local v1    # "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    .restart local v5    # "scanCode":I
    :sswitch_15
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mVolumeControlStreamType:I

    invoke-virtual {v7, p3, v8}, Landroid/media/AudioManager;->handleKeyDown(Landroid/view/KeyEvent;I)V

    .line 1666
    const/4 v7, 0x1

    goto :goto_12

    .line 1670
    :sswitch_20
    if-gez p1, :cond_23

    const/4 p1, 0x0

    .end local p1    # "featureId":I
    :cond_23
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/policy/impl/PhoneWindow;->onKeyDownPanel(ILandroid/view/KeyEvent;)Z

    .line 1671
    const/4 v7, 0x1

    goto :goto_12

    .line 1675
    .restart local p1    # "featureId":I
    :sswitch_28
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-gtz v7, :cond_11

    .line 1676
    if-ltz p1, :cond_11

    .line 1678
    if-eqz v1, :cond_35

    .line 1679
    invoke-virtual {v1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 1681
    :cond_35
    const/4 v7, 0x1

    goto :goto_12

    .line 1686
    :sswitch_37
    const/4 v7, 0x1

    goto :goto_12

    .line 1690
    :sswitch_39
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v7

    if-nez v7, :cond_11

    if-eqz v1, :cond_11

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-gtz v7, :cond_11

    .line 1694
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1695
    .local v4, "intent":Landroid/content/Intent;
    const-string v7, "com.android.email"

    const-string v8, "com.android.email.activity.Welcome"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1696
    const/high16 v7, 0x10000000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1697
    const/high16 v7, 0x800000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1698
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->getActivityCount(Landroid/content/Intent;)I

    move-result v7

    if-lez v7, :cond_6e

    .line 1699
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1701
    :cond_6e
    const/4 v7, 0x1

    goto :goto_12

    .line 1705
    .end local v4    # "intent":Landroid/content/Intent;
    :sswitch_70
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v7

    if-nez v7, :cond_11

    if-eqz v1, :cond_11

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-gtz v7, :cond_11

    .line 1709
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1710
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v7, "com.android.mms"

    const-string v8, "com.android.mms.ui.ConversationComposer"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1711
    const/high16 v7, 0x10000000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1712
    const/high16 v7, 0x800000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1713
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->getActivityCount(Landroid/content/Intent;)I

    move-result v7

    if-lez v7, :cond_a5

    .line 1714
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1716
    :cond_a5
    const/4 v7, 0x1

    goto/16 :goto_12

    .line 1720
    .end local v4    # "intent":Landroid/content/Intent;
    :sswitch_a8
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v7

    if-nez v7, :cond_11

    if-eqz v1, :cond_11

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-gtz v7, :cond_11

    .line 1724
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1725
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v7, "android.intent.category.HOME"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1726
    const/high16 v7, 0x10000000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1727
    const-string v7, "sec.android.intent.extra.LAUNCHER_ACTION"

    const-string v8, "com.android.launcher2.ALL_APPS"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1729
    :try_start_d2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_d9
    .catch Landroid/content/ActivityNotFoundException; {:try_start_d2 .. :try_end_d9} :catch_194

    .line 1733
    :goto_d9
    const/4 v7, 0x1

    goto/16 :goto_12

    .line 1737
    .end local v4    # "intent":Landroid/content/Intent;
    :sswitch_dc
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v7

    if-nez v7, :cond_11

    if-eqz v1, :cond_11

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-gtz v7, :cond_11

    .line 1741
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "input_method"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 1743
    .local v3, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v3, :cond_101

    .line 1744
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 1746
    :cond_101
    const/4 v7, 0x1

    goto/16 :goto_12

    .line 1750
    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :sswitch_104
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v7

    if-nez v7, :cond_11

    if-eqz v1, :cond_11

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-gtz v7, :cond_11

    .line 1754
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1755
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v7, "com.google.android.googlequicksearchbox"

    const-string v8, "com.google.android.googlequicksearchbox.VoiceSearchActivity"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1757
    const/high16 v7, 0x10000000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1758
    const/high16 v7, 0x800000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1759
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->getActivityCount(Landroid/content/Intent;)I

    move-result v7

    if-lez v7, :cond_139

    .line 1760
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1762
    :cond_139
    const/4 v7, 0x1

    goto/16 :goto_12

    .line 1766
    .end local v4    # "intent":Landroid/content/Intent;
    :sswitch_13c
    const/4 v7, 0x1

    goto/16 :goto_12

    .line 1771
    :sswitch_13f
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasNumericKeyboard(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_187

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasFolderTypeFeature(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_187

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isStarKeyToVibrationMode()Z

    move-result v7

    if-eqz v7, :cond_187

    .line 1774
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_187

    .line 1775
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-eqz v7, :cond_178

    .line 1776
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 1777
    .local v2, "focusView":Landroid/view/View;
    if-eqz v2, :cond_178

    instance-of v7, v2, Landroid/widget/TextView;

    if-eqz v7, :cond_178

    check-cast v2, Landroid/widget/TextView;

    .end local v2    # "focusView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v7

    if-nez v7, :cond_11

    .line 1783
    :cond_178
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 1784
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    .line 1785
    .local v6, "soundProfile":I
    const/4 v7, 0x1

    if-ne v6, v7, :cond_18a

    .line 1786
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1793
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    .end local v6    # "soundProfile":I
    :cond_187
    :goto_187
    const/4 v7, 0x1

    goto/16 :goto_12

    .line 1787
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    .restart local v6    # "soundProfile":I
    :cond_18a
    if-eqz v6, :cond_18f

    const/4 v7, 0x2

    if-ne v6, v7, :cond_187

    .line 1789
    :cond_18f
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_187

    .line 1730
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    .end local v6    # "soundProfile":I
    .restart local v4    # "intent":Landroid/content/Intent;
    :catch_194
    move-exception v7

    goto/16 :goto_d9

    .line 1654
    nop

    :sswitch_data_198
    .sparse-switch
        0x4 -> :sswitch_28
        0x11 -> :sswitch_13f
        0x18 -> :sswitch_15
        0x19 -> :sswitch_15
        0x52 -> :sswitch_20
        0xa4 -> :sswitch_15
        0xe0 -> :sswitch_a8
        0xe4 -> :sswitch_dc
        0xe5 -> :sswitch_104
        0xe6 -> :sswitch_39
        0xe7 -> :sswitch_13c
        0xe8 -> :sswitch_37
        0xeb -> :sswitch_70
        0xf1 -> :sswitch_15
        0xf2 -> :sswitch_15
        0xf3 -> :sswitch_15
    .end sparse-switch
.end method

.method public final onKeyDownPanel(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 956
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 958
    .local v0, "keyCode":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_1b

    .line 960
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I

    .line 962
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 963
    .local v1, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    iget-boolean v3, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v3, :cond_1a

    .line 964
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v2

    .line 977
    .end local v1    # "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_1a
    :goto_1a
    return v2

    .line 968
    :cond_1b
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I

    if-ne v3, v0, :cond_1a

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1a

    .line 969
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindow;->ensureFindoFeatureChecked(Landroid/content/Context;)V

    .line 970
    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindow;->mFindoEnabled:Z

    if-nez v3, :cond_1a

    .line 971
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I

    .line 972
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->launchDefaultSearch()Z

    goto :goto_1a
.end method

.method protected onKeyUp(IILandroid/view/KeyEvent;)Z
    .registers 10
    .param p1, "featureId"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1832
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v5, :cond_19

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 1834
    .local v0, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    :goto_c
    if-eqz v0, :cond_11

    .line 1835
    invoke-virtual {v0, p3}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 1840
    :cond_11
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v1

    .line 1842
    .local v1, "scanCode":I
    sparse-switch p2, :sswitch_data_6e

    .line 1896
    .end local p1    # "featureId":I
    :cond_18
    :goto_18
    return v3

    .line 1832
    .end local v0    # "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    .end local v1    # "scanCode":I
    .restart local p1    # "featureId":I
    :cond_19
    const/4 v0, 0x0

    goto :goto_c

    .line 1853
    .restart local v0    # "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    .restart local v1    # "scanCode":I
    :sswitch_1b
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v3

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mVolumeControlStreamType:I

    invoke-virtual {v3, p3, v5}, Landroid/media/AudioManager;->handleKeyUp(Landroid/view/KeyEvent;I)V

    move v3, v4

    .line 1854
    goto :goto_18

    .line 1858
    :sswitch_26
    if-gez p1, :cond_29

    move p1, v3

    .end local p1    # "featureId":I
    :cond_29
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/policy/impl/PhoneWindow;->onKeyUpPanel(ILandroid/view/KeyEvent;)V

    move v3, v4

    .line 1860
    goto :goto_18

    .line 1864
    .restart local p1    # "featureId":I
    :sswitch_2e
    if-ltz p1, :cond_18

    .line 1865
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v5

    if-nez v5, :cond_18

    .line 1866
    if-nez p1, :cond_4d

    .line 1867
    invoke-direct {p0, p1, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 1868
    .local v2, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_4d

    iget-boolean v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-eqz v3, :cond_4d

    .line 1871
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->reopenMenu(Z)V

    move v3, v4

    .line 1872
    goto :goto_18

    .line 1875
    .end local v2    # "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_4d
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(I)V

    move v3, v4

    .line 1876
    goto :goto_18

    .line 1886
    :sswitch_52
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v5

    if-nez v5, :cond_18

    .line 1889
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_6b

    .line 1890
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->launchDefaultSearch()Z

    :cond_6b
    move v3, v4

    .line 1892
    goto :goto_18

    .line 1842
    nop

    :sswitch_data_6e
    .sparse-switch
        0x4 -> :sswitch_2e
        0x18 -> :sswitch_1b
        0x19 -> :sswitch_1b
        0x52 -> :sswitch_26
        0x54 -> :sswitch_52
        0xa4 -> :sswitch_1b
        0xf1 -> :sswitch_1b
        0xf2 -> :sswitch_1b
        0xf3 -> :sswitch_1b
    .end sparse-switch
.end method

.method public final onKeyUpPanel(ILandroid/view/KeyEvent;)V
    .registers 11
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 987
    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I

    if-eqz v6, :cond_1a

    .line 988
    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I

    .line 990
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_1a

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v6, :cond_1b

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v6}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$400(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/view/ActionMode;

    move-result-object v6

    if-eqz v6, :cond_1b

    .line 1055
    :cond_1a
    :goto_1a
    return-void

    .line 994
    :cond_1b
    const/4 v2, 0x0

    .line 995
    .local v2, "playSoundEffect":Z
    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v4

    .line 996
    .local v4, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-nez p1, :cond_6c

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v6, :cond_6c

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v6}, Lcom/android/internal/widget/ActionBarView;->isOverflowReserved()Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 998
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v6}, Lcom/android/internal/widget/ActionBarView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_50

    .line 999
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v6}, Lcom/android/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v6

    if-nez v6, :cond_65

    .line 1000
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v6

    if-nez v6, :cond_50

    invoke-virtual {p0, v4, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 1001
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v6}, Lcom/android/internal/widget/ActionBarView;->showOverflowMenu()Z

    move-result v2

    .line 1043
    :cond_50
    :goto_50
    const/4 v2, 0x0

    .line 1045
    if-eqz v2, :cond_1a

    .line 1046
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1048
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_aa

    .line 1049
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_1a

    .line 1004
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_65
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v6}, Lcom/android/internal/widget/ActionBarView;->hideOverflowMenu()Z

    move-result v2

    goto :goto_50

    .line 1008
    :cond_6c
    iget-boolean v6, v4, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v6, :cond_74

    iget-boolean v6, v4, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isHandled:Z

    if-eqz v6, :cond_7a

    .line 1012
    :cond_74
    iget-boolean v2, v4, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    .line 1015
    invoke-virtual {p0, v4, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_50

    .line 1017
    :cond_7a
    iget-boolean v6, v4, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    if-eqz v6, :cond_50

    .line 1018
    const/4 v3, 0x1

    .line 1019
    .local v3, "show":Z
    iget-boolean v6, v4, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v6, :cond_89

    .line 1022
    iput-boolean v5, v4, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 1023
    invoke-virtual {p0, v4, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v3

    .line 1027
    :cond_89
    iget-object v6, v4, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    if-nez v6, :cond_9c

    .line 1031
    .local v1, "notEmptyPanel":Z
    :cond_8d
    :goto_8d
    if-eqz v3, :cond_50

    if-eqz v1, :cond_50

    .line 1033
    const v6, 0xc351

    invoke-static {v6, v5}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1036
    invoke-direct {p0, v4, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->openPanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 1038
    const/4 v2, 0x1

    goto :goto_50

    .line 1027
    .end local v1    # "notEmptyPanel":Z
    :cond_9c
    iget-object v6, v4, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v6}, Lcom/android/internal/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-gtz v6, :cond_8d

    move v1, v5

    goto :goto_8d

    .line 1051
    .end local v3    # "show":Z
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_aa
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
    .line 1167
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1168
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 1169
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->findMenuPanel(Landroid/view/Menu;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1170
    .local v1, "panel":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_1d

    .line 1171
    iget v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-interface {v0, v2, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v2

    .line 1174
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
    .line 1178
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->reopenMenu(Z)V

    .line 1179
    return-void
.end method

.method onOptionsPanelRotationChanged()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1301
    invoke-direct {p0, v3, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1302
    .local v1, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_8

    .line 1313
    :cond_7
    :goto_7
    return-void

    .line 1304
    :cond_8
    iget-object v3, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v3, :cond_29

    iget-object v3, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    move-object v0, v3

    .line 1306
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    :goto_15
    if-eqz v0, :cond_7

    .line 1307
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getOptionsPanelGravity()I

    move-result v3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1308
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 1309
    .local v2, "wm":Landroid/view/ViewManager;
    if-eqz v2, :cond_7

    .line 1310
    iget-object v3, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-interface {v2, v3, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    .line 1304
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "wm":Landroid/view/ViewManager;
    :cond_29
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public onWindowAttributesChanged(II)V
    .registers 9
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    .line 4537
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mMultiPhoneWindowEvent:Ljava/lang/Object;

    if-eqz v1, :cond_1f

    .line 4539
    :try_start_4
    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindow;->sOnWindowAttributesChangedMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mMultiPhoneWindowEvent:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4540
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->checkSwitchToPreviousSizeButton()V
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_1f} :catch_20
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_1f} :catch_25
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_1f} :catch_2a

    .line 4549
    :cond_1f
    :goto_1f
    return-void

    .line 4541
    :catch_20
    move-exception v0

    .line 4542
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1f

    .line 4543
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_25
    move-exception v0

    .line 4544
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1f

    .line 4545
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2a
    move-exception v0

    .line 4546
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1f
.end method

.method public onWindowInfoChanged()V
    .registers 5

    .prologue
    .line 4552
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mMultiPhoneWindowEvent:Ljava/lang/Object;

    if-eqz v1, :cond_e

    .line 4554
    :try_start_4
    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindow;->sOnWindowInfoChangedMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mMultiPhoneWindowEvent:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_e} :catch_f
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_e} :catch_14
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_e} :catch_19

    .line 4563
    :cond_e
    :goto_e
    return-void

    .line 4555
    :catch_f
    move-exception v0

    .line 4556
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_e

    .line 4557
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_14
    move-exception v0

    .line 4558
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_e

    .line 4559
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_19
    move-exception v0

    .line 4560
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_e
.end method

.method public onWindowStatusChanged(II)V
    .registers 9
    .param p1, "windowMode"    # I
    .param p2, "windowInfoChanged"    # I

    .prologue
    .line 4522
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mMultiPhoneWindowEvent:Ljava/lang/Object;

    if-eqz v1, :cond_1f

    .line 4524
    :try_start_4
    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindow;->sOnWindowStatusChangedMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mMultiPhoneWindowEvent:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4525
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->checkSwitchToPreviousSizeButton()V
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_1f} :catch_20
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_1f} :catch_25
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_1f} :catch_2a

    .line 4534
    :cond_1f
    :goto_1f
    return-void

    .line 4526
    :catch_20
    move-exception v0

    .line 4527
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1f

    .line 4528
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_25
    move-exception v0

    .line 4529
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1f

    .line 4530
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2a
    move-exception v0

    .line 4531
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1f
.end method

.method public final openPanel(ILandroid/view/KeyEvent;)V
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 636
    if-nez p1, :cond_1c

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 638
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1b

    .line 639
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->showOverflowMenu()Z

    .line 644
    :cond_1b
    :goto_1b
    return-void

    .line 642
    :cond_1c
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->openPanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_1b
.end method

.method public final peekDecorView()Landroid/view/View;
    .registers 2

    .prologue
    .line 1913
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    return-object v0
.end method

.method public performContextMenuIdentifierAction(II)Z
    .registers 4
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .prologue
    .line 1357
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

    .line 1136
    invoke-direct {p0, p1, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1137
    .local v1, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    new-instance v2, Landroid/view/KeyEvent;

    const/16 v3, 0x52

    invoke-direct {v2, v0, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 1151
    :cond_13
    :goto_13
    return v0

    .line 1140
    :cond_14
    iget-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_13

    .line 1144
    iget-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, p2, p3}, Lcom/android/internal/view/menu/MenuBuilder;->performIdentifierAction(II)Z

    move-result v0

    .line 1147
    .local v0, "res":Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-nez v2, :cond_13

    .line 1148
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
    .line 1102
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

    .line 457
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 559
    :cond_9
    :goto_9
    return v5

    .line 462
    :cond_a
    iget-boolean v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    if-eqz v3, :cond_10

    move v5, v4

    .line 463
    goto :goto_9

    .line 466
    :cond_10
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    if-eq v3, p1, :cond_1d

    .line 468
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    .line 471
    :cond_1d
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 473
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_2b

    .line 474
    iget v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    .line 477
    :cond_2b
    iget v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    if-eqz v3, :cond_35

    iget v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    const/16 v6, 0x8

    if-ne v3, v6, :cond_98

    :cond_35
    move v1, v4

    .line 480
    .local v1, "isActionBarMenu":Z
    :goto_36
    if-eqz v1, :cond_41

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v3, :cond_41

    .line 483
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarView;->setMenuPrepared()V

    .line 486
    :cond_41
    iget-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-nez v3, :cond_f0

    .line 488
    iget-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v3, :cond_4d

    iget-boolean v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v3, :cond_9c

    .line 489
    :cond_4d
    iget-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v3, :cond_5b

    .line 490
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->initializePanelMenu(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v3, :cond_9

    .line 495
    :cond_5b
    if-eqz v1, :cond_75

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v3, :cond_75

    .line 496
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;

    if-nez v3, :cond_6c

    .line 497
    new-instance v3, Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;

    invoke-direct {v3, p0, v8}, Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/policy/impl/PhoneWindow$1;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;

    .line 499
    :cond_6c
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    iget-object v6, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;

    invoke-virtual {v3, v6, v7}, Lcom/android/internal/widget/ActionBarView;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 506
    :cond_75
    iget-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 507
    if-eqz v0, :cond_86

    iget v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    iget-object v6, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v3, v6}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_9a

    .line 509
    :cond_86
    invoke-virtual {p1, v8}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->setMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 511
    if-eqz v1, :cond_9

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v3, :cond_9

    .line 513
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;

    invoke-virtual {v3, v8, v4}, Lcom/android/internal/widget/ActionBarView;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    goto/16 :goto_9

    .end local v1    # "isActionBarMenu":Z
    :cond_98
    move v1, v5

    .line 477
    goto :goto_36

    .line 519
    .restart local v1    # "isActionBarMenu":Z
    :cond_9a
    iput-boolean v5, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    .line 526
    :cond_9c
    iget-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 530
    iget-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    if-eqz v3, :cond_ae

    .line 531
    iget-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v6, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    invoke-virtual {v3, v6}, Lcom/android/internal/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 532
    iput-object v8, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 535
    :cond_ae
    iget v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    iget-object v6, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v7, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v3, v6, v7}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_d1

    .line 536
    invoke-static {p1}, Lcom/android/internal/policy/impl/PhoneWindow;->clearMenuViews(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)V

    .line 537
    if-eqz v1, :cond_ca

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v3, :cond_ca

    .line 540
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;

    invoke-virtual {v3, v8, v4}, Lcom/android/internal/widget/ActionBarView;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 542
    :cond_ca
    iget-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto/16 :goto_9

    .line 547
    :cond_d1
    if-eqz p2, :cond_f9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v3

    :goto_d7
    invoke-static {v3}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 549
    .local v2, "kmap":Landroid/view/KeyCharacterMap;
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v3

    if-eq v3, v4, :cond_fb

    move v3, v4

    :goto_e2
    iput-boolean v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->qwertyMode:Z

    .line 550
    iget-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-boolean v6, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->qwertyMode:Z

    invoke-virtual {v3, v6}, Lcom/android/internal/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 551
    iget-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 555
    .end local v2    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_f0
    iput-boolean v4, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 556
    iput-boolean v5, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 557
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move v5, v4

    .line 559
    goto/16 :goto_9

    .line 547
    :cond_f9
    const/4 v3, -0x1

    goto :goto_d7

    .restart local v2    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_fb
    move v3, v5

    .line 549
    goto :goto_e2
.end method

.method public requestFeature(I)Z
    .registers 6
    .param p1, "featureId"    # I

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x7

    .line 319
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-eqz v1, :cond_f

    .line 320
    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string v2, "requestFeature() must be called before adding content"

    invoke-direct {v1, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 322
    :cond_f
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getFeatures()I

    move-result v0

    .line 323
    .local v0, "features":I
    const/16 v1, 0x41

    if-eq v0, v1, :cond_21

    if-ne p1, v2, :cond_21

    .line 326
    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string v2, "You cannot combine custom titles with other title features"

    invoke-direct {v1, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 328
    :cond_21
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_33

    if-eq p1, v2, :cond_33

    const/16 v1, 0xa

    if-eq p1, v1, :cond_33

    .line 332
    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string v2, "You cannot combine custom titles with other title features"

    invoke-direct {v1, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 334
    :cond_33
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_3b

    if-ne p1, v3, :cond_3b

    .line 335
    const/4 v1, 0x0

    .line 341
    :goto_3a
    return v1

    .line 337
    :cond_3b
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_45

    const/4 v1, 0x1

    if-ne p1, v1, :cond_45

    .line 339
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->removeFeature(I)V

    .line 341
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

    .line 1965
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v5, :cond_6

    .line 2004
    :cond_5
    :goto_5
    return-void

    .line 1969
    :cond_6
    const-string v5, "android:views"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v4

    .line 1971
    .local v4, "savedStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v4, :cond_13

    .line 1972
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 1976
    :cond_13
    const-string v5, "android:focusedViewId"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1977
    .local v1, "focusedViewId":I
    if-eq v1, v6, :cond_26

    .line 1978
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1979
    .local v2, "needsFocus":Landroid/view/View;
    if-eqz v2, :cond_43

    .line 1980
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 1989
    .end local v2    # "needsFocus":Landroid/view/View;
    :cond_26
    :goto_26
    const-string v5, "android:Panels"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v3

    .line 1990
    .local v3, "panelStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v3, :cond_31

    .line 1991
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->restorePanelState(Landroid/util/SparseArray;)V

    .line 1994
    :cond_31
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v5, :cond_5

    .line 1995
    const-string v5, "android:ActionBar"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 1997
    .local v0, "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v0, :cond_62

    .line 1998
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v5, v0}, Lcom/android/internal/widget/ActionBarView;->restoreHierarchyState(Landroid/util/SparseArray;)V

    goto :goto_5

    .line 1982
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

    .line 2000
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
    .line 1924
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1925
    .local v2, "outState":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v5, :cond_a

    .line 1959
    :cond_9
    :goto_9
    return-object v2

    .line 1929
    :cond_a
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 1930
    .local v4, "states":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 1931
    const-string v5, "android:views"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1934
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 1935
    .local v1, "focusedView":Landroid/view/View;
    if-eqz v1, :cond_31

    .line 1936
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_31

    .line 1937
    const-string v5, "android:focusedViewId"

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1947
    :cond_31
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 1948
    .local v3, "panelStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->savePanelState(Landroid/util/SparseArray;)V

    .line 1949
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-lez v5, :cond_44

    .line 1950
    const-string v5, "android:Panels"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1953
    :cond_44
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v5, :cond_9

    .line 1954
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 1955
    .local v0, "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v5, v0}, Lcom/android/internal/widget/ActionBarView;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 1956
    const-string v5, "android:ActionBar"

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    goto :goto_9
.end method

.method sendCloseSystemWindows()V
    .registers 3

    .prologue
    .line 4504
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 4505
    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 4508
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 4509
    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_8

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundResource:I

    if-eqz v0, :cond_16

    .line 1363
    :cond_8
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundResource:I

    .line 1364
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1365
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v0, :cond_16

    .line 1366
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1369
    :cond_16
    return-void
.end method

.method public final setChildDrawable(ILandroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3876
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 3877
    .local v0, "st":Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    iput-object p2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->child:Landroid/graphics/drawable/Drawable;

    .line 3878
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V

    .line 3879
    return-void
.end method

.method public final setChildInt(II)V
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    .prologue
    .line 3883
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->updateInt(IIZ)V

    .line 3884
    return-void
.end method

.method public final setContainer(Landroid/view/Window;)V
    .registers 2
    .param p1, "container"    # Landroid/view/Window;

    .prologue
    .line 314
    invoke-super {p0, p1}, Landroid/view/Window;->setContainer(Landroid/view/Window;)V

    .line 315
    return-void
.end method

.method public setContentView(I)V
    .registers 5
    .param p1, "layoutResID"    # I

    .prologue
    .line 356
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_1e

    .line 357
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    .line 361
    :goto_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 362
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 363
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 364
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 366
    :cond_1d
    return-void

    .line 359
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

    .line 370
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 375
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_1c

    .line 376
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    .line 380
    :goto_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 382
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 383
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 385
    :cond_1b
    return-void

    .line 378
    .end local v0    # "cb":Landroid/view/Window$Callback;
    :cond_1c
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_7
.end method

.method protected final setFeatureDefaultDrawable(ILandroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1422
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1423
    .local v0, "st":Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    iget-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    if-eq v1, p2, :cond_f

    .line 1424
    iput-object p2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    .line 1425
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V

    .line 1427
    :cond_f
    return-void
.end method

.method public final setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    .line 1403
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1404
    .local v0, "st":Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->resid:I

    .line 1405
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    .line 1406
    iget-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    if-eq v1, p2, :cond_14

    .line 1407
    iput-object p2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 1408
    invoke-direct {p0, p1, v0, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V

    .line 1410
    :cond_14
    return-void
.end method

.method public setFeatureDrawableAlpha(II)V
    .registers 5
    .param p1, "featureId"    # I
    .param p2, "alpha"    # I

    .prologue
    .line 1414
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1415
    .local v0, "st":Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    iget v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->alpha:I

    if-eq v1, p2, :cond_f

    .line 1416
    iput p2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->alpha:I

    .line 1417
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V

    .line 1419
    :cond_f
    return-void
.end method

.method public final setFeatureDrawableResource(II)V
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "resId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1373
    if-eqz p2, :cond_23

    .line 1374
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1375
    .local v0, "st":Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    iget v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->resid:I

    if-eq v1, p2, :cond_22

    .line 1376
    iput p2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->resid:I

    .line 1377
    iput-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    .line 1378
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 1379
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V

    .line 1384
    .end local v0    # "st":Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    :cond_22
    :goto_22
    return-void

    .line 1382
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

    .line 1388
    if-eqz p2, :cond_22

    .line 1389
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1390
    .local v0, "st":Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    iget-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    if-eqz v1, :cond_14

    iget-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 1391
    :cond_14
    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->resid:I

    .line 1392
    iput-object p2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    .line 1393
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->loadImageURI(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 1394
    invoke-direct {p0, p1, v0, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V

    .line 1399
    .end local v0    # "st":Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    :cond_21
    :goto_21
    return-void

    .line 1397
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
    .line 3326
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3327
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_c

    .line 3328
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->requestFeature(I)Z

    .line 3329
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->setFeatureDefaultDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 3331
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getFeatures()I

    move-result v2

    const/4 v3, 0x1

    shl-int/2addr v3, p1

    and-int/2addr v2, v3

    if-eqz v2, :cond_1f

    .line 3332
    const/4 v2, -0x1

    invoke-virtual {p2, p4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 3333
    .local v0, "alpha":I
    if-ltz v0, :cond_1f

    .line 3334
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->setFeatureDrawableAlpha(II)V

    .line 3337
    .end local v0    # "alpha":I
    :cond_1f
    return-void
.end method

.method public final setFeatureInt(II)V
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    .prologue
    .line 1433
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->updateInt(IIZ)V

    .line 1434
    return-void
.end method

.method public setLayout(II)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, -0x1

    .line 4593
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v0, :cond_1c

    if-ne p1, v1, :cond_1c

    if-ne p2, v1, :cond_1c

    .line 4594
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getWindowMode()I
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$300(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v0

    sget v1, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_FREESTYLE:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1c

    .line 4595
    const-string v0, "PhoneWindow"

    const-string v1, "Requested invalid layout parameters of the phone window. Ignoring the request!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4601
    :goto_1b
    return-void

    .line 4600
    :cond_1c
    invoke-super {p0, p1, p2}, Landroid/view/Window;->setLayout(II)V

    goto :goto_1b
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 432
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    :cond_9
    :goto_9
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    .line 437
    return-void

    .line 433
    :cond_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v0, :cond_9

    .line 434
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_9
.end method

.method public setTitleColor(I)V
    .registers 3
    .param p1, "textColor"    # I

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 442
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 444
    :cond_9
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleColor:I

    .line 445
    return-void
.end method

.method public setUiOptions(I)V
    .registers 2
    .param p1, "uiOptions"    # I

    .prologue
    .line 346
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mUiOptions:I

    .line 347
    return-void
.end method

.method public setUiOptions(II)V
    .registers 5
    .param p1, "uiOptions"    # I
    .param p2, "mask"    # I

    .prologue
    .line 351
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mUiOptions:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mUiOptions:I

    .line 352
    return-void
.end method

.method public setVolumeControlStream(I)V
    .registers 2
    .param p1, "streamType"    # I

    .prologue
    .line 4057
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mVolumeControlStreamType:I

    .line 4058
    return-void
.end method

.method public final showMultiwindowPopupIcon(Z)V
    .registers 3
    .param p1, "isShow"    # Z

    .prologue
    .line 4587
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v0, :cond_9

    .line 4588
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->refreshSwitchToPreviousSizeButton(Z)V

    .line 4590
    :cond_9
    return-void
.end method

.method public superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1622
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1602
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1607
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1612
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public takeInputQueue(Landroid/view/InputQueue$Callback;)V
    .registers 2
    .param p1, "callback"    # Landroid/view/InputQueue$Callback;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 411
    return-void
.end method

.method public takeKeyEvents(Z)V
    .registers 3
    .param p1, "get"    # Z

    .prologue
    .line 1597
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setFocusable(Z)V

    .line 1598
    return-void
.end method

.method public takeSurface(Landroid/view/SurfaceHolder$Callback2;)V
    .registers 2
    .param p1, "callback"    # Landroid/view/SurfaceHolder$Callback2;

    .prologue
    .line 406
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    .line 407
    return-void
.end method

.method public final togglePanel(ILandroid/view/KeyEvent;)V
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 894
    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .line 895
    .local v0, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    iget-boolean v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v1, :cond_d

    .line 896
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    .line 900
    :goto_c
    return-void

    .line 898
    :cond_d
    invoke-direct {p0, v0, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->openPanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_c
.end method

.method protected final updateDrawable(IZ)V
    .registers 5
    .param p1, "featureId"    # I
    .param p2, "fromActive"    # Z

    .prologue
    .line 1446
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1447
    .local v0, "st":Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    if-eqz v0, :cond_a

    .line 1448
    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V

    .line 1450
    :cond_a
    return-void
.end method
