.class public Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;
.super Ljava/lang/Object;
.source "ApplicationThumbnail.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field protected mMinimizeBg:Landroid/graphics/drawable/Drawable;

.field protected mMinimizeBgFocus:Landroid/graphics/drawable/Drawable;

.field protected mMinimizeIcon:Landroid/graphics/drawable/Drawable;

.field private mMinimizedAppLable:Ljava/lang/CharSequence;

.field private mThemeMgr:Lcom/samsung/android/theme/SThemeManager;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;)V
    .registers 9
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizedAppLable:Ljava/lang/CharSequence;

    .line 37
    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    .line 38
    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeBg:Landroid/graphics/drawable/Drawable;

    .line 39
    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeBgFocus:Landroid/graphics/drawable/Drawable;

    .line 106
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    .line 109
    new-instance v5, Lcom/samsung/android/theme/SThemeManager;

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Lcom/samsung/android/theme/SThemeManager;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    .line 110
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 111
    .local v1, "am":Landroid/app/ActivityManager;
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 112
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_5e

    if-eqz v3, :cond_5e

    .line 114
    :try_start_2b
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 115
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 116
    .local v4, "res":Landroid/content/res/Resources;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getScaledMinimizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    .line 117
    invoke-virtual {v0, v3}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizedAppLable:Ljava/lang/CharSequence;

    .line 118
    const v5, 0x1080685

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeBg:Landroid/graphics/drawable/Drawable;

    .line 119
    const v5, 0x1080686

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeBgFocus:Landroid/graphics/drawable/Drawable;
    :try_end_5e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2b .. :try_end_5e} :catch_5f

    .line 124
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "res":Landroid/content/res/Resources;
    :cond_5e
    :goto_5e
    return-void

    .line 120
    :catch_5f
    move-exception v2

    .line 121
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5e
.end method

.method protected constructor <init>(Landroid/app/Activity;Landroid/content/ComponentName;)V
    .registers 10
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "c"    # Landroid/content/ComponentName;

    .prologue
    const/4 v5, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizedAppLable:Ljava/lang/CharSequence;

    .line 37
    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    .line 38
    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeBg:Landroid/graphics/drawable/Drawable;

    .line 39
    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeBgFocus:Landroid/graphics/drawable/Drawable;

    .line 127
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    .line 130
    new-instance v5, Lcom/samsung/android/theme/SThemeManager;

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Lcom/samsung/android/theme/SThemeManager;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    .line 131
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 132
    .local v1, "am":Landroid/app/ActivityManager;
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 133
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_5a

    if-eqz v3, :cond_5a

    .line 135
    if-eqz p2, :cond_5b

    .end local p2    # "c":Landroid/content/ComponentName;
    :goto_2d
    const/4 v5, 0x0

    :try_start_2e
    invoke-virtual {v3, p2, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 136
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 137
    .local v4, "res":Landroid/content/res/Resources;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getScaledMinimizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    .line 138
    invoke-virtual {v0, v3}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizedAppLable:Ljava/lang/CharSequence;

    .line 139
    const v5, 0x1080685

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeBg:Landroid/graphics/drawable/Drawable;

    .line 140
    const v5, 0x1080686

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeBgFocus:Landroid/graphics/drawable/Drawable;

    .line 145
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "res":Landroid/content/res/Resources;
    :cond_5a
    :goto_5a
    return-void

    .line 135
    .restart local p2    # "c":Landroid/content/ComponentName;
    :cond_5b
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;
    :try_end_60
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2e .. :try_end_60} :catch_62

    move-result-object p2

    goto :goto_2d

    .line 141
    .end local p2    # "c":Landroid/content/ComponentName;
    :catch_62
    move-exception v2

    .line 142
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5a
.end method

.method private clipImagePath(Landroid/graphics/Bitmap;Landroid/graphics/Path;)Landroid/graphics/Bitmap;
    .registers 18
    .param p1, "paramBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "paramPath"    # Landroid/graphics/Path;

    .prologue
    .line 271
    if-nez p1, :cond_4

    .line 272
    const/4 v2, 0x0

    .line 309
    :goto_3
    return-object v2

    .line 274
    :cond_4
    if-eqz p2, :cond_c

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 275
    :cond_c
    const/4 v2, 0x0

    goto :goto_3

    .line 278
    :cond_e
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 279
    .local v8, "rectF":Landroid/graphics/RectF;
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 281
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 282
    .local v10, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 283
    .local v4, "height":I
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v4, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 284
    .local v6, "pathBitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 285
    .local v7, "pathCanvas":Landroid/graphics/Canvas;
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 287
    sget-object v11, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v11}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 288
    const/4 v11, 0x0

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v11, v12}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 290
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 291
    .local v5, "paint":Landroid/graphics/Paint;
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 292
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setDither(Z)V

    .line 293
    const/16 v11, 0x32

    const/16 v12, 0xff

    const/16 v13, 0xff

    const/16 v14, 0xff

    invoke-static {v11, v12, v13, v14}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 294
    sget-object v11, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 295
    sget-object v11, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 296
    sget-object v11, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 297
    const/high16 v11, 0x40a00000

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 298
    new-instance v11, Landroid/graphics/PorterDuffXfermode;

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v12}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 300
    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 301
    sget-object v11, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v11}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 302
    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 304
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v12

    float-to-int v12, v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 305
    .local v2, "finalBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 306
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

    .line 307
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

    .line 308
    .local v1, "dstRect":Landroid/graphics/Rect;
    const/4 v11, 0x0

    invoke-virtual {v3, v6, v9, v1, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_3
.end method

.method public static create(Landroid/app/Activity;)Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;
    .registers 2
    .param p0, "a"    # Landroid/app/Activity;

    .prologue
    .line 47
    new-instance v0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static create(Landroid/app/Activity;Landroid/content/ComponentName;)Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;
    .registers 3
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "c"    # Landroid/content/ComponentName;

    .prologue
    .line 56
    new-instance v0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;-><init>(Landroid/app/Activity;Landroid/content/ComponentName;)V

    return-object v0
.end method

.method private getBitmapClippedCircle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v6, 0x40000000

    .line 255
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 256
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 257
    .local v0, "height":I
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 258
    .local v1, "path":Landroid/graphics/Path;
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050156

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 260
    .local v2, "radius":F
    int-to-float v4, v3

    div-float/2addr v4, v6

    int-to-float v5, v0

    div-float/2addr v5, v6

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v4, v5, v2, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 266
    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->clipImagePath(Landroid/graphics/Bitmap;Landroid/graphics/Path;)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4
.end method

.method private getCircleBitmapDrawable()Landroid/graphics/drawable/Drawable;
    .registers 4

    .prologue
    .line 185
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getMinimizedBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 186
    .local v0, "normal":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method private getCircleDrawable()Landroid/graphics/drawable/Drawable;
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 175
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 176
    .local v0, "drawable":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getMinimizedBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 177
    .local v1, "focus":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getMinimizedBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 178
    .local v2, "normal":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 179
    .local v3, "pressedDrawable":Landroid/graphics/drawable/BitmapDrawable;
    new-array v4, v5, [I

    const v5, 0x10100a7

    aput v5, v4, v6

    invoke-virtual {v0, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 180
    new-array v4, v6, [I

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 181
    return-object v0
.end method

.method private getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 250
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d0000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 210
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 215
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_6
    iget-object v4, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_b} :catch_19

    move-result-object v3

    .line 220
    .local v3, "resources":Landroid/content/res/Resources;
    :goto_c
    if-eqz v3, :cond_1c

    .line 226
    invoke-virtual {p1}, Landroid/content/pm/ComponentInfo;->getIconResource()I

    move-result v1

    .line 227
    .local v1, "iconId":I
    if-eqz v1, :cond_1c

    .line 228
    invoke-direct {p0, v3, v1}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 231
    .end local v1    # "iconId":I
    :goto_18
    return-object v4

    .line 217
    .end local v3    # "resources":Landroid/content/res/Resources;
    :catch_19
    move-exception v0

    .line 218
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    .restart local v3    # "resources":Landroid/content/res/Resources;
    goto :goto_c

    .line 231
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1c
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_18
.end method

.method private getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .registers 9
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "iconId"    # I

    .prologue
    .line 236
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 239
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v3

    .line 241
    .local v3, "mIconDpi":I
    :try_start_e
    invoke-virtual {p1, p2, v3}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e .. :try_end_11} :catch_15

    move-result-object v1

    .line 246
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    :goto_12
    if-eqz v1, :cond_18

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :goto_14
    return-object v1

    .line 242
    :catch_15
    move-exception v2

    .line 243
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_12

    .line 246
    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_18
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_14
.end method

.method private getScaledMinimizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 10
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v7, 0x0

    .line 191
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 192
    .local v4, "res":Landroid/content/res/Resources;
    const v5, 0x1050157

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 193
    .local v3, "originPixelSize":I
    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    if-eq v5, v3, :cond_2a

    .line 194
    instance-of v5, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_2b

    .line 195
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 196
    .local v0, "b":Landroid/graphics/Bitmap;
    const/4 v5, 0x1

    invoke-static {v0, v3, v3, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 197
    .local v1, "bitmapResized":Landroid/graphics/Bitmap;
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 205
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapResized":Landroid/graphics/Bitmap;
    :cond_2a
    :goto_2a
    return-object p1

    .line 199
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_2b
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 200
    .restart local v0    # "b":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 201
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    invoke-virtual {p1, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 202
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2a
.end method


# virtual methods
.method public final getBitmapIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getCircleBitmapDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getCircleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getLabel()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizedAppLable:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected getMinimizedBitmap(Z)Landroid/graphics/Bitmap;
    .registers 12
    .param p1, "bFocused"    # Z

    .prologue
    const/high16 v9, 0x40000000

    const/4 v8, 0x0

    .line 148
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getBitmapClippedCircle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 149
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 150
    .local v0, "bgBmp":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_64

    .line 151
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeBgFocus:Landroid/graphics/drawable/Drawable;

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 156
    :goto_1a
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 158
    .local v3, "output":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 159
    .local v2, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 160
    .local v4, "paint":Landroid/graphics/Paint;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 161
    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 162
    invoke-virtual {v2, v0, v8, v8, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 163
    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 164
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 165
    if-eqz v1, :cond_5d

    .line 166
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v9

    invoke-virtual {v2, v1, v5, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 168
    :cond_5d
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 169
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 171
    return-object v3

    .line 153
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "output":Landroid/graphics/Bitmap;
    .end local v4    # "paint":Landroid/graphics/Paint;
    :cond_64
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeBg:Landroid/graphics/drawable/Drawable;

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1a
.end method

.method public final setCustomMinimizeIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 7
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 90
    if-nez p1, :cond_25

    .line 91
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 92
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_1f

    .line 94
    :try_start_a
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 95
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getScaledMinimizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_1f} :catch_20

    .line 103
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_1f
    :goto_1f
    return-void

    .line 96
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_20
    move-exception v1

    .line 97
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1f

    .line 101
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_25
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getScaledMinimizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1f
.end method
