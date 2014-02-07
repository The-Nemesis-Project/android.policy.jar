.class public Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;
.super Ljava/lang/Object;
.source "MultiPhoneWindowEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$H;,
        Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$SwithToPreviousSizeButton;,
        Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;,
        Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;,
        Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$DoubleTapPinupListener;,
        Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;,
        Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TitlebarButtonListener;,
        Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;
    }
.end annotation


# static fields
.field private static REVISE_WINDOW_BOUNDARY_X:I = 0x0

.field private static REVISE_WINDOW_BOUNDARY_Y:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MultiPhoneWindowEvent"

.field private static mIsFillWindow:Z

.field private static sActionBarViewSetMultiWindowReserved:Ljava/lang/reflect/Method;

.field private static sIsQueriedActionBarViewSetMultiWindowReserved:Z

.field private static statusBarHeight:I


# instance fields
.field private ENABLED_EXIT_BUTTON:Z

.field private ENABLED_MINIMIZED_BUTTON:Z

.field private ENABLED_MINIMIZE_MOVING_ANIMATION:Z

.field private ENABLED_OVERLAY_TITLEBAR:Z

.field private ENABLED_PINUP_BUTTON:Z

.field private ENABLED_REVISE_MINIMIZED_POSITION:Z

.field private ENABLED_TITLEBAR_GESTURE_TRIGGER:Z

.field private ENABLED_TITLE_BAR_DOUBLE_TAPPING:Z

.field private final HOVERING_WIDTH:I

.field private fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

.field private hasGuideLayout:Z

.field private longDownX:I

.field private longDownY:I

.field private mActivity:Landroid/app/Activity;

.field private mActivityStyles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mApplicationStyles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mArrange:I

.field private mBorderFrame:Landroid/sec/multiwindow/impl/BorderFrameLayout;

.field private mBorderLayout:Landroid/widget/LinearLayout;

.field private mChildTopView:Landroid/view/ViewGroup;

.field private mContentRoot:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mDecor:Landroid/view/ViewGroup;

.field private mDecorBackground:Landroid/graphics/drawable/Drawable;

.field mDisplayStub:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

.field private mDividor1:Landroid/view/View;

.field private mDividor2:Landroid/view/View;

.field private mDividor3:Landroid/view/View;

.field private mDividor4:Landroid/view/View;

.field private mDividor5:Landroid/view/View;

.field private mExitButton:Landroid/widget/ImageButton;

.field private mGestureView:Landroid/gesture/GestureOverlayView;

.field final mH:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$H;

.field private mHide:Z

.field private mIsDelay:Z

.field private mIsFreestyleOnly:Z

.field private mIsHideFlashBarTray:Z

.field private mIsLastMinimized:Z

.field private mIsLastPinup:Z

.field private mIsNoTitleBar:Z

.field private mIsPhone:Z

.field private mIsResizeOnly:Z

.field private mIsTouchable:Z

.field private mIvt:[B

.field private mLastMode:I

.field private mLastMultiwindowRect:Landroid/graphics/Rect;

.field private mLastWindowMode:I

.field private mLastWindowRect:Landroid/graphics/Rect;

.field private mMaxSize:Landroid/graphics/Point;

.field private mMaximizeButton:Landroid/widget/ImageButton;

.field private mMinHeight:F

.field private mMinWidth:F

.field private mMinimizeBg:Landroid/graphics/drawable/Drawable;

.field private mMinimizeBgFocus:Landroid/graphics/drawable/Drawable;

.field private mMinimizeButton:Landroid/widget/ImageButton;

.field private mMinimizeIcon:Landroid/graphics/drawable/Drawable;

.field private mMinimizeInnerShadow:Landroid/graphics/drawable/Drawable;

.field private mMinimizedAppLable:Ljava/lang/CharSequence;

.field private mMoveWindowView:Landroid/view/View;

.field private mMultiWindowButton:Landroid/widget/ImageButton;

.field private mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

.field private mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

.field mMultiWindowServiceCallback:Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback$Stub;

.field private mOnTouchedView:Landroid/view/View;

.field private mOwner:Landroid/view/Window;

.field private mPaddingWidth:I

.field private mParentBorderFrame:Landroid/view/ViewGroup;

.field private mPinupButton:Landroid/widget/ImageButton;

.field mStatusBarHeight:I

.field private mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

.field mTitleBarHeight:I

.field private mTitleText:Landroid/widget/TextView;

.field private mTouchBroadcastReceiver:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;

.field private mUserWindowFlags:I

.field private mVibrator:Landroid/os/SystemVibrator;

.field private mVideoCapabilityAlert:Landroid/app/AlertDialog$Builder;

.field private mVideoCapabilityReceiver:Landroid/content/BroadcastReceiver;

.field private mWindowContentFrame:Landroid/widget/LinearLayout;

.field private mWindowIconic:Landroid/widget/ImageView;

.field private mWindowMinimizedWidth:I

.field private mWindowMode:I

.field private mWindowTitleBar:Landroid/view/View;

.field private mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;

.field private supportFlick:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 123
    sput v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->statusBarHeight:I

    .line 209
    sput-boolean v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsFillWindow:Z

    .line 221
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->sActionBarViewSetMultiWindowReserved:Ljava/lang/reflect/Method;

    .line 222
    sput-boolean v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->sIsQueriedActionBarViewSetMultiWindowReserved:Z

    .line 224
    const/16 v0, 0x12c

    sput v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->REVISE_WINDOW_BOUNDARY_X:I

    .line 225
    const/16 v0, 0xc8

    sput v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->REVISE_WINDOW_BOUNDARY_Y:I

    return-void
.end method

.method private constructor <init>(Landroid/view/Window;)V
    .registers 29
    .param p1, "owner"    # Landroid/view/Window;

    .prologue
    .line 820
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsResizeOnly:Z

    .line 129
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsFreestyleOnly:Z

    .line 130
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsNoTitleBar:Z

    .line 132
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsHideFlashBarTray:Z

    .line 140
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    .line 141
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    .line 142
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeBg:Landroid/graphics/drawable/Drawable;

    .line 143
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeBgFocus:Landroid/graphics/drawable/Drawable;

    .line 144
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeInnerShadow:Landroid/graphics/drawable/Drawable;

    .line 145
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizedAppLable:Ljava/lang/CharSequence;

    .line 147
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    .line 154
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    .line 162
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsTouchable:Z

    .line 176
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    .line 178
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinWidth:F

    .line 179
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinHeight:F

    .line 181
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mArrange:I

    .line 182
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowMinimizedWidth:I

    .line 184
    const/high16 v25, 0x1000000

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLastWindowMode:I

    .line 185
    new-instance v25, Landroid/graphics/Rect;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLastWindowRect:Landroid/graphics/Rect;

    .line 190
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    .line 191
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsPhone:Z

    .line 193
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_OVERLAY_TITLEBAR:Z

    .line 194
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_MINIMIZED_BUTTON:Z

    .line 195
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_TITLE_BAR_DOUBLE_TAPPING:Z

    .line 196
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_PINUP_BUTTON:Z

    .line 197
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_TITLEBAR_GESTURE_TRIGGER:Z

    .line 198
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_REVISE_MINIMIZED_POSITION:Z

    .line 199
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_MINIMIZE_MOVING_ANIMATION:Z

    .line 200
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_EXIT_BUTTON:Z

    .line 202
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->supportFlick:Z

    .line 204
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowMode:I

    .line 205
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDecor:Landroid/view/ViewGroup;

    .line 206
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mHide:Z

    .line 207
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsDelay:Z

    .line 211
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPaddingWidth:I

    .line 212
    const/16 v25, 0x14

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->HOVERING_WIDTH:I

    .line 214
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownX:I

    .line 215
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownY:I

    .line 217
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z

    .line 219
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mVideoCapabilityReceiver:Landroid/content/BroadcastReceiver;

    .line 227
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mVideoCapabilityAlert:Landroid/app/AlertDialog$Builder;

    .line 232
    new-instance v25, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$H;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$H;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mH:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$H;

    .line 234
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    .line 235
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    .line 237
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;

    .line 238
    new-instance v25, Landroid/graphics/Rect;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLastMultiwindowRect:Landroid/graphics/Rect;

    .line 245
    const/16 v25, 0x26

    move/from16 v0, v25

    new-array v0, v0, [B

    move-object/from16 v25, v0

    fill-array-data v25, :array_58c

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIvt:[B

    .line 3138
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDisplayStub:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    .line 3222
    new-instance v25, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$7;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$7;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowServiceCallback:Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback$Stub;

    .line 821
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    .line 823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/res/Configuration;->arrange:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mArrange:I

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isSupportMinimize(Landroid/content/Context;)Z

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_MINIMIZED_BUTTON:Z

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x10500f2

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowMinimizedWidth:I

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x105010f

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPaddingWidth:I

    .line 830
    new-instance v25, Lcom/samsung/android/theme/SThemeManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Lcom/samsung/android/theme/SThemeManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    .line 832
    sget-boolean v25, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsFillWindow:Z

    if-eqz v25, :cond_2b5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v25, v0

    if-nez v25, :cond_2b5

    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    instance-of v0, v0, Landroid/content/ContextWrapper;

    move/from16 v25, v0

    if-nez v25, :cond_274

    .line 986
    :cond_273
    :goto_273
    return-void

    .line 837
    :cond_274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    check-cast v25, Landroid/content/ContextWrapper;

    invoke-virtual/range {v25 .. v25}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    if-eqz v25, :cond_273

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v25, v0

    if-eqz v25, :cond_273

    .line 842
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    .line 843
    .local v3, "a":Landroid/app/Activity;
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/Window;->getMultiPhoneWindowEvent()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    .line 844
    .local v23, "stubEvent":Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;
    if-eqz v23, :cond_2b5

    .line 845
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setDisplayStub(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V

    .line 852
    .end local v3    # "a":Landroid/app/Activity;
    .end local v23    # "stubEvent":Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;
    :cond_2b5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "multiwindow"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/sec/multiwindow/impl/MultiWindowManager;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "vibrator"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/os/SystemVibrator;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mVibrator:Landroid/os/SystemVibrator;

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    check-cast v25, Landroid/app/Activity;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    .line 856
    const-string v25, "com.sec.android.multiwindow.STYLE"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->parseApplicationInfoMetaData(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mApplicationStyles:Ljava/util/ArrayList;

    .line 857
    const-string v25, "com.sec.android.multiwindow.activity.STYLE"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->parseActivityInfoMetaData(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivityStyles:Ljava/util/ArrayList;

    .line 858
    const-string v25, "resizeOnly"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasActivityStyle(Ljava/lang/String;)Z

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsResizeOnly:Z

    .line 859
    const-string v25, "freestyleOnly"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasApplicationStyle(Ljava/lang/String;)Z

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsFreestyleOnly:Z

    .line 860
    const-string v25, "noTitleBar"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasApplicationStyle(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_343

    const-string v25, "noTitleBar"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasActivityStyle(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_4f3

    :cond_343
    const/16 v25, 0x1

    :goto_345
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsNoTitleBar:Z

    .line 863
    :try_start_34b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x1070060

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    .line 864
    .local v13, "fixedRatioAppList":[Ljava/lang/String;
    move-object v9, v13

    .local v9, "arr$":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v19, v0

    .local v19, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_362
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_387

    aget-object v12, v9, v16

    .line 865
    .local v12, "fixedRatioApp":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_4f7

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mApplicationStyles:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    const-string v26, "fixedRatio"

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_387
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_34b .. :try_end_387} :catch_588

    .line 875
    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v12    # "fixedRatioApp":Ljava/lang/String;
    .end local v13    # "fixedRatioAppList":[Ljava/lang/String;
    .end local v16    # "i$":I
    .end local v19    # "len$":I
    :cond_387
    :goto_387
    :try_start_387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x1070065

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    .line 876
    .local v15, "hideFlashBarAppList":[Ljava/lang/String;
    move-object v9, v15

    .restart local v9    # "arr$":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v19, v0

    .restart local v19    # "len$":I
    const/16 v16, 0x0

    .restart local v16    # "i$":I
    :goto_39e
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_3c0

    aget-object v14, v9, v16

    .line 877
    .local v14, "hideApp":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_4fb

    .line 878
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsHideFlashBarTray:Z
    :try_end_3c0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_387 .. :try_end_3c0} :catch_585

    .line 887
    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v14    # "hideApp":Ljava/lang/String;
    .end local v15    # "hideFlashBarAppList":[Ljava/lang/String;
    .end local v16    # "i$":I
    .end local v19    # "len$":I
    :cond_3c0
    :goto_3c0
    const/4 v10, 0x0

    .line 888
    .local v10, "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_3c1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    .line 889
    .local v21, "pm":Landroid/content/pm/PackageManager;
    if-eqz v21, :cond_43d

    .line 890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v25

    const/16 v26, 0x80

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 891
    .local v5, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v5, :cond_415

    .line 892
    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4ff

    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 893
    .local v8, "applicationMetaData":Landroid/os/Bundle;
    :goto_3f3
    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 894
    .local v6, "activityMetaData":Landroid/os/Bundle;
    if-eqz v6, :cond_415

    .line 895
    const-string v25, "com.samsung.android.sdk.multiwindow.disablefunction"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 896
    .local v4, "activityFunction":Ljava/lang/String;
    if-eqz v4, :cond_502

    .line 897
    new-instance v11, Ljava/util/ArrayList;

    const-string v25, "\\|"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .end local v10    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v11, "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v10, v11

    .line 908
    .end local v4    # "activityFunction":Ljava/lang/String;
    .end local v6    # "activityMetaData":Landroid/os/Bundle;
    .end local v8    # "applicationMetaData":Landroid/os/Bundle;
    .end local v11    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_415
    :goto_415
    const-string v25, "minimize"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v10, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->checkFunctionState(Ljava/util/List;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_429

    .line 909
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_MINIMIZED_BUTTON:Z

    .line 911
    :cond_429
    const-string v25, "exit"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v10, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->checkFunctionState(Ljava/util/List;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_43d

    .line 912
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_EXIT_BUTTON:Z
    :try_end_43d
    .catch Ljava/lang/Exception; {:try_start_3c1 .. :try_end_43d} :catch_582

    .line 918
    .end local v5    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v21    # "pm":Landroid/content/pm/PackageManager;
    :cond_43d
    :goto_43d
    new-instance v25, Landroid/graphics/Point;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_524

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    .line 922
    .local v22, "shortSize":I
    :goto_47b
    move/from16 v0, v22

    mul-int/lit16 v0, v0, 0xa0

    move/from16 v25, v0

    sget v26, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    div-int v25, v25, v26

    const/16 v26, 0x258

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_532

    const/16 v25, 0x1

    :goto_48f
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsPhone:Z

    .line 924
    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getStatusBarHeight()I

    move-result v25

    sput v25, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->statusBarHeight:I

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    .line 927
    .local v17, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getWindowMode()I

    move-result v24

    .line 928
    .local v24, "windowMode":I
    invoke-static/range {v24 .. v24}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v20

    .line 930
    .local v20, "mode":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->updateSplitRect(I)V

    .line 931
    sparse-switch v20, :sswitch_data_5a4

    .line 949
    :cond_4bd
    :goto_4bd
    new-instance v25, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$4;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$4;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mVideoCapabilityReceiver:Landroid/content/BroadcastReceiver;

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "keyguard"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/KeyguardManager;

    .line 983
    .local v18, "km":Landroid/app/KeyguardManager;
    if-eqz v18, :cond_273

    invoke-virtual/range {v18 .. v18}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v25

    if-eqz v25, :cond_273

    invoke-virtual/range {v18 .. v18}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v25

    if-eqz v25, :cond_273

    .line 984
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setActionBarMenuVisibility(Z)V

    goto/16 :goto_273

    .line 860
    .end local v10    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v18    # "km":Landroid/app/KeyguardManager;
    .end local v20    # "mode":I
    .end local v22    # "shortSize":I
    .end local v24    # "windowMode":I
    :cond_4f3
    const/16 v25, 0x0

    goto/16 :goto_345

    .line 864
    .restart local v9    # "arr$":[Ljava/lang/String;
    .restart local v12    # "fixedRatioApp":Ljava/lang/String;
    .restart local v13    # "fixedRatioAppList":[Ljava/lang/String;
    .restart local v16    # "i$":I
    .restart local v19    # "len$":I
    :cond_4f7
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_362

    .line 876
    .end local v12    # "fixedRatioApp":Ljava/lang/String;
    .end local v13    # "fixedRatioAppList":[Ljava/lang/String;
    .restart local v14    # "hideApp":Ljava/lang/String;
    .restart local v15    # "hideFlashBarAppList":[Ljava/lang/String;
    :cond_4fb
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_39e

    .line 892
    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v14    # "hideApp":Ljava/lang/String;
    .end local v15    # "hideFlashBarAppList":[Ljava/lang/String;
    .end local v16    # "i$":I
    .end local v19    # "len$":I
    .restart local v5    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v10    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v21    # "pm":Landroid/content/pm/PackageManager;
    :cond_4ff
    const/4 v8, 0x0

    goto/16 :goto_3f3

    .line 899
    .restart local v4    # "activityFunction":Ljava/lang/String;
    .restart local v6    # "activityMetaData":Landroid/os/Bundle;
    .restart local v8    # "applicationMetaData":Landroid/os/Bundle;
    :cond_502
    if-eqz v8, :cond_415

    .line 900
    :try_start_504
    const-string v25, "com.samsung.android.sdk.multiwindow.disablefunction"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 901
    .local v7, "applicationFunction":Ljava/lang/String;
    if-eqz v7, :cond_415

    .line 902
    new-instance v11, Ljava/util/ArrayList;

    const-string v25, "\\|"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_521
    .catch Ljava/lang/Exception; {:try_start_504 .. :try_end_521} :catch_582

    .end local v10    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v10, v11

    .end local v11    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto/16 :goto_415

    .line 921
    .end local v4    # "activityFunction":Ljava/lang/String;
    .end local v5    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v6    # "activityMetaData":Landroid/os/Bundle;
    .end local v7    # "applicationFunction":Ljava/lang/String;
    .end local v8    # "applicationMetaData":Landroid/os/Bundle;
    .end local v21    # "pm":Landroid/content/pm/PackageManager;
    :cond_524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v22, v0

    goto/16 :goto_47b

    .line 922
    .restart local v22    # "shortSize":I
    :cond_532
    const/16 v25, 0x0

    goto/16 :goto_48f

    .line 933
    .restart local v17    # "intent":Landroid/content/Intent;
    .restart local v20    # "mode":I
    .restart local v24    # "windowMode":I
    :sswitch_536
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->windowIsTranslucent(I)Z

    move-result v25

    if-nez v25, :cond_551

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->freestyleModeLayout(Landroid/content/Context;I)V

    .line 936
    :cond_551
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setWindowParams(I)V

    goto/16 :goto_4bd

    .line 939
    :sswitch_55a
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->windowIsTranslucent(I)Z

    move-result v25

    if-nez v25, :cond_571

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fullScreenModeLayout(Landroid/content/Context;)V

    .line 942
    :cond_571
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsPhone:Z

    move/from16 v25, v0

    if-eqz v25, :cond_4bd

    .line 943
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setWindowParams(I)V

    goto/16 :goto_4bd

    .line 915
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v20    # "mode":I
    .end local v22    # "shortSize":I
    .end local v24    # "windowMode":I
    :catch_582
    move-exception v25

    goto/16 :goto_43d

    .line 882
    .end local v10    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_585
    move-exception v25

    goto/16 :goto_3c0

    .line 870
    :catch_588
    move-exception v25

    goto/16 :goto_387

    .line 245
    nop

    :array_58c
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

    .line 931
    nop

    :sswitch_data_5a4
    .sparse-switch
        0x1000000 -> :sswitch_55a
        0x2000000 -> :sswitch_536
    .end sparse-switch
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    .prologue
    .line 120
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowMode:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;)Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;
    .param p1, "x1"    # Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;II)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->createGhostView(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;
    .param p1, "x1"    # I

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasOverlayTitleBar(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsTouchable:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsTouchable:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOnTouchedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Landroid/view/View;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOnTouchedView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->forceHideInputMethod()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Z)Landroid/graphics/Bitmap;
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->getMinimizedBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/ViewGroup;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDecor:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    .prologue
    .line 120
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowMinimizedWidth:I

    return v0
.end method

.method static synthetic access$2100()I
    .registers 1

    .prologue
    .line 120
    sget v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->statusBarHeight:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMoveWindowView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/graphics/Point;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Landroid/graphics/Rect;Landroid/graphics/Point;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;
    .param p1, "x1"    # Landroid/graphics/Rect;
    .param p2, "x2"    # Landroid/graphics/Point;

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->reviseWindowPosition(Landroid/graphics/Rect;Landroid/graphics/Point;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_TITLE_BAR_DOUBLE_TAPPING:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_MINIMIZE_MOVING_ANIMATION:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->supportFlick:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    .prologue
    .line 120
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownX:I

    return v0
.end method

.method static synthetic access$2902(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;
    .param p1, "x1"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownX:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mHide:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    .prologue
    .line 120
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownY:I

    return v0
.end method

.method static synthetic access$3002(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;
    .param p1, "x1"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->longDownY:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/sec/multiwindow/impl/BorderFrameLayout;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/sec/multiwindow/impl/BorderFrameLayout;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    .prologue
    .line 120
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPaddingWidth:I

    return v0
.end method

.method static synthetic access$3300(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)[B
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIvt:[B

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/os/SystemVibrator;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mVibrator:Landroid/os/SystemVibrator;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/gesture/GestureOverlayView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_TITLEBAR_GESTURE_TRIGGER:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowIconic:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/view/Window;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/sec/multiwindow/impl/MultiWindowManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/app/AlertDialog$Builder;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mVideoCapabilityAlert:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;
    .param p1, "x1"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mVideoCapabilityAlert:Landroid/app/AlertDialog$Builder;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private calculatePaddingRect(I)Landroid/graphics/Rect;
    .registers 16
    .param p1, "windowMode"    # I

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 1774
    iget-object v11, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getWindowInfo()Landroid/os/Bundle;

    move-result-object v10

    .line 1776
    .local v10, "winInfo":Landroid/os/Bundle;
    invoke-direct {p0, p1, v10}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->getCurrentRect(ILandroid/os/Bundle;)Landroid/graphics/Rect;

    move-result-object v2

    .line 1777
    .local v2, "currentRect":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v12, v12, v12, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1779
    .local v6, "paddingRect":Landroid/graphics/Rect;
    const/4 v5, 0x0

    .line 1780
    .local v5, "left":I
    const/4 v9, 0x0

    .line 1781
    .local v9, "top":I
    const/4 v7, 0x0

    .line 1782
    .local v7, "right":I
    const/4 v0, 0x0

    .line 1783
    .local v0, "bottom":I
    iget-object v11, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 1785
    .local v8, "titleBarHeight":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v3, v11

    .line 1786
    .local v3, "currentWidth":F
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v1, v11

    .line 1787
    .local v1, "currentHeight":F
    div-float v4, v3, v1

    .line 1789
    .local v4, "fixedRatio":F
    div-float v11, v3, v4

    sub-float v11, v1, v11

    cmpl-float v11, v11, v13

    if-lez v11, :cond_3b

    .line 1791
    div-float v11, v3, v4

    sub-float v11, v1, v11

    float-to-int v11, v11

    div-int/lit8 v0, v11, 0x2

    move v9, v0

    .line 1792
    invoke-virtual {v6, v5, v9, v7, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 1798
    :cond_3a
    :goto_3a
    return-object v6

    .line 1793
    :cond_3b
    mul-float v11, v1, v4

    sub-float v11, v3, v11

    cmpl-float v11, v11, v13

    if-lez v11, :cond_3a

    .line 1795
    mul-float v11, v1, v4

    sub-float v11, v3, v11

    float-to-int v11, v11

    div-int/lit8 v7, v11, 0x2

    move v5, v7

    .line 1796
    invoke-virtual {v6, v5, v9, v7, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3a
.end method

.method private checkFunctionState(Ljava/util/List;Ljava/lang/String;)Z
    .registers 4
    .param p2, "disableFunction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1031
    .local p1, "disableFunctionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_a

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1032
    const/4 v0, 0x0

    .line 1035
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private clipImagePath(Landroid/graphics/Bitmap;Landroid/graphics/Path;)Landroid/graphics/Bitmap;
    .registers 18
    .param p1, "paramBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "paramPath"    # Landroid/graphics/Path;

    .prologue
    .line 2848
    if-nez p1, :cond_4

    .line 2849
    const/4 v2, 0x0

    .line 2886
    :goto_3
    return-object v2

    .line 2851
    :cond_4
    if-eqz p2, :cond_c

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 2852
    :cond_c
    const/4 v2, 0x0

    goto :goto_3

    .line 2855
    :cond_e
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 2856
    .local v8, "rectF":Landroid/graphics/RectF;
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 2858
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 2859
    .local v10, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 2860
    .local v4, "height":I
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v4, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2861
    .local v6, "pathBitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2862
    .local v7, "pathCanvas":Landroid/graphics/Canvas;
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2864
    sget-object v11, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v11}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 2865
    const/4 v11, 0x0

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v11, v12}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2867
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 2868
    .local v5, "paint":Landroid/graphics/Paint;
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2869
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setDither(Z)V

    .line 2870
    const/16 v11, 0x32

    const/16 v12, 0xff

    const/16 v13, 0xff

    const/16 v14, 0xff

    invoke-static {v11, v12, v13, v14}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 2871
    sget-object v11, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2872
    sget-object v11, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 2873
    sget-object v11, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 2874
    const/high16 v11, 0x40a00000

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2875
    new-instance v11, Landroid/graphics/PorterDuffXfermode;

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v12}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2877
    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2878
    sget-object v11, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v11}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 2879
    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2881
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v12

    float-to-int v12, v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2882
    .local v2, "finalBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2883
    .local v3, "finalCanvas":Landroid/graphics/Canvas;
    new-instance v9, Landroid/graphics/Rect;

    iget v11, v8, Landroid/graphics/RectF;->left:F

    float-to-int v11, v11

    iget v12, v8, Landroid/graphics/RectF;->top:F

    float-to-int v12, v12

    iget v13, v8, Landroid/graphics/RectF;->right:F

    float-to-int v13, v13

    iget v14, v8, Landroid/graphics/RectF;->bottom:F

    float-to-int v14, v14

    invoke-direct {v9, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2884
    .local v9, "srcRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v14

    float-to-int v14, v14

    invoke-direct {v1, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2885
    .local v1, "dstRect":Landroid/graphics/Rect;
    const/4 v11, 0x0

    invoke-virtual {v3, v6, v9, v1, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_3
.end method

.method private createGhostView(II)Z
    .registers 19
    .param p1, "startX"    # I
    .param p2, "startY"    # I

    .prologue
    .line 2780
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    if-eqz v2, :cond_14

    .line 2782
    const-string v2, "MultiPhoneWindowEvent"

    const-string v3, "fd is not null. dismiss old guide relayout window"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2783
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;->dismissGuideRelayoutWindow()V

    .line 2786
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowMode()I

    move-result v14

    .line 2787
    .local v14, "windowMode":I
    invoke-static {v14}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v2

    const/high16 v3, 0x2000000

    and-int/2addr v2, v3

    if-nez v2, :cond_27

    .line 2788
    const/4 v2, 0x0

    .line 2830
    :goto_26
    return v2

    .line 2791
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    .line 2793
    .local v15, "windowParam":Landroid/view/WindowManager$LayoutParams;
    const/4 v12, 0x0

    .line 2794
    .local v12, "scaleWidth":I
    const/4 v11, 0x0

    .line 2795
    .local v11, "scaleHeight":I
    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->hScale:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_f0

    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->vScale:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_f0

    .line 2796
    iget v2, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_49

    iget v2, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_db

    .line 2798
    :cond_49
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    .line 2799
    .local v10, "fullScreenSize":Landroid/graphics/Point;
    const/4 v13, 0x0

    .line 2800
    .local v13, "scaleWindowHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 2801
    iget v13, v10, Landroid/graphics/Point;->y:I

    .line 2802
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_6d

    .line 2803
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mStatusBarHeight:I

    sub-int/2addr v13, v2

    .line 2805
    :cond_6d
    and-int/lit8 v2, v14, 0xf

    if-nez v2, :cond_7b

    const/high16 v2, 0x80000

    and-int/2addr v2, v14

    if-nez v2, :cond_7b

    .line 2807
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTitleBarHeight:I

    add-int/2addr v13, v2

    .line 2810
    :cond_7b
    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->hScale:F

    iget v3, v10, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000

    add-float/2addr v2, v3

    float-to-int v12, v2

    .line 2811
    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->vScale:F

    int-to-float v3, v13

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000

    add-float/2addr v2, v3

    float-to-int v11, v2

    .line 2821
    .end local v10    # "fullScreenSize":Landroid/graphics/Point;
    .end local v13    # "scaleWindowHeight":I
    :goto_8d
    new-instance v4, Landroid/graphics/Rect;

    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, v15, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v5, v15, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v5, v12

    iget v7, v15, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v7, v11

    invoke-direct {v4, v2, v3, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2824
    .local v4, "windowRect":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    sub-int v2, v12, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    sub-int v3, v11, v3

    invoke-direct {v6, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 2827
    .local v6, "delta":Landroid/graphics/Point;
    new-instance v2, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/graphics/Point;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v5, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    const/16 v7, 0x8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPaddingWidth:I

    move-object/from16 v9, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;-><init>(Landroid/content/Context;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;IILcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->fd:Lcom/android/internal/policy/impl/multiwindow/GuideRelayoutWindow;

    .line 2829
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasGuideLayout:Z

    .line 2830
    const/4 v2, 0x1

    goto/16 :goto_26

    .line 2813
    .end local v4    # "windowRect":Landroid/graphics/Rect;
    .end local v6    # "delta":Landroid/graphics/Point;
    :cond_db
    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->hScale:F

    iget v3, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000

    add-float/2addr v2, v3

    float-to-int v12, v2

    .line 2814
    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->vScale:F

    iget v3, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000

    add-float/2addr v2, v3

    float-to-int v11, v2

    goto :goto_8d

    .line 2817
    :cond_f0
    iget v12, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2818
    iget v11, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_8d
.end method

.method private findParentBorderFrameLayout(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 7
    .param p1, "v"    # Landroid/view/ViewGroup;

    .prologue
    .line 539
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 540
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v3, :cond_28

    .line 541
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 542
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_25

    .line 543
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/sec/multiwindow/impl/BorderFrameLayout;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 553
    .end local v0    # "child":Landroid/view/View;
    .end local p1    # "v":Landroid/view/ViewGroup;
    :goto_17
    return-object p1

    .line 546
    .restart local v0    # "child":Landroid/view/View;
    .restart local p1    # "v":Landroid/view/ViewGroup;
    :cond_18
    const/4 v1, 0x0

    .line 547
    .local v1, "childFind":Landroid/view/View;
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "child":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->findParentBorderFrameLayout(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 548
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "childFind":Landroid/view/View;
    move-object p1, v1

    goto :goto_17

    .line 540
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 553
    :cond_28
    const/4 p1, 0x0

    goto :goto_17
.end method

.method private forceHideInputMethod()Z
    .registers 3

    .prologue
    .line 341
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 342
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_b

    .line 343
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    move-result v1

    .line 345
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private freestyleModeLayout(Landroid/content/Context;I)V
    .registers 35
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "decoVisibility"    # I

    .prologue
    .line 1140
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 1142
    .local v11, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/app/Activity;->getWindowMode()I

    move-result v27

    .line 1144
    .local v27, "windowMode":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isNoTitleBar(I)Z

    move-result v28

    if-eqz v28, :cond_71

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isToolkitMode(I)Z

    move-result v28

    if-nez v28, :cond_71

    .line 1145
    const v28, 0x10900ae

    const/16 v29, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/sec/multiwindow/impl/BorderFrameLayout;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/sec/multiwindow/impl/BorderFrameLayout;

    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/sec/multiwindow/impl/BorderFrameLayout;

    move-object/from16 v28, v0

    const v29, 0x10203fd

    invoke-virtual/range {v28 .. v29}, Landroid/sec/multiwindow/impl/BorderFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/LinearLayout;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    .line 1147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/sec/multiwindow/impl/BorderFrameLayout;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/sec/multiwindow/impl/BorderFrameLayout;->setVisibility(I)V

    .line 1148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1149
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->wrapContentView(I)V

    .line 1150
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setDecorVisibility(I)V

    .line 1320
    :goto_70
    return-void

    .line 1154
    :cond_71
    const v28, 0x10900ae

    const/16 v29, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/sec/multiwindow/impl/BorderFrameLayout;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/sec/multiwindow/impl/BorderFrameLayout;

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/sec/multiwindow/impl/BorderFrameLayout;

    move-object/from16 v28, v0

    const v29, 0x10203fd

    invoke-virtual/range {v28 .. v29}, Landroid/sec/multiwindow/impl/BorderFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/LinearLayout;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/sec/multiwindow/impl/BorderFrameLayout;

    move-object/from16 v28, v0

    const v29, 0x10203fe

    invoke-virtual/range {v28 .. v29}, Landroid/sec/multiwindow/impl/BorderFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/ImageView;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowIconic:Landroid/widget/ImageView;

    .line 1158
    new-instance v13, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$DoubleTapPinupListener;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$DoubleTapPinupListener;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V

    .line 1159
    .local v13, "listener":Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$DoubleTapPinupListener;
    new-instance v20, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$DoubleTapPinupListener;)V

    .line 1160
    .local v20, "pwl":Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;
    new-instance v25, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TitlebarButtonListener;

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TitlebarButtonListener;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1;)V

    .line 1163
    .local v25, "tbl":Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TitlebarButtonListener;
    :try_start_cd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x80

    invoke-virtual/range {v28 .. v30}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v14, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1164
    .local v14, "metaData":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/app/Activity;->getWindowInfo()Landroid/os/Bundle;

    move-result-object v26

    .line 1165
    .local v26, "winInfo":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 1167
    .local v21, "r":Landroid/content/res/Resources;
    if-eqz v26, :cond_564

    .line 1168
    const-string v28, "android.intent.extra.WINDOW_MINIMUM_SIZE"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/graphics/Rect;

    .line 1169
    .local v15, "minSize":Landroid/graphics/Rect;
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinWidth:F

    .line 1170
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinHeight:F

    .line 1184
    .end local v15    # "minSize":Landroid/graphics/Rect;
    :cond_12b
    :goto_12b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinWidth:F

    move/from16 v28, v0

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-eqz v28, :cond_143

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinHeight:F

    move/from16 v28, v0

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-nez v28, :cond_185

    .line 1185
    :cond_143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x10500f0

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinWidth:F

    .line 1186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x10500f1

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinHeight:F

    .line 1189
    :cond_185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    if-nez v28, :cond_5d8

    .line 1190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    move-object/from16 v28, v0

    const-string v29, "activity"

    invoke-virtual/range {v28 .. v29}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    .line 1191
    .local v5, "am":Landroid/app/ActivityManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 1192
    .local v19, "pm":Landroid/content/pm/PackageManager;
    if-eqz v5, :cond_5d8

    if-eqz v19, :cond_5d8

    .line 1193
    const/16 v28, 0x64

    const/16 v29, 0x2

    const/16 v30, 0x0

    move/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v5, v0, v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v23

    .line 1194
    .local v23, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v23, :cond_5a2

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v28

    if-lez v28, :cond_5a2

    .line 1195
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_1c5
    :goto_1c5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_5a2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1196
    .local v24, "t":Landroid/app/ActivityManager$RunningTaskInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v28

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1c5

    .line 1197
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 1198
    .local v3, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    .line 1201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 1202
    .local v22, "res":Landroid/content/res/Resources;
    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v17, v0

    .line 1203
    .local v17, "originDensity":I
    invoke-virtual {v5}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v12

    .line 1204
    .local v12, "largeIconDensity":I
    const/high16 v28, 0x1050000

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 1205
    .local v18, "originPixelSize":I
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v28, v0

    int-to-float v0, v12

    move/from16 v29, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v29, v29, v30

    mul-float v6, v28, v29

    .line 1206
    .local v6, "appIconSize":F
    move/from16 v0, v17

    if-eq v0, v12, :cond_27a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    cmpl-float v28, v28, v6

    if-eqz v28, :cond_27a

    .line 1208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    check-cast v28, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1209
    .local v7, "b":Landroid/graphics/Bitmap;
    float-to-int v0, v6

    move/from16 v28, v0

    float-to-int v0, v6

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v7, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1210
    .local v8, "bitmapResized":Landroid/graphics/Bitmap;
    new-instance v28, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v28

    invoke-direct {v0, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    .line 1212
    .end local v7    # "b":Landroid/graphics/Bitmap;
    .end local v8    # "bitmapResized":Landroid/graphics/Bitmap;
    :cond_27a
    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizedAppLable:Ljava/lang/CharSequence;
    :try_end_286
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_cd .. :try_end_286} :catch_288

    goto/16 :goto_1c5

    .line 1232
    .end local v3    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v5    # "am":Landroid/app/ActivityManager;
    .end local v6    # "appIconSize":F
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "largeIconDensity":I
    .end local v14    # "metaData":Landroid/os/Bundle;
    .end local v17    # "originDensity":I
    .end local v18    # "originPixelSize":I
    .end local v19    # "pm":Landroid/content/pm/PackageManager;
    .end local v21    # "r":Landroid/content/res/Resources;
    .end local v22    # "res":Landroid/content/res/Resources;
    .end local v23    # "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v24    # "t":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v26    # "winInfo":Landroid/os/Bundle;
    :catch_288
    move-exception v28

    .line 1235
    :goto_289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowIconic:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowIconic:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x105000c

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mStatusBarHeight:I

    .line 1239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x105010e

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTitleBarHeight:I

    .line 1241
    const v28, 0x10900b0

    const/16 v29, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    .line 1242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v28, v0

    new-instance v29, Landroid/view/ViewGroup$LayoutParams;

    const/16 v30, -0x1

    const/16 v31, -0x2

    invoke-direct/range {v29 .. v31}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 1247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v28, v0

    const v29, 0x1020407

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor1:Landroid/view/View;

    .line 1248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor1:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 1249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v28, v0

    const v29, 0x1020408

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor2:Landroid/view/View;

    .line 1250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor2:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 1251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v28, v0

    const v29, 0x102040a

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor3:Landroid/view/View;

    .line 1252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor3:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 1253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v28, v0

    const v29, 0x102040c

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor4:Landroid/view/View;

    .line 1254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor4:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 1255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v28, v0

    const v29, 0x102040e

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor5:Landroid/view/View;

    .line 1256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor5:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 1258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v28, v0

    const v29, 0x1020410

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTitleText:Landroid/widget/TextView;

    .line 1259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTitleText:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTitleText:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const/16 v29, -0x1

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v28, v0

    const v29, 0x1020406

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/ImageButton;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPinupButton:Landroid/widget/ImageButton;

    .line 1263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPinupButton:Landroid/widget/ImageButton;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPinupButton:Landroid/widget/ImageButton;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 1266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v28, v0

    const v29, 0x102040b

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/ImageButton;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowButton:Landroid/widget/ImageButton;

    .line 1267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowButton:Landroid/widget/ImageButton;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowButton:Landroid/widget/ImageButton;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowButton:Landroid/widget/ImageButton;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 1271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v28, v0

    const v29, 0x1020409

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/ImageButton;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeButton:Landroid/widget/ImageButton;

    .line 1272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeButton:Landroid/widget/ImageButton;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeButton:Landroid/widget/ImageButton;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 1275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v28, v0

    const v29, 0x102040d

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/ImageButton;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaximizeButton:Landroid/widget/ImageButton;

    .line 1276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaximizeButton:Landroid/widget/ImageButton;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaximizeButton:Landroid/widget/ImageButton;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 1279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v28, v0

    const v29, 0x102040f

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/ImageButton;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mExitButton:Landroid/widget/ImageButton;

    .line 1280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mExitButton:Landroid/widget/ImageButton;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mExitButton:Landroid/widget/ImageButton;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 1283
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_OVERLAY_TITLEBAR:Z

    move/from16 v28, v0

    if-eqz v28, :cond_66d

    .line 1284
    invoke-static/range {v27 .. v27}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isCascadeWindow(I)Z

    move-result v28

    if-eqz v28, :cond_651

    .line 1285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 1294
    :goto_513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/sec/multiwindow/impl/BorderFrameLayout;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/sec/multiwindow/impl/BorderFrameLayout;->setVisibility(I)V

    .line 1295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1297
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->wrapContentView(I)V

    .line 1298
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setDecorVisibility(I)V

    .line 1302
    :try_start_537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 1303
    .local v4, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v28, "mPinupClickListener"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 1304
    .local v9, "field":Ljava/lang/reflect/Field;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    move-object/from16 v28, v0

    new-instance v29, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$5;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$5;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v9, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_55f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_537 .. :try_end_55f} :catch_561
    .catch Ljava/lang/IllegalArgumentException; {:try_start_537 .. :try_end_55f} :catch_681
    .catch Ljava/lang/IllegalAccessException; {:try_start_537 .. :try_end_55f} :catch_67e

    goto/16 :goto_70

    .line 1317
    .end local v4    # "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "field":Ljava/lang/reflect/Field;
    :catch_561
    move-exception v28

    goto/16 :goto_70

    .line 1171
    .restart local v14    # "metaData":Landroid/os/Bundle;
    .restart local v21    # "r":Landroid/content/res/Resources;
    .restart local v26    # "winInfo":Landroid/os/Bundle;
    :cond_564
    if-eqz v14, :cond_12b

    .line 1172
    if-eqz v21, :cond_12b

    .line 1173
    :try_start_568
    const-string v28, "com.sec.android.multiwindow.MINIMUM_SIZE_W"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 1174
    .local v16, "minSizeId":I
    if-eqz v16, :cond_584

    .line 1175
    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinWidth:F

    .line 1177
    :cond_584
    const-string v28, "com.sec.android.multiwindow.MINIMUM_SIZE_H"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 1178
    if-eqz v16, :cond_12b

    .line 1179
    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinHeight:F

    goto/16 :goto_12b

    .line 1216
    .end local v16    # "minSizeId":I
    .restart local v5    # "am":Landroid/app/ActivityManager;
    .restart local v19    # "pm":Landroid/content/pm/PackageManager;
    .restart local v23    # "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_5a2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    if-nez v28, :cond_5d8

    .line 1217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 1218
    .restart local v3    # "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    .line 1219
    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizedAppLable:Ljava/lang/CharSequence;

    .line 1224
    .end local v3    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v5    # "am":Landroid/app/ActivityManager;
    .end local v19    # "pm":Landroid/content/pm/PackageManager;
    .end local v23    # "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_5d8
    const v28, 0x10805ee

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeBg:Landroid/graphics/drawable/Drawable;

    .line 1225
    const v28, 0x10805ef

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeBgFocus:Landroid/graphics/drawable/Drawable;

    .line 1226
    const v28, 0x10805f0

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeInnerShadow:Landroid/graphics/drawable/Drawable;

    .line 1227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowIconic:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    new-instance v29, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->getMinimizedBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v31

    invoke-direct/range {v29 .. v31}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizedAppLable:Ljava/lang/CharSequence;

    move-object/from16 v28, v0

    if-eqz v28, :cond_644

    .line 1229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowIconic:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizedAppLable:Ljava/lang/CharSequence;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1231
    :cond_644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowIconic:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    sget-object v29, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
    :try_end_64f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_568 .. :try_end_64f} :catch_288

    goto/16 :goto_289

    .line 1287
    .end local v14    # "metaData":Landroid/os/Bundle;
    .end local v21    # "r":Landroid/content/res/Resources;
    .end local v26    # "winInfo":Landroid/os/Bundle;
    :cond_651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/sec/multiwindow/impl/BorderFrameLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/sec/multiwindow/impl/BorderFrameLayout;->addView(Landroid/view/View;)V

    .line 1288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_513

    .line 1291
    :cond_66d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_513

    .line 1319
    :catch_67e
    move-exception v28

    goto/16 :goto_70

    .line 1318
    :catch_681
    move-exception v28

    goto/16 :goto_70
.end method

.method private fullScreenModeLayout(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1830
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isResizable(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1831
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->freestyleModeLayout(Landroid/content/Context;I)V

    .line 1833
    :cond_11
    return-void
.end method

.method private getCurrentRect(ILandroid/os/Bundle;)Landroid/graphics/Rect;
    .registers 4
    .param p1, "windowMode"    # I
    .param p2, "winInfo"    # Landroid/os/Bundle;

    .prologue
    .line 2353
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->getCurrentRect(ILandroid/os/Bundle;I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentRect(ILandroid/os/Bundle;I)Landroid/graphics/Rect;
    .registers 17
    .param p1, "windowMode"    # I
    .param p2, "winInfo"    # Landroid/os/Bundle;
    .param p3, "windowInfoChanged"    # I

    .prologue
    .line 2357
    const-string v10, "enable.mw.fi"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2358
    .local v8, "strEnable":Ljava/lang/String;
    and-int/lit8 v10, p3, 0x1

    if-nez v10, :cond_4b

    const/4 v1, 0x1

    .line 2359
    .local v1, "bTouchedTitleButton":Z
    :goto_b
    const/4 v0, 0x0

    .line 2360
    .local v0, "bEnableFloatingIcon":Z
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4d

    .line 2361
    const/4 v0, 0x1

    .line 2366
    :goto_13
    new-instance v3, Landroid/graphics/Rect;

    const-string v10, "android.intent.extra.WINDOW_MINIMIZED_SIZE"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    invoke-direct {v3, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2367
    .local v3, "minimizedSize":Landroid/graphics/Rect;
    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMinimized(I)Z

    move-result v10

    if-eqz v10, :cond_c9

    .line 2368
    if-eqz v0, :cond_59

    .line 2369
    const-string v10, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4a

    if-eqz v1, :cond_36

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_REVISE_MINIMIZED_POSITION:Z

    if-nez v10, :cond_4a

    .line 2370
    :cond_36
    new-instance v2, Landroid/graphics/Rect;

    const-string v10, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    invoke-direct {v2, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2371
    .local v2, "lastSize":Landroid/graphics/Rect;
    iget v10, v2, Landroid/graphics/Rect;->left:I

    iget v11, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v10, v11}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2422
    .end local v2    # "lastSize":Landroid/graphics/Rect;
    .end local v3    # "minimizedSize":Landroid/graphics/Rect;
    :cond_4a
    :goto_4a
    return-object v3

    .line 2358
    .end local v0    # "bEnableFloatingIcon":Z
    .end local v1    # "bTouchedTitleButton":Z
    :cond_4b
    const/4 v1, 0x0

    goto :goto_b

    .line 2363
    .restart local v0    # "bEnableFloatingIcon":Z
    .restart local v1    # "bTouchedTitleButton":Z
    :cond_4d
    const-string v10, "0"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_57

    const/4 v0, 0x1

    :goto_56
    goto :goto_13

    :cond_57
    const/4 v0, 0x0

    goto :goto_56

    .line 2374
    .restart local v3    # "minimizedSize":Landroid/graphics/Rect;
    :cond_59
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 2375
    .local v7, "pt":Landroid/graphics/Point;
    iget-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    const-string v11, "window"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 2376
    .local v9, "wm":Landroid/view/WindowManager;
    iget-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    const-string v11, "multiwindow"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/sec/multiwindow/impl/MultiWindowManager;

    .line 2377
    .local v4, "mwm":Landroid/sec/multiwindow/impl/MultiWindowManager;
    if-eqz v9, :cond_4a

    if-eqz v4, :cond_4a

    .line 2378
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2380
    invoke-virtual {v4}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppListPosition()I

    move-result v10

    packed-switch v10, :pswitch_data_136

    goto :goto_4a

    .line 2382
    :pswitch_85
    iget v10, v7, Landroid/graphics/Point;->x:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v11

    neg-int v11, v11

    invoke-virtual {v3, v10, v11}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_4a

    .line 2385
    :pswitch_95
    iget v10, v7, Landroid/graphics/Point;->x:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v11

    sub-int/2addr v10, v11

    iget v11, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v3, v10, v11}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_4a

    .line 2388
    :pswitch_a7
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v10

    neg-int v10, v10

    iget v11, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {v3, v10, v11}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_4a

    .line 2391
    :pswitch_b7
    iget v10, v7, Landroid/graphics/Point;->x:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {v3, v10, v11}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_4a

    .line 2400
    .end local v4    # "mwm":Landroid/sec/multiwindow/impl/MultiWindowManager;
    .end local v7    # "pt":Landroid/graphics/Point;
    .end local v9    # "wm":Landroid/view/WindowManager;
    :cond_c9
    const-string v10, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 2401
    .restart local v2    # "lastSize":Landroid/graphics/Rect;
    if-eqz v2, :cond_12b

    .line 2402
    invoke-static {p1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isCascadeWindow(I)Z

    move-result v10

    if-eqz v10, :cond_11b

    .line 2403
    if-eqz v0, :cond_10c

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_REVISE_MINIMIZED_POSITION:Z

    if-eqz v10, :cond_10c

    .line 2404
    if-eqz v1, :cond_10c

    .line 2405
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v10

    neg-int v10, v10

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int v5, v10, v11

    .line 2406
    .local v5, "offsetX":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v10

    neg-int v10, v10

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int v6, v10, v11

    .line 2407
    .local v6, "offsetY":I
    iget v10, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v5

    if-lez v10, :cond_123

    .line 2408
    :goto_104
    iget v10, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v6

    if-lez v10, :cond_127

    .line 2409
    :goto_109
    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 2414
    .end local v5    # "offsetX":I
    .end local v6    # "offsetY":I
    :cond_10c
    iget v10, v2, Landroid/graphics/Rect;->top:I

    iget v11, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mStatusBarHeight:I

    if-ge v10, v11, :cond_11b

    .line 2415
    const/4 v10, 0x0

    iget v11, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mStatusBarHeight:I

    iget v12, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    invoke-virtual {v2, v10, v11}, Landroid/graphics/Rect;->offset(II)V

    .line 2418
    :cond_11b
    iget-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLastWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object v3, v2

    .line 2419
    goto/16 :goto_4a

    .line 2407
    .restart local v5    # "offsetX":I
    .restart local v6    # "offsetY":I
    :cond_123
    iget v10, v2, Landroid/graphics/Rect;->left:I

    neg-int v5, v10

    goto :goto_104

    .line 2408
    :cond_127
    iget v10, v2, Landroid/graphics/Rect;->top:I

    neg-int v6, v10

    goto :goto_109

    .line 2422
    .end local v5    # "offsetX":I
    .end local v6    # "offsetY":I
    :cond_12b
    const-string v10, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    move-object v3, v10

    goto/16 :goto_4a

    .line 2380
    :pswitch_data_136
    .packed-switch 0x1
        :pswitch_85
        :pswitch_95
        :pswitch_a7
        :pswitch_b7
    .end packed-switch
.end method

.method private getMinimizedBitmap(Z)Landroid/graphics/Bitmap;
    .registers 12
    .param p1, "bFocused"    # Z

    .prologue
    const/4 v9, 0x0

    .line 2890
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->getBitmapClippedCircle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2891
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 2892
    .local v0, "bgBmp":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_70

    .line 2893
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeBgFocus:Landroid/graphics/drawable/Drawable;

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2897
    :goto_18
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeInnerShadow:Landroid/graphics/drawable/Drawable;

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2898
    .local v3, "innerShadowBmp":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2901
    .local v4, "output":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2902
    .local v2, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 2903
    .local v5, "paint":Landroid/graphics/Paint;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2904
    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2905
    invoke-virtual {v2, v0, v9, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2906
    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2907
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 2908
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v2, v1, v6, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2909
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 2910
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 2911
    invoke-virtual {v2, v3, v9, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2912
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 2914
    return-object v4

    .line 2895
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "innerShadowBmp":Landroid/graphics/Bitmap;
    .end local v4    # "output":Landroid/graphics/Bitmap;
    .end local v5    # "paint":Landroid/graphics/Paint;
    :cond_70
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeBg:Landroid/graphics/drawable/Drawable;

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_18
.end method

.method private hasOverlayTitleBar(I)Z
    .registers 3
    .param p1, "windowMode"    # I

    .prologue
    .line 369
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_OVERLAY_TITLEBAR:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsNoTitleBar:Z

    if-nez v0, :cond_1c

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isNoTitleBar(I)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isCascadeWindow(I)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMinimized(I)Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public static installDecor(Landroid/view/Window;)Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;
    .registers 2
    .param p0, "owner"    # Landroid/view/Window;

    .prologue
    .line 398
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 399
    invoke-static {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->needsMultiWindowDecor(Landroid/view/Window;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 400
    new-instance v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;-><init>(Landroid/view/Window;)V

    .line 403
    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method static isCascadeWindow(I)Z
    .registers 2
    .param p0, "windowMode"    # I

    .prologue
    .line 428
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isCascadeWindow(I)Z

    move-result v0

    return v0
.end method

.method private static isCompatModeEnabled(Landroid/view/Window;)Z
    .registers 7
    .param p0, "w"    # Landroid/view/Window;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 386
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v5

    instance-of v5, v5, Landroid/app/Activity;

    if-eqz v5, :cond_25

    .line 387
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 389
    .local v0, "a":Landroid/app/Activity;
    const-string v5, "activity"

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 391
    .local v1, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/ActivityManager;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v2

    .line 392
    .local v2, "compatMode":I
    if-ne v2, v3, :cond_23

    .line 394
    .end local v0    # "a":Landroid/app/Activity;
    .end local v1    # "am":Landroid/app/ActivityManager;
    .end local v2    # "compatMode":I
    :goto_22
    return v3

    .restart local v0    # "a":Landroid/app/Activity;
    .restart local v1    # "am":Landroid/app/ActivityManager;
    .restart local v2    # "compatMode":I
    :cond_23
    move v3, v4

    .line 392
    goto :goto_22

    .end local v0    # "a":Landroid/app/Activity;
    .end local v1    # "am":Landroid/app/ActivityManager;
    .end local v2    # "compatMode":I
    :cond_25
    move v3, v4

    .line 394
    goto :goto_22
.end method

.method private static isFillWindow(Landroid/view/Window;)Z
    .registers 10
    .param p0, "owner"    # Landroid/view/Window;

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 303
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 305
    .local v1, "context":Landroid/content/Context;
    const/4 v3, 0x0

    .line 306
    .local v3, "width":I
    const/4 v2, 0x0

    .line 308
    .local v2, "height":I
    sput-boolean v5, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsFillWindow:Z

    .line 310
    instance-of v6, v1, Landroid/app/Activity;

    if-nez v6, :cond_19

    instance-of v6, v1, Landroid/content/ContextWrapper;

    if-eqz v6, :cond_19

    .line 311
    check-cast v1, Landroid/content/ContextWrapper;

    .end local v1    # "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 313
    .restart local v1    # "context":Landroid/content/Context;
    :cond_19
    if-eqz v1, :cond_2b

    instance-of v6, v1, Landroid/app/Activity;

    if-eqz v6, :cond_2b

    move-object v0, v1

    .line 314
    check-cast v0, Landroid/app/Activity;

    .line 315
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowMode()I

    move-result v4

    .line 316
    .local v4, "windowMode":I
    const/high16 v6, 0x400000

    and-int/2addr v6, v4

    if-nez v6, :cond_2c

    .line 337
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "context":Landroid/content/Context;
    .end local v4    # "windowMode":I
    :cond_2b
    :goto_2b
    return v5

    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v4    # "windowMode":I
    :cond_2c
    move-object v5, v1

    .line 319
    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v3, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 320
    check-cast v1, Landroid/app/Activity;

    .end local v1    # "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 325
    if-lez v3, :cond_5e

    if-lez v2, :cond_5e

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v3, v5, :cond_5e

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v5, :cond_5e

    .line 328
    sput-boolean v7, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsFillWindow:Z

    .line 337
    :cond_5b
    :goto_5b
    sget-boolean v5, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsFillWindow:Z

    goto :goto_2b

    .line 329
    :cond_5e
    if-lez v3, :cond_79

    if-lez v2, :cond_79

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    if-ne v3, v5, :cond_79

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    if-ne v2, v5, :cond_79

    .line 332
    sput-boolean v7, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsFillWindow:Z

    goto :goto_5b

    .line 333
    :cond_79
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v5, v8, :cond_5b

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v5, v8, :cond_5b

    .line 335
    sput-boolean v7, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsFillWindow:Z

    goto :goto_5b
.end method

.method private static isForceTitleBar(Landroid/view/Window;)Z
    .registers 5
    .param p0, "owner"    # Landroid/view/Window;

    .prologue
    .line 373
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 374
    .local v1, "context":Landroid/content/Context;
    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_16

    move-object v0, v1

    .line 375
    check-cast v0, Landroid/app/Activity;

    .line 376
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowMode()I

    move-result v2

    .line 377
    .local v2, "windowMode":I
    const/high16 v3, 0x40000

    and-int/2addr v3, v2

    if-eqz v3, :cond_16

    .line 378
    const/4 v3, 0x1

    .line 382
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v2    # "windowMode":I
    :goto_15
    return v3

    :cond_16
    const/4 v3, 0x0

    goto :goto_15
.end method

.method static isMinimized(I)Z
    .registers 2
    .param p0, "windowMode"    # I

    .prologue
    .line 424
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isMinimized(I)Z

    move-result v0

    return v0
.end method

.method static isMultiWindow(I)Z
    .registers 2
    .param p0, "windowMode"    # I

    .prologue
    .line 412
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isMultiWindow(I)Z

    move-result v0

    return v0
.end method

.method private isNoTitleBar(I)Z
    .registers 3
    .param p1, "windowMode"    # I

    .prologue
    .line 361
    const/high16 v0, 0x80000

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method static isNormalWindow(I)Z
    .registers 2
    .param p0, "windowMode"    # I

    .prologue
    .line 408
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isNormalWindow(I)Z

    move-result v0

    return v0
.end method

.method static isPinup(I)Z
    .registers 2
    .param p0, "windowMode"    # I

    .prologue
    .line 420
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isPinup(I)Z

    move-result v0

    return v0
.end method

.method static isResizable(I)Z
    .registers 2
    .param p0, "windowMode"    # I

    .prologue
    .line 416
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isResizable(I)Z

    move-result v0

    return v0
.end method

.method private isToolkitMode(I)Z
    .registers 3
    .param p1, "windowMode"    # I

    .prologue
    .line 365
    sget v0, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_OPTION_COMMON_TOOLKIT:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private static needsMultiWindowDecor(Landroid/view/Window;)Z
    .registers 4
    .param p0, "owner"    # Landroid/view/Window;

    .prologue
    const/4 v2, 0x0

    .line 262
    invoke-virtual {p0}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    .line 263
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-static {p0, v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->supportedMultiWindow(Landroid/view/Window;I)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-static {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isFillWindow(Landroid/view/Window;)Z

    move-result v1

    if-eqz v1, :cond_3e

    :cond_11
    invoke-virtual {p0}, Landroid/view/Window;->isNoWindowDecor()Z

    move-result v1

    if-nez v1, :cond_3e

    move-object v1, p0

    check-cast v1, Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->isFloating()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-static {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isForceTitleBar(Landroid/view/Window;)Z

    move-result v1

    if-eqz v1, :cond_3e

    :cond_26
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-nez v1, :cond_3e

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-nez v1, :cond_3e

    invoke-static {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isCompatModeEnabled(Landroid/view/Window;)Z

    move-result v1

    if-nez v1, :cond_3e

    const/4 v1, 0x1

    :goto_3d
    return v1

    :cond_3e
    move v1, v2

    goto :goto_3d
.end method

.method private needsMultiWindowPadding()Z
    .registers 3

    .prologue
    .line 273
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_17

    .line 274
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowMode()I

    move-result v0

    .line 275
    .local v0, "windowMode":I
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMultiWindow(I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 276
    const-string v1, "fixedRatio"

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hasApplicationStyle(Ljava/lang/String;)Z

    move-result v1

    .line 280
    .end local v0    # "windowMode":I
    :goto_16
    return v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method private parseActivityInfoMetaData(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 8
    .param p1, "metaData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1010
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1011
    .local v1, "empty":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    if-nez v3, :cond_a

    .line 1027
    .end local v1    # "empty":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    :goto_9
    return-object v1

    .line 1016
    .restart local v1    # "empty":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    :try_start_a
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1018
    .local v0, "activityMetaData":Landroid/os/Bundle;
    if-eqz v0, :cond_9

    .line 1019
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1020
    .local v2, "style":Ljava/lang/String;
    if-eqz v2, :cond_9

    .line 1021
    new-instance v3, Ljava/util/ArrayList;

    const-string v4, "\\|"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_35
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_35} :catch_37

    move-object v1, v3

    goto :goto_9

    .line 1024
    .end local v0    # "activityMetaData":Landroid/os/Bundle;
    .end local v2    # "style":Ljava/lang/String;
    :catch_37
    move-exception v3

    goto :goto_9
.end method

.method private parseApplicationInfoMetaData(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 8
    .param p1, "metaData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 989
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 990
    .local v1, "empty":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    if-nez v3, :cond_a

    .line 1006
    .end local v1    # "empty":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    :goto_9
    return-object v1

    .line 995
    .restart local v1    # "empty":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    :try_start_a
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 997
    .local v0, "appInfoMetaData":Landroid/os/Bundle;
    if-eqz v0, :cond_9

    .line 998
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 999
    .local v2, "style":Ljava/lang/String;
    if-eqz v2, :cond_9

    .line 1000
    new-instance v3, Ljava/util/ArrayList;

    const-string v4, "\\|"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_35
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_35} :catch_37

    move-object v1, v3

    goto :goto_9

    .line 1003
    .end local v0    # "appInfoMetaData":Landroid/os/Bundle;
    .end local v2    # "style":Ljava/lang/String;
    :catch_37
    move-exception v3

    goto :goto_9
.end method

.method private reviseWindowPosition(Landroid/graphics/Rect;Landroid/graphics/Point;)V
    .registers 8
    .param p1, "windowRect"    # Landroid/graphics/Rect;
    .param p2, "maxSize"    # Landroid/graphics/Point;

    .prologue
    .line 1802
    sget v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->REVISE_WINDOW_BOUNDARY_X:I

    .line 1803
    .local v0, "boundaryX":I
    sget v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->REVISE_WINDOW_BOUNDARY_Y:I

    .line 1805
    .local v1, "boundaryY":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowMode()I

    move-result v2

    .line 1806
    .local v2, "windowMode":I
    invoke-static {v2}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isMinimized(I)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1807
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 1808
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 1810
    :cond_18
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v0

    if-le v3, v4, :cond_37

    .line 1811
    iget v3, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1816
    :cond_27
    :goto_27
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v1

    if-le v3, v4, :cond_47

    .line 1817
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1822
    :cond_36
    :goto_36
    return-void

    .line 1812
    :cond_37
    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-ge v3, v0, :cond_27

    .line 1813
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int v3, v0, v3

    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_27

    .line 1819
    :cond_47
    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_36

    .line 1820
    iget v3, p1, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_36
.end method

.method private setActionBarMenuVisibility(Z)V
    .registers 9
    .param p1, "visible"    # Z

    .prologue
    const v3, 0x102045e

    .line 1044
    const/4 v0, 0x0

    .line 1045
    .local v0, "actionBarView":Lcom/android/internal/widget/ActionBarView;
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDisplayStub:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    if-eqz v2, :cond_19

    .line 1046
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDisplayStub:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    iget-object v2, v2, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "actionBarView":Lcom/android/internal/widget/ActionBarView;
    check-cast v0, Lcom/android/internal/widget/ActionBarView;

    .line 1051
    .restart local v0    # "actionBarView":Lcom/android/internal/widget/ActionBarView;
    :goto_16
    if-nez v0, :cond_26

    .line 1077
    :cond_18
    :goto_18
    return-void

    .line 1048
    :cond_19
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "actionBarView":Lcom/android/internal/widget/ActionBarView;
    check-cast v0, Lcom/android/internal/widget/ActionBarView;

    .restart local v0    # "actionBarView":Lcom/android/internal/widget/ActionBarView;
    goto :goto_16

    .line 1055
    :cond_26
    sget-boolean v2, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->sIsQueriedActionBarViewSetMultiWindowReserved:Z

    if-nez v2, :cond_3e

    .line 1057
    :try_start_2a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setMultiWindowReserved"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->sActionBarViewSetMultiWindowReserved:Ljava/lang/reflect/Method;
    :try_end_3e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2a .. :try_end_3e} :catch_57

    .line 1063
    :cond_3e
    :goto_3e
    sget-object v2, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->sActionBarViewSetMultiWindowReserved:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_18

    .line 1065
    :try_start_42
    sget-object v2, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->sActionBarViewSetMultiWindowReserved:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_51
    .catch Ljava/lang/IllegalArgumentException; {:try_start_42 .. :try_end_51} :catch_52
    .catch Ljava/lang/IllegalAccessException; {:try_start_42 .. :try_end_51} :catch_5c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_42 .. :try_end_51} :catch_61

    goto :goto_18

    .line 1066
    :catch_52
    move-exception v1

    .line 1068
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_18

    .line 1058
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_57
    move-exception v1

    .line 1060
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_3e

    .line 1069
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_5c
    move-exception v1

    .line 1071
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_18

    .line 1072
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_61
    move-exception v1

    .line 1074
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_18
.end method

.method private static setAddonViewFlags(Landroid/view/View;I)V
    .registers 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "flags"    # I

    .prologue
    .line 2342
    invoke-virtual {p0, p1}, Landroid/view/View;->setAddonViewFlags(I)V

    .line 2343
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1b

    move-object v1, p0

    .line 2344
    check-cast v1, Landroid/view/ViewGroup;

    .line 2345
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2346
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v0, :cond_1b

    .line 2347
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setAddonViewFlags(Landroid/view/View;I)V

    .line 2346
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 2350
    .end local v0    # "count":I
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_1b
    return-void
.end method

.method private static supportedMultiWindow(Landroid/view/Window;I)Z
    .registers 8
    .param p0, "owner"    # Landroid/view/Window;
    .param p1, "currentWindowMode"    # I

    .prologue
    const/high16 v5, 0x400000

    const/4 v3, 0x1

    .line 284
    if-eqz p1, :cond_a

    .line 285
    and-int v4, p1, v5

    if-eqz v4, :cond_1d

    .line 299
    :cond_9
    :goto_9
    return v3

    .line 289
    :cond_a
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 290
    .local v1, "context":Landroid/content/Context;
    instance-of v4, v1, Landroid/app/Activity;

    if-eqz v4, :cond_1d

    move-object v0, v1

    .line 291
    check-cast v0, Landroid/app/Activity;

    .line 292
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowMode()I

    move-result v2

    .line 293
    .local v2, "windowMode":I
    and-int v4, v2, v5

    if-nez v4, :cond_9

    .line 299
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "windowMode":I
    :cond_1d
    const/4 v3, 0x0

    goto :goto_9
.end method

.method private updateBorderPadding(I)V
    .registers 9
    .param p1, "windowMode"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2602
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDisplayStub:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    if-eqz v3, :cond_c

    .line 2603
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDisplayStub:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-direct {v3, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->updateBorderPadding(I)V

    .line 2606
    :cond_c
    const/4 v2, 0x0

    .line 2607
    .local v2, "needPadding":Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2609
    .local v0, "config":Landroid/content/res/Configuration;
    :try_start_17
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1e} :catch_5f

    move-result-object v0

    .line 2613
    :goto_1f
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v6, :cond_46

    .line 2614
    and-int/lit8 v3, p1, 0xf

    if-eq v3, v4, :cond_30

    and-int/lit8 v3, p1, 0xf

    if-eq v3, v6, :cond_30

    and-int/lit8 v3, p1, 0xf

    const/4 v4, 0x2

    if-ne v3, v4, :cond_31

    .line 2617
    :cond_30
    const/4 v2, 0x1

    .line 2628
    :cond_31
    :goto_31
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2629
    .local v1, "decor":Landroid/view/ViewGroup;
    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 2630
    if-eqz v2, :cond_5b

    .line 2631
    sget v3, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->statusBarHeight:I

    invoke-virtual {v1, v5, v3, v5, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 2635
    :goto_45
    return-void

    .line 2620
    .end local v1    # "decor":Landroid/view/ViewGroup;
    :cond_46
    and-int/lit8 v3, p1, 0xf

    if-eq v3, v4, :cond_59

    and-int/lit8 v3, p1, 0xf

    const/16 v4, 0xc

    if-eq v3, v4, :cond_59

    and-int/lit8 v3, p1, 0xf

    if-eq v3, v6, :cond_59

    and-int/lit8 v3, p1, 0xf

    const/4 v4, 0x4

    if-ne v3, v4, :cond_31

    .line 2624
    :cond_59
    const/4 v2, 0x1

    goto :goto_31

    .line 2633
    .restart local v1    # "decor":Landroid/view/ViewGroup;
    :cond_5b
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_45

    .line 2610
    .end local v1    # "decor":Landroid/view/ViewGroup;
    :catch_5f
    move-exception v3

    goto :goto_1f
.end method

.method private updateSplitRect(I)V
    .registers 2
    .param p1, "windowMode"    # I

    .prologue
    .line 2432
    return-void
.end method

.method private windowIsTranslucent(I)Z
    .registers 6
    .param p1, "windowMode"    # I

    .prologue
    const/4 v2, 0x0

    .line 349
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isForceTitleBar(Landroid/view/Window;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v1, v2

    .line 357
    :cond_a
    :goto_a
    return v1

    .line 352
    :cond_b
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    .line 353
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 354
    .local v1, "result":Z
    if-eqz v1, :cond_a

    .line 355
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setActionBarMenuVisibility(Z)V

    goto :goto_a
.end method

.method private wrapContentView(I)V
    .registers 7
    .param p1, "windowMode"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 1108
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1110
    .local v0, "decor":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_88

    .line 1111
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContentRoot:Landroid/view/ViewGroup;

    .line 1112
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1114
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    .line 1115
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1116
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1117
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1119
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isNoTitleBar(I)Z

    move-result v1

    if-nez v1, :cond_88

    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isCascadeWindow(I)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 1120
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/sec/multiwindow/impl/BorderFrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/sec/multiwindow/impl/BorderFrameLayout;->removeView(Landroid/view/View;)V

    .line 1121
    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    .line 1122
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/gesture/GestureOverlayView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1123
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    new-instance v2, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1;)V

    invoke-virtual {v1, v2}, Landroid/gesture/GestureOverlayView;->addOnGestureListener(Landroid/gesture/GestureOverlayView$OnGestureListener;)V

    .line 1124
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    invoke-virtual {v1, v4}, Landroid/gesture/GestureOverlayView;->setGestureVisible(Z)V

    .line 1125
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/gesture/GestureOverlayView;->setByPassingMode(Z)V

    .line 1126
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/gesture/GestureOverlayView;->addView(Landroid/view/View;)V

    .line 1128
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/sec/multiwindow/impl/BorderFrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    invoke-virtual {v1, v2, v4}, Landroid/sec/multiwindow/impl/BorderFrameLayout;->addView(Landroid/view/View;I)V

    .line 1131
    :cond_88
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/sec/multiwindow/impl/BorderFrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1132
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1133
    return-void
.end method


# virtual methods
.method public exitWindow()V
    .registers 2

    .prologue
    .line 432
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->exitWindow(Z)V

    .line 433
    return-void
.end method

.method public exitWindow(Z)V
    .registers 5
    .param p1, "forceExit"    # Z

    .prologue
    .line 436
    if-nez p1, :cond_16

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    if-eqz v1, :cond_16

    .line 437
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    invoke-interface {v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;->onWindowExit()Z

    move-result v1

    if-nez v1, :cond_16

    .line 438
    const-string v1, "MultiPhoneWindowEvent"

    const-string v2, "onWindowExit return false"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :goto_15
    return-void

    .line 443
    :cond_16
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->forceHideInputMethod()Z

    .line 445
    :try_start_19
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finishAffinity()V
    :try_end_1e
    .catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_1e} :catch_1f

    goto :goto_15

    .line 446
    :catch_1f
    move-exception v0

    .line 447
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_15
.end method

.method public getBitmapClippedCircle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2834
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 2835
    .local v2, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 2836
    .local v0, "height":I
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 2837
    .local v1, "path":Landroid/graphics/Path;
    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x105010b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 2843
    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->clipImagePath(Landroid/graphics/Bitmap;Landroid/graphics/Path;)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3
.end method

.method public getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 1364
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d0000

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 1339
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1344
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_6
    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_b} :catch_19

    move-result-object v3

    .line 1349
    .local v3, "resources":Landroid/content/res/Resources;
    :goto_c
    if-eqz v3, :cond_1c

    .line 1355
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v1

    .line 1356
    .local v1, "iconId":I
    if-eqz v1, :cond_1c

    .line 1357
    invoke-virtual {p0, v3, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1360
    .end local v1    # "iconId":I
    :goto_18
    return-object v4

    .line 1346
    .end local v3    # "resources":Landroid/content/res/Resources;
    :catch_19
    move-exception v0

    .line 1347
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    .restart local v3    # "resources":Landroid/content/res/Resources;
    goto :goto_c

    .line 1360
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1c
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_18
.end method

.method public getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .registers 9
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "iconId"    # I

    .prologue
    .line 1324
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1327
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v3

    .line 1329
    .local v3, "mIconDpi":I
    :try_start_e
    invoke-virtual {p1, p2, v3}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e .. :try_end_11} :catch_15

    move-result-object v1

    .line 1334
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    :goto_12
    if-eqz v1, :cond_18

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :goto_14
    return-object v1

    .line 1330
    :catch_15
    move-exception v2

    .line 1331
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_12

    .line 1334
    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_18
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_14
.end method

.method public getSwitchToPreviousSizeWindow(Landroid/content/Context;)Landroid/widget/PopupWindow;
    .registers 8
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 3043
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_12

    .line 3044
    const/4 v2, 0x0

    .line 3052
    :goto_11
    return-object v2

    .line 3047
    :cond_12
    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$SwithToPreviousSizeButton;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$SwithToPreviousSizeButton;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Landroid/content/Context;)V

    .line 3048
    .local v1, "mButton":Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$SwithToPreviousSizeButton;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$SwithToPreviousSizeButton;->setHoverPopupType(I)V

    .line 3049
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3050
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3052
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v0, v4, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    goto :goto_11
.end method

.method public hasActivityStyle(Ljava/lang/String;)Z
    .registers 3
    .param p1, "style"    # Ljava/lang/String;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivityStyles:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivityStyles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hasApplicationStyle(Ljava/lang/String;)Z
    .registers 3
    .param p1, "style"    # Ljava/lang/String;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mApplicationStyles:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mApplicationStyles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hasCustomViewForMoveWindow()Z
    .registers 2

    .prologue
    .line 3199
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMoveWindowView:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOnTouchedView:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 3200
    const/4 v0, 0x1

    .line 3202
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method hideIconAnimation(Z)V
    .registers 11
    .param p1, "bIsDelay"    # Z

    .prologue
    const/4 v5, 0x1

    const/high16 v1, 0x3f800000

    const/high16 v6, 0x3f000000

    const/4 v2, 0x0

    .line 739
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsDelay:Z

    .line 740
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 741
    .local v0, "scaleAnimation1":Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 742
    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 743
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsDelay:Z

    if-eqz v1, :cond_27

    .line 744
    const-wide/16 v1, 0x4b0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 747
    :cond_27
    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$3;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 777
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowIconic:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 778
    return-void
.end method

.method hideTitleBar()V
    .registers 3

    .prologue
    .line 3180
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_OVERLAY_TITLEBAR:Z

    if-eqz v0, :cond_18

    .line 3181
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$6;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$6;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 3190
    :goto_17
    return-void

    .line 3188
    :cond_18
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_17
.end method

.method public isWfdConnected(Landroid/content/Context;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1099
    const/4 v0, 0x0

    .line 1100
    .local v0, "wfdManager":Lcom/samsung/wfd/WfdManager;
    const-string v1, "wfd"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "wfdManager":Lcom/samsung/wfd/WfdManager;
    check-cast v0, Lcom/samsung/wfd/WfdManager;

    .line 1101
    .restart local v0    # "wfdManager":Lcom/samsung/wfd/WfdManager;
    if-nez v0, :cond_d

    .line 1102
    const/4 v1, 0x0

    .line 1104
    :goto_c
    return v1

    :cond_d
    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->WFDGetStatus()Z

    move-result v1

    goto :goto_c
.end method

.method public minimizeWindow(IZ)V
    .registers 24
    .param p1, "windowMode"    # I
    .param p2, "hide"    # Z

    .prologue
    .line 557
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowInfo()Landroid/os/Bundle;

    move-result-object v20

    .line 558
    .local v20, "winInfo":Landroid/os/Bundle;
    const/4 v15, 0x0

    .line 559
    .local v15, "isNeededMinimize":Z
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mHide:Z

    .line 560
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowMode:I

    .line 561
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowMode:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLastWindowMode:I

    .line 563
    invoke-static/range {p1 .. p1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isCascadeWindow(I)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 564
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowMode:I

    const v4, 0xffffff

    and-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowMode:I

    .line 565
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowMode:I

    const/high16 v4, 0x2000000

    or-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowMode:I

    .line 566
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowMode:I

    const/high16 v4, 0x200000

    or-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowMode:I

    .line 567
    const/4 v15, 0x1

    .line 570
    :cond_46
    const-string v3, "MultiPhoneWindowEvent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "minimize : windowMode=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", hide="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isNeededMinimize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v15}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_fc

    const-string v3, "com.kakao.talk"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fc

    .line 576
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    .line 577
    .local v13, "decor":Landroid/view/ViewGroup;
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v17

    .line 578
    .local v17, "size":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_a3
    move/from16 v0, v17

    if-ge v14, v0, :cond_fc

    .line 579
    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 580
    .local v19, "v":Landroid/view/View;
    move-object/from16 v0, v19

    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_f9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/sec/multiwindow/impl/BorderFrameLayout;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f9

    move-object/from16 v3, v19

    .line 581
    check-cast v3, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->findParentBorderFrameLayout(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mParentBorderFrame:Landroid/view/ViewGroup;

    .line 582
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mParentBorderFrame:Landroid/view/ViewGroup;

    if-eqz v3, :cond_f9

    move-object/from16 v3, v19

    .line 583
    check-cast v3, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mChildTopView:Landroid/view/ViewGroup;

    .line 584
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 585
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mParentBorderFrame:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/sec/multiwindow/impl/BorderFrameLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 586
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 587
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/sec/multiwindow/impl/BorderFrameLayout;

    invoke-virtual {v13, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 578
    :cond_f9
    add-int/lit8 v14, v14, 0x1

    goto :goto_a3

    .line 593
    .end local v13    # "decor":Landroid/view/ViewGroup;
    .end local v14    # "i":I
    .end local v17    # "size":I
    .end local v19    # "v":Landroid/view/View;
    :cond_fc
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowIconic:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->getMinimizedBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 594
    if-eqz v20, :cond_148

    .line 595
    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Landroid/graphics/Rect;

    .line 596
    .local v16, "lastSize":Landroid/graphics/Rect;
    if-eqz v16, :cond_148

    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/Rect;->left:I

    if-gez v3, :cond_148

    .line 597
    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 598
    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 599
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/app/Activity;->setWindowInfo(Landroid/os/Bundle;)V

    .line 603
    .end local v16    # "lastSize":Landroid/graphics/Rect;
    :cond_148
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_MINIMIZE_MOVING_ANIMATION:Z

    if-eqz v3, :cond_182

    .line 604
    if-eqz v20, :cond_161

    .line 605
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLastMultiwindowRect:Landroid/graphics/Rect;

    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 608
    :cond_161
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;

    if-eqz v3, :cond_182

    .line 609
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowServiceCallback:Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback$Stub;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/sec/multiwindow/impl/MultiWindowManager;->registerCallback(Landroid/os/IBinder;ILandroid/os/IBinder;)Z

    .line 610
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;

    invoke-virtual {v3}, Landroid/sec/multiwindow/impl/MultiWindowManager;->setMinimizeStackedIcon()V

    .line 614
    :cond_182
    if-nez v15, :cond_18d

    if-eqz p2, :cond_18d

    .line 615
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->hideIconAnimation(Z)V

    .line 735
    :goto_18c
    return-void

    .line 617
    :cond_18d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDecor:Landroid/view/ViewGroup;

    .line 618
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->updateThumbNail()V

    .line 619
    const-string v3, "enable.mw.fi"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 620
    .local v18, "strEnable":Ljava/lang/String;
    const/4 v12, 0x0

    .line 621
    .local v12, "bEnableFloatingIcon":Z
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_20b

    .line 622
    const/4 v12, 0x1

    .line 626
    :goto_1b0
    if-eqz v12, :cond_219

    .line 627
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 628
    .local v2, "scaleAnimation":Landroid/view/animation/Animation;
    new-instance v3, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 629
    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 631
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000

    const/4 v4, 0x0

    invoke-direct {v10, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 632
    .local v10, "alphaAnimation":Landroid/view/animation/Animation;
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v10, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 633
    const-wide/16 v3, 0x12c

    invoke-virtual {v10, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 635
    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v11, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 636
    .local v11, "animationSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v11, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 637
    invoke-virtual {v11, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 639
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDecor:Landroid/view/ViewGroup;

    new-instance v4, Landroid/view/animation/LayoutAnimationController;

    invoke-direct {v4, v11}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 640
    new-instance v3, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V

    invoke-virtual {v11, v3}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 717
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDecor:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->startLayoutAnimation()V

    goto :goto_18c

    .line 624
    .end local v2    # "scaleAnimation":Landroid/view/animation/Animation;
    .end local v10    # "alphaAnimation":Landroid/view/animation/Animation;
    .end local v11    # "animationSet":Landroid/view/animation/AnimationSet;
    :cond_20b
    const-string v3, "0"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_217

    const/4 v12, 0x1

    :goto_216
    goto :goto_1b0

    :cond_217
    const/4 v12, 0x0

    goto :goto_216

    .line 721
    :cond_219
    const v3, -0x200001

    and-int v9, p1, v3

    .line 722
    .local v9, "_windowMode":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDecor:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x5dc

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v9}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$2;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;I)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_18c
.end method

.method public moveWindow(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3193
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMoveWindowView:Landroid/view/View;

    .line 3194
    new-instance v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V

    .line 3195
    .local v0, "pwl":Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$PhoneWindowListener;
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3196
    return-void
.end method

.method public multiWindow(IZ)V
    .registers 11
    .param p1, "windowMode"    # I
    .param p2, "pinup"    # Z

    .prologue
    const/4 v7, 0x0

    .line 483
    const v5, 0xffffff

    and-int/2addr p1, v5

    .line 484
    const/high16 v5, 0x2000000

    or-int/2addr p1, v5

    .line 485
    if-eqz p2, :cond_c2

    .line 486
    const/high16 v5, 0x800000

    or-int/2addr p1, v5

    .line 491
    :goto_d
    const v5, -0x200001

    and-int/2addr p1, v5

    .line 492
    and-int/lit8 p1, p1, -0x10

    .line 494
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;

    if-eqz v5, :cond_1e

    .line 495
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowServiceCallback:Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback$Stub;

    invoke-virtual {v5, v6}, Landroid/sec/multiwindow/impl/MultiWindowManager;->unRegisterCallback(Landroid/os/IBinder;)Z

    .line 498
    :cond_1e
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    if-eqz v5, :cond_58

    const-string v5, "com.kakao.talk"

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 499
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 500
    .local v0, "decor":Landroid/view/ViewGroup;
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mChildTopView:Landroid/view/ViewGroup;

    if-eqz v5, :cond_58

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mParentBorderFrame:Landroid/view/ViewGroup;

    if-eqz v5, :cond_58

    .line 501
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/sec/multiwindow/impl/BorderFrameLayout;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 502
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mChildTopView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 503
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mChildTopView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 504
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mParentBorderFrame:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/sec/multiwindow/impl/BorderFrameLayout;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 508
    .end local v0    # "decor":Landroid/view/ViewGroup;
    :cond_58
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowInfo()Landroid/os/Bundle;

    move-result-object v4

    .line 509
    .local v4, "winInfo":Landroid/os/Bundle;
    if-eqz v4, :cond_bb

    .line 510
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 511
    .local v1, "fullscreen":Landroid/graphics/Point;
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 512
    const/4 v3, 0x0

    .line 513
    .local v3, "revised":Z
    const-string v5, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 514
    .local v2, "rect":Landroid/graphics/Rect;
    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Point;->x:I

    if-le v5, v6, :cond_8a

    .line 515
    iget v5, v1, Landroid/graphics/Point;->x:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    invoke-virtual {v2, v5, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 516
    const/4 v3, 0x1

    .line 518
    :cond_8a
    iget v5, v2, Landroid/graphics/Rect;->left:I

    if-gez v5, :cond_95

    .line 519
    iget v5, v2, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    invoke-virtual {v2, v5, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 520
    const/4 v3, 0x1

    .line 522
    :cond_95
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    iget v6, v1, Landroid/graphics/Point;->y:I

    if-le v5, v6, :cond_a4

    .line 523
    iget v5, v1, Landroid/graphics/Point;->y:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    invoke-virtual {v2, v7, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 524
    const/4 v3, 0x1

    .line 526
    :cond_a4
    iget v5, v2, Landroid/graphics/Rect;->top:I

    if-gez v5, :cond_af

    .line 527
    iget v5, v2, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    invoke-virtual {v2, v7, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 528
    const/4 v3, 0x1

    .line 530
    :cond_af
    if-eqz v3, :cond_bb

    .line 531
    const-string v5, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 532
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v4}, Landroid/app/Activity;->setWindowInfo(Landroid/os/Bundle;)V

    .line 535
    .end local v1    # "fullscreen":Landroid/graphics/Point;
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v3    # "revised":Z
    :cond_bb
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    const/4 v6, 0x1

    invoke-virtual {v5, p1, v6}, Landroid/app/Activity;->setWindowMode(IZ)V

    .line 536
    return-void

    .line 489
    .end local v4    # "winInfo":Landroid/os/Bundle;
    :cond_c2
    const v5, -0x800001

    and-int/2addr p1, v5

    goto/16 :goto_d
.end method

.method multiwindowWithAni(I)V
    .registers 13
    .param p1, "windowMode"    # I

    .prologue
    const-wide/16 v9, 0x12c

    const v1, 0x3e99999a

    const/high16 v2, 0x3f800000

    const/4 v5, 0x0

    .line 462
    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMinimized(I)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 463
    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isPinup(I)Z

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->multiWindow(IZ)V

    .line 464
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDecor:Landroid/view/ViewGroup;

    .line 466
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 467
    .local v0, "bubbleAnimation1":Landroid/view/animation/Animation;
    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 469
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v7, v5, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 470
    .local v7, "alphaAnimation":Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v7, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 471
    invoke-virtual {v7, v9, v10}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 473
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v8, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 474
    .local v8, "animationSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 475
    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 477
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDecor:Landroid/view/ViewGroup;

    new-instance v2, Landroid/view/animation/LayoutAnimationController;

    invoke-direct {v2, v8}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 478
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDecor:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->startLayoutAnimation()V

    .line 480
    .end local v0    # "bubbleAnimation1":Landroid/view/animation/Animation;
    .end local v7    # "alphaAnimation":Landroid/view/animation/Animation;
    .end local v8    # "animationSet":Landroid/view/animation/AnimationSet;
    :cond_55
    return-void
.end method

.method public normalWindow(I)V
    .registers 4
    .param p1, "windowMode"    # I

    .prologue
    .line 452
    const v0, 0xffffff

    and-int/2addr p1, v0

    .line 453
    const/high16 v0, 0x1000000

    or-int/2addr p1, v0

    .line 454
    const v0, -0x800001

    and-int/2addr p1, v0

    .line 455
    const v0, -0x200001

    and-int/2addr p1, v0

    .line 456
    and-int/lit8 p1, p1, -0x10

    .line 458
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->setWindowMode(IZ)V

    .line 459
    return-void
.end method

.method public onAttachedFromWindow()V
    .registers 4

    .prologue
    .line 1081
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mVideoCapabilityReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_12

    .line 1082
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.VIDEOCAPABILITY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1083
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mVideoCapabilityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1085
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_12
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 9
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v6, -0x200001

    const/4 v5, 0x1

    .line 2275
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaxSize:Landroid/graphics/Point;

    invoke-static {v2}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 2276
    const/4 v0, 0x1

    .line 2284
    .local v0, "arrange":I
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowMode()I

    move-result v1

    .line 2285
    .local v1, "windowMode":I
    invoke-static {v1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v2

    const/high16 v3, 0x2000000

    if-eq v2, v3, :cond_19

    .line 2339
    :cond_18
    :goto_18
    return-void

    .line 2289
    :cond_19
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mArrange:I

    iget v3, p1, Landroid/content/res/Configuration;->arrange:I

    if-eq v2, v3, :cond_55

    .line 2290
    const-string v2, "MultiPhoneWindowEvent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Configuration changed : oldArrange=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mArrange:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newArrange=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/content/res/Configuration;->arrange:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    iget v2, p1, Landroid/content/res/Configuration;->arrange:I

    iput v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mArrange:I

    .line 2294
    iget v2, p1, Landroid/content/res/Configuration;->arrange:I

    and-int/lit16 v0, v2, -0x801

    .line 2298
    :cond_55
    sparse-switch v0, :sswitch_data_d8

    .line 2328
    :cond_58
    :goto_58
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->windowIsTranslucent(I)Z

    move-result v2

    if-nez v2, :cond_99

    .line 2329
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    if-eqz v2, :cond_96

    .line 2330
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const v3, 0x1020406

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPinupButton:Landroid/widget/ImageButton;

    .line 2331
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const v3, 0x1020409

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeButton:Landroid/widget/ImageButton;

    .line 2332
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const v3, 0x102040d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaximizeButton:Landroid/widget/ImageButton;

    .line 2333
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const v3, 0x102040f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mExitButton:Landroid/widget/ImageButton;

    .line 2335
    :cond_96
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setDecorVisibility(I)V

    .line 2338
    :cond_99
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setWindowParams(I)V

    goto/16 :goto_18

    .line 2304
    :sswitch_9e
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMinimized(I)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 2305
    and-int/2addr v1, v6

    .line 2306
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1, v5}, Landroid/app/Activity;->setWindowMode(IZ)V

    goto :goto_58

    .line 2310
    :sswitch_ab
    invoke-static {v1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v2

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-nez v2, :cond_58

    .line 2311
    const v2, 0xffffff

    and-int/2addr v1, v2

    .line 2312
    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    .line 2313
    and-int/2addr v1, v6

    .line 2314
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1, v5}, Landroid/app/Activity;->setWindowMode(IZ)V

    goto :goto_58

    .line 2318
    :sswitch_c2
    const/high16 v2, 0x100000

    and-int/2addr v2, v1

    if-nez v2, :cond_18

    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isCascadeWindow(I)Z

    move-result v2

    if-nez v2, :cond_d3

    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMinimized(I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2320
    :cond_d3
    invoke-virtual {p0, v1, v5}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->minimizeWindow(IZ)V

    goto/16 :goto_18

    .line 2298
    :sswitch_data_d8
    .sparse-switch
        0x8 -> :sswitch_9e
        0x10 -> :sswitch_9e
        0x20 -> :sswitch_9e
        0x40 -> :sswitch_9e
        0x100 -> :sswitch_c2
        0x200 -> :sswitch_9e
        0x400 -> :sswitch_ab
    .end sparse-switch
.end method

.method public onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mVideoCapabilityReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_e

    .line 1089
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mVideoCapabilityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1090
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mVideoCapabilityReceiver:Landroid/content/BroadcastReceiver;

    .line 1093
    :cond_e
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowServiceCallback:Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback$Stub;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;

    if-eqz v0, :cond_1d

    .line 1094
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mwm:Landroid/sec/multiwindow/impl/MultiWindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowServiceCallback:Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback$Stub;

    invoke-virtual {v0, v1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->unRegisterCallback(Landroid/os/IBinder;)Z

    .line 1096
    :cond_1d
    return-void
.end method

.method public onWindowAttributesChanged(II)V
    .registers 9
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    .line 2525
    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    if-eq v4, p1, :cond_57

    if-eqz p2, :cond_57

    .line 2529
    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    xor-int/lit8 v5, p2, -0x1

    and-int/2addr v4, v5

    iput v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    .line 2530
    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    or-int/2addr v4, p1

    iput v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    .line 2534
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowMode()I

    move-result v3

    .line 2535
    .local v3, "windowMode":I
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMultiWindow(I)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 2536
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2537
    .local v0, "curLp":Landroid/view/WindowManager$LayoutParams;
    const v2, 0x10402

    .line 2540
    .local v2, "noNeedsFlags":I
    const/16 v1, 0x320

    .line 2546
    .local v1, "needsFlags":I
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v4, v2

    if-nez v4, :cond_37

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v4, v1

    if-eq v4, v1, :cond_57

    .line 2547
    :cond_37
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v5, -0x10403

    and-int/2addr v4, v5

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2548
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v4, v1

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2550
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2554
    .end local v0    # "curLp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "needsFlags":I
    .end local v2    # "noNeedsFlags":I
    .end local v3    # "windowMode":I
    :cond_57
    return-void
.end method

.method public onWindowInfoChanged()V
    .registers 18

    .prologue
    .line 2557
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 2558
    .local v3, "fullscreen":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    const-string v14, "window"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager;

    .line 2559
    .local v11, "wM":Landroid/view/WindowManager;
    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2560
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getWindowInfo()Landroid/os/Bundle;

    move-result-object v12

    .line 2561
    .local v12, "winInfo":Landroid/os/Bundle;
    if-eqz v12, :cond_ca

    .line 2562
    const-string v13, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 2563
    .local v4, "lastSize":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    const-string v13, "android.intent.extra.WINDOW_MINIMIZED_SIZE"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    invoke-direct {v5, v13}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2564
    .local v5, "minimizedSize":Landroid/graphics/Rect;
    if-eqz v4, :cond_ca

    if-eqz v5, :cond_ca

    .line 2565
    iget v13, v4, Landroid/graphics/Rect;->left:I

    int-to-double v13, v13

    iget v15, v3, Landroid/graphics/Point;->y:I

    int-to-double v15, v15

    div-double v7, v13, v15

    .line 2566
    .local v7, "relativeRateX":D
    iget v13, v4, Landroid/graphics/Rect;->top:I

    int-to-double v13, v13

    iget v15, v3, Landroid/graphics/Point;->x:I

    int-to-double v15, v15

    div-double v9, v13, v15

    .line 2567
    .local v9, "relativeRateY":D
    iget v13, v3, Landroid/graphics/Point;->x:I

    int-to-double v13, v13

    mul-double/2addr v13, v7

    double-to-int v1, v13

    .line 2568
    .local v1, "calculatedReferencePointX":I
    iget v13, v3, Landroid/graphics/Point;->y:I

    int-to-double v13, v13

    mul-double/2addr v13, v9

    double-to-int v2, v13

    .line 2570
    .local v2, "calculatedReferencePointY":I
    iget v13, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v14

    sub-int/2addr v13, v14

    if-le v1, v13, :cond_66

    .line 2571
    iget v13, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v14

    sub-int v1, v13, v14

    .line 2574
    :cond_66
    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getStatusBarHeight()I

    move-result v13

    if-ge v2, v13, :cond_cb

    .line 2575
    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getStatusBarHeight()I

    move-result v2

    .line 2580
    :cond_70
    :goto_70
    invoke-virtual {v4, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2582
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v13

    iget v14, v3, Landroid/graphics/Point;->y:I

    if-le v13, v14, :cond_87

    .line 2583
    iget v13, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v14

    iget v15, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v14, v15

    sub-int/2addr v13, v14

    iput v13, v4, Landroid/graphics/Rect;->bottom:I

    .line 2586
    :cond_87
    iget v13, v4, Landroid/graphics/Rect;->left:I

    iget v14, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v13, v14}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2587
    const-string v13, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v12, v13, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2588
    const-string v13, "android.intent.extra.WINDOW_MINIMIZED_SIZE"

    invoke-virtual {v12, v13, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2589
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v13, v12}, Landroid/app/Activity;->setWindowInfo(Landroid/os/Bundle;)V

    .line 2591
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 2592
    .local v6, "p":Landroid/view/WindowManager$LayoutParams;
    iget v13, v5, Landroid/graphics/Rect;->left:I

    iput v13, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2593
    iget v13, v5, Landroid/graphics/Rect;->top:I

    iput v13, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2594
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v13

    iput v13, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2595
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v13

    iput v13, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2596
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2599
    .end local v1    # "calculatedReferencePointX":I
    .end local v2    # "calculatedReferencePointY":I
    .end local v4    # "lastSize":Landroid/graphics/Rect;
    .end local v5    # "minimizedSize":Landroid/graphics/Rect;
    .end local v6    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v7    # "relativeRateX":D
    .end local v9    # "relativeRateY":D
    :cond_ca
    return-void

    .line 2576
    .restart local v1    # "calculatedReferencePointX":I
    .restart local v2    # "calculatedReferencePointY":I
    .restart local v4    # "lastSize":Landroid/graphics/Rect;
    .restart local v5    # "minimizedSize":Landroid/graphics/Rect;
    .restart local v7    # "relativeRateX":D
    .restart local v9    # "relativeRateY":D
    :cond_cb
    iget v13, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v14

    sub-int/2addr v13, v14

    if-le v2, v13, :cond_70

    .line 2577
    iget v13, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v14

    sub-int v2, v13, v14

    goto :goto_70
.end method

.method public onWindowStatusChanged(II)V
    .registers 14
    .param p1, "windowMode"    # I
    .param p2, "windowInfoChanged"    # I

    .prologue
    .line 2435
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-static {v8, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->supportedMultiWindow(Landroid/view/Window;I)Z

    move-result v8

    if-nez v8, :cond_9

    .line 2522
    :cond_8
    :goto_8
    return-void

    .line 2439
    :cond_9
    and-int/lit8 v8, p2, 0x2

    if-eqz v8, :cond_2a

    const/high16 v8, 0x100000

    and-int/2addr v8, p1

    if-nez v8, :cond_2a

    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMinimized(I)Z

    move-result v8

    if-nez v8, :cond_2a

    .line 2442
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->isResumed()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2443
    const/4 v8, 0x0

    invoke-virtual {p0, p1, v8}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->minimizeWindow(IZ)V

    .line 2444
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDecor:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_8

    .line 2447
    :cond_2a
    and-int/lit8 v8, p2, 0x4

    if-eqz v8, :cond_37

    const/high16 v8, 0x100000

    and-int/2addr v8, p1

    if-nez v8, :cond_37

    .line 2449
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->multiwindowWithAni(I)V

    goto :goto_8

    .line 2453
    :cond_37
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->updateSplitRect(I)V

    .line 2455
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isSupportMultiWindow(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_50

    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v8

    const/high16 v9, 0x2000000

    and-int/2addr v8, v9

    if-eqz v8, :cond_50

    .line 2457
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v8}, Landroid/view/Window;->closeAllPanels()V

    .line 2468
    :cond_50
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    if-eqz v8, :cond_6e

    .line 2469
    iget v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLastWindowMode:I

    invoke-static {v8}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v8

    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v9

    if-eq v8, v9, :cond_c0

    .line 2470
    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v8

    const/high16 v10, 0x2000000

    if-ne v8, v10, :cond_be

    const/4 v8, 0x1

    :goto_6b
    invoke-interface {v9, v8}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onModeChanged(Z)V

    .line 2486
    :cond_6e
    :goto_6e
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->windowIsTranslucent(I)Z

    move-result v8

    if-nez v8, :cond_77

    .line 2487
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setDecorVisibility(I)V

    .line 2489
    :cond_77
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setWindowParams(I)V

    .line 2490
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->relayoutTitleBar(I)V

    .line 2492
    const/4 v1, 0x0

    .line 2493
    .local v1, "isNormalWindow":Z
    const/4 v0, 0x0

    .line 2494
    .local v0, "isMinimized":Z
    const/4 v2, 0x0

    .line 2496
    .local v2, "isPinup":Z
    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v5

    .line 2497
    .local v5, "mode":I
    sparse-switch v5, :sswitch_data_126

    .line 2509
    :goto_87
    if-eqz v1, :cond_a5

    .line 2510
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    const-string v9, "keyguard"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 2511
    .local v3, "km":Landroid/app/KeyguardManager;
    if-eqz v3, :cond_a5

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v8

    if-eqz v8, :cond_a5

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v8

    if-eqz v8, :cond_a5

    .line 2512
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setActionBarMenuVisibility(Z)V

    .line 2516
    .end local v3    # "km":Landroid/app/KeyguardManager;
    :cond_a5
    iget v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLastMode:I

    if-ne v5, v8, :cond_b1

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsLastMinimized:Z

    if-ne v0, v8, :cond_b1

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsLastPinup:Z

    if-eq v2, v8, :cond_8

    .line 2517
    :cond_b1
    iput v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLastMode:I

    .line 2518
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsLastMinimized:Z

    .line 2519
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsLastPinup:Z

    .line 2520
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8, v1, v0, v2}, Landroid/app/Activity;->onWindowStatusChanged(ZZZ)V

    goto/16 :goto_8

    .line 2470
    .end local v0    # "isMinimized":Z
    .end local v1    # "isNormalWindow":Z
    .end local v2    # "isPinup":Z
    .end local v5    # "mode":I
    :cond_be
    const/4 v8, 0x0

    goto :goto_6b

    .line 2471
    :cond_c0
    iget v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLastWindowMode:I

    invoke-static {v8}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->zone(I)I

    move-result v8

    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->zone(I)I

    move-result v9

    if-eq v8, v9, :cond_d6

    .line 2472
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->zone(I)I

    move-result v9

    invoke-interface {v8, v9}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onZoneChanged(I)V

    goto :goto_6e

    .line 2473
    :cond_d6
    const/high16 v8, 0x200000

    and-int/2addr v8, p1

    if-nez v8, :cond_6e

    .line 2474
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getWindowInfo()Landroid/os/Bundle;

    move-result-object v7

    .line 2475
    .local v7, "winInfo":Landroid/os/Bundle;
    if-eqz v7, :cond_6e

    .line 2476
    const-string v8, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 2477
    .local v4, "lastSize":Landroid/graphics/Rect;
    if-eqz v4, :cond_6e

    .line 2478
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLastWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-ne v8, v9, :cond_105

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLastWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-eq v8, v9, :cond_6e

    .line 2479
    :cond_105
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-interface {v8, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onSizeChanged(Landroid/graphics/Rect;)V

    goto/16 :goto_6e

    .line 2499
    .end local v4    # "lastSize":Landroid/graphics/Rect;
    .end local v7    # "winInfo":Landroid/os/Bundle;
    .restart local v0    # "isMinimized":Z
    .restart local v1    # "isNormalWindow":Z
    .restart local v2    # "isPinup":Z
    .restart local v5    # "mode":I
    :sswitch_10c
    const/4 v1, 0x1

    .line 2500
    goto/16 :goto_87

    .line 2503
    :sswitch_10f
    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v6

    .line 2504
    .local v6, "params":I
    const/high16 v8, 0x200000

    and-int/2addr v8, v6

    if-eqz v8, :cond_121

    const/4 v0, 0x1

    .line 2505
    :goto_119
    const/high16 v8, 0x800000

    and-int/2addr v8, v6

    if-eqz v8, :cond_123

    const/4 v2, 0x1

    :goto_11f
    goto/16 :goto_87

    .line 2504
    :cond_121
    const/4 v0, 0x0

    goto :goto_119

    .line 2505
    :cond_123
    const/4 v2, 0x0

    goto :goto_11f

    .line 2497
    nop

    :sswitch_data_126
    .sparse-switch
        0x1000000 -> :sswitch_10c
        0x2000000 -> :sswitch_10f
    .end sparse-switch
.end method

.method relayoutTitleBar(I)V
    .registers 7
    .param p1, "windowMode"    # I

    .prologue
    const v4, 0x1020404

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 781
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isNoTitleBar(I)Z

    move-result v1

    if-nez v1, :cond_10

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsNoTitleBar:Z

    if-eqz v1, :cond_11

    .line 816
    :cond_10
    :goto_10
    return-void

    .line 785
    :cond_11
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_OVERLAY_TITLEBAR:Z

    if-eqz v1, :cond_71

    .line 786
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 787
    .local v0, "parentView":Landroid/view/View;
    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isCascadeWindow(I)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 788
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 789
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/sec/multiwindow/impl/BorderFrameLayout;

    invoke-virtual {v1, v4}, Landroid/sec/multiwindow/impl/BorderFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 790
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/sec/multiwindow/impl/BorderFrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/sec/multiwindow/impl/BorderFrameLayout;->removeView(Landroid/view/View;)V

    .line 792
    :cond_3a
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->showTitleBar(Z)V

    .line 793
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_10

    .line 795
    :cond_46
    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMinimized(I)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 796
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10

    .line 798
    :cond_52
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/sec/multiwindow/impl/BorderFrameLayout;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 799
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_69

    .line 800
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 802
    :cond_69
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/sec/multiwindow/impl/BorderFrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/sec/multiwindow/impl/BorderFrameLayout;->addView(Landroid/view/View;)V

    goto :goto_10

    .line 806
    .end local v0    # "parentView":Landroid/view/View;
    :cond_71
    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMultiWindow(I)Z

    move-result v1

    if-eqz v1, :cond_7d

    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMinimized(I)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 807
    :cond_7d
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10

    .line 809
    :cond_83
    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isCascadeWindow(I)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 810
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10

    .line 812
    :cond_8f
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_10
.end method

.method requestHideTitleBar()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 3144
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mH:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$H;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$H;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3145
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mH:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$H;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$H;->removeMessages(I)V

    .line 3147
    :cond_e
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_OVERLAY_TITLEBAR:Z

    if-eqz v0, :cond_20

    .line 3148
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mH:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$H;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mH:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$H;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3152
    :goto_1f
    return-void

    .line 3150
    :cond_20
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1f
.end method

.method setDecorPadding(IIII)V
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 1568
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    .line 1569
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1571
    :cond_9
    return-void
.end method

.method setDecorVisibility(I)V
    .registers 14
    .param p1, "windowMode"    # I

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 1586
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1588
    .local v0, "decor":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDisplayStub:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    if-eqz v3, :cond_17

    .line 1589
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDisplayStub:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-virtual {v3, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setDecorVisibility(I)V

    .line 1593
    :cond_17
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isToolkitMode(I)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 1594
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1595
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v9, :cond_a3

    .line 1596
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    if-eqz v3, :cond_39

    .line 1597
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    invoke-virtual {v3, v8}, Landroid/gesture/GestureOverlayView;->setEnabled(Z)V

    .line 1771
    :cond_39
    :goto_39
    return-void

    .line 1601
    :cond_3a
    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMultiWindow(I)Z

    move-result v3

    if-eqz v3, :cond_1a4

    .line 1603
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->windowIsTranslucent(I)Z

    move-result v3

    if-nez v3, :cond_39

    .line 1607
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isNoTitleBar(I)Z

    move-result v3

    if-nez v3, :cond_39

    .line 1611
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsNoTitleBar:Z

    if-nez v3, :cond_58

    .line 1612
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    const v4, 0x10805e6

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1615
    :cond_58
    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMinimized(I)Z

    move-result v3

    if-eqz v3, :cond_183

    .line 1616
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_6e

    .line 1617
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    .line 1619
    :cond_6e
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1620
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const v4, 0x10805ec

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1628
    :goto_80
    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isPinup(I)Z

    move-result v3

    if-eqz v3, :cond_19a

    .line 1629
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPinupButton:Landroid/widget/ImageButton;

    const v4, 0x10805d0

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1635
    :goto_8e
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->needsMultiWindowPadding()Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 1636
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->calculatePaddingRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 1637
    .local v1, "paddingRect":Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setDecorPadding(IIII)V

    .line 1660
    .end local v1    # "paddingRect":Landroid/graphics/Rect;
    :cond_a3
    :goto_a3
    invoke-static {p1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isScaleWindow(I)Z

    move-result v3

    if-eqz v3, :cond_1d7

    .line 1661
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    if-eqz v3, :cond_bb

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTitleBarHeight:I

    if-eqz v3, :cond_bb

    .line 1662
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1663
    .local v2, "viewgroupLp":Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTitleBarHeight:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1676
    .end local v2    # "viewgroupLp":Landroid/view/ViewGroup$LayoutParams;
    :cond_bb
    :goto_bb
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1677
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor2:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1678
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1679
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor3:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1680
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mExitButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1681
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/sec/multiwindow/impl/BorderFrameLayout;

    invoke-virtual {v3, v8}, Landroid/sec/multiwindow/impl/BorderFrameLayout;->setBorderEnable(Z)V

    .line 1682
    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMultiWindow(I)Z

    move-result v3

    if-eqz v3, :cond_23a

    .line 1684
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPinupButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1685
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor1:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1686
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1687
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor4:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1688
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaximizeButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1689
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor5:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1691
    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isCascadeWindow(I)Z

    move-result v3

    if-eqz v3, :cond_1e2

    .line 1692
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1693
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor4:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1694
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1695
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor3:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1696
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1697
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowIconic:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1698
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isNoTitleBar(I)Z

    move-result v3

    if-nez v3, :cond_130

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsNoTitleBar:Z

    if-nez v3, :cond_130

    .line 1699
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/sec/multiwindow/impl/BorderFrameLayout;

    invoke-virtual {v3, v9}, Landroid/sec/multiwindow/impl/BorderFrameLayout;->setBorderEnable(Z)V

    .line 1701
    :cond_130
    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->showTitleBar(Z)V

    .line 1735
    :goto_133
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsFreestyleOnly:Z

    if-eqz v3, :cond_141

    .line 1736
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaximizeButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1737
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor5:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1740
    :cond_141
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_MINIMIZED_BUTTON:Z

    if-nez v3, :cond_154

    .line 1741
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor2:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1742
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1743
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1746
    :cond_154
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_EXIT_BUTTON:Z

    if-nez v3, :cond_162

    .line 1747
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor5:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1748
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mExitButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1751
    :cond_162
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_PINUP_BUTTON:Z

    if-nez v3, :cond_170

    .line 1752
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPinupButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1753
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor1:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1756
    :cond_170
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    if-eqz v3, :cond_262

    .line 1757
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_TITLEBAR_GESTURE_TRIGGER:Z

    if-eqz v3, :cond_39

    .line 1758
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMultiWindow(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/gesture/GestureOverlayView;->setEnabled(Z)V

    goto/16 :goto_39

    .line 1622
    :cond_183
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_190

    .line 1623
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1624
    iput-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    .line 1626
    :cond_190
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const v4, 0x10805ed

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_80

    .line 1632
    :cond_19a
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPinupButton:Landroid/widget/ImageButton;

    const v4, 0x10805cf

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_8e

    .line 1640
    :cond_1a4
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->windowIsTranslucent(I)Z

    move-result v3

    if-nez v3, :cond_39

    .line 1644
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isNoTitleBar(I)Z

    move-result v3

    if-nez v3, :cond_39

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    if-eqz v3, :cond_39

    .line 1648
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1c1

    .line 1649
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1650
    iput-object v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    .line 1653
    :cond_1c1
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1ca

    .line 1654
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1656
    :cond_1ca
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const v4, 0x10805ea

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1657
    invoke-virtual {p0, v8, v8, v8, v8}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setDecorPadding(IIII)V

    goto/16 :goto_a3

    .line 1666
    :cond_1d7
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1667
    .restart local v2    # "viewgroupLp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, -0x2

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_bb

    .line 1702
    .end local v2    # "viewgroupLp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1e2
    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMinimized(I)Z

    move-result v3

    if-eqz v3, :cond_22e

    .line 1703
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPinupButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1704
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor1:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1705
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1706
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor2:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1707
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1708
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor3:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1709
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1710
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor4:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1711
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaximizeButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1712
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor5:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1713
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mExitButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1715
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1716
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowIconic:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1717
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->requestHideTitleBar()V

    goto/16 :goto_133

    .line 1719
    :cond_22e
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1720
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_133

    .line 1724
    :cond_23a
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mPinupButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1725
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor1:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1726
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1727
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor4:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1728
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMaximizeButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1729
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDividor5:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1731
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowIconic:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1732
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->requestHideTitleBar()V

    goto/16 :goto_133

    .line 1760
    :cond_262
    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isCascadeWindow(I)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 1761
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/sec/multiwindow/impl/BorderFrameLayout;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/sec/multiwindow/impl/BorderFrameLayout;->removeView(Landroid/view/View;)V

    .line 1762
    new-instance v3, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GhostGestureOverlayView;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    .line 1763
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/gesture/GestureOverlayView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1764
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    new-instance v4, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;

    invoke-direct {v4, p0, v10}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$GesturesProcessor;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1;)V

    invoke-virtual {v3, v4}, Landroid/gesture/GestureOverlayView;->addOnGestureListener(Landroid/gesture/GestureOverlayView$OnGestureListener;)V

    .line 1765
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    invoke-virtual {v3, v8}, Landroid/gesture/GestureOverlayView;->setGestureVisible(Z)V

    .line 1766
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    invoke-virtual {v3, v9}, Landroid/gesture/GestureOverlayView;->setByPassingMode(Z)V

    .line 1767
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowContentFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/gesture/GestureOverlayView;->addView(Landroid/view/View;)V

    .line 1768
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mBorderFrame:Landroid/sec/multiwindow/impl/BorderFrameLayout;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    invoke-virtual {v3, v4}, Landroid/sec/multiwindow/impl/BorderFrameLayout;->addView(Landroid/view/View;)V

    .line 1769
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mGestureView:Landroid/gesture/GestureOverlayView;

    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMultiWindow(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/gesture/GestureOverlayView;->setEnabled(Z)V

    goto/16 :goto_39
.end method

.method setDisplayStub(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V
    .registers 2
    .param p1, "e"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    .prologue
    .line 3140
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDisplayStub:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    .line 3141
    return-void
.end method

.method public setExitListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;)Z
    .registers 3
    .param p1, "listener"    # Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    .prologue
    .line 3134
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    .line 3135
    const/4 v0, 0x1

    return v0
.end method

.method public setMinimizeIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3122
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    .line 3123
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    .line 3124
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowIconic:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3126
    :cond_d
    return-void
.end method

.method public setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;)Z
    .registers 3
    .param p1, "listener"    # Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    .prologue
    .line 3129
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    .line 3130
    const/4 v0, 0x1

    return v0
.end method

.method setTouchReceiver(Z)V
    .registers 6
    .param p1, "flag"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1575
    if-eqz p1, :cond_19

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTouchBroadcastReceiver:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;

    if-nez v1, :cond_19

    .line 1576
    new-instance v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;

    invoke-direct {v0, p0, v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$1;)V

    .line 1577
    .local v0, "mTouchBroadcastReceiver":Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.sec.multiwindow.MW_TOUCH_DETECTED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1583
    .end local v0    # "mTouchBroadcastReceiver":Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;
    :cond_18
    :goto_18
    return-void

    .line 1579
    :cond_19
    if-nez p1, :cond_18

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTouchBroadcastReceiver:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;

    if-eqz v1, :cond_18

    .line 1580
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTouchBroadcastReceiver:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1581
    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTouchBroadcastReceiver:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$TouchBroadcastReceiver;

    goto :goto_18
.end method

.method setWindowParams(I)V
    .registers 3
    .param p1, "windowMode"    # I

    .prologue
    .line 1369
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setWindowParams(II)V

    .line 1370
    return-void
.end method

.method setWindowParams(II)V
    .registers 16
    .param p1, "windowMode"    # I
    .param p2, "windowInfoChanged"    # I

    .prologue
    .line 1373
    const/4 v2, 0x0

    .line 1374
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v4, 0x0

    .line 1376
    .local v4, "p":Landroid/view/WindowManager$LayoutParams;
    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    if-eqz v9, :cond_c

    .line 1377
    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1380
    :cond_c
    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    if-eqz v9, :cond_22

    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    if-eqz v9, :cond_22

    .line 1381
    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 1384
    :cond_22
    if-eqz v4, :cond_26

    if-nez v2, :cond_2e

    .line 1385
    :cond_26
    const-string v9, "MultiPhoneWindowEvent"

    const-string v10, "setWindowParams: could not get windowLayoutParam."

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    :cond_2d
    :goto_2d
    return-void

    .line 1389
    :cond_2e
    iget v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLastWindowMode:I

    if-eq v9, p1, :cond_5a

    .line 1390
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mLastWindowMode:I

    .line 1391
    iget-object v9, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v9, :cond_5a

    iget-object v9, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-eqz v9, :cond_5a

    .line 1392
    const-string v9, "MultiPhoneWindowEvent"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setWindowParams: token is null!!!! so replaced with "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    iget-object v9, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iput-object v9, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1397
    :cond_5a
    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    if-nez v9, :cond_72

    sget-boolean v9, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsFillWindow:Z

    if-eqz v9, :cond_72

    .line 1398
    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    invoke-virtual {v9}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1399
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_72

    instance-of v9, v0, Landroid/app/Activity;

    if-eqz v9, :cond_72

    .line 1400
    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    .line 1404
    :cond_72
    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    if-nez v9, :cond_7e

    .line 1405
    const-string v9, "MultiPhoneWindowEvent"

    const-string v10, "setWindowParams: could not set windowLayoutParam."

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 1409
    :cond_7e
    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMultiWindow(I)Z

    move-result v9

    if-eqz v9, :cond_1a3

    .line 1410
    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getWindowInfo()Landroid/os/Bundle;

    move-result-object v8

    .line 1411
    .local v8, "winInfo":Landroid/os/Bundle;
    invoke-virtual {v8}, Landroid/os/Bundle;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2d

    .line 1415
    invoke-direct {p0, p1, v8, p2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->getCurrentRect(ILandroid/os/Bundle;I)Landroid/graphics/Rect;

    move-result-object v3

    .line 1418
    .local v3, "newSize":Landroid/graphics/Rect;
    iget v9, v3, Landroid/graphics/Rect;->left:I

    iput v9, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1419
    iget v9, v3, Landroid/graphics/Rect;->top:I

    iput v9, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1420
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v9

    iput v9, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1421
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v9

    iput v9, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1423
    const/16 v9, 0x33

    iput v9, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1425
    iget v9, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v10, -0x10403

    and-int/2addr v9, v10

    iput v9, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1428
    iget v9, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v9, v9, 0x320

    iput v9, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1432
    const/16 v9, 0x33

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1434
    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v10, -0x10403

    and-int/2addr v9, v10

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1437
    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v9, v9, 0x320

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1441
    invoke-static {p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->isMinimized(I)Z

    move-result v9

    if-eqz v9, :cond_188

    .line 1442
    iget v9, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v9, v9, 0x8

    iput v9, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1443
    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v9, v9, 0x8

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1453
    :cond_de
    :goto_de
    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.facebook.katana"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_102

    .line 1454
    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/Display;->setupFacekSize(ZII)V

    .line 1457
    :cond_102
    invoke-static {p1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isScaleWindow(I)Z

    move-result v9

    if-eqz v9, :cond_19c

    .line 1458
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1459
    .local v1, "fullScreenSize":Landroid/graphics/Point;
    const/4 v5, 0x0

    .line 1460
    .local v5, "scaleWindowHeight":I
    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1461
    iget v5, v1, Landroid/graphics/Point;->y:I

    .line 1462
    iget v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    and-int/lit16 v9, v9, 0x400

    if-nez v9, :cond_126

    .line 1463
    iget v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mStatusBarHeight:I

    sub-int/2addr v5, v9

    .line 1465
    :cond_126
    and-int/lit8 v9, p1, 0xf

    if-nez v9, :cond_132

    const/high16 v9, 0x80000

    and-int/2addr v9, p1

    if-nez v9, :cond_132

    .line 1467
    iget v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mTitleBarHeight:I

    add-int/2addr v5, v9

    .line 1469
    :cond_132
    iget v9, v1, Landroid/graphics/Point;->x:I

    iput v9, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1470
    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1471
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    iget v10, v1, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    const/high16 v10, 0x42c80000

    mul-float/2addr v9, v10

    float-to-int v6, v9

    .line 1472
    .local v6, "tempHScale":I
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    int-to-float v10, v5

    div-float/2addr v9, v10

    const/high16 v10, 0x42c80000

    mul-float/2addr v9, v10

    float-to-int v7, v9

    .line 1473
    .local v7, "tempVScale":I
    int-to-float v9, v6

    const/high16 v10, 0x42c80000

    div-float/2addr v9, v10

    iput v9, v4, Landroid/view/WindowManager$LayoutParams;->hScale:F

    .line 1474
    int-to-float v9, v7

    const/high16 v10, 0x42c80000

    div-float/2addr v9, v10

    iput v9, v4, Landroid/view/WindowManager$LayoutParams;->vScale:F

    .line 1511
    .end local v1    # "fullScreenSize":Landroid/graphics/Point;
    .end local v3    # "newSize":Landroid/graphics/Rect;
    .end local v5    # "scaleWindowHeight":I
    .end local v6    # "tempHScale":I
    .end local v7    # "tempVScale":I
    .end local v8    # "winInfo":Landroid/os/Bundle;
    :cond_15c
    :goto_15c
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsHideFlashBarTray:Z

    if-eqz v9, :cond_167

    .line 1512
    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v10, 0x4000000

    or-int/2addr v9, v10

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1515
    :cond_167
    iget v9, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v10, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v9, v10, :cond_177

    .line 1516
    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v4, v10}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;Z)V

    .line 1519
    :cond_177
    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mOwner:Landroid/view/Window;

    const/4 v10, 0x0

    invoke-virtual {v9, v2, v10}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;Z)V

    .line 1521
    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDisplayStub:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    if-eqz v9, :cond_2d

    .line 1522
    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mDisplayStub:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-virtual {v9, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->setWindowParams(I)V

    goto/16 :goto_2d

    .line 1445
    .restart local v3    # "newSize":Landroid/graphics/Rect;
    .restart local v8    # "winInfo":Landroid/os/Bundle;
    :cond_188
    iget v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    and-int/lit8 v9, v9, 0x8

    if-nez v9, :cond_de

    .line 1446
    iget v9, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v9, v9, -0x9

    iput v9, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1447
    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v9, v9, -0x9

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto/16 :goto_de

    .line 1476
    :cond_19c
    const/4 v9, 0x0

    iput v9, v4, Landroid/view/WindowManager$LayoutParams;->hScale:F

    .line 1477
    const/4 v9, 0x0

    iput v9, v4, Landroid/view/WindowManager$LayoutParams;->vScale:F

    goto :goto_15c

    .line 1480
    .end local v3    # "newSize":Landroid/graphics/Rect;
    .end local v8    # "winInfo":Landroid/os/Bundle;
    :cond_1a3
    const/4 v9, 0x0

    iput v9, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1481
    const/4 v9, 0x0

    iput v9, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1482
    const/4 v9, -0x1

    iput v9, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1483
    const/4 v9, -0x1

    iput v9, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1484
    const/4 v9, 0x0

    iput v9, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1486
    const/4 v9, 0x0

    iput v9, v4, Landroid/view/WindowManager$LayoutParams;->hScale:F

    .line 1487
    const/4 v9, 0x0

    iput v9, v4, Landroid/view/WindowManager$LayoutParams;->vScale:F

    .line 1489
    iget v9, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v10, -0x10321

    and-int/2addr v9, v10

    iput v9, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1494
    iget v9, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    or-int/2addr v9, v10

    iput v9, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1496
    const/4 v9, 0x0

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1497
    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v10, -0x10321

    and-int/2addr v9, v10

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1502
    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v10, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mUserWindowFlags:I

    or-int/2addr v9, v10

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1506
    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.facebook.katana"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_15c

    .line 1507
    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/Display;->setupFacekSize(ZII)V

    goto/16 :goto_15c
.end method

.method public showTitleBar(Z)V
    .registers 6
    .param p1, "isCascadeWindow"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000

    .line 3155
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowMode()I

    move-result v0

    invoke-static {v0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isMinimized(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3177
    :goto_10
    return-void

    .line 3159
    :cond_11
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mH:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$H;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$H;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3160
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mH:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$H;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$H;->removeMessages(I)V

    .line 3163
    :cond_1e
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->ENABLED_OVERLAY_TITLEBAR:Z

    if-eqz v0, :cond_4a

    .line 3164
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3165
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3166
    if-eqz p1, :cond_38

    .line 3167
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_10

    .line 3169
    :cond_38
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 3170
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->requestHideTitleBar()V

    goto :goto_10

    .line 3172
    :cond_4a
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mIsNoTitleBar:Z

    if-eqz v0, :cond_56

    .line 3173
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10

    .line 3175
    :cond_56
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10
.end method
