.class public Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;
.super Landroid/widget/FrameLayout;
.source "WallpaperWidget.java"


# static fields
.field private static sWallpaperWidget:Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;


# instance fields
.field private final DBG:Z

.field private final PORTRAIT_WALLPAPER_IMAGE_PATH:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIsLiveWallpaper:Z

.field private mLockScreenWallpaperImage:Landroid/widget/ImageView;

.field private mWallpaperPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 24
    const-string v0, "WallpaperWidget"

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->DBG:Z

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    .line 33
    const-string v0, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper.jpg"

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->PORTRAIT_WALLPAPER_IMAGE_PATH:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenWallpaper;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mIsLiveWallpaper:Z

    .line 49
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mIsLiveWallpaper:Z

    if-eqz v0, :cond_21

    .line 59
    :goto_20
    return-void

    .line 53
    :cond_21
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    .line 54
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->addView(Landroid/view/View;II)V

    .line 58
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->setLockScreenWallpaper()V

    goto :goto_20
.end method

.method public static getInstance()Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;
    .registers 1

    .prologue
    .line 170
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->sWallpaperWidget:Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;
    .registers 2
    .param p0, "cotext"    # Landroid/content/Context;

    .prologue
    .line 174
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->sWallpaperWidget:Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;

    if-nez v0, :cond_b

    .line 175
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->sWallpaperWidget:Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;

    .line 176
    :cond_b
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->sWallpaperWidget:Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;

    return-object v0
.end method

.method private setDefaultWallpaper()Landroid/graphics/drawable/BitmapDrawable;
    .registers 10

    .prologue
    const v8, 0x10804c6

    .line 127
    new-instance v1, Ljava/io/File;

    const-string v7, "//system/wallpaper/lockscreen_default_wallpaper.jpg"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v7, "//system/csc_contents/lockscreen_default_wallpaper.jpg"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    .local v2, "fileMultiCSC":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v7, "//system/wallpaper/lockscreen_default_wallpaper.png"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v4, "filePng":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v7, "//system/csc_contents/lockscreen_default_wallpaper.png"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    .local v3, "fileMultiCSCPng":Ljava/io/File;
    const/4 v5, 0x0

    .line 132
    .local v5, "is":Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_44

    .line 134
    :try_start_26
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5    # "is":Ljava/io/InputStream;
    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2b} :catch_38

    .line 159
    .restart local v5    # "is":Ljava/io/InputStream;
    :goto_2b
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 162
    .local v6, "tempBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_34
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_97

    .line 166
    :goto_37
    return-object v6

    .line 135
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "tempBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :catch_38
    move-exception v0

    .line 136
    .local v0, "e":Ljava/io/IOException;
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 137
    .restart local v5    # "is":Ljava/io/InputStream;
    goto :goto_2b

    .line 138
    .end local v0    # "e":Ljava/io/IOException;
    :cond_44
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5c

    .line 140
    :try_start_4a
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5    # "is":Ljava/io/InputStream;
    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4f} :catch_50

    .restart local v5    # "is":Ljava/io/InputStream;
    goto :goto_2b

    .line 141
    .end local v5    # "is":Ljava/io/InputStream;
    :catch_50
    move-exception v0

    .line 142
    .restart local v0    # "e":Ljava/io/IOException;
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 143
    .restart local v5    # "is":Ljava/io/InputStream;
    goto :goto_2b

    .line 144
    .end local v0    # "e":Ljava/io/IOException;
    :cond_5c
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_74

    .line 146
    :try_start_62
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5    # "is":Ljava/io/InputStream;
    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_67} :catch_68

    .restart local v5    # "is":Ljava/io/InputStream;
    goto :goto_2b

    .line 147
    .end local v5    # "is":Ljava/io/InputStream;
    :catch_68
    move-exception v0

    .line 148
    .restart local v0    # "e":Ljava/io/IOException;
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 149
    .restart local v5    # "is":Ljava/io/InputStream;
    goto :goto_2b

    .line 150
    .end local v0    # "e":Ljava/io/IOException;
    :cond_74
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_8c

    .line 152
    :try_start_7a
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5    # "is":Ljava/io/InputStream;
    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7f} :catch_80

    .restart local v5    # "is":Ljava/io/InputStream;
    goto :goto_2b

    .line 153
    .end local v5    # "is":Ljava/io/InputStream;
    :catch_80
    move-exception v0

    .line 154
    .restart local v0    # "e":Ljava/io/IOException;
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 155
    .restart local v5    # "is":Ljava/io/InputStream;
    goto :goto_2b

    .line 157
    .end local v0    # "e":Ljava/io/IOException;
    :cond_8c
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    goto :goto_2b

    .line 163
    .restart local v6    # "tempBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :catch_97
    move-exception v0

    .line 164
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_37
.end method


# virtual methods
.method public cleanUp()V
    .registers 3

    .prologue
    .line 64
    const-string v0, "WallpaperWidget"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    return-void
.end method

.method public setLockScreenWallpaper()V
    .registers 11

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v9, -0x2

    .line 71
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardProperties;->isJapanFeature()Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 72
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "longlife_mode"

    invoke-static {v6, v7, v5, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v2, :cond_2c

    .line 74
    .local v2, "isLongLifeMode":Z
    :goto_17
    if-eqz v2, :cond_2e

    .line 75
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1080508

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    .end local v2    # "isLongLifeMode":Z
    :goto_2b
    return-void

    :cond_2c
    move v2, v5

    .line 72
    goto :goto_17

    .line 82
    :cond_2e
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenWallpaper;->isAdminWallpaper()Z

    move-result v5

    if-eqz v5, :cond_66

    .line 83
    const-string v5, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mWallpaperPath:Ljava/lang/String;

    .line 85
    :try_start_38
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_48} :catch_49

    goto :goto_2b

    .line 87
    :catch_49
    move-exception v0

    .line 89
    .local v0, "ex":Ljava/lang/Exception;
    const-string v5, "WallpaperWidget"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loading Admin wallpaper EX:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_66
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lockscreen_wallpaper_path"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mWallpaperPath:Ljava/lang/String;

    .line 97
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->isMultiSIMDevice()Z

    move-result v5

    if-eqz v5, :cond_9c

    .line 99
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getCurrentWallpaper(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mWallpaperPath:Ljava/lang/String;

    .line 100
    const-string v5, "WallpaperWidget"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MultiSim Device wallpaperPath:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mWallpaperPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_9c
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mWallpaperPath:Ljava/lang/String;

    if-nez v5, :cond_a4

    .line 104
    const-string v5, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper.jpg"

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mWallpaperPath:Ljava/lang/String;

    .line 107
    :cond_a4
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    .local v1, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 110
    .local v3, "tempBitmap":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_d1

    .line 112
    :try_start_b2
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_bd} :catch_c5

    .line 113
    .end local v3    # "tempBitmap":Landroid/graphics/drawable/BitmapDrawable;
    .local v4, "tempBitmap":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_bd
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_c2} :catch_dc

    move-object v3, v4

    .line 117
    .end local v4    # "tempBitmap":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v3    # "tempBitmap":Landroid/graphics/drawable/BitmapDrawable;
    goto/16 :goto_2b

    .line 114
    :catch_c5
    move-exception v0

    .line 115
    .restart local v0    # "ex":Ljava/lang/Exception;
    :goto_c6
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->setDefaultWallpaper()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    .line 116
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2b

    .line 119
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_d1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->setDefaultWallpaper()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    .line 120
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2b

    .line 114
    .end local v3    # "tempBitmap":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v4    # "tempBitmap":Landroid/graphics/drawable/BitmapDrawable;
    :catch_dc
    move-exception v0

    move-object v3, v4

    .end local v4    # "tempBitmap":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v3    # "tempBitmap":Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_c6
.end method
