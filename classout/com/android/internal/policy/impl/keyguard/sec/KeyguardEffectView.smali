.class public Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$6;,
        Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;,
        Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;
    }
.end annotation


# static fields
.field private static final MSG_CHANGE_WALLPAPER_TYPE:I = 0x12f0

.field private static final MSG_WALLPAPER_FILE_CHANGED:I = 0x12f2

.field private static final MSG_WALLPAPER_PATH_CHANGED:I = 0x12f1

.field private static final TAG:Ljava/lang/String; = "KeyguardBackgroundView"

.field private static sKeyguardBackgroundView:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;


# instance fields
.field private final mAdminReceiver:Landroid/content/BroadcastReceiver;

.field private mBackground:Landroid/widget/FrameLayout;

.field private mBackgroundView:Landroid/view/View;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mFileObserver:Landroid/os/FileObserver;

.field private mForeground:Landroid/widget/FrameLayout;

.field private mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

.field private mGradationView:Landroid/widget/ImageView;

.field private final mHandler:Landroid/os/Handler;

.field mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsScreenturnedOn:Z

.field private mIs_JBP_upgrade:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mWallpaperPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 131
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 91
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mIsScreenturnedOn:Z

    .line 93
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;

    .line 113
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mAdminReceiver:Landroid/content/BroadcastReceiver;

    .line 274
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$5;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$5;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 132
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    .line 134
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackground:Landroid/widget/FrameLayout;

    .line 135
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForeground:Landroid/widget/FrameLayout;

    .line 137
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mGradationView:Landroid/widget/ImageView;

    .line 138
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mGradationView:Landroid/widget/ImageView;

    const v2, 0x1080345

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 139
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mGradationView:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 141
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 142
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->updateBackgroundGradation(Z)V

    .line 144
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContentObserver:Landroid/database/ContentObserver;

    .line 209
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_ripple_effect"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 211
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 213
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper_path"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 216
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper_path_2"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 219
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "longlife_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 223
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper_path"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mWallpaperPath:Ljava/lang/String;

    .line 227
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->isMultiSIMDevice()Z

    move-result v1

    if-eqz v1, :cond_e5

    .line 229
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/MultiSimUtils;->getCurrentWallpaper(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mWallpaperPath:Ljava/lang/String;

    .line 230
    const-string v1, "KeyguardBackgroundView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MultiSim Device wallpaperPath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mWallpaperPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_e5
    const-string v1, "KeyguardBackgroundView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWallpaperPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mWallpaperPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mWallpaperPath:Ljava/lang/String;

    if-eqz v1, :cond_111

    .line 236
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$4;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mFileObserver:Landroid/os/FileObserver;

    .line 258
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    .line 260
    :cond_111
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mIs_JBP_upgrade:Z

    .line 263
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 264
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.sec.LSO_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    const-string v1, "android.intent.action.DEFAULT_CS_SIM_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mAdminReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 271
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->handleChangeWallpaperType()V

    .line 272
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->handleChangeWallpaperType()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->handleUpdateKeygaurdBackgroud()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;)Landroid/os/FileObserver;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mFileObserver:Landroid/os/FileObserver;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;Landroid/os/FileObserver;)Landroid/os/FileObserver;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;
    .param p1, "x1"    # Landroid/os/FileObserver;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mFileObserver:Landroid/os/FileObserver;

    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 283
    const-string v0, "KeyguardBackgroundView"

    const-string v1, "*** KeyguardEffectView getInstance ***"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->sKeyguardBackgroundView:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    if-nez v0, :cond_12

    .line 285
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->sKeyguardBackgroundView:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    .line 286
    :cond_12
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->sKeyguardBackgroundView:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;

    return-object v0
.end method

.method private handleChangeWallpaperType()V
    .registers 7

    .prologue
    .line 293
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenWallpaper;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v0

    .line 295
    .local v0, "isLiveWallpaper":Z
    if-eqz v0, :cond_22

    .line 297
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mIs_JBP_upgrade:Z

    if-eqz v2, :cond_17

    .line 298
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;->circle:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->makeForeground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;)V

    .line 299
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;->none:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->makeBackground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;)V

    .line 356
    :goto_16
    return-void

    .line 301
    :cond_17
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;->lens:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->makeForeground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;)V

    .line 302
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;->none:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->makeBackground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;)V

    goto :goto_16

    .line 307
    :cond_22
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_ripple_effect"

    const/4 v4, 0x1

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 311
    .local v1, "unlockEffect":I
    packed-switch v1, :pswitch_data_64

    goto :goto_16

    .line 314
    :pswitch_34
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;->circle:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->makeForeground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;)V

    .line 315
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenWallpaper;->isFlipboardWallpaper(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 316
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;->flipboard:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->makeBackground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;)V

    goto :goto_16

    .line 318
    :cond_47
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;->wallpaper:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->makeBackground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;)V

    goto :goto_16

    .line 322
    :pswitch_4d
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;->none:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->makeForeground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;)V

    .line 323
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;->waterbrush:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->makeBackground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;)V

    goto :goto_16

    .line 327
    :pswitch_58
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;->none:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->makeForeground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;)V

    .line 328
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;->ripple:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->makeBackground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;)V

    goto :goto_16

    .line 311
    nop

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_34
        :pswitch_4d
        :pswitch_58
    .end packed-switch
.end method

.method private handleUpdateKeygaurdBackgroud()V
    .registers 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 374
    :cond_4
    :goto_4
    return-void

    .line 362
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;

    if-eqz v0, :cond_12

    .line 363
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;->setLockScreenWallpaper()V

    .line 365
    :cond_12
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    if-eqz v0, :cond_1f

    .line 366
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->setBackground()V

    .line 368
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;

    if-eqz v0, :cond_2c

    .line 369
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->setBackground()V

    .line 372
    :cond_2c
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    if-eqz v0, :cond_4

    .line 373
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->setLockScreenWallpaper()V

    goto :goto_4
.end method

.method private makeBackground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;)V
    .registers 5
    .param p1, "background"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    .prologue
    const/4 v2, 0x0

    .line 591
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->sCurrentSecurityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_16

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->sCurrentSecurityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_16

    .line 593
    const-string v0, "KeyguardBackgroundView"

    const-string v1, "For set the wallpaper"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    sget-object p1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;->wallpaper:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    .line 598
    :cond_16
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$6;->$SwitchMap$com$android$internal$policy$impl$keyguard$sec$KeyguardEffectView$Background:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_80

    .line 636
    :cond_21
    :goto_21
    return-void

    .line 600
    :pswitch_22
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    if-nez v0, :cond_33

    .line 601
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    .line 602
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    .line 604
    :cond_33
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->setBackground()V

    goto :goto_21

    .line 607
    :pswitch_37
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;

    if-nez v0, :cond_21

    .line 608
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    .line 609
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/WallpaperWidget;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    .line 610
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->setBackground()V

    goto :goto_21

    .line 614
    :pswitch_4c
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_21

    .line 615
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    .line 616
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->setBackground()V

    goto :goto_21

    .line 620
    :pswitch_56
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    if-nez v0, :cond_21

    .line 621
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    .line 622
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    .line 623
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->setBackground()V

    goto :goto_21

    .line 627
    :pswitch_6a
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;

    if-nez v0, :cond_21

    .line 628
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    .line 629
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    .line 630
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->setBackground()V

    goto :goto_21

    .line 598
    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_22
        :pswitch_37
        :pswitch_4c
        :pswitch_56
        :pswitch_6a
    .end packed-switch
.end method

.method private makeForeground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;)V
    .registers 6
    .param p1, "foreground"    # Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 563
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$6;->$SwitchMap$com$android$internal$policy$impl$keyguard$sec$KeyguardEffectView$Foreground:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_48

    .line 582
    :cond_d
    :goto_d
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForeground:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 583
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    if-eqz v0, :cond_1f

    .line 584
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForeground:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v3, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 586
    :cond_1f
    return-void

    .line 565
    :pswitch_20
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;

    if-nez v0, :cond_d

    .line 566
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    .line 567
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    goto :goto_d

    .line 571
    :pswitch_32
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;

    if-nez v0, :cond_d

    .line 572
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    .line 573
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    goto :goto_d

    .line 577
    :pswitch_44
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    goto :goto_d

    .line 563
    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_20
        :pswitch_32
        :pswitch_44
    .end packed-switch
.end method

.method private setBackground()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 649
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 651
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 652
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackground:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 655
    :cond_11
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackground:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mGradationView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 656
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .registers 3

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    if-eqz v0, :cond_9

    .line 465
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->cleanUp()V

    .line 467
    :cond_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    if-eqz v0, :cond_22

    .line 468
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->cleanUp()V

    .line 474
    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 475
    return-void

    .line 469
    :cond_22
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;

    if-eqz v0, :cond_30

    .line 470
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->cleanUp()V

    goto :goto_16

    .line 471
    :cond_30
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    if-eqz v0, :cond_16

    .line 472
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->cleanUp()V

    goto :goto_16
.end method

.method public getBackgroundLayout()Landroid/widget/FrameLayout;
    .registers 2

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackground:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getForegroundLayout()Landroid/widget/FrameLayout;
    .registers 2

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForeground:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getUnlockDelay()J
    .registers 3

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    if-eqz v0, :cond_b

    .line 521
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->getUnlockDelay()J

    move-result-wide v0

    .line 528
    :goto_a
    return-wide v0

    .line 523
    :cond_b
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    if-eqz v0, :cond_1a

    .line 524
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->getUnlockDelay()J

    move-result-wide v0

    goto :goto_a

    .line 525
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;

    if-eqz v0, :cond_29

    .line 526
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->getUnlockDelay()J

    move-result-wide v0

    goto :goto_a

    .line 528
    :cond_29
    const-wide/16 v0, 0x0

    goto :goto_a
.end method

.method public handleHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    if-eqz v0, :cond_b

    .line 534
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->handleHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 541
    :goto_a
    return v0

    .line 536
    :cond_b
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    if-eqz v0, :cond_1a

    .line 537
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->handleHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_a

    .line 538
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;

    if-eqz v0, :cond_29

    .line 539
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->handleHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_a

    .line 541
    :cond_29
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public handleNextScreenShowing()V
    .registers 3

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForeground:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_9

    .line 681
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForeground:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 683
    :cond_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    if-eqz v0, :cond_17

    .line 684
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->setContentVisible(Z)V

    .line 685
    :cond_17
    return-void
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    if-eqz v0, :cond_f

    .line 379
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 387
    :goto_e
    return v0

    .line 380
    :cond_f
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;

    if-eqz v0, :cond_1e

    .line 381
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_e

    .line 383
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    if-eqz v0, :cond_29

    .line 384
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_e

    .line 387
    :cond_29
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;

    if-eqz v0, :cond_f

    .line 393
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 396
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    if-eqz v0, :cond_e

    .line 402
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 409
    :cond_d
    :goto_d
    return-void

    .line 403
    :cond_e
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;

    if-eqz v0, :cond_1c

    .line 404
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_d

    .line 406
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    if-eqz v0, :cond_d

    .line 407
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_d
.end method

.method public hideBackgroundView()V
    .registers 3

    .prologue
    .line 688
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 689
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 691
    :cond_a
    return-void
.end method

.method public playLockSound()V
    .registers 2

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    if-eqz v0, :cond_9

    .line 558
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->playLockSound()V

    .line 560
    :cond_9
    return-void
.end method

.method public reset()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 479
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    if-eqz v0, :cond_33

    .line 480
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenWallpaper;->isFlipboardWallpaper(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 481
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_20

    .line 482
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForeground:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 485
    :cond_20
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->reset()V

    .line 492
    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    if-eqz v0, :cond_54

    .line 493
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->reset()V

    .line 498
    :cond_32
    :goto_32
    return-void

    .line 486
    :cond_33
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSwipeSmartLock()Z

    move-result v0

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenWallpaper;->isFlipboardWallpaper(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mIsScreenturnedOn:Z

    if-nez v0, :cond_25

    .line 487
    :cond_47
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->handleChangeWallpaperType()V

    .line 488
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    if-eqz v0, :cond_25

    .line 489
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->show()V

    goto :goto_25

    .line 494
    :cond_54
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;

    if-eqz v0, :cond_62

    .line 495
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->reset()V

    goto :goto_32

    .line 496
    :cond_62
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    if-eqz v0, :cond_32

    .line 497
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->reset()V

    goto :goto_32
.end method

.method public screenTurnedOff()V
    .registers 2

    .prologue
    .line 669
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mIsScreenturnedOn:Z

    .line 671
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenWallpaper;->isFlipboardWallpaper(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 672
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->setBackground()V

    .line 677
    :cond_18
    :goto_18
    return-void

    .line 673
    :cond_19
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenWallpaper;->isFlipboardWallpaper(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 674
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->setBackground()V

    goto :goto_18

    .line 675
    :cond_2f
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    if-eqz v0, :cond_18

    .line 676
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->screenTurnedOff()V

    goto :goto_18
.end method

.method public screenTurnedOn()V
    .registers 3

    .prologue
    .line 503
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mIsScreenturnedOn:Z

    .line 505
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    if-eqz v0, :cond_c

    .line 506
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->screenTurnedOn()V

    .line 508
    :cond_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    if-eqz v0, :cond_25

    .line 509
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->screenTurnedOn()V

    .line 515
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 516
    return-void

    .line 510
    :cond_25
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;

    if-eqz v0, :cond_33

    .line 511
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->screenTurnedOn()V

    goto :goto_19

    .line 512
    :cond_33
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    if-eqz v0, :cond_19

    .line 513
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->screenTurnedOn()V

    goto :goto_19
.end method

.method public show()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 413
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_85

    .line 414
    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwipeLockShowingBeforeTimeout:Z

    if-nez v2, :cond_81

    .line 415
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;->none:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->makeForeground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Foreground;)V

    .line 419
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenWallpaper;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v0

    .line 421
    .local v0, "isLiveWallpaper":Z
    if-eqz v0, :cond_48

    .line 422
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;->none:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->makeBackground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;)V

    .line 447
    .end local v0    # "isLiveWallpaper":Z
    :goto_1f
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    if-eqz v2, :cond_28

    .line 448
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->show()V

    .line 450
    :cond_28
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3a

    .line 451
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 454
    :cond_3a
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v2, v2, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    if-eqz v2, :cond_89

    .line 455
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->show()V

    .line 460
    :cond_47
    :goto_47
    return-void

    .line 424
    .restart local v0    # "isLiveWallpaper":Z
    :cond_48
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_ripple_effect"

    const/4 v4, -0x2

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 427
    .local v1, "unlockEffect":I
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/LockscreenWallpaper;->isFlipboardWallpaper(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 428
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->sCurrentSecurityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v2, v3, :cond_67

    .line 429
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->handleChangeWallpaperType()V

    goto :goto_1f

    .line 431
    :cond_67
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;->flipboard:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->makeBackground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;)V

    goto :goto_1f

    .line 432
    :cond_6d
    if-ne v1, v5, :cond_7b

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->sCurrentSecurityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v2, v3, :cond_7b

    .line 435
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;->waterbrush:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->makeBackground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;)V

    goto :goto_1f

    .line 437
    :cond_7b
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;->wallpaper:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->makeBackground(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView$Background;)V

    goto :goto_1f

    .line 441
    .end local v0    # "isLiveWallpaper":Z
    .end local v1    # "unlockEffect":I
    :cond_81
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->handleChangeWallpaperType()V

    goto :goto_1f

    .line 444
    :cond_85
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->handleChangeWallpaperType()V

    goto :goto_1f

    .line 456
    :cond_89
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v2, v2, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;

    if-eqz v2, :cond_97

    .line 457
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->show()V

    goto :goto_47

    .line 458
    :cond_97
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v2, v2, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    if-eqz v2, :cond_47

    .line 459
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/sec/FlipboardWallpaperWidget;->show()V

    goto :goto_47
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .registers 5
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    if-eqz v0, :cond_a

    .line 547
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mForegroundView:Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    .line 553
    :cond_9
    :goto_9
    return-void

    .line 548
    :cond_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    if-eqz v0, :cond_18

    .line 549
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/sec/RippleUnlockView;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    goto :goto_9

    .line 550
    :cond_18
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;

    if-eqz v0, :cond_9

    .line 551
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mBackgroundView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/sec/WaterBrushView;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    goto :goto_9
.end method

.method public updateBackgroundGradation(Z)V
    .registers 4
    .param p1, "backupMode"    # Z

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockFingerprintEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    if-nez p1, :cond_18

    .line 641
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mGradationView:Landroid/widget/ImageView;

    const v1, 0x10804da

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 645
    :goto_17
    return-void

    .line 643
    :cond_18
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardEffectView;->mGradationView:Landroid/widget/ImageView;

    const v1, 0x1080345

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_17
.end method
