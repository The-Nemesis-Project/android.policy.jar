.class public Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;
.super Landroid/opengl/GLSurfaceView;
.source "WaterBrushView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;


# static fields
.field private static final DEFAULT_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/system/wallpaper/lockscreen_default_wallpaper.jpg"

.field private static final DEFAULT_WALLPAPER_IMAGE_PATH_MULTI_CSC:Ljava/lang/String; = "/system/csc_contents/lockscreen_default_wallpaper.jpg"

.field private static final DEFAULT_WALLPAPER_IMAGE_PATH_MULTI_CSC_PNG:Ljava/lang/String; = "/system/csc_contents/lockscreen_default_wallpaper.png"

.field private static final DEFAULT_WALLPAPER_IMAGE_PATH_PNG:Ljava/lang/String; = "/system/wallpaper/lockscreen_default_wallpaper.png"

.field private static final PORTRAIT_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper.jpg"

.field private static sWaterBrushView:Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;


# instance fields
.field private final DBG:Z

.field private final TAG:Ljava/lang/String;

.field private leftVolumeMax:F

.field private mContext:Landroid/content/Context;

.field private mCurrentBG:Landroid/graphics/Bitmap;

.field mJniWaterColor:Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;

.field private mRenderer:Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;

.field private mWallpaperPath:Ljava/lang/String;

.field private rightVolumeMax:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/high16 v1, 0x3f800000

    const/16 v9, 0x8

    .line 64
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 44
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->DBG:Z

    .line 45
    const-string v0, "WaterColor_WaterBrushView"

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->TAG:Ljava/lang/String;

    .line 51
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->mCurrentBG:Landroid/graphics/Bitmap;

    .line 53
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->mWallpaperPath:Ljava/lang/String;

    .line 60
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->leftVolumeMax:F

    .line 61
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->rightVolumeMax:F

    .line 66
    const-string v0, "WaterColor_WaterBrushView"

    const-string v1, "ColorBrushView Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->mContext:Landroid/content/Context;

    .line 69
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->setWaterColorBackground()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->mCurrentBG:Landroid/graphics/Bitmap;

    .line 71
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 73
    .local v7, "deviceType":Ljava/lang/String;
    const/4 v8, 0x0

    .line 75
    .local v8, "isTablet":Z
    if-eqz v7, :cond_36

    .line 76
    const-string v0, "tablet"

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    .line 79
    :cond_36
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->mJniWaterColor:Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;

    .line 81
    if-eqz v8, :cond_85

    .line 83
    const-string v0, "WaterColor_WaterBrushView"

    const-string v1, "isTablet is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->mJniWaterColor:Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->mCurrentBG:Landroid/graphics/Bitmap;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;-><init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;ILandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->mRenderer:Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;

    .line 92
    :goto_54
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->mRenderer:Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;

    const v1, 0x1100031

    const v2, 0x1100032

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->leftVolumeMax:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->rightVolumeMax:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->setSoundRID(IIFF)V

    .line 94
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->detectOpenGLES20()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 95
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->setEGLContextClientVersion(I)V

    .line 96
    const/16 v5, 0x10

    move-object v0, p0

    move v1, v9

    move v2, v9

    move v3, v9

    move v4, v9

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->setEGLConfigChooser(IIIIII)V

    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->mRenderer:Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 102
    :goto_84
    return-void

    .line 88
    :cond_85
    const-string v0, "WaterColor_WaterBrushView"

    const-string v1, "isTablet is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->mJniWaterColor:Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->mCurrentBG:Landroid/graphics/Bitmap;

    move-object v2, p0

    move v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;-><init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;Lcom/android/internal/policy/impl/keyguard/sec/JniWaterColorRenderer;ILandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->mRenderer:Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;

    goto :goto_54

    .line 100
    :cond_9c
    const-string v0, "WaterEffect"

    const-string v1, "this machine does not support OpenGL ES2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_84
.end method

.method private detectOpenGLES20()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 115
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 116
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v1

    .line 117
    .local v1, "info":Landroid/content/pm/ConfigurationInfo;
    if-eqz v1, :cond_18

    .line 118
    iget v3, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v4, 0x20000

    if-lt v3, v4, :cond_18

    const/4 v2, 0x1

    .line 120
    :cond_18
    return v2
.end method

.method public static getInstance()Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;
    .registers 1

    .prologue
    .line 111
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->sWaterBrushView:Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->sWaterBrushView:Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;

    if-nez v0, :cond_b

    .line 106
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->sWaterBrushView:Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;

    .line 107
    :cond_b
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->sWaterBrushView:Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;

    return-object v0
.end method

.method private setWaterColorBackground()Landroid/graphics/Bitmap;
    .registers 13

    .prologue
    .line 126
    const-string v9, "WaterColor_WaterBrushView"

    const-string v10, "setWaterColorBackground"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v7, 0x0

    .line 131
    .local v7, "pBitmap":Landroid/graphics/Bitmap;
    :try_start_8
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenWallpaper;->isFlipboardWallpaper(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 132
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->getWallpaperBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 213
    :goto_16
    return-object v9

    .line 134
    :cond_17
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lockscreen_wallpaper_path"

    const/4 v11, -0x2

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->mWallpaperPath:Ljava/lang/String;

    .line 137
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->isMultiSIMDevice()Z

    move-result v9

    if-eqz v9, :cond_34

    .line 139
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getCurrentWallpaper(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->mWallpaperPath:Ljava/lang/String;

    .line 142
    :cond_34
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->mWallpaperPath:Ljava/lang/String;

    if-nez v9, :cond_3c

    .line 143
    const-string v9, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper.jpg"

    iput-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->mWallpaperPath:Ljava/lang/String;

    .line 146
    :cond_3c
    const/4 v6, 0x0

    .line 147
    .local v6, "inputStream":Ljava/io/InputStream;
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .local v8, "wallpaperFile":Ljava/io/File;
    const-string v9, "WaterColor_WaterBrushView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "wallpaperPath:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->mWallpaperPath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v0, Ljava/io/File;

    const-string v9, "/data/system/enterprise/lso/lockscreen_wallpaper_ripple.jpg"

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    .local v0, "adminWallpaperFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_dd

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v9

    if-eqz v9, :cond_dd

    .line 155
    const-string v9, "WaterColor_WaterBrushView"

    const-string v10, "adminWallpaperFile wallpaperPath:/data/system/enterprise/lso/lockscreen_wallpaper_ripple.jpg"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v6, Ljava/io/FileInputStream;

    .end local v6    # "inputStream":Ljava/io/InputStream;
    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 157
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    const-string v9, "/data/system/enterprise/lso/lockscreen_wallpaper_ripple.jpg"

    iput-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->mWallpaperPath:Ljava/lang/String;

    .line 194
    :goto_81
    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 197
    if-eqz v7, :cond_95

    if-eqz v7, :cond_ad

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-nez v9, :cond_ad

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-nez v9, :cond_ad

    .line 199
    :cond_95
    const-string v9, "WaterColor_WaterBrushView"

    const-string v10, "pBitmap is null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10804c6

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    .line 201
    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 204
    :cond_ad
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b0} :catch_166

    .line 211
    .end local v0    # "adminWallpaperFile":Ljava/io/File;
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .end local v8    # "wallpaperFile":Ljava/io/File;
    :goto_b0
    const-string v9, "WaterColor_WaterBrushView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pBitmap.width = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", pBitmap.height = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v7

    .line 213
    goto/16 :goto_16

    .line 160
    .restart local v0    # "adminWallpaperFile":Ljava/io/File;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "wallpaperFile":Ljava/io/File;
    :cond_dd
    :try_start_dd
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_ef

    invoke-virtual {v8}, Ljava/io/File;->canRead()Z

    move-result v9

    if-eqz v9, :cond_ef

    .line 161
    new-instance v6, Ljava/io/FileInputStream;

    .end local v6    # "inputStream":Ljava/io/InputStream;
    invoke-direct {v6, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .restart local v6    # "inputStream":Ljava/io/InputStream;
    goto :goto_81

    .line 165
    :cond_ef
    new-instance v1, Ljava/io/File;

    const-string v9, "/system/wallpaper/lockscreen_default_wallpaper.jpg"

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    .local v1, "defaultWallpaperFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v9, "/system/csc_contents/lockscreen_default_wallpaper.jpg"

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    .local v2, "defaultWallpaperFileMultiCSC":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v9, "/system/wallpaper/lockscreen_default_wallpaper.png"

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    .local v4, "defaultWallpaperFilePng":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v9, "/system/csc_contents/lockscreen_default_wallpaper.png"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    .local v3, "defaultWallpaperFileMultiCSCPng":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_11e

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v9

    if-eqz v9, :cond_11e

    .line 172
    new-instance v6, Ljava/io/FileInputStream;

    .end local v6    # "inputStream":Ljava/io/InputStream;
    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .restart local v6    # "inputStream":Ljava/io/InputStream;
    goto/16 :goto_81

    .line 174
    :cond_11e
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_131

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v9

    if-eqz v9, :cond_131

    .line 176
    new-instance v6, Ljava/io/FileInputStream;

    .end local v6    # "inputStream":Ljava/io/InputStream;
    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .restart local v6    # "inputStream":Ljava/io/InputStream;
    goto/16 :goto_81

    .line 178
    :cond_131
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_144

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v9

    if-eqz v9, :cond_144

    .line 180
    new-instance v6, Ljava/io/FileInputStream;

    .end local v6    # "inputStream":Ljava/io/InputStream;
    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .restart local v6    # "inputStream":Ljava/io/InputStream;
    goto/16 :goto_81

    .line 182
    :cond_144
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_157

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v9

    if-eqz v9, :cond_157

    .line 184
    new-instance v6, Ljava/io/FileInputStream;

    .end local v6    # "inputStream":Ljava/io/InputStream;
    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .restart local v6    # "inputStream":Ljava/io/InputStream;
    goto/16 :goto_81

    .line 188
    :cond_157
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10804c6

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_163
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_163} :catch_166

    move-result-object v6

    goto/16 :goto_81

    .line 206
    .end local v0    # "adminWallpaperFile":Ljava/io/File;
    .end local v1    # "defaultWallpaperFile":Ljava/io/File;
    .end local v2    # "defaultWallpaperFileMultiCSC":Ljava/io/File;
    .end local v3    # "defaultWallpaperFileMultiCSCPng":Ljava/io/File;
    .end local v4    # "defaultWallpaperFilePng":Ljava/io/File;
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .end local v8    # "wallpaperFile":Ljava/io/File;
    :catch_166
    move-exception v5

    .line 208
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_b0
.end method


# virtual methods
.method public cleanUp()V
    .registers 3

    .prologue
    .line 261
    const-string v0, "WaterColor_WaterBrushView"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->mRenderer:Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->cleanUp()V

    .line 263
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .registers 3
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public getUnlockDelay()J
    .registers 3

    .prologue
    .line 315
    const-wide/16 v0, 0x190

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 235
    const-string v0, "WaterColor_WaterBrushView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleHoverEvent event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->getRenderMode()I

    move-result v0

    if-nez v0, :cond_22

    .line 238
    :cond_22
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->setRenderMode(I)V

    .line 240
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->mRenderer:Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 224
    const-string v0, "WaterColor_WaterBrushView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTouchEvent event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->getRenderMode()I

    move-result v0

    if-nez v0, :cond_23

    .line 227
    :cond_23
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->setRenderMode(I)V

    .line 229
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->mRenderer:Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 230
    return v3
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 246
    const-string v0, "WaterColor_WaterBrushView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTouchEventForPatternLock event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->getRenderMode()I

    move-result v0

    if-nez v0, :cond_23

    .line 249
    :cond_23
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->setRenderMode(I)V

    .line 251
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->mRenderer:Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->onTouchEventForPatternLock(Landroid/view/MotionEvent;)V

    .line 252
    return v3
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 284
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->setRenderMode(I)V

    .line 285
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->mRenderer:Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->unlockWaterColor()V

    .line 286
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 331
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    .line 332
    const-string v0, "WaterColor_WaterBrushView"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->mRenderer:Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->destroyed()V

    .line 334
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 267
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 271
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 2
    .param p1, "visibility"    # I

    .prologue
    .line 276
    if-nez p1, :cond_5

    .line 277
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onWindowVisibilityChanged(I)V

    .line 279
    :cond_5
    return-void
.end method

.method public playLockSound()V
    .registers 1

    .prologue
    .line 326
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 300
    const-string v0, "WaterColor_WaterBrushView"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->mRenderer:Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->reset()V

    .line 302
    const-string v0, "WaterColor_WaterBrushView"

    const-string v1, "requestRender()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->requestRender()V

    .line 304
    return-void
.end method

.method public screenTurnedOn()V
    .registers 3

    .prologue
    .line 308
    const-string v0, "WaterColor_WaterBrushView"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->mRenderer:Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->screenTurnedOn()V

    .line 310
    return-void
.end method

.method public setBackground()V
    .registers 3

    .prologue
    .line 217
    const-string v0, "WaterColor_WaterBrushView"

    const-string v1, "changeWaterBrushBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->setWaterColorBackground()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->mCurrentBG:Landroid/graphics/Bitmap;

    .line 219
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->mRenderer:Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->mCurrentBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->changeBackground(Landroid/graphics/Bitmap;)V

    .line 220
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->requestRender()V

    .line 221
    return-void
.end method

.method public show()V
    .registers 3

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenWallpaper;->isFlipboardWallpaper(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 292
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->setBackground()V

    .line 294
    :cond_b
    const-string v0, "WaterColor_WaterBrushView"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->mRenderer:Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->show()V

    .line 296
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .registers 7
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 320
    const-string v0, "WaterColor_WaterBrushView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showUnlockAffordance startDelay : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->mRenderer:Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/sec/WaterColorRenderer;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    .line 322
    return-void
.end method
