.class public Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;
.super Landroid/widget/LinearLayout;
.source "KeyguardShortcutView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutImageView;,
        Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;
    }
.end annotation


# static fields
.field private static final ACTION_USER_ACTIVITY_BY_SHORTCUT:Ljava/lang/String; = "com.android.internal.policy.impl.sec.UserActivityByShortcut"

.field private static final APPLICATION_SEPERATOR:C = ';'

.field private static final BADGE_COLUMNS:[Ljava/lang/String;

.field private static final BADGE_URI:Landroid/net/Uri;

.field private static final PACKAGE_CLASS_SEPERATOR:C = '/'

.field private static final mBlurPaint:Landroid/graphics/Paint;

.field private static mGlowCanvas:Landroid/graphics/Canvas;

.field private static final mHolographicPaint:Landroid/graphics/Paint;

.field private static mOuterGlowColor:I

.field private static final mSaturationPaint:Landroid/graphics/Paint;

.field private static mShortcutImageViewHeight:I

.field private static mShortcutImageViewWidth:I

.field private static mTempOffset:[I

.field private static sBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field private static sCoarseClipTable:Landroid/graphics/MaskFilter;

.field private static sFontSizeDefault:I

.field private static sFontSizeSmall:I

.field private static sIconCenterXOffset:I

.field private static sIconTopToTopOffset:I

.field private static sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;


# instance fields
.field private DBG:Z

.field private final FADE_IN_OUT_ANIMATION_DURATION:I

.field private final MISSED_EVENT_UPDATE:I

.field private TAG:Ljava/lang/String;

.field private isIgnoreTouch:Z

.field private final mBadgeObserver:Landroid/database/ContentObserver;

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mDistance:D

.field private mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

.field private mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

.field private mFirstBorder:I

.field private mHandler:Landroid/os/Handler;

.field private mHelpTextCallback:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

.field private mIconDpi:I

.field private mIconHeight:I

.field private mIconWidth:I

.field private mIsFirst:Z

.field private mIsTouchExplorationEnabled:Z

.field private mItemCount:I

.field private mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

.field private mLaunchIntent:Landroid/content/Intent;

.field private mOldBounds:Landroid/graphics/Rect;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSecondBorder:I

.field private mStartX:F

.field private mStartY:F

.field private mUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 87
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mHolographicPaint:Landroid/graphics/Paint;

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mBlurPaint:Landroid/graphics/Paint;

    .line 89
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mSaturationPaint:Landroid/graphics/Paint;

    .line 91
    const/16 v0, 0xc8

    invoke-static {v2, v0}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->sCoarseClipTable:Landroid/graphics/MaskFilter;

    .line 92
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mTempOffset:[I

    .line 113
    sput v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mShortcutImageViewWidth:I

    .line 114
    sput v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mShortcutImageViewHeight:I

    .line 120
    const-string v0, "content://com.sec.badge/apps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->BADGE_URI:Landroid/net/Uri;

    .line 123
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "badgecount"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->BADGE_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 160
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    const-string v7, "KeyguardShortcutView"

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    .line 62
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->DBG:Z

    .line 70
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mItemCount:I

    .line 72
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIconWidth:I

    .line 73
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIconHeight:I

    .line 81
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000

    invoke-direct {v7, v8, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    .line 82
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/high16 v8, 0x3f800000

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    .line 83
    const/16 v7, 0x12c

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->FADE_IN_OUT_ANIMATION_DURATION:I

    .line 95
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIsTouchExplorationEnabled:Z

    .line 98
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIsFirst:Z

    .line 99
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->isIgnoreTouch:Z

    .line 102
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mDistance:D

    .line 126
    const/16 v7, 0x12c2

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->MISSED_EVENT_UPDATE:I

    .line 127
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$1;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mHandler:Landroid/os/Handler;

    .line 138
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$2;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mHandler:Landroid/os/Handler;

    invoke-direct {v7, p0, v8}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mBadgeObserver:Landroid/database/ContentObserver;

    .line 162
    const/16 v7, 0x11

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->setGravity(I)V

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mPm:Landroid/content/pm/PackageManager;

    .line 166
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->getLauncherLargeIconDensity()I

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIconDpi:I

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lock_screen_shortcut"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v7, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-nez v7, :cond_71

    .line 174
    const/16 v7, 0x8

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->setVisibility(I)V

    .line 302
    :goto_70
    return-void

    .line 180
    :cond_71
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "easy_mode_switch"

    const/4 v9, 0x1

    const/4 v10, -0x2

    invoke-static {v7, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-nez v7, :cond_85

    .line 183
    const/16 v7, 0x8

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->setVisibility(I)V

    goto :goto_70

    .line 203
    :cond_85
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10500a8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mFirstBorder:I

    .line 207
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10500a9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mSecondBorder:I

    .line 210
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->DBG:Z

    if-eqz v7, :cond_c7

    .line 211
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "density = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIconDpi:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_c7
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 214
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v8, 0x12c

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 216
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 217
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v8, 0x12c

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 220
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mOldBounds:Landroid/graphics/Rect;

    .line 221
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7}, Landroid/graphics/Canvas;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mCanvas:Landroid/graphics/Canvas;

    .line 222
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mCanvas:Landroid/graphics/Canvas;

    new-instance v8, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v9, 0x4

    const/4 v10, 0x2

    invoke-direct {v8, v9, v10}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 225
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7}, Landroid/graphics/Canvas;-><init>()V

    sput-object v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mGlowCanvas:Landroid/graphics/Canvas;

    .line 226
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mGlowCanvas:Landroid/graphics/Canvas;

    new-instance v8, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v9, 0x4

    const/4 v10, 0x2

    invoke-direct {v8, v9, v10}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 228
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mHolographicPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 229
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mHolographicPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 230
    new-instance v7, Landroid/graphics/BlurMaskFilter;

    const/high16 v8, 0x40c00000

    sget-object v9, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v7, v8, v9}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 231
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mBlurPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 232
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mBlurPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 233
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mBlurPaint:Landroid/graphics/Paint;

    sget-object v8, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 234
    const/4 v7, -0x1

    sput v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mOuterGlowColor:I

    .line 237
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 238
    .local v1, "cm":Landroid/graphics/ColorMatrix;
    const/high16 v7, 0x3f000000

    const/high16 v8, 0x3f000000

    invoke-static {v1, v7, v8}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->setContrastSaturation(Landroid/graphics/ColorMatrix;FF)V

    .line 241
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mSaturationPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 242
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mSaturationPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 243
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mSaturationPaint:Landroid/graphics/Paint;

    new-instance v8, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v8, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 245
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIsTouchExplorationEnabled:Z

    if-nez v7, :cond_17b

    .line 246
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "touch_exploration_enabled"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 249
    .local v3, "exploreByTouchMode":I
    const/4 v7, 0x1

    if-ne v3, v7, :cond_219

    .line 250
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIsTouchExplorationEnabled:Z

    .line 251
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    const-string v8, "explore by touch mode on"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .end local v3    # "exploreByTouchMode":I
    :cond_17b
    :goto_17b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10500af

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    sput v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mShortcutImageViewWidth:I

    .line 260
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10500b0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    sput v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mShortcutImageViewHeight:I

    .line 262
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x108034f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    sput-object v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 264
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10500b1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    sput v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->sFontSizeDefault:I

    .line 266
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10500b2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    sput v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->sFontSizeSmall:I

    .line 268
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10500b3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    sput v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->sIconCenterXOffset:I

    .line 270
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10500b4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    sput v7, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->sIconTopToTopOffset:I

    .line 273
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->BADGE_URI:Landroid/net/Uri;

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 275
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lock_screen_shortcut_app_list"

    const/4 v9, -0x2

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "activityList":Ljava/lang/String;
    if-eqz v0, :cond_229

    .line 285
    new-instance v6, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v7, 0x3b

    invoke-direct {v6, v7}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 287
    .local v6, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v6, v0}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 288
    const/4 v2, 0x0

    .line 289
    .local v2, "count":I
    invoke-interface {v6}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_208
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_222

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 290
    .local v5, "pkgActivity":Ljava/lang/String;
    invoke-direct {p0, p1, v5, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->setEachItem(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    goto :goto_208

    .line 253
    .end local v0    # "activityList":Ljava/lang/String;
    .end local v2    # "count":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "pkgActivity":Ljava/lang/String;
    .end local v6    # "splitter":Landroid/text/TextUtils$StringSplitter;
    .restart local v3    # "exploreByTouchMode":I
    :cond_219
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    const-string v8, "explore by touch mode off"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17b

    .line 293
    .end local v3    # "exploreByTouchMode":I
    .restart local v0    # "activityList":Ljava/lang/String;
    .restart local v2    # "count":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v6    # "splitter":Landroid/text/TextUtils$StringSplitter;
    :cond_222
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->reArrangeSpace()V

    .line 296
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mItemCount:I

    goto/16 :goto_70

    .line 300
    .end local v2    # "count":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "splitter":Landroid/text/TextUtils$StringSplitter;
    :cond_229
    const/16 v7, 0x8

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->setVisibility(I)V

    goto/16 :goto_70
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->reloadBadges()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Landroid/content/pm/PackageManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;
    .param p2, "x2"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIsTouchExplorationEnabled:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIsFirst:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIsFirst:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->isIgnoreTouch:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Landroid/view/animation/AlphaAnimation;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 59
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mStartX:F

    return v0
.end method

.method static synthetic access$1702(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;
    .param p1, "x1"    # F

    .prologue
    .line 59
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mStartX:F

    return p1
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 59
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mStartY:F

    return v0
.end method

.method static synthetic access$1802(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;
    .param p1, "x1"    # F

    .prologue
    .line 59
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mStartY:F

    return p1
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)D
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mDistance:D

    return-wide v0
.end method

.method static synthetic access$1902(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;D)D
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;
    .param p1, "x1"    # D

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mDistance:D

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;Landroid/view/View;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->hideOtherShortcuts(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$HelpTextCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mHelpTextCallback:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 59
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mFirstBorder:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 59
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mSecondBorder:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mUnlockView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mLaunchIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->launchApplication()V

    return-void
.end method

.method static synthetic access$2700()I
    .registers 1

    .prologue
    .line 59
    sget v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->sFontSizeDefault:I

    return v0
.end method

.method static synthetic access$2800()I
    .registers 1

    .prologue
    .line 59
    sget v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->sIconTopToTopOffset:I

    return v0
.end method

.method static synthetic access$2900()I
    .registers 1

    .prologue
    .line 59
    sget v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->sIconCenterXOffset:I

    return v0
.end method

.method static synthetic access$3000()Landroid/graphics/MaskFilter;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->sCoarseClipTable:Landroid/graphics/MaskFilter;

    return-object v0
.end method

.method static synthetic access$3100()Landroid/graphics/Paint;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mHolographicPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$3200()I
    .registers 1

    .prologue
    .line 59
    sget v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mOuterGlowColor:I

    return v0
.end method

.method static synthetic access$3300()Landroid/graphics/Paint;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mSaturationPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$3400()I
    .registers 1

    .prologue
    .line 59
    sget v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mShortcutImageViewWidth:I

    return v0
.end method

.method static synthetic access$3500()I
    .registers 1

    .prologue
    .line 59
    sget v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mShortcutImageViewHeight:I

    return v0
.end method

.method static synthetic access$3600()Landroid/graphics/Paint;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mBlurPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$3700()[I
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mTempOffset:[I

    return-object v0
.end method

.method static synthetic access$3800()I
    .registers 1

    .prologue
    .line 59
    sget v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->sFontSizeSmall:I

    return v0
.end method

.method static synthetic access$3900()Landroid/graphics/drawable/Drawable;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 59
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIconWidth:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIconWidth:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIconHeight:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->DBG:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;Landroid/content/ComponentName;)Landroid/content/Intent;
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->getLaunchIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->BADGE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$900()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->BADGE_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method private createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 25
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 835
    :try_start_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIconWidth:I

    move/from16 v16, v0

    .line 836
    .local v16, "width":I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIconHeight:I

    .line 838
    .local v9, "height":I
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/PaintDrawable;

    move/from16 v19, v0

    if-eqz v19, :cond_126

    .line 839
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->DBG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_30

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v21, "PaintDrawable"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :cond_30
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v13, v0

    .line 842
    .local v13, "painter":Landroid/graphics/drawable/PaintDrawable;
    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 843
    invoke-virtual {v13, v9}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 854
    .end local v13    # "painter":Landroid/graphics/drawable/PaintDrawable;
    :cond_3d
    :goto_3d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    .line 855
    .local v12, "iconWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 857
    .local v11, "iconHeight":I
    if-lez v16, :cond_124

    if-lez v9, :cond_124

    .line 858
    move/from16 v0, v16

    if-lt v0, v12, :cond_4f

    if-ge v9, v11, :cond_178

    .line 859
    :cond_4f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->DBG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_66

    .line 860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v21, "width < iconWidth || height < iconHeight"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :cond_66
    int-to-float v0, v12

    move/from16 v19, v0

    int-to-float v0, v11

    move/from16 v21, v0

    div-float v14, v19, v21

    .line 863
    .local v14, "ratio":F
    if-le v12, v11, :cond_166

    .line 864
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v19, v19, v14

    move/from16 v0, v19

    float-to-int v9, v0

    .line 869
    :cond_7a
    :goto_7a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v19

    const/16 v21, -0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_174

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 871
    .local v7, "c":Landroid/graphics/Bitmap$Config;
    :goto_88
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIconWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIconHeight:I

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 872
    .local v15, "thumb":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mCanvas:Landroid/graphics/Canvas;

    .line 873
    .local v8, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v8, v15}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mOldBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 881
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isShortcutResize()Z

    move-result v19

    if-eqz v19, :cond_e0

    .line 882
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v21, 0x10500b5

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v16, v0

    .line 884
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v21, 0x10500b6

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v9, v0

    .line 888
    :cond_e0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIconWidth:I

    move/from16 v19, v0

    sub-int v19, v19, v16

    div-int/lit8 v17, v19, 0x2

    .line 889
    .local v17, "x":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIconHeight:I

    move/from16 v19, v0

    sub-int v19, v19, v9

    div-int/lit8 v18, v19, 0x2

    .line 890
    .local v18, "y":I
    add-int v19, v17, v16

    add-int v21, v18, v9

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 891
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mOldBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 894
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v10, v0, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    .local v10, "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 p1, v10

    .line 921
    .end local v7    # "c":Landroid/graphics/Bitmap$Config;
    .end local v8    # "canvas":Landroid/graphics/Canvas;
    .end local v10    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v14    # "ratio":F
    .end local v15    # "thumb":Landroid/graphics/Bitmap;
    .end local v17    # "x":I
    .end local v18    # "y":I
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_124
    :goto_124
    monitor-exit v20

    .line 923
    return-object p1

    .line 844
    .end local v11    # "iconHeight":I
    .end local v12    # "iconWidth":I
    :cond_126
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v19, v0

    if-eqz v19, :cond_3d

    .line 845
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->DBG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_145

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v21, "BitmapDrawable"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :cond_145
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v6, v0

    .line 849
    .local v6, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 850
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v19

    if-nez v19, :cond_3d

    .line 851
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto/16 :goto_3d

    .line 921
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v9    # "height":I
    .end local v16    # "width":I
    :catchall_163
    move-exception v19

    monitor-exit v20
    :try_end_165
    .catchall {:try_start_7 .. :try_end_165} :catchall_163

    throw v19

    .line 865
    .restart local v9    # "height":I
    .restart local v11    # "iconHeight":I
    .restart local v12    # "iconWidth":I
    .restart local v14    # "ratio":F
    .restart local v16    # "width":I
    :cond_166
    if-le v11, v12, :cond_7a

    .line 866
    int-to-float v0, v9

    move/from16 v19, v0

    mul-float v19, v19, v14

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v16, v0

    goto/16 :goto_7a

    .line 869
    :cond_174
    :try_start_174
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto/16 :goto_88

    .line 896
    .end local v14    # "ratio":F
    :cond_178
    move/from16 v0, v16

    if-ge v12, v0, :cond_124

    if-ge v11, v9, :cond_124

    .line 897
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->DBG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_195

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v21, "iconWidth < width && iconHeight < height"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    :cond_195
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 900
    .restart local v7    # "c":Landroid/graphics/Bitmap$Config;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIconWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIconHeight:I

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 901
    .restart local v15    # "thumb":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mCanvas:Landroid/graphics/Canvas;

    .line 902
    .restart local v8    # "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v8, v15}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mOldBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 905
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isShortcutResize()Z

    move-result v19

    if-eqz v19, :cond_1ed

    .line 906
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v21, 0x10500b5

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v12, v0

    .line 908
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v21, 0x10500b6

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v11, v0

    .line 912
    :cond_1ed
    sub-int v19, v16, v12

    div-int/lit8 v17, v19, 0x2

    .line 913
    .restart local v17    # "x":I
    sub-int v19, v9, v11

    div-int/lit8 v18, v19, 0x2

    .line 914
    .restart local v18    # "y":I
    add-int v19, v17, v12

    add-int v21, v18, v11

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 915
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mOldBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 917
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v10, v0, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_223
    .catchall {:try_start_174 .. :try_end_223} :catchall_163

    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v10    # "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 p1, v10

    .end local v10    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_124
.end method

.method private getLaunchIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .registers 4
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 811
    const/4 v0, 0x0

    .line 812
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_17

    .line 813
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 814
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 815
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 816
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 818
    :cond_17
    return-object v0
.end method

.method private hideOtherShortcuts(Landroid/view/View;Z)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hide"    # Z

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->getChildCount()I

    move-result v0

    .local v0, "children":I
    :goto_4
    if-ltz v0, :cond_32

    .line 460
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 461
    .local v1, "tmpView":Landroid/view/View;
    instance-of v2, v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    if-eqz v2, :cond_20

    if-eq p1, v1, :cond_20

    .line 462
    if-eqz p2, :cond_23

    move-object v2, v1

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->isDummy()Z

    move-result v2

    if-nez v2, :cond_23

    .line 463
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 459
    :cond_20
    :goto_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_23
    move-object v2, v1

    .line 464
    check-cast v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->isDummy()Z

    move-result v2

    if-nez v2, :cond_20

    .line 465
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_20

    .line 468
    .end local v1    # "tmpView":Landroid/view/View;
    :cond_32
    return-void
.end method

.method private isScreenLarge()Z
    .registers 3

    .prologue
    .line 927
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v1, 0xf

    .line 929
    .local v0, "screenSize":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_12

    const/4 v1, 0x4

    if-ne v0, v1, :cond_14

    :cond_12
    const/4 v1, 0x1

    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method private launchApplication()V
    .registers 7

    .prologue
    .line 1206
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mLaunchIntent:Landroid/content/Intent;

    if-eqz v1, :cond_29

    .line 1208
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_2a

    .line 1213
    :goto_b
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.internal.policy.impl.sec.UserActivityByShortcut"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1214
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mLaunchIntent:Landroid/content/Intent;

    const/4 v3, 0x0

    new-instance v4, Landroid/os/UserHandle;

    const/4 v5, -0x2

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 1217
    :cond_29
    return-void

    .line 1209
    :catch_2a
    move-exception v0

    .line 1210
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    const-string v2, "dismissKeyguard remoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method private reArrangeSpace()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 307
    const/4 v0, 0x0

    .line 308
    .local v0, "additionalPadding":I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->getChildCount()I

    move-result v2

    .line 310
    .local v2, "childrenCount":I
    packed-switch v2, :pswitch_data_3c

    .line 322
    const/4 v0, 0x0

    .line 326
    :goto_a
    if-nez v0, :cond_15

    .line 339
    :cond_c
    return-void

    .line 312
    :pswitch_d
    const/4 v0, 0x0

    .line 313
    goto :goto_a

    .line 315
    :pswitch_f
    const/16 v0, 0xa

    .line 316
    goto :goto_a

    .line 319
    :pswitch_12
    const/16 v0, 0x11

    .line 320
    goto :goto_a

    .line 330
    :cond_15
    add-int/lit8 v1, v2, -0x1

    .local v1, "child":I
    :goto_17
    if-ltz v1, :cond_c

    .line 331
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 332
    .local v5, "tmpView":Landroid/view/View;
    instance-of v6, v5, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    if-eqz v6, :cond_38

    move-object v6, v5

    .line 333
    check-cast v6, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->getPaddingLeft()I

    move-result v3

    .local v3, "leftPadding":I
    move-object v6, v5

    .line 334
    check-cast v6, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->getPaddingRight()I

    move-result v4

    .line 335
    .local v4, "rightPadding":I
    check-cast v5, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    .end local v5    # "tmpView":Landroid/view/View;
    add-int v6, v3, v0

    add-int v7, v4, v0

    invoke-virtual {v5, v6, v8, v7, v8}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->setPadding(IIII)V

    .line 330
    .end local v3    # "leftPadding":I
    .end local v4    # "rightPadding":I
    :cond_38
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    .line 310
    nop

    :pswitch_data_3c
    .packed-switch 0x2
        :pswitch_12
        :pswitch_12
        :pswitch_f
        :pswitch_d
    .end packed-switch
.end method

.method private refreshShortcutItems()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 471
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->getChildCount()I

    move-result v0

    .local v0, "children":I
    :goto_5
    if-ltz v0, :cond_1f

    .line 472
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 473
    .local v1, "tmpView":Landroid/view/View;
    instance-of v2, v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    if-eqz v2, :cond_1c

    move-object v2, v1

    .line 474
    check-cast v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    invoke-virtual {v2, v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->onPressed(Z)V

    .line 475
    check-cast v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    .end local v1    # "tmpView":Landroid/view/View;
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->setOpacity(D)V

    .line 471
    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 478
    :cond_1f
    const/4 v2, 0x0

    invoke-direct {p0, v2, v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->hideOtherShortcuts(Landroid/view/View;Z)V

    .line 479
    return-void
.end method

.method private reloadBadges()V
    .registers 11

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 430
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->getChildCount()I

    move-result v7

    .local v7, "children":I
    :goto_6
    if-ltz v7, :cond_93

    .line 431
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 432
    .local v8, "tmpView":Landroid/view/View;
    instance-of v0, v8, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    if-eqz v0, :cond_8f

    move-object v0, v8

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->isDummy()Z

    move-result v0

    if-nez v0, :cond_8f

    .line 433
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->BADGE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->BADGE_COLUMNS:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, v8

    check-cast v3, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\" and class=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, v8

    check-cast v3, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 440
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_8f

    .line 441
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 442
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .line 443
    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->setBadgeCount(I)V

    .line 444
    check-cast v8, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    .end local v8    # "tmpView":Landroid/view/View;
    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->refreshBadgeCount()V

    .line 446
    :cond_8c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 430
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_8f
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_6

    .line 450
    :cond_93
    return-void
.end method

.method private static setContrastSaturation(Landroid/graphics/ColorMatrix;FF)V
    .registers 14
    .param p0, "cm"    # Landroid/graphics/ColorMatrix;
    .param p1, "contrast"    # F
    .param p2, "saturation"    # F

    .prologue
    const/high16 v10, 0x3f800000

    const/4 v9, 0x0

    .line 1183
    add-float v4, p1, v10

    .line 1184
    .local v4, "scale":F
    const/high16 v6, -0x41000000

    mul-float/2addr v6, v4

    const/high16 v7, 0x3f000000

    add-float/2addr v6, v7

    const/high16 v7, 0x437f0000

    mul-float v5, v6, v7

    .line 1185
    .local v5, "translate":F
    sub-float v3, v10, p2

    .line 1186
    .local v3, "invSat":F
    const v6, 0x3e5a1cac

    mul-float v2, v6, v3

    .line 1187
    .local v2, "R":F
    const v6, 0x3f370a3d

    mul-float v1, v6, v3

    .line 1188
    .local v1, "G":F
    const v6, 0x3d9374bc

    mul-float v0, v6, v3

    .line 1190
    .local v0, "B":F
    const/16 v6, 0x14

    new-array v6, v6, [F

    const/4 v7, 0x0

    add-float v8, v2, p2

    aput v8, v6, v7

    const/4 v7, 0x1

    aput v1, v6, v7

    const/4 v7, 0x2

    aput v0, v6, v7

    const/4 v7, 0x3

    aput v9, v6, v7

    const/4 v7, 0x4

    aput v5, v6, v7

    const/4 v7, 0x5

    aput v2, v6, v7

    const/4 v7, 0x6

    add-float v8, v1, p2

    aput v8, v6, v7

    const/4 v7, 0x7

    aput v0, v6, v7

    const/16 v7, 0x8

    aput v9, v6, v7

    const/16 v7, 0x9

    aput v5, v6, v7

    const/16 v7, 0xa

    aput v2, v6, v7

    const/16 v7, 0xb

    aput v1, v6, v7

    const/16 v7, 0xc

    add-float v8, v0, p2

    aput v8, v6, v7

    const/16 v7, 0xd

    aput v9, v6, v7

    const/16 v7, 0xe

    aput v5, v6, v7

    const/16 v7, 0xf

    aput v9, v6, v7

    const/16 v7, 0x10

    aput v9, v6, v7

    const/16 v7, 0x11

    aput v9, v6, v7

    const/16 v7, 0x12

    aput v10, v6, v7

    const/16 v7, 0x13

    aput v9, v6, v7

    invoke-virtual {p0, v6}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 1197
    return-void
.end method

.method private setEachItem(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgActivity"    # Ljava/lang/String;
    .param p3, "count"    # I

    .prologue
    .line 343
    add-int/lit8 p3, p3, 0x1

    .line 345
    const/16 v5, 0x2f

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 346
    .local v2, "commaIndex":I
    const/4 v5, 0x0

    invoke-virtual {p2, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 347
    .local v3, "pkgName":Ljava/lang/String;
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "activityName":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->DBG:Z

    if-eqz v5, :cond_39

    .line 349
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pkg name ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", activityName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_39
    const/4 v1, 0x0

    .line 360
    .local v1, "cn":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/ComponentName;

    .end local v1    # "cn":Landroid/content/ComponentName;
    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .restart local v1    # "cn":Landroid/content/ComponentName;
    new-instance v4, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    const/4 v5, 0x1

    invoke-direct {v4, p0, p1, v1, v5}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 364
    .local v4, "testItem":Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;
    # getter for: Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIntent:Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView$ShortcutItem;)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_51

    .line 366
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->addView(Landroid/view/View;)V

    .line 389
    :goto_4e
    const/4 v1, 0x0

    .line 390
    const/4 v4, 0x0

    .line 392
    return p3

    .line 383
    :cond_51
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->DBG:Z

    if-eqz v5, :cond_5c

    .line 384
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    const-string v6, "mIntent=null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_5c
    add-int/lit8 p3, p3, -0x1

    goto :goto_4e
.end method


# virtual methods
.method public getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 971
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d0000

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getFullResIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .registers 8
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 946
    const/4 v1, 0x0

    .line 948
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_1
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_3} :catch_27

    if-nez v4, :cond_1c

    .line 949
    const/4 v3, 0x0

    .line 955
    .local v3, "resources":Landroid/content/res/Resources;
    :goto_6
    if-eqz v3, :cond_3c

    .line 956
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->icon:I

    if-eqz v4, :cond_2a

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :goto_14
    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 958
    if-eqz v1, :cond_2f

    move-object v4, v1

    .line 967
    :goto_1b
    return-object v4

    .line 951
    .end local v3    # "resources":Landroid/content/res/Resources;
    :cond_1c
    :try_start_1c
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1c .. :try_end_25} :catch_27

    move-result-object v3

    .restart local v3    # "resources":Landroid/content/res/Resources;
    goto :goto_6

    .line 952
    .end local v3    # "resources":Landroid/content/res/Resources;
    :catch_27
    move-exception v0

    .line 953
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    .restart local v3    # "resources":Landroid/content/res/Resources;
    goto :goto_6

    .line 956
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2a
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_14

    .line 962
    :cond_2f
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v2

    .line 963
    .local v2, "iconId":I
    if-eqz v2, :cond_3c

    .line 964
    invoke-virtual {p0, v3, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_1b

    .line 967
    .end local v2    # "iconId":I
    :cond_3c
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_1b
.end method

.method public getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "iconId"    # I

    .prologue
    .line 936
    :try_start_0
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_5} :catch_9

    move-result-object v0

    .line 941
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :goto_6
    if-eqz v0, :cond_c

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_8
    return-object v0

    .line 937
    :catch_9
    move-exception v1

    .line 938
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v0, 0x0

    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_6

    .line 941
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_8
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 454
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mItemCount:I

    return v0
.end method

.method public getLauncherLargeIconDensity()I
    .registers 6

    .prologue
    const/16 v3, 0x140

    .line 482
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 483
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 484
    .local v0, "density":I
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v2, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 486
    .local v2, "sw":I
    const/16 v4, 0x258

    if-ge v2, v4, :cond_1f

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isShortcutResize()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 507
    .end local v0    # "density":I
    :goto_1e
    return v0

    .line 491
    .restart local v0    # "density":I
    :cond_1f
    sparse-switch v0, :sswitch_data_3c

    .line 507
    int-to-float v3, v0

    const/high16 v4, 0x3fc00000

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000

    add-float/2addr v3, v4

    float-to-int v0, v3

    goto :goto_1e

    .line 493
    :sswitch_2b
    const/16 v0, 0xa0

    goto :goto_1e

    .line 495
    :sswitch_2e
    const/16 v0, 0xf0

    goto :goto_1e

    :sswitch_31
    move v0, v3

    .line 497
    goto :goto_1e

    :sswitch_33
    move v0, v3

    .line 499
    goto :goto_1e

    .line 501
    :sswitch_35
    const/16 v0, 0x1e0

    goto :goto_1e

    .line 503
    :sswitch_38
    const/16 v0, 0x280

    goto :goto_1e

    .line 491
    nop

    :sswitch_data_3c
    .sparse-switch
        0x78 -> :sswitch_2b
        0xa0 -> :sswitch_2e
        0xd5 -> :sswitch_31
        0xf0 -> :sswitch_33
        0x140 -> :sswitch_35
        0x1e0 -> :sswitch_38
    .end sparse-switch
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 415
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 416
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->DBG:Z

    if-eqz v0, :cond_f

    .line 417
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_f
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 422
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mOldBounds:Landroid/graphics/Rect;

    .line 423
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mCanvas:Landroid/graphics/Canvas;

    .line 424
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 425
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mLaunchIntent:Landroid/content/Intent;

    .line 426
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 396
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->DBG:Z

    if-eqz v0, :cond_b

    .line 397
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_b
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->refreshShortcutItems()V

    .line 400
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 403
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->DBG:Z

    if-eqz v0, :cond_b

    .line 404
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_b
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->refreshShortcutItems()V

    .line 407
    return-void
.end method

.method public refreshShortcuts(Landroid/content/ComponentName;)V
    .registers 11
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 1221
    const-string v0, "com.android.mms/com.android.mms.ui.ConversationComposer;com.sec.android.app.sbrowser/com.sec.android.app.sbrowser.SBrowserMainActivity;com.android.contacts/com.android.contacts.activities.PeopleActivity;com.android.contacts/com.android.contacts.activities.DialtactsActivity"

    .line 1224
    .local v0, "activityList":Ljava/lang/String;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040052

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1040053

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    .local v2, "defaultAppWidget":Landroid/content/ComponentName;
    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_29

    .line 1235
    const-string v0, "flipboard.app/flipboard.app.flipboard.activities.FirstRunActivity;com.sec.android.app.clockpackage/com.sec.android.app.clockpackage.ClockPackage;com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    .line 1238
    :cond_29
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->removeAllViews()V

    .line 1240
    if-eqz v0, :cond_52

    .line 1243
    new-instance v5, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v6, 0x3b

    invoke-direct {v5, v6}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 1245
    .local v5, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v5, v0}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 1246
    const/4 v1, 0x0

    .line 1247
    .local v1, "count":I
    invoke-interface {v5}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_3d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1248
    .local v4, "pkgActivity":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6, v4, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->setEachItem(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    goto :goto_3d

    .line 1252
    .end local v4    # "pkgActivity":Ljava/lang/String;
    :cond_50
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mItemCount:I

    .line 1254
    .end local v1    # "count":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "splitter":Landroid/text/TextUtils$StringSplitter;
    :cond_52
    return-void
.end method

.method public setHelpTextCallback(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$HelpTextCallback;)V
    .registers 2
    .param p1, "helpTextCallback"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

    .prologue
    .line 1296
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mHelpTextCallback:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

    .line 1297
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 411
    return-void
.end method

.method public setPagedView(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;)V
    .registers 2
    .param p1, "pagedView"    # Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    .line 150
    return-void
.end method

.method public updateShortcutView(Z)V
    .registers 8
    .param p1, "isRightMostPage"    # Z

    .prologue
    .line 1257
    if-eqz p1, :cond_2e

    .line 1259
    const-string v0, "com.android.mms/com.android.mms.ui.ConversationComposer;com.sec.android.app.sbrowser/com.sec.android.app.sbrowser.SBrowserMainActivity;com.android.contacts/com.android.contacts.activities.PeopleActivity;com.android.contacts/com.android.contacts.activities.DialtactsActivity"

    .line 1273
    .local v0, "activityList":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->removeAllViews()V

    .line 1275
    if-eqz v0, :cond_2d

    .line 1278
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x3b

    invoke-direct {v4, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 1280
    .local v4, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v4, v0}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 1281
    const/4 v1, 0x0

    .line 1282
    .local v1, "count":I
    invoke-interface {v4}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1283
    .local v3, "pkgActivity":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v3, v1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->setEachItem(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    goto :goto_18

    .line 1287
    .end local v3    # "pkgActivity":Ljava/lang/String;
    :cond_2b
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->mItemCount:I

    .line 1293
    .end local v0    # "activityList":Ljava/lang/String;
    .end local v1    # "count":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "splitter":Landroid/text/TextUtils$StringSplitter;
    :cond_2d
    :goto_2d
    return-void

    .line 1290
    :cond_2e
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardShortcutView;->removeAllViews()V

    goto :goto_2d
.end method
