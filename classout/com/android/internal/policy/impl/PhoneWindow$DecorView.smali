.class final Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
.super Landroid/widget/FrameLayout;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/view/RootViewSurfaceTaker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DecorView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PhoneWindow$DecorView$ActionModeCallbackWrapper;
    }
.end annotation


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mActionModePopup:Landroid/widget/PopupWindow;

.field private mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

.field private final mBackgroundPadding:Landroid/graphics/Rect;

.field private mChanging:Z

.field mDefaultOpacity:I

.field private mDisableSpenGesture:I

.field private mDownY:I

.field private final mDrawingBounds:Landroid/graphics/Rect;

.field private final mFeatureId:I

.field private final mFrameOffsets:Landroid/graphics/Rect;

.field private final mFramePadding:Landroid/graphics/Rect;

.field private mGravityOfSwitchToPreviousSizeButton:I

.field private mIsFirstTouch:Z

.field private mIsLongClick:Z

.field private mMenuBackground:Landroid/graphics/drawable/Drawable;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mShowActionModePopup:Ljava/lang/Runnable;

.field private mShowSwitchToPreviousSizeButton:Ljava/lang/Runnable;

.field private mSupportedPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchToPreviousSizeButtonHeight:I

.field private mSwitchToPreviousSizeButtonWidth:I

.field private mWatchingForMenu:Z

.field private mXLocationOfSwitchToPreviousSizeButton:I

.field private mXOffsetOfSwitchToPreviousSizeButton:I

.field private mXOffsetTouch:I

.field private mYLocationOfSwitchToPreviousSizeButton:I

.field private mYOffsetOfSwitchToPreviousSizeButton:I

.field private mYOffsetTouch:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/content/Context;I)V
    .registers 7
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "featureId"    # I

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 2175
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    .line 2176
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2129
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mDefaultOpacity:I

    .line 2134
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mDrawingBounds:Landroid/graphics/Rect;

    .line 2136
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 2138
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    .line 2140
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    .line 2154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mShowSwitchToPreviousSizeButton:Ljava/lang/Runnable;

    .line 2155
    const/16 v0, 0x55

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mGravityOfSwitchToPreviousSizeButton:I

    .line 2156
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mXOffsetOfSwitchToPreviousSizeButton:I

    .line 2157
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mYOffsetOfSwitchToPreviousSizeButton:I

    .line 2172
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mDisableSpenGesture:I

    .line 2177
    iput p3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    .line 2180
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "disable_pen_gesture"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mDisableSpenGesture:I

    .line 2182
    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .prologue
    .line 2128
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/widget/PopupWindow;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .prologue
    .line 2128
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .prologue
    .line 2128
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .prologue
    .line 2128
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mIsLongClick:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    .param p1, "x1"    # Z

    .prologue
    .line 2128
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mIsLongClick:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .prologue
    .line 2128
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mIsFirstTouch:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    .param p1, "x1"    # Z

    .prologue
    .line 2128
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mIsFirstTouch:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .prologue
    .line 2128
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mXOffsetTouch:I

    return v0
.end method

.method static synthetic access$2902(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    .param p1, "x1"    # I

    .prologue
    .line 2128
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mXOffsetTouch:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .prologue
    .line 2128
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getWindowMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .prologue
    .line 2128
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mXLocationOfSwitchToPreviousSizeButton:I

    return v0
.end method

.method static synthetic access$3002(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    .param p1, "x1"    # I

    .prologue
    .line 2128
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mXLocationOfSwitchToPreviousSizeButton:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .prologue
    .line 2128
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mYOffsetTouch:I

    return v0
.end method

.method static synthetic access$3102(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    .param p1, "x1"    # I

    .prologue
    .line 2128
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mYOffsetTouch:I

    return p1
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .prologue
    .line 2128
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mYLocationOfSwitchToPreviousSizeButton:I

    return v0
.end method

.method static synthetic access$3202(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    .param p1, "x1"    # I

    .prologue
    .line 2128
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mYLocationOfSwitchToPreviousSizeButton:I

    return p1
.end method

.method static synthetic access$3400(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .prologue
    .line 2128
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mScreenWidth:I

    return v0
.end method

.method static synthetic access$3600(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .prologue
    .line 2128
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mScreenHeight:I

    return v0
.end method

.method static synthetic access$3700(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .prologue
    .line 2128
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mSwitchToPreviousSizeButtonWidth:I

    return v0
.end method

.method static synthetic access$3800(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .prologue
    .line 2128
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mSwitchToPreviousSizeButtonHeight:I

    return v0
.end method

.method static synthetic access$3900(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .prologue
    .line 2128
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mGravityOfSwitchToPreviousSizeButton:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/view/ActionMode;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .prologue
    .line 2128
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .prologue
    .line 2128
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mXOffsetOfSwitchToPreviousSizeButton:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 2128
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .prologue
    .line 2128
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mYOffsetOfSwitchToPreviousSizeButton:I

    return v0
.end method

.method static synthetic access$4200(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .prologue
    .line 2128
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mShowActionModePopup:Ljava/lang/Runnable;

    return-object v0
.end method

.method private drawableChanged()V
    .registers 12

    .prologue
    const/4 v10, -0x1

    .line 2862
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mChanging:Z

    if-eqz v5, :cond_6

    .line 2920
    :cond_5
    :goto_5
    return-void

    .line 2866
    :cond_6
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setPadding(IIII)V

    .line 2869
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->requestLayout()V

    .line 2870
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->invalidate()V

    .line 2872
    const/4 v4, -0x1

    .line 2879
    .local v4, "opacity":I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2880
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2881
    .local v2, "fg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_44

    .line 2882
    if-nez v2, :cond_50

    .line 2883
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v4

    .line 2916
    :cond_44
    :goto_44
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mDefaultOpacity:I

    .line 2917
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v5, :cond_5

    .line 2918
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindow;->setDefaultWindowFormat(I)V
    invoke-static {v5, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1800(Lcom/android/internal/policy/impl/PhoneWindow;I)V

    goto :goto_5

    .line 2884
    :cond_50
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-gtz v5, :cond_83

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-gtz v5, :cond_83

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-gtz v5, :cond_83

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-gtz v5, :cond_83

    .line 2888
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    .line 2889
    .local v3, "fop":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    .line 2892
    .local v1, "bop":I
    if-eq v3, v10, :cond_74

    if-ne v1, v10, :cond_76

    .line 2893
    :cond_74
    const/4 v4, -0x1

    goto :goto_44

    .line 2894
    :cond_76
    if-nez v3, :cond_7a

    .line 2895
    move v4, v1

    goto :goto_44

    .line 2896
    :cond_7a
    if-nez v1, :cond_7e

    .line 2897
    move v4, v3

    goto :goto_44

    .line 2899
    :cond_7e
    invoke-static {v3, v1}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v4

    goto :goto_44

    .line 2907
    .end local v1    # "bop":I
    .end local v3    # "fop":I
    :cond_83
    const/4 v4, -0x3

    goto :goto_44
.end method

.method private fillSupportedPackageName()V
    .registers 3

    .prologue
    .line 3266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mSupportedPackages:Ljava/util/ArrayList;

    .line 3267
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mSupportedPackages:Ljava/util/ArrayList;

    const-string v1, "com.android.chrome"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3268
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mSupportedPackages:Ljava/util/ArrayList;

    const-string v1, "com.google.android.gm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3272
    return-void
.end method

.method private getWindowMode()I
    .registers 10

    .prologue
    .line 3237
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 3238
    .local v3, "ctx":Landroid/content/Context;
    instance-of v7, v3, Landroid/app/Activity;

    if-nez v7, :cond_12

    instance-of v7, v3, Landroid/content/ContextWrapper;

    if-eqz v7, :cond_12

    .line 3239
    check-cast v3, Landroid/content/ContextWrapper;

    .end local v3    # "ctx":Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    .line 3240
    .restart local v3    # "ctx":Landroid/content/Context;
    :cond_12
    instance-of v7, v3, Landroid/app/Activity;

    if-eqz v7, :cond_3b

    .line 3242
    :try_start_16
    move-object v0, v3

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .line 3243
    .local v1, "activity":Landroid/app/Activity;
    const-string v7, "android.app.Activity"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 3244
    .local v2, "cl":Ljava/lang/Class;
    const-string v7, "getWindowMode"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 3245
    .local v6, "sGetWindowModeMethod":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 3246
    .local v5, "ret":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_35
    .catch Ljava/lang/ClassNotFoundException; {:try_start_16 .. :try_end_35} :catch_37
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_35} :catch_3e
    .catch Ljava/lang/IllegalAccessException; {:try_start_16 .. :try_end_35} :catch_43
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_16 .. :try_end_35} :catch_48
    .catch Ljava/lang/NoSuchMethodException; {:try_start_16 .. :try_end_35} :catch_4d

    move-result v7

    .line 3259
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v2    # "cl":Ljava/lang/Class;
    .end local v5    # "ret":Ljava/lang/Integer;
    .end local v6    # "sGetWindowModeMethod":Ljava/lang/reflect/Method;
    :goto_36
    return v7

    .line 3247
    :catch_37
    move-exception v4

    .line 3248
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v4}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 3259
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :cond_3b
    :goto_3b
    sget v7, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_NORMAL:I

    goto :goto_36

    .line 3249
    :catch_3e
    move-exception v4

    .line 3250
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3b

    .line 3251
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :catch_43
    move-exception v4

    .line 3252
    .local v4, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_3b

    .line 3253
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :catch_48
    move-exception v4

    .line 3254
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_3b

    .line 3255
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_4d
    move-exception v4

    .line 3256
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v4}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_3b
.end method

.method private isOutOfBounds(II)Z
    .registers 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, -0x5

    .line 2343
    if-lt p1, v0, :cond_15

    if-lt p2, v0, :cond_15

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-gt p1, v0, :cond_15

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-le p2, v0, :cond_17

    :cond_15
    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method


# virtual methods
.method public addSwitchToPreviousSizeButton()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 3074
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mMultiPhoneWindowEvent:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2000(Lcom/android/internal/policy/impl/PhoneWindow;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_20

    .line 3075
    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mSwitchToPreviousSizeButton:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2500()Landroid/widget/PopupWindow;

    move-result-object v4

    if-eqz v4, :cond_20

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mSwitchToPreviousSizeButton:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2500()Landroid/widget/PopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 3077
    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mSwitchToPreviousSizeButton:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2500()Landroid/widget/PopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_20} :catch_dd
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_da

    .line 3087
    :cond_20
    :goto_20
    :try_start_20
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mMultiPhoneWindowEvent:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2000(Lcom/android/internal/policy/impl/PhoneWindow;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_53

    .line 3088
    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->sMultiPhoneWindowEventClass:Ljava/lang/Class;
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2600()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getSwitchToPreviousSizeWindow"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 3090
    .local v3, "sGetSwitchToPreviousSizeWindowMethod":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mMultiPhoneWindowEvent:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2000(Lcom/android/internal/policy/impl/PhoneWindow;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/PopupWindow;

    # setter for: Lcom/android/internal/policy/impl/PhoneWindow;->mSwitchToPreviousSizeButton:Landroid/widget/PopupWindow;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2502(Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    :try_end_53
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_53} :catch_a7
    .catch Ljava/lang/IllegalAccessException; {:try_start_20 .. :try_end_53} :catch_ac
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_20 .. :try_end_53} :catch_b1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_20 .. :try_end_53} :catch_b6
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_53} :catch_bb

    .line 3105
    .end local v3    # "sGetSwitchToPreviousSizeWindowMethod":Ljava/lang/reflect/Method;
    :cond_53
    :goto_53
    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mSwitchToPreviousSizeButton:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2500()Landroid/widget/PopupWindow;

    move-result-object v4

    if-eqz v4, :cond_d2

    .line 3106
    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mSwitchToPreviousSizeButton:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2500()Landroid/widget/PopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    move-object v2, v4

    check-cast v2, Landroid/widget/FrameLayout;

    .line 3107
    .local v2, "popupContainer":Landroid/widget/FrameLayout;
    if-eqz v2, :cond_c0

    invoke-virtual {v2, v9}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3108
    .local v0, "button":Landroid/view/View;
    :goto_6c
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mIsLongClick:Z

    .line 3109
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mIsFirstTouch:Z

    .line 3110
    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mSwitchToPreviousSizeButton:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2500()Landroid/widget/PopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mSwitchToPreviousSizeButtonWidth:I

    .line 3111
    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mSwitchToPreviousSizeButton:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2500()Landroid/widget/PopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mSwitchToPreviousSizeButtonHeight:I

    .line 3112
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mScreenWidth:I

    .line 3113
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mScreenHeight:I

    .line 3115
    if-nez v0, :cond_c2

    .line 3210
    .end local v0    # "button":Landroid/view/View;
    .end local v2    # "popupContainer":Landroid/widget/FrameLayout;
    :goto_a6
    return-void

    .line 3093
    :catch_a7
    move-exception v1

    .line 3094
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_53

    .line 3095
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_ac
    move-exception v1

    .line 3096
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_53

    .line 3097
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_b1
    move-exception v1

    .line 3098
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_53

    .line 3099
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_b6
    move-exception v1

    .line 3100
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_53

    .line 3101
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_bb
    move-exception v1

    .line 3102
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_53

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "popupContainer":Landroid/widget/FrameLayout;
    :cond_c0
    move-object v0, v2

    .line 3107
    goto :goto_6c

    .line 3117
    .restart local v0    # "button":Landroid/view/View;
    :cond_c2
    new-instance v4, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;-><init>(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3165
    new-instance v4, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$3;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$3;-><init>(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3178
    .end local v0    # "button":Landroid/view/View;
    .end local v2    # "popupContainer":Landroid/widget/FrameLayout;
    :cond_d2
    new-instance v4, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$4;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$4;-><init>(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mShowSwitchToPreviousSizeButton:Ljava/lang/Runnable;

    goto :goto_a6

    .line 3082
    :catch_da
    move-exception v4

    goto/16 :goto_20

    .line 3080
    :catch_dd
    move-exception v4

    goto/16 :goto_20
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2287
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2288
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_19

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v1, :cond_19

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_18
    return v1

    :cond_19
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_18
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 11
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2186
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 2187
    .local v4, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2188
    .local v0, "action":I
    if-nez v0, :cond_2c

    move v3, v5

    .line 2190
    .local v3, "isDown":Z
    :goto_d
    if-eqz v3, :cond_4e

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-nez v7, :cond_4e

    .line 2193
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindow;->access$700(Lcom/android/internal/policy/impl/PhoneWindow;)I

    move-result v7

    if-lez v7, :cond_2e

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindow;->access$700(Lcom/android/internal/policy/impl/PhoneWindow;)I

    move-result v7

    if-eq v7, v4, :cond_2e

    .line 2194
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 2195
    .local v2, "handled":Z
    if-eqz v2, :cond_2e

    .line 2227
    .end local v2    # "handled":Z
    :cond_2b
    :goto_2b
    return v5

    .end local v3    # "isDown":Z
    :cond_2c
    move v3, v6

    .line 2188
    goto :goto_d

    .line 2202
    .restart local v3    # "isDown":Z
    :cond_2e
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindow;->access$800(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v7

    if-eqz v7, :cond_4e

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindow;->access$800(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v7, :cond_4e

    .line 2203
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PhoneWindow;->access$800(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v8

    # invokes: Lcom/android/internal/policy/impl/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    invoke-static {v7, v8, v4, p1, v6}, Lcom/android/internal/policy/impl/PhoneWindow;->access$900(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v6

    if-nez v6, :cond_2b

    .line 2209
    :cond_4e
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v6

    if-nez v6, :cond_68

    .line 2210
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    .line 2211
    .local v1, "cb":Landroid/view/Window$Callback;
    if-eqz v1, :cond_8f

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v6, :cond_8f

    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 2213
    .restart local v2    # "handled":Z
    :goto_66
    if-nez v2, :cond_2b

    .line 2219
    .end local v1    # "cb":Landroid/view/Window$Callback;
    .end local v2    # "handled":Z
    :cond_68
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v6

    if-eqz v6, :cond_80

    .line 2220
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/PhoneWindow;->getSamsungZoomKeyController()Lcom/android/internal/policy/impl/sec/SamsungZoomKeyController;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/PhoneWindow;->getVolumeControlStream()I

    move-result v7

    invoke-virtual {v6, p1, v7}, Lcom/android/internal/policy/impl/sec/SamsungZoomKeyController;->handleKeyEvent(Landroid/view/KeyEvent;I)Z

    move-result v6

    if-nez v6, :cond_2b

    .line 2227
    :cond_80
    if-eqz v3, :cond_94

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {v5, v6, v7, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->onKeyDown(IILandroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_2b

    .line 2211
    .restart local v1    # "cb":Landroid/view/Window$Callback;
    :cond_8f
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_66

    .line 2227
    .end local v1    # "cb":Landroid/view/Window$Callback;
    :cond_94
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {v5, v6, v7, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->onKeyUp(IILandroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_2b
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 10
    .param p1, "ev"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2235
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindow;->access$800(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v5

    if-eqz v5, :cond_2d

    .line 2236
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v6}, Lcom/android/internal/policy/impl/PhoneWindow;->access$800(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    # invokes: Lcom/android/internal/policy/impl/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    invoke-static {v5, v6, v7, p1, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->access$900(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v1

    .line 2238
    .local v1, "handled":Z
    if-eqz v1, :cond_2d

    .line 2239
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$800(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 2240
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$800(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v4

    iput-boolean v3, v4, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 2268
    :cond_2c
    :goto_2c
    return v3

    .line 2247
    .end local v1    # "handled":Z
    :cond_2d
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2248
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_6a

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v5

    if-nez v5, :cond_6a

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v5, :cond_6a

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 2250
    .restart local v1    # "handled":Z
    :goto_45
    if-nez v1, :cond_2c

    .line 2258
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindow;->access$800(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v5

    if-nez v5, :cond_68

    .line 2259
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v5, v4, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1000(Lcom/android/internal/policy/impl/PhoneWindow;IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 2260
    .local v2, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v5, v2, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 2261
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    # invokes: Lcom/android/internal/policy/impl/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    invoke-static {v5, v2, v6, p1, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->access$900(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v1

    .line 2263
    iput-boolean v4, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 2264
    if-nez v1, :cond_2c

    .end local v2    # "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_68
    move v3, v4

    .line 2268
    goto :goto_2c

    .line 2248
    .end local v1    # "handled":Z
    :cond_6a
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_45
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2478
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2479
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_18

    .line 2480
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2481
    const/4 v1, 0x1

    .line 2484
    :goto_17
    return v1

    :cond_18
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    goto :goto_17
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2273
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2274
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_19

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v1, :cond_19

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_18
    return v1

    :cond_19
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_18
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2280
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2281
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_19

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v1, :cond_19

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_18
    return v1

    :cond_19
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_18
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2616
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2618
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mMenuBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 2619
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mMenuBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2621
    :cond_c
    return-void
.end method

.method public finishChanging()V
    .registers 2

    .prologue
    .line 2816
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mChanging:Z

    .line 2817
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->drawableChanged()V

    .line 2818
    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .registers 3
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 2854
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2855
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 2856
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->drawableChanged()V

    .line 2858
    :cond_e
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 7

    .prologue
    .line 2946
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2948
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->updateWindowResizeState()V

    .line 2950
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2951
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1d

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_1d

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v2, :cond_1d

    .line 2952
    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    .line 2955
    :cond_1d
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_27

    .line 2963
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindow;->openPanelsAfterRestore()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1900(Lcom/android/internal/policy/impl/PhoneWindow;)V

    .line 2966
    :cond_27
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mMultiPhoneWindowEvent:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2000(Lcom/android/internal/policy/impl/PhoneWindow;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_44

    .line 2968
    :try_start_2f
    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->sOnAttachedFromWindow:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2100()Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mMultiPhoneWindowEvent:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2000(Lcom/android/internal/policy/impl/PhoneWindow;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2969
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindow;->checkSwitchToPreviousSizeButton()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2200(Lcom/android/internal/policy/impl/PhoneWindow;)V
    :try_end_44
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f .. :try_end_44} :catch_90
    .catch Ljava/lang/IllegalAccessException; {:try_start_2f .. :try_end_44} :catch_95
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2f .. :try_end_44} :catch_9a

    .line 2981
    :cond_44
    :goto_44
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->fillSupportedPackageName()V

    .line 2982
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mSupportedPackages:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8f

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_8f

    .line 2985
    const-string v2, "PhoneWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSmartScrollVisQ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2986
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    new-instance v3, Lcom/android/internal/widget/SmartScrollVisQ;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/internal/widget/SmartScrollVisQ;-><init>(Landroid/content/Context;Landroid/view/WindowManager;)V

    iput-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindow;->mSmartScrollVisQ:Lcom/android/internal/widget/SmartScrollVisQ;

    .line 2989
    :cond_8f
    return-void

    .line 2970
    :catch_90
    move-exception v1

    .line 2971
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_44

    .line 2972
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_95
    move-exception v1

    .line 2973
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_44

    .line 2974
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_9a
    move-exception v1

    .line 2975
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_44
.end method

.method public onCloseSystemDialogs(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 3045
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-ltz v0, :cond_9

    .line 3046
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->closeAllPanels()V

    .line 3048
    :cond_9
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 2993
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2995
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2996
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_13

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v3, :cond_13

    .line 2997
    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    .line 3000
    :cond_13
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1100(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/widget/ActionBarView;

    move-result-object v3

    if-eqz v3, :cond_24

    .line 3001
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1100(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/widget/ActionBarView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarView;->dismissPopupMenus()V

    .line 3004
    :cond_24
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_3d

    .line 3005
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3006
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 3007
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3009
    :cond_3a
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    .line 3012
    :cond_3d
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v3, v4, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1000(Lcom/android/internal/policy/impl/PhoneWindow;IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 3013
    .local v2, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_52

    iget-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v3, :cond_52

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v3, :cond_52

    .line 3014
    iget-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->close()V

    .line 3018
    :cond_52
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mMultiPhoneWindowEvent:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2000(Lcom/android/internal/policy/impl/PhoneWindow;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7c

    .line 3020
    :try_start_5a
    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->sOnDetachedFromWindow:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2300()Ljava/lang/reflect/Method;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mMultiPhoneWindowEvent:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2000(Lcom/android/internal/policy/impl/PhoneWindow;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3023
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2400(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-result-object v3

    if-eqz v3, :cond_7c

    .line 3024
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2400(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->refreshSwitchToPreviousSizeButton(Z)V
    :try_end_7c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5a .. :try_end_7c} :catch_8a
    .catch Ljava/lang/IllegalAccessException; {:try_start_5a .. :try_end_7c} :catch_8f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5a .. :try_end_7c} :catch_94

    .line 3037
    :cond_7c
    :goto_7c
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindow;->mSmartScrollVisQ:Lcom/android/internal/widget/SmartScrollVisQ;

    if-eqz v3, :cond_89

    .line 3038
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindow;->mSmartScrollVisQ:Lcom/android/internal/widget/SmartScrollVisQ;

    invoke-virtual {v3}, Lcom/android/internal/widget/SmartScrollVisQ;->removeSmartScrollVisQ()V

    .line 3041
    :cond_89
    return-void

    .line 3026
    :catch_8a
    move-exception v1

    .line 3027
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_7c

    .line 3028
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_8f
    move-exception v1

    .line 3029
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_7c

    .line 3030
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_94
    move-exception v1

    .line 3031
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_7c
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2351
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_21

    .line 2352
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "input_method"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 2354
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v8

    if-ne v8, v10, :cond_34

    .line 2355
    invoke-virtual {v2, v6}, Landroid/view/inputmethod/InputMethodManager;->setWACOMPen(Z)V

    .line 2356
    # setter for: Lcom/android/internal/policy/impl/PhoneWindow;->penState:Z
    invoke-static {v6}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1202(Z)Z

    .line 2366
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_21
    :goto_21
    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mDisableSpenGesture:I

    if-nez v8, :cond_41

    .line 2367
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v8

    if-ne v8, v10, :cond_41

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v8

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_41

    .line 2394
    :goto_33
    return v6

    .line 2358
    .restart local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_34
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v8

    if-eq v8, v10, :cond_21

    .line 2359
    invoke-virtual {v2, v7}, Landroid/view/inputmethod/InputMethodManager;->setWACOMPen(Z)V

    .line 2360
    # setter for: Lcom/android/internal/policy/impl/PhoneWindow;->penState:Z
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1202(Z)Z

    goto :goto_21

    .line 2374
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_41
    const/4 v3, 0x0

    .line 2375
    .local v3, "talkbackEnabled":Z
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "enabled_accessibility_services"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2377
    .local v0, "accesibilityService":Ljava/lang/String;
    if-eqz v0, :cond_56

    .line 2378
    const-string v8, "(?i).*talkback.*"

    invoke-virtual {v0, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    .line 2381
    :cond_56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 2382
    .local v1, "action":I
    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-ltz v8, :cond_7a

    .line 2383
    if-nez v1, :cond_7a

    .line 2384
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v4, v8

    .line 2385
    .local v4, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v5, v8

    .line 2386
    .local v5, "y":I
    invoke-direct {p0, v4, v5}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->isOutOfBounds(II)Z

    move-result v8

    if-eqz v8, :cond_7a

    if-nez v3, :cond_7a

    .line 2387
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(I)V

    goto :goto_33

    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_7a
    move v6, v7

    .line 2394
    goto :goto_33
.end method

.method protected onMeasure(II)V
    .registers 22
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 2533
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 2534
    .local v8, "metrics":Landroid/util/DisplayMetrics;
    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_ef

    const/4 v6, 0x1

    .line 2536
    .local v6, "isPortrait":Z
    :goto_1b
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 2537
    .local v15, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 2539
    .local v4, "heightMode":I
    const/4 v2, 0x0

    .line 2540
    .local v2, "fixedWidth":Z
    const/high16 v17, -0x80000000

    move/from16 v0, v17

    if-ne v15, v0, :cond_64

    .line 2541
    if-eqz v6, :cond_f2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v12, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 2542
    .local v12, "tvw":Landroid/util/TypedValue;
    :goto_36
    if-eqz v12, :cond_64

    iget v0, v12, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    if-eqz v17, :cond_64

    .line 2544
    iget v0, v12, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_fe

    .line 2545
    invoke-virtual {v12, v8}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v13, v0

    .line 2552
    .local v13, "w":I
    :goto_51
    if-lez v13, :cond_64

    .line 2553
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 2554
    .local v16, "widthSize":I
    move/from16 v0, v16

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v17

    const/high16 v18, 0x40000000

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 2556
    const/4 v2, 0x1

    .line 2561
    .end local v12    # "tvw":Landroid/util/TypedValue;
    .end local v13    # "w":I
    .end local v16    # "widthSize":I
    :cond_64
    const/high16 v17, -0x80000000

    move/from16 v0, v17

    if-ne v4, v0, :cond_a1

    .line 2562
    if-eqz v6, :cond_12c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 2563
    .local v11, "tvh":Landroid/util/TypedValue;
    :goto_76
    if-eqz v11, :cond_a1

    iget v0, v11, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    if-eqz v17, :cond_a1

    .line 2565
    iget v0, v11, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_138

    .line 2566
    invoke-virtual {v11, v8}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v3, v0

    .line 2573
    .local v3, "h":I
    :goto_91
    if-lez v3, :cond_a1

    .line 2574
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 2575
    .local v5, "heightSize":I
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v17

    const/high16 v18, 0x40000000

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 2581
    .end local v3    # "h":I
    .end local v5    # "heightSize":I
    .end local v11    # "tvh":Landroid/util/TypedValue;
    :cond_a1
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2583
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getMeasuredWidth()I

    move-result v14

    .line 2584
    .local v14, "width":I
    const/4 v7, 0x0

    .line 2586
    .local v7, "measure":Z
    const/high16 v17, 0x40000000

    move/from16 v0, v17

    invoke-static {v14, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 2588
    if-nez v2, :cond_e9

    const/high16 v17, -0x80000000

    move/from16 v0, v17

    if-ne v15, v0, :cond_e9

    .line 2589
    if-eqz v6, :cond_166

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v10, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    .line 2590
    .local v10, "tv":Landroid/util/TypedValue;
    :goto_c5
    iget v0, v10, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    if-eqz v17, :cond_e9

    .line 2592
    iget v0, v10, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_172

    .line 2593
    invoke-virtual {v10, v8}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v9, v0

    .line 2600
    .local v9, "min":I
    :goto_de
    if-ge v14, v9, :cond_e9

    .line 2601
    const/high16 v17, 0x40000000

    move/from16 v0, v17

    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 2602
    const/4 v7, 0x1

    .line 2609
    .end local v9    # "min":I
    .end local v10    # "tv":Landroid/util/TypedValue;
    :cond_e9
    if-eqz v7, :cond_ee

    .line 2610
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2612
    :cond_ee
    return-void

    .line 2534
    .end local v2    # "fixedWidth":Z
    .end local v4    # "heightMode":I
    .end local v6    # "isPortrait":Z
    .end local v7    # "measure":Z
    .end local v14    # "width":I
    .end local v15    # "widthMode":I
    :cond_ef
    const/4 v6, 0x0

    goto/16 :goto_1b

    .line 2541
    .restart local v2    # "fixedWidth":Z
    .restart local v4    # "heightMode":I
    .restart local v6    # "isPortrait":Z
    .restart local v15    # "widthMode":I
    :cond_f2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v12, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    goto/16 :goto_36

    .line 2546
    .restart local v12    # "tvw":Landroid/util/TypedValue;
    :cond_fe
    iget v0, v12, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_129

    .line 2547
    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v17

    move/from16 v0, v17

    float-to-int v13, v0

    .restart local v13    # "w":I
    goto/16 :goto_51

    .line 2549
    .end local v13    # "w":I
    :cond_129
    const/4 v13, 0x0

    .restart local v13    # "w":I
    goto/16 :goto_51

    .line 2562
    .end local v12    # "tvw":Landroid/util/TypedValue;
    .end local v13    # "w":I
    :cond_12c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    goto/16 :goto_76

    .line 2567
    .restart local v11    # "tvh":Landroid/util/TypedValue;
    :cond_138
    iget v0, v11, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_163

    .line 2568
    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v17

    move/from16 v0, v17

    float-to-int v3, v0

    .restart local v3    # "h":I
    goto/16 :goto_91

    .line 2570
    .end local v3    # "h":I
    :cond_163
    const/4 v3, 0x0

    .restart local v3    # "h":I
    goto/16 :goto_91

    .line 2589
    .end local v3    # "h":I
    .end local v11    # "tvh":Landroid/util/TypedValue;
    .restart local v7    # "measure":Z
    .restart local v14    # "width":I
    :cond_166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v10, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    goto/16 :goto_c5

    .line 2594
    .restart local v10    # "tv":Landroid/util/TypedValue;
    :cond_172
    iget v0, v10, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_19d

    .line 2595
    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v17

    move/from16 v0, v17

    float-to-int v9, v0

    .restart local v9    # "min":I
    goto/16 :goto_de

    .line 2597
    .end local v9    # "min":I
    :cond_19d
    const/4 v9, 0x0

    .restart local v9    # "min":I
    goto/16 :goto_de
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2339
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .registers 5
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 2924
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 2928
    if-nez p1, :cond_13

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$700(Lcom/android/internal/policy/impl/PhoneWindow;)I

    move-result v1

    if-eqz v1, :cond_13

    .line 2929
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(I)V

    .line 2932
    :cond_13
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2933
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_2a

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_2a

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v1, :cond_2a

    .line 2934
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 2936
    :cond_2a
    return-void
.end method

.method public refreshSwitchToPreviousSizeButton(Z)V
    .registers 6
    .param p1, "needToShow"    # Z

    .prologue
    .line 3213
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mShowSwitchToPreviousSizeButton:Ljava/lang/Runnable;

    if-eqz v2, :cond_74

    .line 3214
    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mSwitchToPreviousSizeButton:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2500()Landroid/widget/PopupWindow;

    move-result-object v2

    if-eqz v2, :cond_3e

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mSwitchToPreviousSizeButton:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2500()Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 3216
    :try_start_14
    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mSwitchToPreviousSizeButton:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2500()Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3217
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mIsLongClick:Z

    .line 3218
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mScreenWidth:I

    .line 3219
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mScreenHeight:I
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_3e} :catch_75

    .line 3224
    :cond_3e
    :goto_3e
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getWindowMode()I

    move-result v1

    .line 3225
    .local v1, "windowMode":I
    if-eqz p1, :cond_74

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mMultiPhoneWindowEvent:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2000(Lcom/android/internal/policy/impl/PhoneWindow;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_74

    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->mode(I)I

    move-result v2

    sget v3, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_FREESTYLE:I

    if-eq v2, v3, :cond_74

    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->option(I)I

    move-result v2

    sget v3, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_OPTION_COMMON_RESIZE:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_74

    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->option(I)I

    move-result v2

    sget v3, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_OPTION_COMMON_FORCE_TITLE_BAR:I

    and-int/2addr v2, v3

    if-nez v2, :cond_74

    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->option(I)I

    move-result v2

    sget v3, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_OPTION_COMMON_NO_TITLE_BAR:I

    and-int/2addr v2, v3

    if-nez v2, :cond_74

    .line 3231
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mShowSwitchToPreviousSizeButton:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->post(Ljava/lang/Runnable;)Z

    .line 3234
    .end local v1    # "windowMode":I
    :cond_74
    return-void

    .line 3220
    :catch_75
    move-exception v0

    .line 3221
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3e
.end method

.method public sendAccessibilityEvent(I)V
    .registers 4
    .param p1, "eventType"    # I

    .prologue
    .line 2458
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2474
    :goto_c
    return-void

    .line 2465
    :cond_d
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-eqz v0, :cond_20

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_20

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_20

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_30

    :cond_20
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_30

    .line 2470
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_c

    .line 2472
    :cond_30
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    goto :goto_c
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2834
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2835
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 2836
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->updateWindowResizeState()V

    .line 2838
    :cond_c
    return-void
.end method

.method protected setFrame(IIII)Z
    .registers 14
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 2489
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setFrame(IIII)Z

    move-result v1

    .line 2490
    .local v1, "changed":Z
    if-eqz v1, :cond_65

    .line 2491
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mDrawingBounds:Landroid/graphics/Rect;

    .line 2492
    .local v2, "drawingBounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2494
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2495
    .local v3, "fg":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_5c

    .line 2496
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    .line 2497
    .local v4, "frameOffsets":Landroid/graphics/Rect;
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 2498
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 2499
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 2500
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 2501
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2502
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    .line 2503
    .local v5, "framePadding":Landroid/graphics/Rect;
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    iget v8, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 2504
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    iget v8, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 2505
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    iget v8, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 2506
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 2509
    .end local v4    # "frameOffsets":Landroid/graphics/Rect;
    .end local v5    # "framePadding":Landroid/graphics/Rect;
    :cond_5c
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2510
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_65

    .line 2511
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2528
    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v2    # "drawingBounds":Landroid/graphics/Rect;
    .end local v3    # "fg":Landroid/graphics/drawable/Drawable;
    :cond_65
    return v1
.end method

.method public setSurfaceFormat(I)V
    .registers 3
    .param p1, "format"    # I

    .prologue
    .line 3063
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->setFormat(I)V

    .line 3064
    return-void
.end method

.method public setSurfaceKeepScreenOn(Z)V
    .registers 4
    .param p1, "keepOn"    # Z

    .prologue
    const/16 v1, 0x80

    .line 3067
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->addFlags(I)V

    .line 3069
    :goto_9
    return-void

    .line 3068
    :cond_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->clearFlags(I)V

    goto :goto_9
.end method

.method public setSurfaceType(I)V
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 3059
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->setType(I)V

    .line 3060
    return-void
.end method

.method public setWindowBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2821
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_13

    .line 2822
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2823
    if-eqz p1, :cond_14

    .line 2824
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2828
    :goto_10
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->drawableChanged()V

    .line 2830
    :cond_13
    return-void

    .line 2826
    :cond_14
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_10
.end method

.method public setWindowFrame(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2841
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_13

    .line 2842
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 2843
    if-eqz p1, :cond_14

    .line 2844
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2848
    :goto_10
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->drawableChanged()V

    .line 2850
    :cond_13
    return-void

    .line 2846
    :cond_14
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_10
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .registers 6
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    .line 2627
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1300(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    move-result-object v1

    if-nez v1, :cond_43

    .line 2628
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    new-instance v2, Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/view/menu/ContextMenuBuilder;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1302(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/view/menu/ContextMenuBuilder;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    .line 2629
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1300(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/impl/PhoneWindow$DialogMenuCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/ContextMenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 2634
    :goto_23
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1300(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/view/menu/ContextMenuBuilder;->show(Landroid/view/View;Landroid/os/IBinder;)Lcom/android/internal/view/menu/MenuDialogHelper;

    move-result-object v0

    .line 2636
    .local v0, "helper":Lcom/android/internal/view/menu/MenuDialogHelper;
    if-eqz v0, :cond_3a

    .line 2637
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/impl/PhoneWindow$DialogMenuCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuDialogHelper;->setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 2639
    :cond_3a
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # setter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1402(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/view/menu/MenuDialogHelper;)Lcom/android/internal/view/menu/MenuDialogHelper;

    .line 2640
    if-eqz v0, :cond_4d

    const/4 v1, 0x1

    :goto_42
    return v1

    .line 2631
    .end local v0    # "helper":Lcom/android/internal/view/menu/MenuDialogHelper;
    :cond_43
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1300(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ContextMenuBuilder;->clearAll()V

    goto :goto_23

    .line 2640
    .restart local v0    # "helper":Lcom/android/internal/view/menu/MenuDialogHelper;
    :cond_4d
    const/4 v1, 0x0

    goto :goto_42
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 2656
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 20
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 2660
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    if-eqz v13, :cond_d

    .line 2661
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v13}, Landroid/view/ActionMode;->finish()V

    .line 2664
    :cond_d
    new-instance v12, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$ActionModeCallbackWrapper;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v12, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$ActionModeCallbackWrapper;-><init>(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Landroid/view/ActionMode$Callback;)V

    .line 2665
    .local v12, "wrappedCallback":Landroid/view/ActionMode$Callback;
    const/4 v6, 0x0

    .line 2666
    .local v6, "mode":Landroid/view/ActionMode;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v13}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v13

    if-eqz v13, :cond_37

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v13}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v13

    if-nez v13, :cond_37

    .line 2668
    :try_start_2b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v13}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v13

    invoke-interface {v13, v12}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    :try_end_36
    .catch Ljava/lang/AbstractMethodError; {:try_start_2b .. :try_end_36} :catch_1ec

    move-result-object v6

    .line 2673
    :cond_37
    :goto_37
    if-eqz v6, :cond_6b

    .line 2674
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    .line 2801
    :cond_3d
    :goto_3d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    if-eqz v13, :cond_66

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v13}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v13

    if-eqz v13, :cond_66

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v13}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v13

    if-nez v13, :cond_66

    .line 2803
    :try_start_57
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v13}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    invoke-interface {v13, v14}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V
    :try_end_66
    .catch Ljava/lang/AbstractMethodError; {:try_start_57 .. :try_end_66} :catch_1e9

    .line 2808
    :cond_66
    :goto_66
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    return-object v13

    .line 2676
    :cond_6b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-nez v13, :cond_108

    .line 2677
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v13}, Lcom/android/internal/policy/impl/PhoneWindow;->isFloating()Z

    move-result v13

    if-eqz v13, :cond_1bd

    .line 2678
    new-instance v13, Lcom/android/internal/widget/ActionBarContextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v13, v14}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 2679
    new-instance v13, Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    const v16, 0x1010411

    invoke-direct/range {v13 .. v16}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    .line 2682
    if-eqz p1, :cond_1b0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getWindowMode()I

    move-result v13

    invoke-static {v13}, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->mode(I)I

    move-result v13

    sget v14, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_FREESTYLE:I

    if-ne v13, v14, :cond_1b0

    const/4 v2, 0x1

    .line 2685
    .local v2, "bLocationChange":Z
    :goto_a8
    if-eqz v2, :cond_1b3

    .line 2686
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    const/16 v14, 0x3ea

    invoke-virtual {v13, v14}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 2693
    :goto_b3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v13, v14}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 2694
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v14, -0x1

    invoke-virtual {v13, v14}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 2696
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 2697
    .local v5, "heightValue":Landroid/util/TypedValue;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v13

    const v14, 0x10102eb

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v5, v15}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2699
    iget v13, v5, Landroid/util/TypedValue;->data:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v4

    .line 2701
    .local v4, "height":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v13, v4}, Lcom/android/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 2702
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v14, -0x2

    invoke-virtual {v13, v14}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 2703
    new-instance v13, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v13, v0, v2, v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;ZLandroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mShowActionModePopup:Ljava/lang/Runnable;

    .line 2759
    .end local v2    # "bLocationChange":Z
    .end local v4    # "height":I
    .end local v5    # "heightValue":Landroid/util/TypedValue;
    :cond_108
    :goto_108
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v13, :cond_3d

    .line 2760
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v13}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    .line 2761
    new-instance v6, Lcom/android/internal/view/StandaloneActionMode;

    .end local v6    # "mode":Landroid/view/ActionMode;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    if-nez v13, :cond_1d6

    const/4 v13, 0x1

    :goto_126
    invoke-direct {v6, v14, v15, v12, v13}, Lcom/android/internal/view/StandaloneActionMode;-><init>(Landroid/content/Context;Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode$Callback;Z)V

    .line 2763
    .restart local v6    # "mode":Landroid/view/ActionMode;
    invoke-virtual {v6}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-interface {v0, v6, v13}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v13

    if-eqz v13, :cond_1e2

    .line 2764
    invoke-virtual {v6}, Landroid/view/ActionMode;->invalidate()V

    .line 2765
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v13, v6}, Lcom/android/internal/widget/ActionBarContextView;->initForMode(Landroid/view/ActionMode;)V

    .line 2766
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 2767
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    .line 2768
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v13, :cond_1a5

    .line 2770
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    .line 2771
    .local v3, "ctx":Landroid/content/Context;
    instance-of v13, v3, Landroid/app/Activity;

    if-nez v13, :cond_163

    instance-of v13, v3, Landroid/content/ContextWrapper;

    if-eqz v13, :cond_163

    .line 2772
    check-cast v3, Landroid/content/ContextWrapper;

    .end local v3    # "ctx":Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    .line 2774
    .restart local v3    # "ctx":Landroid/content/Context;
    :cond_163
    if-eqz v3, :cond_19c

    instance-of v13, v3, Landroid/app/Activity;

    if-eqz v13, :cond_19c

    move-object v13, v3

    .line 2775
    check-cast v13, Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    .line 2776
    .local v7, "root":Landroid/view/View;
    check-cast v3, Landroid/app/Activity;

    .end local v3    # "ctx":Landroid/content/Context;
    invoke-virtual {v3}, Landroid/app/Activity;->getWindowMode()I

    move-result v10

    .line 2777
    .local v10, "windowMode":I
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 2778
    .local v9, "vlp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v11, 0x0

    .line 2780
    .local v11, "wlp":Landroid/view/WindowManager$LayoutParams;
    instance-of v13, v9, Landroid/view/WindowManager$LayoutParams;

    if-eqz v13, :cond_19c

    move-object v11, v9

    .line 2781
    check-cast v11, Landroid/view/WindowManager$LayoutParams;

    .line 2782
    iget v13, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v13, v13, 0x200

    if-eqz v13, :cond_1d9

    sget v13, Lcom/android/internal/policy/impl/MultiWindowReflector$Policy;->WINDOW_MODE_NORMAL:I

    if-eq v10, v13, :cond_1d9

    .line 2784
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 2792
    .end local v7    # "root":Landroid/view/View;
    .end local v9    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v10    # "windowMode":I
    .end local v11    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_19c
    :goto_19c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mShowActionModePopup:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->post(Ljava/lang/Runnable;)Z

    .line 2794
    :cond_1a5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/16 v14, 0x20

    invoke-virtual {v13, v14}, Lcom/android/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    goto/16 :goto_3d

    .line 2682
    :cond_1b0
    const/4 v2, 0x0

    goto/16 :goto_a8

    .line 2689
    .restart local v2    # "bLocationChange":Z
    :cond_1b3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    goto/16 :goto_b3

    .line 2751
    .end local v2    # "bLocationChange":Z
    :cond_1bd
    const v13, 0x1020456

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewStub;

    .line 2753
    .local v8, "stub":Landroid/view/ViewStub;
    if-eqz v8, :cond_108

    .line 2754
    invoke-virtual {v8}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/ActionBarContextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    goto/16 :goto_108

    .line 2761
    .end local v6    # "mode":Landroid/view/ActionMode;
    .end local v8    # "stub":Landroid/view/ViewStub;
    :cond_1d6
    const/4 v13, 0x0

    goto/16 :goto_126

    .line 2787
    .restart local v6    # "mode":Landroid/view/ActionMode;
    .restart local v7    # "root":Landroid/view/View;
    .restart local v9    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v10    # "windowMode":I
    .restart local v11    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_1d9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    goto :goto_19c

    .line 2797
    .end local v7    # "root":Landroid/view/View;
    .end local v9    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v10    # "windowMode":I
    .end local v11    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_1e2
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    goto/16 :goto_3d

    .line 2804
    :catch_1e9
    move-exception v13

    goto/16 :goto_66

    .line 2669
    :catch_1ec
    move-exception v13

    goto/16 :goto_37
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 2649
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startChanging()V
    .registers 2

    .prologue
    .line 2812
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mChanging:Z

    .line 2813
    return-void
.end method

.method public superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2334
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 2293
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2318
    :cond_7
    :goto_7
    return v1

    .line 2299
    :cond_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3f

    .line 2300
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2302
    .local v0, "action":I
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_1f

    .line 2303
    if-ne v0, v1, :cond_7

    .line 2304
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    goto :goto_7

    .line 2310
    :cond_1f
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1100(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/widget/ActionBarView;

    move-result-object v2

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1100(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/widget/ActionBarView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarView;->hasExpandedActionView()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 2311
    if-ne v0, v1, :cond_7

    .line 2312
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1100(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/widget/ActionBarView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarView;->collapseActionView()V

    goto :goto_7

    .line 2318
    .end local v0    # "action":I
    :cond_3f
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2322
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2326
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2330
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method updateWindowResizeState()V
    .registers 4

    .prologue
    .line 2939
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2940
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_12

    :cond_d
    const/4 v1, 0x1

    :goto_e
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->hackTurnOffWindowResizeAnim(Z)V

    .line 2942
    return-void

    .line 2940
    :cond_12
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;
    .registers 2

    .prologue
    .line 3055
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;
    .registers 2

    .prologue
    .line 3051
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
