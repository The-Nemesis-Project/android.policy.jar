.class public Lcom/android/internal/policy/impl/keyguard/sec/LockscreenWallpaper;
.super Ljava/lang/Object;
.source "LockscreenWallpaper.java"


# static fields
.field public static final ACTION_UPDATE_LOCKSCREEN_WALLPAPER:Ljava/lang/String; = "android.intent.action.sec.LSO_CONFIG_CHANGED"

.field public static final ADMIN_WALLPAPER_PORTRAIT:Ljava/lang/String; = "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

.field public static final ADMIN_WALLPAPER_RIPPLE:Ljava/lang/String; = "/data/system/enterprise/lso/lockscreen_wallpaper_ripple.jpg"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableFlipboardWallpaper(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    if-nez p0, :cond_3

    .line 79
    :goto_2
    return-void

    .line 78
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_flipboard_wallpaper"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_2
.end method

.method public static isAdminWallpaper()Z
    .registers 2

    .prologue
    .line 57
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static isFlipboardWallpaper(Landroid/content/Context;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 62
    if-nez p0, :cond_5

    .line 71
    :cond_4
    :goto_4
    return v1

    .line 65
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lockscreen_flipboard_wallpaper"

    const/4 v5, -0x2

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 68
    .local v0, "isCoverLockEnabled":I
    if-ne v0, v2, :cond_4

    move v1, v2

    .line 69
    goto :goto_4
.end method

.method public static isLiveWallpaper(Landroid/content/Context;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 49
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenWallpaper;->isAdminWallpaper()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 53
    :cond_8
    :goto_8
    return v0

    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_wallpaper"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eq v2, v1, :cond_8

    move v0, v1

    goto :goto_8
.end method
