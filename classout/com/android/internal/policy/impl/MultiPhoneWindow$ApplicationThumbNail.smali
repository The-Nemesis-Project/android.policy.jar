.class Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApplicationThumbNail"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mMinimizeBg:Landroid/graphics/drawable/Drawable;

.field private mMinimizeBgFocus:Landroid/graphics/drawable/Drawable;

.field private mMinimizeIcon:Landroid/graphics/drawable/Drawable;

.field private mMinimizeInnerShadow:Landroid/graphics/drawable/Drawable;

.field private mMinimizedAppLable:Ljava/lang/CharSequence;

.field private mThemeMgr:Lcom/samsung/android/theme/SThemeManager;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .registers 12
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    const/4 v8, 0x0

    .line 1634
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1626
    iput-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    .line 1627
    iput-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mMinimizeBg:Landroid/graphics/drawable/Drawable;

    .line 1628
    iput-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mMinimizeBgFocus:Landroid/graphics/drawable/Drawable;

    .line 1629
    iput-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mMinimizeInnerShadow:Landroid/graphics/drawable/Drawable;

    .line 1630
    iput-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mMinimizedAppLable:Ljava/lang/CharSequence;

    .line 1635
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mActivity:Landroid/app/Activity;

    .line 1638
    new-instance v8, Lcom/samsung/android/theme/SThemeManager;

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mActivity:Landroid/app/Activity;

    invoke-direct {v8, v9}, Lcom/samsung/android/theme/SThemeManager;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    .line 1639
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mActivity:Landroid/app/Activity;

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1640
    .local v1, "am":Landroid/app/ActivityManager;
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1641
    .local v6, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_88

    if-eqz v6, :cond_88

    .line 1643
    :try_start_2d
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 1644
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    .line 1647
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1648
    .local v7, "res":Landroid/content/res/Resources;
    const v8, 0x1050121

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 1649
    .local v5, "originPixelSize":I
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v8

    if-eq v8, v5, :cond_67

    .line 1650
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1651
    .local v2, "b":Landroid/graphics/Bitmap;
    const/4 v8, 0x1

    invoke-static {v2, v5, v5, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1652
    .local v3, "bitmapResized":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v8, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    .line 1654
    .end local v2    # "b":Landroid/graphics/Bitmap;
    .end local v3    # "bitmapResized":Landroid/graphics/Bitmap;
    :cond_67
    invoke-virtual {v0, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mMinimizedAppLable:Ljava/lang/CharSequence;

    .line 1655
    const v8, 0x108055d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mMinimizeBg:Landroid/graphics/drawable/Drawable;

    .line 1656
    const v8, 0x108055e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mMinimizeBgFocus:Landroid/graphics/drawable/Drawable;

    .line 1657
    const v8, 0x108055f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mMinimizeInnerShadow:Landroid/graphics/drawable/Drawable;
    :try_end_88
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2d .. :try_end_88} :catch_89

    .line 1662
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v5    # "originPixelSize":I
    .end local v7    # "res":Landroid/content/res/Resources;
    :cond_88
    :goto_88
    return-void

    .line 1658
    :catch_89
    move-exception v4

    .line 1659
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_88
.end method

.method private clipImagePath(Landroid/graphics/Bitmap;Landroid/graphics/Path;)Landroid/graphics/Bitmap;
    .registers 18
    .param p1, "paramBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "paramPath"    # Landroid/graphics/Path;

    .prologue
    .line 1745
    if-nez p1, :cond_4

    .line 1746
    const/4 v2, 0x0

    .line 1783
    :goto_3
    return-object v2

    .line 1748
    :cond_4
    if-eqz p2, :cond_c

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 1749
    :cond_c
    const/4 v2, 0x0

    goto :goto_3

    .line 1752
    :cond_e
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 1753
    .local v8, "rectF":Landroid/graphics/RectF;
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1755
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 1756
    .local v10, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1757
    .local v4, "height":I
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v4, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1758
    .local v6, "pathBitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1759
    .local v7, "pathCanvas":Landroid/graphics/Canvas;
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1761
    sget-object v11, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v11}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 1762
    const/4 v11, 0x0

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v11, v12}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1764
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 1765
    .local v5, "paint":Landroid/graphics/Paint;
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1766
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setDither(Z)V

    .line 1767
    const/16 v11, 0x32

    const/16 v12, 0xff

    const/16 v13, 0xff

    const/16 v14, 0xff

    invoke-static {v11, v12, v13, v14}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 1768
    sget-object v11, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1769
    sget-object v11, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1770
    sget-object v11, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1771
    const/high16 v11, 0x40a00000

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1772
    new-instance v11, Landroid/graphics/PorterDuffXfermode;

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v12}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1774
    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1775
    sget-object v11, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v11}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 1776
    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1778
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v12

    float-to-int v12, v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1779
    .local v2, "finalBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1780
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

    .line 1781
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

    .line 1782
    .local v1, "dstRect":Landroid/graphics/Rect;
    const/4 v11, 0x0

    invoke-virtual {v3, v6, v9, v1, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_3
.end method

.method public static create(Landroid/app/Activity;)Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;
    .registers 2
    .param p0, "a"    # Landroid/app/Activity;

    .prologue
    .line 1665
    new-instance v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method private getBitmapClippedCircle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1729
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1730
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 1731
    .local v0, "height":I
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 1732
    .local v1, "path":Landroid/graphics/Path;
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050120

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 1734
    .local v2, "radius":F
    div-int/lit8 v4, v3, 0x2

    int-to-float v4, v4

    div-int/lit8 v5, v0, 0x2

    int-to-float v5, v5

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v4, v5, v2, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 1740
    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->clipImagePath(Landroid/graphics/Bitmap;Landroid/graphics/Path;)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4
.end method

.method private getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 1724
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d0000

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 1684
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1689
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_6
    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_b} :catch_19

    move-result-object v3

    .line 1694
    .local v3, "resources":Landroid/content/res/Resources;
    :goto_c
    if-eqz v3, :cond_1c

    .line 1700
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v1

    .line 1701
    .local v1, "iconId":I
    if-eqz v1, :cond_1c

    .line 1702
    invoke-direct {p0, v3, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1705
    .end local v1    # "iconId":I
    :goto_18
    return-object v4

    .line 1691
    .end local v3    # "resources":Landroid/content/res/Resources;
    :catch_19
    move-exception v0

    .line 1692
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    .restart local v3    # "resources":Landroid/content/res/Resources;
    goto :goto_c

    .line 1705
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1c
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_18
.end method

.method private getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .registers 9
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "iconId"    # I

    .prologue
    .line 1710
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mActivity:Landroid/app/Activity;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1713
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v3

    .line 1715
    .local v3, "mIconDpi":I
    :try_start_e
    invoke-virtual {p1, p2, v3}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e .. :try_end_11} :catch_15

    move-result-object v1

    .line 1720
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    :goto_12
    if-eqz v1, :cond_18

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :goto_14
    return-object v1

    .line 1716
    :catch_15
    move-exception v2

    .line 1717
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_12

    .line 1720
    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_18
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_14
.end method

.method private getMinimizedBitmap(Z)Landroid/graphics/Bitmap;
    .registers 12
    .param p1, "bFocused"    # Z

    .prologue
    const/4 v9, 0x0

    .line 1787
    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->getBitmapClippedCircle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1788
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 1789
    .local v0, "bgBmp":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_70

    .line 1790
    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mMinimizeBgFocus:Landroid/graphics/drawable/Drawable;

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1794
    :goto_18
    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mMinimizeInnerShadow:Landroid/graphics/drawable/Drawable;

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1795
    .local v3, "innerShadowBmp":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1798
    .local v4, "output":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1799
    .local v2, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 1800
    .local v5, "paint":Landroid/graphics/Paint;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1801
    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1802
    invoke-virtual {v2, v0, v9, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1803
    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1804
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 1805
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

    .line 1806
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 1807
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 1808
    invoke-virtual {v2, v3, v9, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1809
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 1811
    return-object v4

    .line 1792
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "innerShadowBmp":Landroid/graphics/Bitmap;
    .end local v4    # "output":Landroid/graphics/Bitmap;
    .end local v5    # "paint":Landroid/graphics/Paint;
    :cond_70
    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mMinimizeBg:Landroid/graphics/drawable/Drawable;

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_18
.end method


# virtual methods
.method public getCircleDrawable()Landroid/graphics/drawable/Drawable;
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1669
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 1670
    .local v0, "drawable":Landroid/graphics/drawable/StateListDrawable;
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->getMinimizedBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1671
    .local v1, "focus":Landroid/graphics/Bitmap;
    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->getMinimizedBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1672
    .local v2, "normal":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1673
    .local v3, "pressedDrawable":Landroid/graphics/drawable/BitmapDrawable;
    new-array v4, v5, [I

    const v5, 0x10100a7

    aput v5, v4, v6

    invoke-virtual {v0, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1674
    new-array v4, v6, [I

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1675
    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1679
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;->mMinimizedAppLable:Ljava/lang/CharSequence;

    return-object v0
.end method
