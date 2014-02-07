.class public Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
.super Landroid/widget/FrameLayout;
.source "KeyguardWidgetFrame.java"


# static fields
.field private static final ACTION_SHRINK_WIDGET:Ljava/lang/String; = "com.sec.android.app.keyguard.shrinkWidget"

.field static final ENABLE_HOVER_OVER_DELETE_DROP_TARGET_OVERLAY:Z = true

.field private static final HIDE_FRAME:I = 0x3

.field static final HOVER_OVER_DELETE_DROP_TARGET_OVERLAY_COLOR:I = -0x66010000

.field static final OUTLINE_ALPHA_MULTIPLIER:F = 0.6f

.field private static final TAG:Ljava/lang/String; = "KeyguardWidgetFrame"

.field private static final sAddBlendMode:Landroid/graphics/PorterDuffXfermode;


# instance fields
.field private final HIDE_FRAME_DELAY:J

.field private mBackgroundAlpha:F

.field private mBackgroundAlphaMultiplier:F

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundLightDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundLightRect:Landroid/graphics/Rect;

.field private mBackgroundRect:Landroid/graphics/Rect;

.field private mBgAlphaController:Ljava/lang/Object;

.field private mContentAlpha:F

.field private mForegroundAlpha:I

.field private mForegroundGradient:Landroid/graphics/LinearGradient;

.field private final mForegroundRect:Landroid/graphics/Rect;

.field private mFrameFade:Landroid/animation/Animator;

.field private mFrameHeight:I

.field private mFrameStrokeAdjustment:I

.field private mGradientColor:I

.field private mGradientPaint:Landroid/graphics/Paint;

.field private final mHandler:Landroid/os/Handler;

.field private mIsHoveringOverDeleteDropTarget:Z

.field private mIsReordering:Z

.field private mIsSmall:Z

.field mLeftToRight:Z

.field private mLeftToRightGradient:Landroid/graphics/LinearGradient;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLongPressHelper:Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;

.field private mMaxChallengeTop:I

.field private mOverScrollAmount:F

.field private mPerformAppWidgetSizeUpdateOnBootComplete:Z

.field private mRightToLeftGradient:Landroid/graphics/LinearGradient;

.field private mSmallFrameHeight:I

.field private mSmallWidgetHeight:I

.field private mUpdateMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mWidgetLockedSmall:Z

.field private mWorkerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 51
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->sAddBlendMode:Landroid/graphics/PorterDuffXfermode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x0

    .line 130
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mGradientPaint:Landroid/graphics/Paint;

    .line 67
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLeftToRight:Z

    .line 69
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mOverScrollAmount:F

    .line 70
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mForegroundRect:Landroid/graphics/Rect;

    .line 71
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mForegroundAlpha:I

    .line 74
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mIsSmall:Z

    .line 79
    const/high16 v3, 0x3f800000

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundAlphaMultiplier:F

    .line 81
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundRect:Landroid/graphics/Rect;

    .line 84
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundLightRect:Landroid/graphics/Rect;

    .line 90
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mWidgetLockedSmall:Z

    .line 91
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mMaxChallengeTop:I

    .line 109
    const-wide/16 v3, 0x15e

    iput-wide v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->HIDE_FRAME_DELAY:J

    .line 110
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mHandler:Landroid/os/Handler;

    .line 172
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mUpdateMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 648
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mIsReordering:Z

    .line 132
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 137
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    .line 138
    .local v0, "density":F
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x41000000

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 139
    .local v1, "padding":I
    div-int/lit8 v3, v1, 0x2

    div-int/lit8 v4, v1, 0x2

    invoke-virtual {p0, v3, v1, v4, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setPadding(IIII)V

    .line 141
    const/high16 v3, 0x40000000

    mul-float/2addr v3, v0

    float-to-int v3, v3

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    .line 145
    const v3, 0x1050077

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mSmallWidgetHeight:I

    .line 147
    const v3, 0x108054d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 149
    const v3, 0x1080591

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundLightDrawable:Landroid/graphics/drawable/Drawable;

    .line 150
    const v3, 0x106004b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mGradientColor:I

    .line 151
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mGradientPaint:Landroid/graphics/Paint;

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->sAddBlendMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 152
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 156
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mPerformAppWidgetSizeUpdateOnBootComplete:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mPerformAppWidgetSizeUpdateOnBootComplete:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->performAppWidgetSizeCallbacksIfNecessary()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    .prologue
    .line 50
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mSmallWidgetHeight:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    .param p1, "x1"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setWidgetHeight(I)V

    return-void
.end method

.method private drawGradientOverlay(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mGradientPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mForegroundGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 281
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mGradientPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mForegroundAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 282
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mForegroundRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 283
    return-void
.end method

.method private drawHoveringOverDeleteOverlay(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mIsHoveringOverDeleteDropTarget:Z

    if-eqz v0, :cond_9

    .line 287
    const/high16 v0, -0x66010000

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 289
    :cond_9
    return-void
.end method

.method private getContextualWidgetsString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 194
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_contextual_widget_ids"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "appWidgetIdString":Ljava/lang/String;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_16

    .line 199
    .end local v0    # "appWidgetIdString":Ljava/lang/String;
    :goto_15
    return-object v0

    .restart local v0    # "appWidgetIdString":Ljava/lang/String;
    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private isSPlannerWidget()Z
    .registers 7

    .prologue
    .line 461
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 462
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x1110072

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 463
    .local v2, "isSPlannerWidget":Z
    if-eqz v2, :cond_32

    .line 464
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v0

    .line 465
    .local v0, "content":Landroid/view/View;
    instance-of v4, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v4, :cond_32

    .line 466
    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    .end local v0    # "content":Landroid/view/View;
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 467
    .local v1, "info":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v4, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x1040053

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 468
    const/4 v4, 0x1

    .line 472
    .end local v1    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :goto_31
    return v4

    :cond_32
    const/4 v4, 0x0

    goto :goto_31
.end method

.method private performAppWidgetSizeCallbacksIfNecessary()V
    .registers 10

    .prologue
    const/4 v6, 0x1

    .line 592
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v7

    .line 593
    .local v7, "content":Landroid/view/View;
    instance-of v1, v7, Landroid/appwidget/AppWidgetHostView;

    if-nez v1, :cond_a

    .line 609
    :goto_9
    return-void

    .line 595
    :cond_a
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v1

    if-nez v1, :cond_19

    .line 596
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mPerformAppWidgetSizeUpdateOnBootComplete:Z

    goto :goto_9

    :cond_19
    move-object v0, v7

    .line 603
    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    .line 604
    .local v0, "awhv":Landroid/appwidget/AppWidgetHostView;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v8, v1, Landroid/util/DisplayMetrics;->density:F

    .line 606
    .local v8, "density":F
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v8

    float-to-int v2, v1

    .line 607
    .local v2, "width":I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v8

    float-to-int v3, v1

    .line 608
    .local v3, "height":I
    const/4 v1, 0x0

    move v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIIIZ)V

    goto :goto_9
.end method

.method private setWidgetHeight(I)V
    .registers 6
    .param p1, "height"    # I

    .prologue
    .line 411
    const/4 v1, 0x0

    .line 412
    .local v1, "needLayout":Z
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v2

    .line 413
    .local v2, "widget":Landroid/view/View;
    if-eqz v2, :cond_14

    .line 414
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 415
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, p1, :cond_14

    .line 416
    const/4 v1, 0x1

    .line 417
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 420
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_14
    if-eqz v1, :cond_19

    .line 421
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->requestLayout()V

    .line 423
    :cond_19
    return-void
.end method

.method private shrinkWidgetDelay()V
    .registers 6

    .prologue
    .line 479
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.keyguard.shrinkWidget"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 480
    .local v1, "mIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 481
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v0

    .line 482
    .local v0, "content":Landroid/view/View;
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 488
    return-void
.end method

.method private updateGradient()V
    .registers 16

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 558
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLeftToRight:Z

    if-eqz v0, :cond_2f

    move v1, v2

    .line 559
    .local v1, "x0":F
    :goto_7
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLeftToRight:Z

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mForegroundRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v3, v0

    .line 560
    .local v3, "x1":F
    :goto_12
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mGradientColor:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v4, v2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLeftToRightGradient:Landroid/graphics/LinearGradient;

    .line 562
    new-instance v7, Landroid/graphics/LinearGradient;

    iget v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mGradientColor:I

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v8, v3

    move v9, v2

    move v10, v1

    move v11, v2

    move v13, v6

    invoke-direct/range {v7 .. v14}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mRightToLeftGradient:Landroid/graphics/LinearGradient;

    .line 564
    return-void

    .line 558
    .end local v1    # "x0":F
    .end local v3    # "x1":F
    :cond_2f
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mForegroundRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v1, v0

    goto :goto_7

    .restart local v1    # "x0":F
    :cond_37
    move v3, v2

    .line 559
    goto :goto_12
.end method


# virtual methods
.method public adjustFrame(I)V
    .registers 4
    .param p1, "challengeTop"    # I

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getPaddingBottom()I

    move-result v1

    add-int v0, p1, v1

    .line 444
    .local v0, "frameHeight":I
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setFrameHeight(I)V

    .line 445
    return-void
.end method

.method public cancelLongPress()V
    .registers 2

    .prologue
    .line 274
    invoke-super {p0}, Landroid/widget/FrameLayout;->cancelLongPress()V

    .line 275
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;->cancelLongPress()V

    .line 276
    return-void
.end method

.method public disableHardwareLayers()V
    .registers 3

    .prologue
    .line 353
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setLayerType(ILandroid/graphics/Paint;)V

    .line 354
    return-void
.end method

.method public disableHardwareLayersForContent()V
    .registers 4

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v0

    .line 343
    .local v0, "widget":Landroid/view/View;
    if-eqz v0, :cond_b

    .line 344
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 346
    :cond_b
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 313
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 315
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->drawBg(Landroid/graphics/Canvas;)V

    .line 316
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 317
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->drawGradientOverlay(Landroid/graphics/Canvas;)V

    .line 319
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->drawHoveringOverDeleteOverlay(Landroid/graphics/Canvas;)V

    .line 320
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 322
    return-void
.end method

.method protected drawBg(Landroid/graphics/Canvas;)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x437f0000

    .line 292
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundAlpha:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3b

    .line 293
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 295
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundAlpha:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundAlphaMultiplier:F

    mul-float/2addr v2, v3

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 296
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 297
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 300
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mIsReordering:Z

    if-nez v2, :cond_3b

    .line 302
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundLightDrawable:Landroid/graphics/drawable/Drawable;

    .line 303
    .local v1, "bgLight":Landroid/graphics/drawable/Drawable;
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundAlpha:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundAlphaMultiplier:F

    mul-float/2addr v2, v3

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 304
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundLightRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 305
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 308
    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v1    # "bgLight":Landroid/graphics/drawable/Drawable;
    :cond_3b
    return-void
.end method

.method public enableHardwareLayers()V
    .registers 3

    .prologue
    .line 349
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setLayerType(ILandroid/graphics/Paint;)V

    .line 350
    return-void
.end method

.method public enableHardwareLayersForContent()V
    .registers 4

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v0

    .line 331
    .local v0, "widget":Landroid/view/View;
    if-eqz v0, :cond_b

    .line 332
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 334
    :cond_b
    return-void
.end method

.method public fadeFrame(Ljava/lang/Object;ZFI)V
    .registers 10
    .param p1, "caller"    # Ljava/lang/Object;
    .param p2, "takeControl"    # Z
    .param p3, "alpha"    # F
    .param p4, "duration"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 539
    if-eqz p2, :cond_6

    .line 540
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBgAlphaController:Ljava/lang/Object;

    .line 543
    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBgAlphaController:Ljava/lang/Object;

    if-eq v1, p1, :cond_f

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBgAlphaController:Ljava/lang/Object;

    if-eqz v1, :cond_f

    .line 555
    :goto_e
    return-void

    .line 547
    :cond_f
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameFade:Landroid/animation/Animator;

    if-eqz v1, :cond_1b

    .line 548
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameFade:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 549
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameFade:Landroid/animation/Animator;

    .line 551
    :cond_1b
    const-string v1, "backgroundAlpha"

    new-array v2, v4, [F

    aput p3, v2, v3

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 552
    .local v0, "bgAlpha":Landroid/animation/PropertyValuesHolder;
    new-array v1, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v3

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameFade:Landroid/animation/Animator;

    .line 553
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameFade:Landroid/animation/Animator;

    int-to-long v2, p4

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 554
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameFade:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_e
.end method

.method public getBackgroundAlpha()F
    .registers 2

    .prologue
    .line 372
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundAlpha:F

    return v0
.end method

.method public getBackgroundAlphaMultiplier()F
    .registers 2

    .prologue
    .line 383
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundAlphaMultiplier:F

    return v0
.end method

.method public getContent()Landroid/view/View;
    .registers 2

    .prologue
    .line 357
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getContentAlpha()F
    .registers 2

    .prologue
    .line 394
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mContentAlpha:F

    return v0
.end method

.method public getContentAppWidgetId()I
    .registers 3

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v0

    .line 362
    .local v0, "content":Landroid/view/View;
    instance-of v1, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v1, :cond_f

    .line 363
    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    .end local v0    # "content":Landroid/view/View;
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v1

    .line 367
    :goto_e
    return v1

    .line 364
    .restart local v0    # "content":Landroid/view/View;
    :cond_f
    instance-of v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;

    if-eqz v1, :cond_1a

    .line 365
    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;

    .end local v0    # "content":Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->getAppWidgetId()I

    move-result v1

    goto :goto_e

    .line 367
    .restart local v0    # "content":Landroid/view/View;
    :cond_1a
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public getSmallFrameHeight()I
    .registers 2

    .prologue
    .line 491
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mSmallFrameHeight:I

    return v0
.end method

.method public getWorkerHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mWorkerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public hideFrame(Ljava/lang/Object;)V
    .registers 5
    .param p1, "caller"    # Ljava/lang/Object;

    .prologue
    .line 526
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x23f

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->fadeFrame(Ljava/lang/Object;ZFI)V

    .line 527
    return-void
.end method

.method public hideFrameTouched(Ljava/lang/Object;)V
    .registers 5
    .param p1, "caller"    # Ljava/lang/Object;

    .prologue
    .line 530
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x23f

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->fadeFrame(Ljava/lang/Object;ZFI)V

    .line 531
    return-void
.end method

.method public isSmall()Z
    .registers 2

    .prologue
    .line 439
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mIsSmall:Z

    return v0
.end method

.method public onActive(Z)V
    .registers 2
    .param p1, "isActive"    # Z

    .prologue
    .line 628
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 168
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 169
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mUpdateMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 170
    return-void
.end method

.method public onBouncerShowing(Z)V
    .registers 2
    .param p1, "showing"    # Z

    .prologue
    .line 637
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 160
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 161
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->cancelLongPress()V

    .line 162
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mUpdateMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 164
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 205
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContentAppWidgetId()I

    move-result v0

    .line 207
    .local v0, "appWidgetId":I
    if-nez v0, :cond_f

    .line 208
    const-string v1, "KeyguardWidgetFrame"

    const-string v2, "appWidgetId is invalid"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_e
    :goto_e
    return v3

    .line 212
    :cond_f
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isContextualWidget(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 213
    const-string v1, "KeyguardWidgetFrame"

    const-string v2, "appWidgetId is in Contextual widget"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 218
    :cond_1f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_52

    :pswitch_26
    goto :goto_e

    .line 220
    :pswitch_27
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;->postCheckForLongPress(Landroid/view/MotionEvent;)V

    .line 221
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContextualWidgetsString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 222
    :cond_42
    invoke-virtual {p0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->showFrame(Ljava/lang/Object;)V

    goto :goto_e

    .line 226
    :pswitch_46
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;->onMove(Landroid/view/MotionEvent;)V

    goto :goto_e

    .line 231
    :pswitch_4c
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_e

    .line 218
    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_27
        :pswitch_4c
        :pswitch_46
        :pswitch_4c
        :pswitch_26
        :pswitch_4c
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .registers 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 587
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 588
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->performAppWidgetSizeCallbacksIfNecessary()V

    .line 589
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 12
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v6, 0x0

    .line 568
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 570
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mIsSmall:Z

    if-nez v0, :cond_a

    .line 571
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameHeight:I

    .line 576
    :cond_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mForegroundRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    sub-int v3, p1, v3

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameHeight:I

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 579
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameHeight:I

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 581
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundLightRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundLightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 582
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->updateGradient()V

    .line 583
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->invalidate()V

    .line 584
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x3

    .line 243
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_44

    .line 263
    :cond_8
    :goto_8
    :pswitch_8
    const/4 v1, 0x1

    return v1

    .line 245
    :pswitch_a
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;->onMove(Landroid/view/MotionEvent;)V

    goto :goto_8

    .line 249
    :pswitch_10
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_8

    .line 252
    :pswitch_16
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;->cancelLongPress()V

    .line 253
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContextualWidgetsString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 254
    :cond_31
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 255
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 256
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x15e

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_8

    .line 243
    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_16
        :pswitch_a
        :pswitch_10
        :pswitch_8
        :pswitch_10
    .end packed-switch
.end method

.method public onUserInteraction(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 632
    const/4 v0, 0x0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 268
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 269
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->cancelLongPress()V

    .line 270
    return-void
.end method

.method public resetSize()V
    .registers 2

    .prologue
    .line 506
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mIsSmall:Z

    .line 507
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mWidgetLockedSmall:Z

    if-nez v0, :cond_b

    .line 508
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setWidgetHeight(I)V

    .line 510
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setFrameHeight(I)V

    .line 511
    return-void
.end method

.method public setBackgroundAlpha(F)V
    .registers 3
    .param p1, "alpha"    # F

    .prologue
    .line 387
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundAlpha:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_d

    .line 388
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundAlpha:F

    .line 389
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->invalidate()V

    .line 391
    :cond_d
    return-void
.end method

.method public setBackgroundAlphaMultiplier(F)V
    .registers 3
    .param p1, "multiplier"    # F

    .prologue
    .line 376
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundAlphaMultiplier:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_d

    .line 377
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundAlphaMultiplier:F

    .line 378
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->invalidate()V

    .line 380
    :cond_d
    return-void
.end method

.method public setContentAlpha(F)V
    .registers 3
    .param p1, "alpha"    # F

    .prologue
    .line 398
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mContentAlpha:F

    .line 399
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v0

    .line 400
    .local v0, "content":Landroid/view/View;
    if-eqz v0, :cond_b

    .line 401
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 403
    :cond_b
    return-void
.end method

.method public setFrameHeight(I)V
    .registers 9
    .param p1, "height"    # I

    .prologue
    const/4 v6, 0x0

    .line 514
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameHeight:I

    .line 515
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameHeight:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getMeasuredHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 516
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mForegroundRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameHeight:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 520
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundLightRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mBackgroundLightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 521
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->updateGradient()V

    .line 522
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->invalidate()V

    .line 523
    return-void
.end method

.method setIsHoveringOverDeleteDropTarget(Z)V
    .registers 3
    .param p1, "isHovering"    # Z

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mIsHoveringOverDeleteDropTarget:Z

    if-eq v0, p1, :cond_9

    .line 186
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mIsHoveringOverDeleteDropTarget:Z

    .line 187
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->invalidate()V

    .line 190
    :cond_9
    return-void
.end method

.method public setIsReordering(Z)V
    .registers 2
    .param p1, "isReordering"    # Z

    .prologue
    .line 651
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mIsReordering:Z

    .line 652
    return-void
.end method

.method public setMaxChallengeTop(I)V
    .registers 4
    .param p1, "top"    # I

    .prologue
    .line 426
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mMaxChallengeTop:I

    if-eq v1, p1, :cond_27

    const/4 v0, 0x1

    .line 427
    .local v0, "dirty":Z
    :goto_5
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mMaxChallengeTop:I

    .line 428
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getPaddingTop()I

    move-result v1

    sub-int v1, p1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mSmallWidgetHeight:I

    .line 429
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mSmallFrameHeight:I

    .line 430
    if-eqz v0, :cond_29

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mIsSmall:Z

    if-eqz v1, :cond_29

    .line 431
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mSmallWidgetHeight:I

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setWidgetHeight(I)V

    .line 432
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mSmallFrameHeight:I

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setFrameHeight(I)V

    .line 436
    :cond_26
    :goto_26
    return-void

    .line 426
    .end local v0    # "dirty":Z
    :cond_27
    const/4 v0, 0x0

    goto :goto_5

    .line 433
    .restart local v0    # "dirty":Z
    :cond_29
    if-eqz v0, :cond_26

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mWidgetLockedSmall:Z

    if-eqz v1, :cond_26

    .line 434
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mSmallWidgetHeight:I

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setWidgetHeight(I)V

    goto :goto_26
.end method

.method setOverScrollAmount(FZ)V
    .registers 6
    .param p1, "r"    # F
    .param p2, "left"    # Z

    .prologue
    .line 612
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mOverScrollAmount:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_30

    .line 613
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mOverScrollAmount:F

    .line 614
    if-eqz p2, :cond_31

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mLeftToRightGradient:Landroid/graphics/LinearGradient;

    :goto_e
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mForegroundGradient:Landroid/graphics/LinearGradient;

    .line 615
    const/high16 v1, 0x3f000000

    mul-float/2addr v1, p1

    const/high16 v2, 0x437f0000

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mForegroundAlpha:I

    .line 619
    const v1, 0x3f19999a

    const v2, 0x3ecccccc

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    const/high16 v2, 0x3f800000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 621
    .local v0, "bgAlpha":F
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setBackgroundAlpha(F)V

    .line 622
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->invalidate()V

    .line 624
    .end local v0    # "bgAlpha":F
    :cond_30
    return-void

    .line 614
    :cond_31
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mRightToLeftGradient:Landroid/graphics/LinearGradient;

    goto :goto_e
.end method

.method public setWidgetLockedSmall(Z)V
    .registers 3
    .param p1, "locked"    # Z

    .prologue
    .line 499
    if-eqz p1, :cond_7

    .line 500
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mSmallWidgetHeight:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setWidgetHeight(I)V

    .line 502
    :cond_7
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mWidgetLockedSmall:Z

    .line 503
    return-void
.end method

.method public setWorkerHandler(Landroid/os/Handler;)V
    .registers 2
    .param p1, "workerHandler"    # Landroid/os/Handler;

    .prologue
    .line 640
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mWorkerHandler:Landroid/os/Handler;

    .line 641
    return-void
.end method

.method public showFrame(Ljava/lang/Object;)V
    .registers 5
    .param p1, "caller"    # Ljava/lang/Object;

    .prologue
    .line 534
    const/4 v0, 0x1

    const v1, 0x3f19999a

    const/16 v2, 0x64

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->fadeFrame(Ljava/lang/Object;ZFI)V

    .line 536
    return-void
.end method

.method public shrinkWidget()V
    .registers 2

    .prologue
    .line 495
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->shrinkWidget(Z)V

    .line 496
    return-void
.end method

.method public shrinkWidget(Z)V
    .registers 3
    .param p1, "alsoShrinkFrame"    # Z

    .prologue
    .line 448
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mIsSmall:Z

    .line 449
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->isSPlannerWidget()Z

    move-result v0

    if-eqz v0, :cond_16

    if-nez p1, :cond_16

    .line 450
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->shrinkWidgetDelay()V

    .line 455
    :goto_e
    if-eqz p1, :cond_15

    .line 456
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mSmallFrameHeight:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setFrameHeight(I)V

    .line 458
    :cond_15
    return-void

    .line 452
    :cond_16
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->mSmallWidgetHeight:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setWidgetHeight(I)V

    goto :goto_e
.end method
